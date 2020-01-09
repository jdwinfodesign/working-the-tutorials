<!-- ====================================================
     DocBook-like Paragraph Domain Module
    
     Author: your name here

     Copyright (c) 2019 copyright holder
     
     license to use or not use or whatever
          
     ==================================================== -->

<!--                    LONG NAME: DocBook-like Paragraph                            -->

<!ELEMENT  wordasword  (#PCDATA)
>
<!ATTLIST  wordasword 
                             outputclass
                          CDATA
                                    #IMPLIED>

<!ELEMENT para (#PCDATA | wordasword)*>


<!ATTLIST para class CDATA "+ topic/p dbPara-d/para "  >
<!ATTLIST wordasword class CDATA "+ topic/keyword markup-d/markupname xml-d/xmlelement dbPara-d/wordasword "  >