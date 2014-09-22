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

my ($terminal_count, $nonterminal_count, $elip_count, $order);
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
 <trees>
HEADER

  $dom->find('S')->each(sub {
    my ($e, $count) = @_;
    ($terminal_count, $nonterminal_count, $elip_count, $order)=(0,0,0,0);
    $sentence_count++;
    $sentence_id = "$base_id-s$sentence_count";

    @nodes = %ref_to_target = %target_to_ref = ();

    my $root = {
      -name => $e->type,
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
  </trees>
</btb>
FOOTER

  write_file(File::Spec->catfile($converted_dir, "$base_id.pml"), {binmode => 'utf8'}, $buff);
}
# my $cat_values = join "\n",map qq{      <value>$_</value>}, sort keys %cat_values;
# print <<"EOF";
#   <type name="postag.type">
#     <choice>
# $cat_values
#     </choice>
#   </type>
# EOF

# sub stats {
#   my ($e, $count) = @_;

#   if (!$e->children) {
#     $terminals{$e->type} = 1;
#   } else {
#     $e->children->each(\&stats);
#   }
# }

# say join "\n", keys %terminals;

sub process_node {
  my ($parent) = @_;

  return sub {
    my ($e, $count) = @_;

    if ($e->type =~ /-Elip$/ || $e->type =~ /^pro-/) {
      $e->children->each(process_node($parent)) if $e->children;
      return;
    }

    if (!$e->children) {
      $terminal_count++;
      my $terminal_id = "$sentence_id-t$terminal_count";
      my $node = {
        -name => 'terminal',
        -attributes => { id => $terminal_id },
        -children => [
          { -name => 'category', -content => $e->type },
          { -name => 'form', -content => $e->text },
          { -name => 'order', -content => $order++ },
        ]
      };
      # my $idref = $e->attr('idref');
      # if ($idref) {
      #   $node->{-attributes}->{'id.rf'} = $e->attr('idref') ;
      #   $target_to_ref{$terminal_id} = $idref;
      #   $ref_to_target{$idref}->{$terminal_id} = $node;
      #   push @nodes, $node;        
      # }
      for (grep { !/ref$/ } keys %{$e->attr}) {
        push @{$node->{-children}}, { -name => $_, -content => $e->attr($_) };
      }

      push @{$parent->{-children}}, $node;
    } elsif ($e->type =~ /-Elip$/) {
      $e->children->each(process_node($parent)) if $e->children;
      # $elip_count++;
      # my $elip_id = "$sentence_id-e$elip_count";
      # my $node = {
      #   -name => $e->type,
      #   -attributes => { id => $elip_id },
      #   -children => [
      #   ]
      # };

      # my $idref = $e->attr('idref');
      # if ($idref) {
      #   $node->{-attributes}->{'id.rf'} = $e->attr('idref') ;
      #   $target_to_ref{$elip_id} = $idref;
      #   $ref_to_target{$idref}->{$elip_id} = $node;
      #   push @nodes, $node;       
      # }
      # for (grep { !/^idref$/ } keys %{$e->attr}) {
      #   push @{$node->{-children}}, { -name => $_, -content => $e->attr($_) };
      # }
      # if ($e->children) {
      #   my $children = { -name => 'children', -children => [] };
      #   push @{$node->{-children}}, $children;
      #   $e->children->each(process_node($children));
      # }
    } else {
      $nonterminal_count++;
      my $nonterminal_id = "$sentence_id-n$nonterminal_count";
      my $children = { -name => 'children', -children => [] };
      my $node = {
        -name => 'nonterminal',
        -attributes => { id => $nonterminal_id },
        -children => [
          { -name => 'category', -content => $e->type },
          $children
        ]
      };
      $cat_values{$e->type} = 1;
      # my $idref = $e->attr('idref');
      # if ($idref) {
      #   $node->{-attributes}->{'id.rf'} = $e->attr('idref') ;
      #   $target_to_ref{$nonterminal_id} = $idref;
      #   $ref_to_target{$idref}->{$nonterminal_id} = $node;
      #   push @nodes, $node;      
      # }
      if ($e->attr('sort')) {
        $node->{-attributes}->{sort} = $e->attr('sort');
      }

      push @{$parent->{-children}}, $node;

      $e->children->each(process_node($children));
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


