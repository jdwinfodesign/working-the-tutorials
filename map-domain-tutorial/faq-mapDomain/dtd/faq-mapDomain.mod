<!-- ==================================
     FAQ Map Domain

     Copyright (c) 2020 Your Name Here

     ================================== -->

<!ENTITY % faq-question-set "faq-question-set" >
<!ENTITY % faq-question     "faq-question" >

<!ENTITY % faq-question-set.content
                       "((%topicmeta;)?, 
                         (%faq-question;)*)"
>

<!ENTITY % faq-question-set.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %topicref-atts;
               %univ-atts;"
>
<!ELEMENT  faq-question-set %faq-question-set.content;>
<!ATTLIST  faq-question-set %faq-question-set.attributes;>

<!ENTITY % faq-question.content
                       "((%topicmeta;)?)"
>

<!ENTITY % faq-question.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %topicref-atts;
               %univ-atts;"
>
<!ELEMENT  faq-question %faq-question.content;>
<!ATTLIST  faq-question %faq-question.attributes;>

<!ATTLIST faq-question-set    %global-atts;  class CDATA "+ map/topicref faq-map-d/faq-question-set "   >
<!ATTLIST faq-question    %global-atts;  class CDATA "+ map/topicref faq-map-d/faq-question "   >

