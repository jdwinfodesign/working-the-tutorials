<!-- =================================================================
     DocBook-like Paragraph Domain Module
    
     Author: your name here

     Copyright (c) 2019 copyright holder
     
     license to use or not use or whatever
          
     ============================================================= -->
     
<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % para 				"para" 			>
<!ENTITY % wordasword 	"wordasword" >
     
<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--          LONG NAME: Word as Word inline element               -->

<!ENTITY % wordasword.content  
					 "(#PCDATA)*
					 "
>
<!ENTITY % wordasword.attributes
					 "
					 %univ-atts;
					 keyref
					 	CDATA
					 	#IMPLIED
					 outputclass
					 	 CDATA
					 	 #IMPLIED
					 "
>

<!ELEMENT wordasword %wordasword.content; >
<!ATTLIST wordasword %wordasword.attributes; >

<!--          LONG NAME: DocBook-like paragraph               -->

<!ENTITY % para.cnt
              "#PCDATA |
               %basic.block.nopara; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %txt.incl;"
>

<!ENTITY % para.content
                       "(%para.cnt;)*"
>
<!ENTITY % para.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  para %para.content;>
<!ATTLIST  para %para.attributes;>




<!ATTLIST para %global-atts;  class CDATA "+ topic/p dbPara-d/para "  >
<!ATTLIST wordasword %global-atts;  class CDATA "+ topic/keyword markup-d/markupname xml-d/xmlelement dbPara-d/wordasword "  >