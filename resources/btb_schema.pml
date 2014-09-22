<?xml version="1.0" encoding="utf-8"?>

<pml_schema xmlns="http://ufal.mff.cuni.cz/pdt/pml/schema/" version="1.1">
 
 <root name="btb">
  <structure>
   <member name="meta" required="1" type="meta.type"/>
   <member name="trees" role="#TREES" required="1">
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

 <type name="A.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw|abbr|foreign|(A,Pron)|(A,T)|(T,A)|(CoordP,Pron)|(A,Pron,T)|(Pragmatic,A)|(A,Pragmatic)),(pt|lb|Pragmatic)*)">
    <element name="Pron" type="Pron.type" />
    <element name="T" type="T.type" />
    <element name="abbr" type="abbr.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="foreign" type="foreign.type" />
    <element name="mw" type="mw.type" />
    <element name="w" type="w.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="A" type="A.type" />
    <element name="pt" type="pt.type" />
    <element name="lb" type="lb.type" />
   </sequence>
  </container>
 </type>

 <type name="A-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <choice>
     <value>eq</value>
     <value>var</value>
     <value>neg</value>
    </choice>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="pt" type="pt.type" />   
   </sequence>
  </container>
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
   <attribute name="ana" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="usage">
    <cdata format="any" />
   </attribute>
   <attribute name="type" required="1">
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
   <attribute name="cat" required="1">
    <cdata format="any" />
   </attribute>
   <attribute name="exp" required="1">
    <cdata format="any" />
   </attribute>
   <cdata format="any" />
  </container>
 </type>

 <type name="Adv.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw|tok|abbr|foreign|(T?,Adv,T?)|(Adv,Pron)),(pt|lb|Pragmatic)*)">
    <element name="mw" type="mw.type" />
    <element name="w" type="w.type" />
    <element name="lb" type="lb.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="Adv" type="Adv.type" />
    <element name="foreign" type="foreign.type" />
    <element name="T" type="T.type" />
    <element name="tok" type="tok.type" />
    <element name="abbr" type="abbr.type" />
    <element name="Pron" type="Pron.type" />
   </sequence>
  </container>
 </type>

 <type name="AdvPA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(((Adv|Gerund|Pron|AdvPC|AdvPA|CoordP),(DiscE|DiscM+|DiscA|Pragmatic)*,(T|N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|PP|PP-Elip|A|APA|APC|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE))|((((T|N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|PP|PP-Elip|A|APA|APC|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE),(DiscE|DiscM+|DiscA|Pragmatic)*)|nid),(Adv|Gerund|Pron|AdvPC|AdvPA|CoordP))|(abbr)),(pt|lb|Pragmatic)*)">
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="abbr" type="abbr.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="Pron" type="Pron.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="nid" type="nid.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
   </sequence>
  </container>
 </type>

 <type name="AdvPC.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(((Adv|Gerund),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)+)|((N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)+,(DiscE|DiscM+|DiscA|Pragmatic)*,(Adv|Gerund))),(pt|lb|Pragmatic)*)">
    <element name="AdvPC" type="AdvPC.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="NPA" type="NPA.type" />
    <element name="PP" type="PP.type" />
    <element name="APC" type="APC.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Pron" type="Pron.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="APA" type="APA.type" />
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="CLR" type="CLR.type" />
    <element name="A" type="A.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="lb" type="lb.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Subst" type="Subst.type" />
   </sequence>
  </container>
 </type>

 <type name="APA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(((A|Participle|APC|APA|CoordP),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE))|((((N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE),(DiscE|DiscM+|DiscA|Pragmatic)*)|nid),(A|Participle|APC|APA|CoordP|Pron))|abbr),(pt|lb|Pragmatic)*)">
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="Pron" type="Pron.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="nid" type="nid.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="APA" type="APA.type" />
    <element name="Subst" type="Subst.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="Participle" type="Participle.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="abbr" type="abbr.type" />
    <element name="CLZADA" type="CLZADA.type" />
   </sequence>
  </container>
 </type>

 <type name="APC.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,((nid?,(A|Participle|CoordP),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)+)|(((N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)+|(nid,(N|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)*)),(DiscE|DiscM+|DiscA|Pragmatic)*,(A|Participle|CoordP))|(abbr)),(pt|lb|Pragmatic)*)">
    <element name="DiscM" type="DiscM.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="NPA" type="NPA.type" />
    <element name="PP" type="PP.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="APC" type="APC.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="nid" type="nid.type" />
    <element name="Pron" type="Pron.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="pt" type="pt.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="APA" type="APA.type" />
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="A" type="A.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CLR" type="CLR.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="abbr" type="abbr.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="Participle" type="Participle.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
   </sequence>
  </container>
 </type>

 <type name="C.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="w" type="w.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="abbr" type="abbr.type" />
    <element name="C" type="C.type" />
    <element name="mw" type="mw.type" />
    <element name="T" type="T.type" />
   </sequence>
  </container>
 </type>

 <type name="CL.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,((DiscE|pt)*,(C|T))?,Pragmatic?,((V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised)|CLDA),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,Adv,CL,(pt|lb|Pragmatic)*))">
    <element name="CLDA" type="CLDA.type" />
    <element name="VPC" type="VPC.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="T" type="T.type" />
    <element name="VPA" type="VPA.type" />
    <element name="CL" type="CL.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
   </sequence>
  </container>
 </type>

 <type name="CLCHE.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic|DiscE)*,C,Pragmatic?,(V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,VPF,(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,T,CLCHE,(pt|lb|Pragmatic)*))">
    <element name="CLZADA" type="CLZADA.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="T" type="T.type" />
    <element name="VPA" type="VPA.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VPF" type="VPF.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="V" type="V.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="VPC" type="VPC.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="CLQ" type="CLQ.type" />
   </sequence>
  </container>
 </type>

 <type name="CLDA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised),(pt|lb|Pragmatic)*)">
    <element name="VPC" type="VPC.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="VPA" type="VPA.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="lb" type="lb.type" />
   </sequence>
  </container>
 </type>

 <type name="CLQ.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised|CLDA),(pt|lb|Pragmatic)*)">
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="lb" type="lb.type" />
    <element name="VPA" type="VPA.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V" type="V.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="VPC" type="VPC.type" />
    <element name="CLDA" type="CLDA.type" />
   </sequence>
  </container>
 </type>

 <type name="CLR.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised|CLDA|CLQ),(pt|lb|Pragmatic)*)">
    <element name="lb" type="lb.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VPF" type="VPF.type" />
    <element name="VPA" type="VPA.type" />
    <element name="V" type="V.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="VPC" type="VPC.type" />
    <element name="CLDA" type="CLDA.type" />
   </sequence>
  </container>
 </type>

 <type name="CLZADA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic|DiscE)*,C,Pragmatic?,(V|V-Elip|VD-Elip|Participle|CoordP|VPC|VPA|VPS|VPF|Verbalised),(pt|lb|Pragmatic)*)">
    <element name="Verbalised" type="Verbalised.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="VPC" type="VPC.type" />
    <element name="lb" type="lb.type" />
    <element name="C" type="C.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VPA" type="VPA.type" />
   </sequence>
  </container>
 </type>

 <type name="Conj.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((C|T|Pron|Adv|pt|lb|Pragmatic)+)">
    <element name="T" type="T.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Pron" type="Pron.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
   </sequence>
  </container>
 </type>

 <type name="ConjArg.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="VPF" type="VPF.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="VPA" type="VPA.type" />
    <element name="C" type="C.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="M" type="M.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="Prep" type="Prep.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="V" type="V.type" />
    <element name="Pron" type="Pron.type" />   
   </sequence>
  </container>
 </type>

 <type name="CoordP.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
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
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(Conj|ConjArg|DiscE|DiscM+|DiscA|Pragmatic)+,(pt|lb|Pragmatic)*)|(Adv,CoordP))">
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="ConjArg" type="ConjArg.type" />
    <element name="lb" type="lb.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Conj" type="Conj.type" />
    <element name="pt" type="pt.type" />
    <element name="DiscE" type="DiscE.type" />
   </sequence>
  </container>
 </type>

 <type name="DiscA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="Pron" type="Pron.type" />
    <element name="V" type="V.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Conj" type="Conj.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="PP" type="PP.type" />
    <element name="VPC" type="VPC.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="Prep" type="Prep.type" />
    <element name="APC" type="APC.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="M" type="M.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="C" type="C.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="VPA" type="VPA.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="VPF" type="VPF.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />    
   </sequence>
  </container>
 </type>

 <type name="DiscE.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="I" type="I.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="Prep" type="Prep.type" />
    <element name="Pron" type="Pron.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="Conj" type="Conj.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="V" type="V.type" />
    <element name="T" type="T.type" />
    <element name="APA" type="APA.type" />
    <element name="VPA" type="VPA.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="A" type="A.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="M" type="M.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="C" type="C.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Subst" type="Subst.type" />
   </sequence>
  </container>
 </type>

 <type name="DiscM.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="Pron" type="Pron.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="Conj" type="Conj.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="V" type="V.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="Prep" type="Prep.type" />
    <element name="APC" type="APC.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="M" type="M.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="C" type="C.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Subst" type="Subst.type" />
    <element name="T" type="T.type" />
    <element name="APA" type="APA.type" />
    <element name="VPA" type="VPA.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="A" type="A.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
   </sequence>
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

 <type name="Gerund.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|(T?,Gerund,(T|Pron)*)),(pt|lb|Pragmatic)*)">
    <element name="Pron" type="Pron.type" />
    <element name="w" type="w.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="lb" type="lb.type" />
    <element name="T" type="T.type" />
    <element name="Gerund" type="Gerund.type" />
   </sequence>
  </container>
 </type>

 <type name="H.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
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
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|tok|name|abbr|foreign|(H,T)),(pt|lb|Pragmatic)*)">
    <element name="pt" type="pt.type" />
    <element name="w" type="w.type" />
    <element name="foreign" type="foreign.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="H" type="H.type" />
    <element name="tok" type="tok.type" />
    <element name="lb" type="lb.type" />
    <element name="abbr" type="abbr.type" />
    <element name="name" type="name.type" />
    <element name="T" type="T.type" />
   </sequence>
  </container>
 </type>

 <type name="I.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw),(pt|lb|Pragmatic)*)">
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="pt" type="pt.type" />
    <element name="w" type="w.type" />
    <element name="lb" type="lb.type" />
    <element name="mw" type="mw.type" />
   </sequence>
  </container>
 </type>

 <type name="M.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw|tok|foreign|((M|C)+)|(M,T)|(T,M)|(M,Pron)|(Adv,M)),(pt|lb|Pragmatic)*)">
    <element name="Pron" type="Pron.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="foreign" type="foreign.type" />
    <element name="w" type="w.type" />
    <element name="pt" type="pt.type" />
    <element name="tok" type="tok.type" />
    <element name="M" type="M.type" />
    <element name="Adv" type="Adv.type" />
    <element name="mw" type="mw.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="T" type="T.type" />
   </sequence>
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

 <type name="N.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
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
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(w|mw|tok|name|abbr|foreign|(N,Pron,T)|(N,Pron)|(Pron,N)|(CoordP,Pron)|(N,T)|(Adv,N)|(T,N)|(N,Pragmatic)|(Pragmatic,N)),(pt|lb|Pragmatic)*))">
    <element name="N" type="N.type" />
    <element name="T" type="T.type" />
    <element name="abbr" type="abbr.type" />
    <element name="name" type="name.type" />
    <element name="Adv" type="Adv.type" />
    <element name="lb" type="lb.type" />
    <element name="mw" type="mw.type" />
    <element name="tok" type="tok.type" />
    <element name="Pron" type="Pron.type" />
    <element name="foreign" type="foreign.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="w" type="w.type" />
   </sequence>
  </container>
 </type>

 <type name="N-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="type">
    <cdata format="any" />
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="pt" type="pt.type" />
   </sequence>
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

 <type name="ND-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <choice>
     <value>worldknowledge</value>
     <value>discourse</value>
    </choice>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="form">
    <cdata format="any" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="pt" type="pt.type" />
   </sequence>
  </container>
 </type>

 <type name="nid.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="Nomin.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="agr" required="1">
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
   <attribute name="sort">
    <choice>
     <value>NE-Pers</value>
     <value>NE-Loc</value>
     <value>NE-Org</value>
     <value>NE-Other</value>
     <value>common</value>
    </choice>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(Gerund|Participle|N|A|V|Adv|M|H|Pron|C|T|Prep|I|Subst|Nomin|Verbalised|NPA|NPC|N-Elip|APA|APC|AdvPA|AdvPC|VPC|VPA|VPS|VPF|V-Elip|PP|PP-Elip|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|abbr|name|pt),(pt|lb|Pragmatic)*))">
    <element name="T" type="T.type" />
    <element name="APA" type="APA.type" />
    <element name="VPA" type="VPA.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="A" type="A.type" />
    <element name="VPF" type="VPF.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="name" type="name.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="abbr" type="abbr.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="M" type="M.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Subst" type="Subst.type" />
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="Prep" type="Prep.type" />
    <element name="Pron" type="Pron.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
   </sequence>
  </container>
 </type>

 <type name="NPA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
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
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(((N|Subst|Nomin|Pron|NPC|NPA|N-Elip|ND-Elip|H|CoordP),(DiscE|DiscM+|DiscA|Pragmatic)*,(NPA|NPC|Participle|A|Adv|M|H|N|Pron|A-Elip|APA|APC|PP|PP-Elip|AdvPA|AdvPC|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE))|(((NPA|NPC|Participle|A|Adv|M|H|N|Pron|A-Elip|APA|APC|PP|PP-Elip|AdvPA|AdvPC|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)|nid),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|Subst|Nomin|Pron|NPC|NPA|N-Elip|ND-Elip|H|CoordP))|(nid,(M|AdvPA|Adv))|(abbr|name)),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,(N|NPA|NPC),Pragmatic,(pt|lb|Pragmatic)*))">
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="A-Elip" type="A-Elip.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="nid" type="nid.type" />
    <element name="Pron" type="Pron.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="APA" type="APA.type" />
    <element name="ND-Elip" type="ND-Elip.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="abbr" type="abbr.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="name" type="name.type" />
    <element name="Participle" type="Participle.type" />
    <element name="M" type="M.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
   </sequence>
  </container>
 </type>

 <type name="NPC.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
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
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(((N|Pron|N-Elip|ND-Elip|CoordP),(DiscE|DiscM+|DiscA|Pragmatic)*,(NPC|NPA|N-Elip|N|Subst|Nomin))|(((NPC|NPA|N-Elip|N|Subst|Nomin,(DiscE|DiscM+|DiscA|Pragmatic)*)|nid),(N|Pron|N-Elip|ND-Elip|CoordP))|(Adv,NPC)),(pt|lb|Pragmatic)*)">
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="nid" type="nid.type" />
    <element name="Pron" type="Pron.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="NPA" type="NPA.type" />
    <element name="lb" type="lb.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="ND-Elip" type="ND-Elip.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
   </sequence>
  </container>
 </type>

 <type name="Participle.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(pro-ss?,(pt|lb|Pragmatic)*,(w|((T|Pron)*,Participle,(T|Pron)*,DiscA*,Participle?,(T|Pron)*)|(Pron+,CoordP)),(pt|lb|Pragmatic)*)">
    <element name="Pron" type="Pron.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="w" type="w.type" />
    <element name="pro-ss" type="pro-ss.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="T" type="T.type" />
    <element name="Participle" type="Participle.type" />
    <element name="lb" type="lb.type" />
    <element name="DiscA" type="DiscA.type" />
   </sequence>
  </container>
 </type>

 <type name="PP.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(Prep|Prep-Elip|PrepD-Elip|CoordP),DiscA*,(A|APA|APC|Participle|H|N|Subst|Nomin|Pron|NPC|NPA|A|APA|APC|Adv|AdvPA|AdvPC|N-Elip|CoordP|PP|PP-Elip|CLDA|CLCHE|CL),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,Adv,PP,(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,PP,Adv,(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,PP,(A|APA|APC|Participle),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,T,(PP|CoordP),(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,PP,PP,(pt|lb|Pragmatic)*)|((pt|lb|Pragmatic)*,nid,PP,(pt|lb|Pragmatic)*)|(foreign))">
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="A" type="A.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="PrepD-Elip" type="PrepD-Elip.type" />
    <element name="Participle" type="Participle.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="NPA" type="NPA.type" />
    <element name="PP" type="PP.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="Prep-Elip" type="Prep-Elip.type" />
    <element name="Prep" type="Prep.type" />
    <element name="APC" type="APC.type" />
    <element name="Pron" type="Pron.type" />
    <element name="nid" type="nid.type" />
    <element name="foreign" type="foreign.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="pt" type="pt.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="CoordP" type="CoordP.type" />
   </sequence>
  </container>
 </type>

 <type name="PP-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="PPD-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="type">
    <choice>
     <value>worldknowledge</value>
     <value>discourse</value>
    </choice>
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="form">
    <cdata format="any" />
   </attribute>
  </container>
 </type>

 <type name="Pragmatic.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(Gerund|Participle|N|A|V|Adv|M|H|Pron|C|T|Prep|I|Subst|Nomin|Verbalised|NPA|NPC|N-Elip|APA|APC|AdvPA|AdvPC|VPC|VPA|VPS|VPF|V-Elip|PP|PP-Elip|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|Conj|I|pt)+,(pt|lb|Pragmatic)*)">
    <element name="APC" type="APC.type" />
    <element name="Prep" type="Prep.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="NPA" type="NPA.type" />
    <element name="PP" type="PP.type" />
    <element name="VPC" type="VPC.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="Conj" type="Conj.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="Pron" type="Pron.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="CLR" type="CLR.type" />
    <element name="A" type="A.type" />
    <element name="VPF" type="VPF.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="T" type="T.type" />
    <element name="APA" type="APA.type" />
    <element name="VPA" type="VPA.type" />
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="lb" type="lb.type" />
    <element name="C" type="C.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Subst" type="Subst.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="M" type="M.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
   </sequence>
  </container>
 </type>

 <type name="Prep.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="mw" type="mw.type" />
    <element name="N" type="N.type" />
    <element name="w" type="w.type" />
    <element name="Prep" type="Prep.type" />   
   </sequence>
  </container>
 </type>

 <type name="Prep-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="PrepD-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="form" required="1">
    <cdata format="any" />
   </attribute>
  </container>
 </type>

 <type name="pro-com.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="pro-ss.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
  </container>
 </type>

 <type name="Pron.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="ref">
    <choice>
     <value>yes</value>
     <value>no</value>
    </choice>
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw|(Pron,T,T?)|(T,Pron)|(Adv,Pron)|(Pron,Pron)),(pt|lb|Pragmatic)*)">
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="pt" type="pt.type" />
    <element name="w" type="w.type" />
    <element name="Pron" type="Pron.type" />
    <element name="Adv" type="Adv.type" />
    <element name="lb" type="lb.type" />
    <element name="mw" type="mw.type" />
    <element name="T" type="T.type" />
   </sequence>
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

 <type name="S.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,((Gerund|Participle|N|A|V|Adv|M|H|Pron|C|T|Prep|I|Subst|Nomin|Verbalised|NPA|NPC|N-Elip|APA|APC|AdvPA|AdvPC|VPC|VPA|VPS|VPF|V-Elip|PP|PP-Elip|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)|Pragmatic+),(pt|lb|Pragmatic)*)">
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="V" type="V.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="Pron" type="Pron.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="Prep" type="Prep.type" />
    <element name="APC" type="APC.type" />
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="PP" type="PP.type" />
    <element name="VPC" type="VPC.type" />
    <element name="NPA" type="NPA.type" />
    <element name="I" type="I.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Adv" type="Adv.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="M" type="M.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="VPF" type="VPF.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="VPA" type="VPA.type" />
   </sequence>
  </container>
 </type>

 <type name="sp.type">
  <sequence role="#CHILDNODES" content_pattern="((Gerund|Participle|N|A|V|Adv|M|H|Pron|C|T|Prep|I|Subst|Nomin|Verbalised|NPA|NPC|N-Elip|APA|APC|AdvPA|AdvPC|VPC|VPA|VPS|VPF|V-Elip|PP|PP-Elip|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|pt|lb|Pragmatic)+)">
   <element name="VPF" type="VPF.type" />
   <element name="V-Elip" type="V-Elip.type" />
   <element name="Gerund" type="Gerund.type" />
   <element name="CLR" type="CLR.type" />
   <element name="N-Elip" type="N-Elip.type" />
   <element name="CL" type="CL.type" />
   <element name="A" type="A.type" />
   <element name="VPA" type="VPA.type" />
   <element name="N" type="N.type" />
   <element name="NPC" type="NPC.type" />
   <element name="T" type="T.type" />
   <element name="APA" type="APA.type" />
   <element name="Adv" type="Adv.type" />
   <element name="Nomin" type="Nomin.type" />
   <element name="Subst" type="Subst.type" />
   <element name="CLCHE" type="CLCHE.type" />
   <element name="C" type="C.type" />
   <element name="lb" type="lb.type" />
   <element name="M" type="M.type" />
   <element name="VPS" type="VPS.type" />
   <element name="Participle" type="Participle.type" />
   <element name="CLZADA" type="CLZADA.type" />
   <element name="AdvPA" type="AdvPA.type" />
   <element name="CLQ" type="CLQ.type" />
   <element name="Prep" type="Prep.type" />
   <element name="APC" type="APC.type" />
   <element name="I" type="I.type" />
   <element name="CLDA" type="CLDA.type" />
   <element name="VPC" type="VPC.type" />
   <element name="PP" type="PP.type" />
   <element name="NPA" type="NPA.type" />
   <element name="H" type="H.type" />
   <element name="AdvPC" type="AdvPC.type" />
   <element name="Pragmatic" type="Pragmatic.type" />
   <element name="V" type="V.type" />
   <element name="Verbalised" type="Verbalised.type" />
   <element name="CoordP" type="CoordP.type" />
   <element name="PP-Elip" type="PP-Elip.type" />
   <element name="pt" type="pt.type" />
   <element name="Pron" type="Pron.type" />
  </sequence>
 </type>

 <type name="Subst.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
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
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(A|Participle|Pron|M|H|I|Adv),(pt|lb|Pragmatic)*))">
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
    <element name="M" type="M.type" />
    <element name="Participle" type="Participle.type" />
    <element name="A" type="A.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="Pron" type="Pron.type" />
    <element name="H" type="H.type" />
    <element name="I" type="I.type" />
   </sequence>
  </container>
 </type>

 <type name="T.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(w|mw|foreign|(T,T)|(Adv,T)),(pt|lb|Pragmatic)*)">
    <element name="mw" type="mw.type" />
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
    <element name="T" type="T.type" />
    <element name="w" type="w.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="foreign" type="foreign.type" />
   </sequence>
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

 <type name="trailer.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="type">
    <cdata format="any" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(#TEXT|text|w|pt|tok|s|Gerund|Participle|N|A|V|Adv|M|H|Pron|C|T|Prep|I|Subst|Nomin|Verbalised|NPA|NPC|N-Elip|APA|APC|AdvPA|AdvPC|VPC|VPA|VPS|VPF|V-Elip|PP|PP-Elip|CoordP|CL|CLR|CLDA|CLZADA|CLQ|CLCHE)*">
    <text />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="VPF" type="VPF.type" />
    <element name="A" type="A.type" />
    <element name="CLR" type="CLR.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="text" type="text.type" />
    <element name="VPA" type="VPA.type" />
    <element name="APA" type="APA.type" />
    <element name="T" type="T.type" />
    <element name="Subst" type="Subst.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="C" type="C.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="M" type="M.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="Prep" type="Prep.type" />
    <element name="PP" type="PP.type" />
    <element name="VPC" type="VPC.type" />
    <element name="NPA" type="NPA.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="I" type="I.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="tok" type="tok.type" />
    <element name="H" type="H.type" />
    <element name="V" type="V.type" />
    <element name="s" type="s.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="w" type="w.type" />
    <element name="Pron" type="Pron.type" />
   </sequence>
  </container>
 </type>

 <type name="V.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(pro-ss?,(pt|lb|Pragmatic)*,(w|abbr|foreign|((T|Pron)*,V,(T|Pron)*)|(V?,(T|Pron)*,((V,(T|Pron)*,Pragmatic?,DiscA*,Pragmatic?,(Participle|V-Elip|VD-Elip)?,Pragmatic?,Participle?)|CoordP))|(T,(V-Elip|VD-Elip))|((V-Elip|VD-Elip),Participle)|(Participle,V,Participle)|((Participle?,T?,Pron*,Pragmatic?,DiscA*,Pragmatic?,V,(T|Pron)*))|((T,V,Pron*,V,Pragmatic?,DiscA*,Pragmatic?,Participle?))|((T,V,Pron*,CoordP))|(V,Adv)|(nid,V)|(C,(T|Pron)*,Pragmatic?,((V,Pragmatic?,DiscA*,Pragmatic?,Participle?,T?)|CoordP))),(pt|lb|Pragmatic)*)">
    <element name="abbr" type="abbr.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="C" type="C.type" />
    <element name="lb" type="lb.type" />
    <element name="Adv" type="Adv.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="T" type="T.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="nid" type="nid.type" />
    <element name="Pron" type="Pron.type" />
    <element name="w" type="w.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="pt" type="pt.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="pro-ss" type="pro-ss.type" />
    <element name="foreign" type="foreign.type" />
   </sequence>
  </container>
 </type>

 <type name="V-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <choice>
     <value>eq</value>
     <value>var</value>
     <value>neg</value>
    </choice>
   </attribute>
   <attribute name="idref" required="1">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="pt" type="pt.type" />
    <element name="pro-ss" type="pro-ss.type" />   
   </sequence>
  </container>
 </type>

 <type name="VD-Elip.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="gram">
    <cdata format="any" />
   </attribute>
   <attribute name="type">
    <choice>
     <value>worldknowledge</value>
     <value>exists</value>
     <value>discourse</value>
    </choice>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <attribute name="form">
    <cdata format="any" />
   </attribute>
   <sequence role="#CHILDNODES">
    <element name="pt" type="pt.type" />
    <element name="pro-ss" type="pro-ss.type" />    
   </sequence>
  </container>
 </type>

 <type name="Verbalised.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(pro-ss?,(pt|lb|Pragmatic)*,(T|I|Adv),(pt|lb|Pragmatic)*)">
    <element name="pro-ss" type="pro-ss.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="pt" type="pt.type" />
    <element name="I" type="I.type" />
    <element name="Adv" type="Adv.type" />
    <element name="lb" type="lb.type" />
    <element name="T" type="T.type" />
   </sequence>
  </container>
 </type>

 <type name="VPA.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,((T,(DiscE|DiscM+|DiscA|Pragmatic)*,(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised))|((VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|H|Subst|Nomin|Pron|Participle|NPC|NPA|N-Elip|M|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|Gerund|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip))|((((N|H|Subst|Nomin|Pron|Participle|NPC|NPA|N-Elip|M|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|Gerund|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip),(DiscE|DiscM+|DiscA|Pragmatic)*)|nid),(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised))|(DiscM,(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised),(N|H|Subst|Nomin|Pron|Participle|NPC|NPA|N-Elip|M|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|Gerund|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip),DiscM)|(DiscM,(N|H|Subst|Nomin|Pron|Participle|NPC|NPA|N-Elip|M|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|Gerund|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip),(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised),DiscM)),(pt|lb|Pragmatic)*)">
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Subst" type="Subst.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="lb" type="lb.type" />
    <element name="M" type="M.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="VPS" type="VPS.type" />
    <element name="Participle" type="Participle.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="PPD-Elip" type="PPD-Elip.type" />
    <element name="Gerund" type="Gerund.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CLR" type="CLR.type" />
    <element name="A" type="A.type" />
    <element name="VPA" type="VPA.type" />
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="T" type="T.type" />
    <element name="ND-Elip" type="ND-Elip.type" />
    <element name="APA" type="APA.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Pron" type="Pron.type" />
    <element name="nid" type="nid.type" />
    <element name="APC" type="APC.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="NPA" type="NPA.type" />
    <element name="PP" type="PP.type" />
    <element name="VPC" type="VPC.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="DiscM" type="DiscM.type" />
   </sequence>
  </container>
 </type>

 <type name="VPC.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="(((pt|lb|Pragmatic)*,(((V|Participle|CoordP|V-Elip|VD-Elip|Verbalised),((DiscE|DiscM+|DiscA|Pragmatic)|(N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip))*,(N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip))|(((N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip,(DiscE|DiscM+|DiscA|Pragmatic)*)+|(nid,(N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip,(DiscE|DiscM+|DiscA|Pragmatic)*)*)),(DiscE|DiscM+|DiscA|Pragmatic)*,(V|Participle|CoordP|V-Elip|VD-Elip|Verbalised),((DiscE|DiscM+|DiscA|Pragmatic)*,(N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip))+)|(((nid?,nid?)|(N|H|Subst|Nomin|Pron|Participle|M|NPC|NPA|N-Elip|CoordP|A|APA|APC|PP|PP-Elip|PPD-Elip|Adv|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip,(DiscE|DiscM+|DiscA|Pragmatic)*)+),(DiscE|DiscM+|DiscA|Pragmatic)*,(V|Participle|CoordP|V-Elip|VD-Elip|Verbalised))),(pt|lb|Pragmatic)*)|(Adv,VPC))">
    <element name="CLDA" type="CLDA.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="NPA" type="NPA.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="H" type="H.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="APC" type="APC.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Pron" type="Pron.type" />
    <element name="nid" type="nid.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="pt" type="pt.type" />
    <element name="N" type="N.type" />
    <element name="NPC" type="NPC.type" />
    <element name="ND-Elip" type="ND-Elip.type" />
    <element name="APA" type="APA.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="CLR" type="CLR.type" />
    <element name="CL" type="CL.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="A" type="A.type" />
    <element name="M" type="M.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="PPD-Elip" type="PPD-Elip.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Adv" type="Adv.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Subst" type="Subst.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="lb" type="lb.type" />
   </sequence>
  </container>
 </type>

 <type name="VPF.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,(((VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised),(DiscE|Pragmatic|DiscM)+)|((DiscE|Pragmatic|DiscM)+,(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised))|(DiscE,C,(VD-Elip|V|V-Elip|Participle|CoordP|VPC|VPA|VPS|Verbalised))),(pt|lb|Pragmatic)*)">
    <element name="VPC" type="VPC.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="pt" type="pt.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="VPA" type="VPA.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="Participle" type="Participle.type" />
    <element name="VPS" type="VPS.type" />
    <element name="lb" type="lb.type" />
    <element name="C" type="C.type" />
   </sequence>
  </container>
 </type>

 <type name="VPS.type">
  <container role="#NODE">
   <attribute name="id" role="#ID" required="1">
    <cdata format="ID"/>
   </attribute>
   <attribute name="idref">
    <cdata format="PMLREF" />
   </attribute>
   <sequence role="#CHILDNODES" content_pattern="((pt|lb|Pragmatic)*,DiscM*,(((VD-Elip|V|V-Elip|Participle|CoordP|VPC|Verbalised),(DiscE|DiscM+|DiscA|Pragmatic)*,(N|H|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|PP|PP-Elip|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip))|((((N|H|Subst|Nomin|Pron|NPC|NPA|N-Elip|CoordP|PP|PP-Elip|AdvPA|AdvPC|CL|CLR|CLDA|CLZADA|CLQ|CLCHE|ND-Elip),(DiscE|DiscM+|DiscA|Pragmatic)*)|nid),(VD-Elip|V|V-Elip|Participle|CoordP|VPC|Verbalised))),DiscM*,(pt|lb|Pragmatic)*)">
    <element name="Pragmatic" type="Pragmatic.type" />
    <element name="V" type="V.type" />
    <element name="Verbalised" type="Verbalised.type" />
    <element name="pt" type="pt.type" />
    <element name="PP-Elip" type="PP-Elip.type" />
    <element name="CoordP" type="CoordP.type" />
    <element name="DiscE" type="DiscE.type" />
    <element name="Pron" type="Pron.type" />
    <element name="nid" type="nid.type" />
    <element name="CLQ" type="CLQ.type" />
    <element name="CLDA" type="CLDA.type" />
    <element name="NPA" type="NPA.type" />
    <element name="VPC" type="VPC.type" />
    <element name="PP" type="PP.type" />
    <element name="H" type="H.type" />
    <element name="AdvPC" type="AdvPC.type" />
    <element name="DiscM" type="DiscM.type" />
    <element name="DiscA" type="DiscA.type" />
    <element name="Nomin" type="Nomin.type" />
    <element name="Subst" type="Subst.type" />
    <element name="CLCHE" type="CLCHE.type" />
    <element name="lb" type="lb.type" />
    <element name="VD-Elip" type="VD-Elip.type" />
    <element name="Participle" type="Participle.type" />
    <element name="CLZADA" type="CLZADA.type" />
    <element name="AdvPA" type="AdvPA.type" />
    <element name="V-Elip" type="V-Elip.type" />
    <element name="N-Elip" type="N-Elip.type" />
    <element name="CL" type="CL.type" />
    <element name="CLR" type="CLR.type" />
    <element name="NPC" type="NPC.type" />
    <element name="N" type="N.type" />
    <element name="ND-Elip" type="ND-Elip.type" />
   </sequence>
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