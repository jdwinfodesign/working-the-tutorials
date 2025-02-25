<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % faq-question           "faq-question"                     >
<!ENTITY % faq-short-answer       "faq-short-answer"                 >
<!ENTITY % faq-answer-details     "faq-answer-details"               >
<!ENTITY % faq-question-statement "faq-question-statement"           >
<!--<!ENTITY % conbodydiv  "conbodydiv"                           >-->

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % faq-question-info-types
              "%no-topic-nesting;"
>
<!--                    LONG NAME: Concept                         -->
<!ENTITY % faq-question.content
                       "((%faq-question-statement;),
                         (%titlealts;)?,
                         (%faq-short-answer;),
                         (%prolog;)?,
                         (%faq-answer-details;)?,
                         (%related-links;)?,
                         (%faq-question-info-types;)*)"
>
<!ENTITY % faq-question.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  faq-question %faq-question.content;>
<!ATTLIST  faq-question %faq-question.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: FAQ answer details         -->
<!ENTITY % faq-answer-details.content
                       "((%body.cnt;)*,
                         (%section; |
                          %example;)*)"
>
<!ENTITY % faq-answer-details.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  faq-answer-details %faq-answer-details.content;>
<!ATTLIST  faq-answer-details %faq-answer-details.attributes;>

<!--                    LONG NAME: FAQ Short Answer -->
<!ENTITY % faq-short-answer.content
                       "(%title.cnt; |
                         %xref;)*"
>
<!ENTITY % faq-short-answer.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  faq-short-answer %faq-short-answer.content;>
<!ATTLIST  faq-short-answer %faq-short-answer.attributes;>



<!--                    LONG NAME: FAQ question statement -->
<!ENTITY % faq-question-statement.content
                       "(%title.cnt;)*"
>
<!ENTITY % faq-question-statement.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  faq-question-statement %faq-question-statement.content;>
<!ATTLIST  faq-question-statement %faq-question-statement.attributes;>


<!--                    LONG NAME: Concept Body division           -->
<!--<!ENTITY % conbodydiv.content
                       "(%example; |
                         %section;)*"
>
<!ENTITY % conbodydiv.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  conbodydiv %conbodydiv.content;>
<!ATTLIST  conbodydiv %conbodydiv.attributes;>-->



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  faq-question      %global-atts;  class CDATA "- topic/topic concept/concept faq-question/faq-question ">
<!ATTLIST  faq-question-statement      %global-atts;  class CDATA "- topic/title  concept/title faq-question/faq-question-statement ">
<!ATTLIST  faq-short-answer      %global-atts;  class CDATA "- topic/shortdesc  concept/shortdesc faq-question/faq-short-answer ">
<!ATTLIST  faq-answer-details      %global-atts;  class CDATA "- topic/body  concept/conbody faq-question/faq-answer-details ">
<!--<!ATTLIST  conbodydiv   %global-atts;  class CDATA "- topic/bodydiv concept/conbodydiv ">-->

<!-- ================== End of DITA Concept ==================== -->
 