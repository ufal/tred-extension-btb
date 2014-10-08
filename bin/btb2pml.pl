#!/usr/bin/env perl
use Mojo::Base -strict;

our $VERSION="0.1";

use Mojo::DOM;
use File::Spec;
use File::Basename qw(dirname);
use File::Path qw(make_path);
use File::Slurp qw(read_file write_file);

use Getopt::Long;
use Pod::Usage;
Getopt::Long::Configure ("bundling");
my %opts = (
  'output-dir' => '.',
);

GetOptions(\%opts,
  'output-dir|o=s',
  'help|h',
  'usage|u',
  'version|V',
  'man',
  ) or $opts{usage}=1;

if ($opts{help}) {
  pod2usage(-exitstatus => 0, -verbose => 99, -sections => '.*');
  exit;
}
if ($opts{man}) {
  pod2usage(-exitstatus => 0, -verbose => 2);
  exit;
}
if ($opts{version}) {
  print "$VERSION\n";
  exit;
}
if ($opts{usage} or !@ARGV) {
  pod2usage(-msg => 'btb2pml.pl');
  exit;
}

use open ':std' => 'utf8';

my @files = @ARGV;
if ($^O eq 'MSWin32') {
    @files = map { -r $_ ? $_ : glob ($_) } @ARGV;
}

my $converted_dir = File::Spec->rel2abs($opts{'output-dir'});
make_path($converted_dir) unless -d $converted_dir;

my (%counters, $order);
my $sentence_id;
my (@nodes, %ref_to_target, %target_to_ref, %cat_values);
for my $filename (@files) {
  my $xml = read_file($filename, binmode => 'utf8');
  my $dom = Mojo::DOM->new($xml);

  my @discourse = $dom->find('Discourse')->each;
  my @indexes = $dom->find('Index')->each;

  $_->remove for (@discourse);
  $_->remove for (@indexes);

  my (undef,undef,$basename) = File::Spec->splitpath($filename);
  my $sentence_count = 0;
  my $base_id = $basename; $base_id=~s/\.xml$//;

  my $buff = <<"HEADER";
<?xml version="1.0" encoding="UTF-8"?>
<btb xmlns="http://ufal.mff.cuni.cz/pdt/pml/">
 <head>
  <schema href="btb_schema.pml" />
 </head>
 <meta>
  <annotation_info>
   <desc>Converted from Bulgarian Treebank file $basename</desc>
  </annotation_info>
 </meta>
 <sentences>
HEADER

  $dom->find('S')->each(sub {
    my ($e, $count) = @_;
    $order=0;
    %counters = ();
    $sentence_count++;
    $sentence_id = "$base_id-s$sentence_count";

    @nodes = %ref_to_target = %target_to_ref = ();

    my $root = {
      -name => 'S',
      -attributes => { id => $sentence_id, %{$e->attr} },
      -children => []
    };
    $e->children->each(process_node($root));

    # resolve references
    # for my $node (@nodes) {
    #   my $id = $node->{-attributes}->{id};
    #   my $ref = delete $target_to_ref{$id};
    #   if ($ref) {
    #     my $refs = delete $ref_to_target{$ref};
    #     for my $refid (grep {$_ ne $id} keys %{$refs}) {
    #       my $refnode = $refs->{$refid};
    #       delete $target_to_ref{$refid};
    #       $node->{-attributes}->{'id.rf'} = $refid;
    #       $refnode->{-attributes}->{'id.rf'} = $id;
    #     }
    #   }
    # }

    $buff .= serialize_xml_element($root,2) . "\n";
  });

$buff .= <<'FOOTER';
  </sentences>
</btb>
FOOTER

  write_file(File::Spec->catfile($converted_dir, "$base_id.pml"), {binmode => 'utf8'}, $buff);
}

sub process_node {
  my ($parent) = @_;

  return sub {
    my ($e, $count) = @_;

    my $counter = $counters{lc $e->type} += 1;
    my $id = "$sentence_id-". lc $e->type . "$counter";
    my $name = $e->type =~ /^(abbr|w|lb|mw|pt|nid|tok|foreign|name)$/ ? $e->type : 'node';
    my $cat = $name eq 'node' ? $e->type : '';
    my $node = {
        -name => $name,
        -attributes => { id => $id, ($cat ? (cat => $cat) : ()), %{$e->attr} },
    };
    push @{$parent->{-children}}, $node;
    if ($e->children) {
      $node->{-children} = [];
      $e->children->each(process_node($node));
    } else {
      $node->{-content} = $e->text if $e->text;
    }
  };
}

sub serialize_xml_element {
  my ($node,$indent)=@_;
  my $output='';
  $output = (' ' x $indent).'<' . $node->{-name};
  my $attributes = $node->{-attributes} || {};
  for (keys %$attributes) {
    my $val = $attributes->{$_};
    $val =~ s/&/&amp;/; $val =~ s/</&lt;/; $val =~ s/"/&quot;/;
    $output .= qq{ $_="$val"};
  }
  if (exists $node->{-children}) {
    $output .= ">\n".join('', map serialize_xml_element($_,$indent+1), @{$node->{-children}}) . 
      (' ' x $indent).qq(</$node->{-name}>\n);
  } elsif (exists $node->{-content}) {
    $output .= qq(>$node->{-content}</$node->{-name}>\n);
  } else {
    $output .= qq(/>\n);
  }
}
