<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/calculate_Premium_OutputMap.map" md5sum="d9b8cd5206bfec4c89f2bd6ffb79f5bc" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		calculate_Premium_OutputMap.map
*   Map declaration(s):	calculate_Premium_OutputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundDetails%257DPremiumCalculationSoapOut/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DcalculateCancellationRefundResponseMsg/xpath%3D%252Fbody/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:str="http://exslt.org/strings"
    xmlns:exsl="http://exslt.org/common"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:in2="wsdl.WebService_RefundDetails"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in="WebService_RefundDetails"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://GCLibrary/org/aig/access/BO"
    xmlns:out2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out4="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out="http://RACASBO"
    xmlns:out5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/calculate_Premium_OutputMap"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="date str exsl set math map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out2:calculateCancellationRefundResponseMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:calculate_Premium_OutputMap2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:calculate_Premium_OutputMap">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:calculate_Premium_OutputMap">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:calculateCancellationRefundResponseMsg'"/>
      </xsl:attribute>
      <out4:calculateCancellationRefundResponse>
        <response>
          <!-- a simple mapping with no associated source:  to "netPremium"(double) -->
          <xsl:element name="netPremium">
            <xsl:text>5000</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "jk_gst"(double) -->
          <xsl:element name="jk_gst">
            <xsl:text>500</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "gst"(double) -->
          <xsl:element name="gst">
            <xsl:text>500</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "stampDuty"(double) -->
          <xsl:element name="stampDuty">
            <xsl:text>1000</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "totalPremium"(double) -->
          <xsl:element name="totalPremium">
            <xsl:text>7000</xsl:text>
          </xsl:element>
        </response>
      </out4:calculateCancellationRefundResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:calculate_Premium_OutputMap2">
    <xsl:param name="body"/>
    <out4:calculateCancellationRefundResponse>
      <response>
        <!-- a simple mapping with no associated source:  to "netPremium"(double) -->
        <xsl:element name="netPremium">
          <xsl:text>5000</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "jk_gst"(double) -->
        <xsl:element name="jk_gst">
          <xsl:text>500</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "gst"(double) -->
        <xsl:element name="gst">
          <xsl:text>500</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "stampDuty"(double) -->
        <xsl:element name="stampDuty">
          <xsl:text>1000</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "totalPremium"(double) -->
        <xsl:element name="totalPremium">
          <xsl:text>7000</xsl:text>
        </xsl:element>
      </response>
    </out4:calculateCancellationRefundResponse>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>