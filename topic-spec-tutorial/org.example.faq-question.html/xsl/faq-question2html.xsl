<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
	version="2.0"
	exclude-result-prefixes="xs">
	
	<!-- ===========================================================
    HTML generation templates for the FAQ Question DITA topic
    specialization.
    
    Copyright (c) 2020 Your Name Here
    
    =========================================================== -->
<!-- uncomment to verify user override -->	
<!--	<xsl:template match="/|node()|@*" mode="gen-user-head">
		<xsl:element name="span">Hello, world!</xsl:element>
	</xsl:template>-->
	
	<xsl:template match="*[contains(@class, ' faq-question/faq-question-statement ')]">
		<xsl:param name="headinglevel" as="xs:integer">
			<xsl:choose>
				<xsl:when test="count(ancestor::*[contains(@class, ' topic/topic ')]) > 6">6</xsl:when>
				<xsl:otherwise><xsl:sequence select="count(ancestor::*[contains(@class, ' topic/topic ')])"/></xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:element name="h{$headinglevel}">
			<xsl:attribute name="class">topictitle<xsl:value-of select="$headinglevel"/></xsl:attribute>
			<xsl:call-template name="commonattributes">
				<xsl:with-param name="default-output-class">topictitle<xsl:value-of select="$headinglevel"/></xsl:with-param>
			</xsl:call-template>
			<xsl:attribute name="id"><xsl:apply-templates select="." mode="return-aria-label-id"/></xsl:attribute>
			<!-- from tutorial -->
			<div class="faq-question-statement" style="background-color: #FFFFA0">
				<span class="faq-question-statement-q">Q. </span>
				<xsl:apply-templates/>
			</div>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="*[contains(@class, ' faq-question/faq-answer ')]">
		<div>
			<xsl:call-template name="commonattributes"/>
			<xsl:call-template name="setidaname"/>
			<xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
			<xsl:apply-templates select="preceding-sibling::*[contains(@class, ' topic/abstract ')]" mode="outofline"/>
			
			<!-- get the shortdesc para -->
			<xsl:apply-templates select="preceding-sibling::*[contains(@class, ' topic/shortdesc ')]" mode="outofline"/>
			
			<!-- Insert pre-req links - after shortdesc - unless there is a prereq section about -->
			<xsl:apply-templates select="following-sibling::*[contains(@class, ' topic/related-links ')]" mode="prereqs"/>
			<span>A: <xsl:value-of select="name(parent::*)"/> / <xsl:value-of select="name(.)"/> / <xsl:value-of select="name(child::*[1])"/>|||</span>
			<xsl:apply-templates/>
			<xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
		</div>
	</xsl:template>
	
</xsl:stylesheet> 