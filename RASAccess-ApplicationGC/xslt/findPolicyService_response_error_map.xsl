<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/findPolicyService_response_error_map.map" md5sum="307067915bbd38e58220fd6d9b06eee2" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		findPolicyService_response_error_map.map
*   Map declaration(s):	findPolicyService_response_error_map
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundDetails%257DPolicyDetailsSoapOut/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfindPolicyDetail_findPolicyDetailFaultMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:out3="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out="http://RACASBO"
    xmlns:map="http://Access-ApplicationGC/xslt/findPolicyService_response_error_map"
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
              <xsl:value-of select="'anyType'"/>
            </xsl:attribute>
            <xsl:call-template name="map:findPolicyService_response_error_map2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:findPolicyService_response_error_map"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:findPolicyService_response_error_map">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'anyType'"/>
      </xsl:attribute>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:findPolicyService_response_error_map2">
    <xsl:param name="body"/>
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
