<?xml version="1.0" encoding="UTF-8"?>
<!--=======================================
    FAQ Map map type module.
    
    Represents a single FAQ publication
    
    Copyright (c) 2020 Your Name Here
    
    ======================================= -->
    
<!ENTITY % keydef           "keydef"           >
<!ENTITY % faq-question-set "faq-question-set" >
    
<!ENTITY % faq-map.content
                       "((%title;)?, 
                         (%topicmeta;)?,
                         (%keydef;)*,                         
                         (%faq-question-set;),
                         (%reltable;)*)"
>

<!ENTITY % faq-map.attributes
              "title
                          CDATA
                                    #IMPLIED
               id
                          ID
                                    #IMPLIED
               %conref-atts;
               anchorref
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %localization-atts;
               %topicref-atts;
               %select-atts;"
>
<!ELEMENT  faq-map %faq-map.content;>
<!ATTLIST  faq-map %faq-map.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "(map faq-map mapGroup faq-mapDomain)
                                   &included-domains;"
>

<!ATTLIST faq-map    %global-atts;  class CDATA "- map/map faq-map/faq-map "        >

    
 <!-- ======== End of FAQ Map Module ======  -->