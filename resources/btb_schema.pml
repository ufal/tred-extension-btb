<?xml version="1.0" encoding="utf-8"?>

<pml_schema xmlns="http://ufal.mff.cuni.cz/pdt/pml/schema/" version="1.1">
 
 <root name="btb">
  <structure>
   <member name="meta" required="1" type="meta.type"/>
   <member name="sentences" role="#TREES" required="1">
    <sequence>
      <element name="S" type="S.type"/>
    </sequence>
   </member>
  </structure>
 </root>

 <type name="meta.type">
  <structure>
   <member name="annotation_info">
    <structure>
     <member name="desc"><cdata format="any"/></member>
    </structure>
   </member>
  </structure>
 </type>

 <type name="S.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="node" type="node.type" />
    <element name="abbr" type="abbr.type" />
    <element name="foreign" type="foreign.type" />
    <element name="lb" type="lb.type" />
    <element name="mw" type="mw.type" />
    <element name="name" type="name.type" />
    <element name="nid" type="nid.type" />
    <element name="pt" type="pt.type" />
    <element name="tok" type="tok.type" />
    <element name="w" type="w.type" />
   </sequence>
  </container>
 </type>

 <type name="node.type">
  <container role="#NODE">
   <attribute name="cat" required="1" type="cat.type" />
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>   
   <attribute name="didref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="eidref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <cdata format="any" />
   </attribute>
   <attribute name="sort">
    <choice>
     <value>NE-Pers</value>
     <value>NE-Loc</value>
     <value>NE-Org</value>
     <value>NE-Other</value>
     <value>common</value>
    </choice>
   </attribute>
   <attribute name="form">
    <cdata format="any" />
   </attribute>
   <attribute name="agr">
    <choice>
     <value>Under</value>
     <value>Nmsi</value>
     <value>Nmsh</value>
     <value>Nmsf</value>
     <value>Nmpi</value>
     <value>Nmpd</value>
     <value>Nfsi</value>
     <value>Nfsd</value>
     <value>Nfpi</value>
     <value>Nfpd</value>
     <value>Nnsi</value>
     <value>Nnsd</value>
     <value>Nnpi</value>
     <value>Nnpd</value>
    </choice>
   </attribute>
   <attribute name="ref">
    <choice>
     <value>yes</value>
     <value>no</value>
    </choice>
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="node" type="node.type" />
    <element name="abbr" type="abbr.type" />
    <element name="w" type="w.type" />
    <element name="lb" type="lb.type" />
    <element name="mw" type="mw.type" />
    <element name="name" type="name.type" />
    <element name="pt" type="pt.type" />
    <element name="nid" type="nid.type" />
    <element name="tok" type="tok.type" />
    <element name="foreign" type="foreign.type" />
   </sequence>
  </container>
 </type>

 <type name="cat.type">
  <choice>
   <value>A-Elip</value>
   <value>A</value>
   <value>Adv</value>
   <value>AdvPA</value>
   <value>AdvPC</value>
   <value>APA</value>
   <value>APA</value>
   <value>APC</value>
   <value>C</value>
   <value>CL</value>
   <value>CLCHE</value>
   <value>CLDA</value>
   <value>CLQ</value>
   <value>CLR</value>
   <value>CLZADA</value>
   <value>Conj</value>
   <value>ConjArg</value>
   <value>CoordP</value>
   <value>DiscA</value>
   <value>DiscE</value>
   <value>DiscM</value>
   <value>Gerund</value>
   <value>H</value>
   <value>I</value>
   <value>M</value>
   <value>N-Elip</value>
   <value>N</value>
   <value>ND-Elip</value>
   <value>Nomin</value>
   <value>NPA</value>
   <value>NPC</value>
   <value>Participle</value>
   <value>PP-Elip</value>
   <value>PP</value>
   <value>PPD-Elip</value>
   <value>Pragmatic</value>
   <value>Prep-Elip</value>
   <value>Prep</value>
   <value>PrepD-Elip</value>
   <value>pro-com</value>
   <value>pro-ss</value>
   <value>Pron</value>
   <value>sp</value>
   <value>Subst</value>
   <value>T</value>
   <value>V-Elip</value>
   <value>V</value>
   <value>VD-Elip</value>
   <value>Verbalised</value>
   <value>VPA</value>
   <value>VPC</value>
   <value>VPF</value>
   <value>VPS</value>
  </choice>
 </type>

 <type name="abbr.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="aa" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="amb">
    <choice>
     <value>on</value>
     <value>off</value>
    </choice>
   </attribute>
   <attribute name="ana">
    <cdata format="any" />
   </attribute>
   <attribute name="usage">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <cdata format="any" />
   </attribute>
   <attribute name="sort">
    <choice>
     <value>NE-Pers</value>
     <value>NE-Loc</value>
     <value>NE-Org</value>
     <value>NE-Other</value>
     <value>common</value>
    </choice>
   </attribute>
   <attribute name="cat">
    <cdata format="any" />
   </attribute>
   <attribute name="exp">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="foreign.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="cat" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="aa" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="ana" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="lang">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="lb.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
  </container>
 </type>

 <type name="mw.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="usage">
    <cdata format="any" />
   </attribute>
   <attribute name="aa" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="exp">
    <cdata format="any" />
   </attribute>
   <attribute name="ana" required="1">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="name.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="ana" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="cat" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="aa" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="amb">
    <choice>
     <value>on</value>
     <value>off</value>
    </choice>
   </attribute>
   <attribute name="sort" required="1">
    <choice>
     <value>NE-Pers</value>
     <value>NE-Loc</value>
     <value>NE-Org</value>
     <value>NE-Other</value>
    </choice>
   </attribute>
   <attribute name="usage">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="nid.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="didref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="pt.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="type">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="tok.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="type">
    <choice>
     <value>lats</value>
     <value>lat</value>
     <value>cyr</value>
     <value>num</value>
     <value>latfc</value>
     <value>latac</value>
     <value>latm</value>
     <value>salph</value>
     <value>alphanum</value>
     <value>other</value>
    </choice>
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="w.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="usage">
    <cdata format="any" />
   </attribute>
   <attribute name="aa" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="ana" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="exp">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>
</pml_schema>