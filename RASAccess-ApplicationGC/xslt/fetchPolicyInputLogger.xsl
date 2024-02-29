<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/fetchPolicyInputLogger.map" md5sum="8d7d951439f079b7a67dcbe6264915e8" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		fetchPolicyInputLogger.map
*   Map declaration(s):	fetchPolicyInputLogger
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfetchProductDetailsRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DfetchPolicy/xpath%3D%252Fbody/smo.xsd
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
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:in5="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:in="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:io="http://www.w3.org/2005/08/addressing"
    xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:in2="http://RACASBO"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:in4="http://GCLibrary/org/aig/access/BO"
    xmlns:in3="http://GCLibrary/org/aig/access/bo"
    xmlns:io4="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:out="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:map="http://RASAccess-ApplicationGC/xslt/fetchPolicyInputLogger"
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
              <xsl:value-of select="'out2:fetchPolicy'"/>
            </xsl:attribute>
            <xsl:call-template name="map:fetchPolicyInputLogger2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:fetchPolicyInputLogger">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:fetchPolicyInputLogger">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:fetchPolicy'"/>
      </xsl:attribute>
      <out:fetchPolicy>
        <!-- a simple data mapping: "in:fetchProductDetails/GCInputs/source"(string) to "out:source"(string) -->
        <xsl:if test="in:fetchProductDetails/GCInputs/source">
          <xsl:element name="out:source">
            <xsl:value-of select="in:fetchProductDetails/GCInputs/source"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:fetchProductDetails/GCInputs/medium"(string) to "out:medium"(string) -->
        <xsl:if test="in:fetchProductDetails/GCInputs/medium">
          <xsl:element name="out:medium">
            <xsl:value-of select="in:fetchProductDetails/GCInputs/medium"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:fetchProductDetails/GCInputs/campaign"(string) to "out:campaign"(string) -->
        <xsl:if test="in:fetchProductDetails/GCInputs/campaign">
          <xsl:element name="out:campaign">
            <xsl:value-of select="in:fetchProductDetails/GCInputs/campaign"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:fetchProductDetails/productCode"(string) to "out:ProductCd"(string) -->
        <xsl:if test="in:fetchProductDetails/productCode">
          <xsl:element name="out:ProductCd">
            <xsl:value-of select="in:fetchProductDetails/productCode"/>
          </xsl:element>
        </xsl:if>
      </out:fetchPolicy>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:fetchPolicyInputLogger2">
    <xsl:param name="body"/>
    <out:fetchPolicy>
      <!-- a simple data mapping: "$body/in:fetchProductDetails/GCInputs/source"(string) to "out:source"(string) -->
      <xsl:if test="$body/in:fetchProductDetails/GCInputs/source">
        <xsl:element name="out:source">
          <xsl:value-of select="$body/in:fetchProductDetails/GCInputs/source"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:fetchProductDetails/GCInputs/medium"(string) to "out:medium"(string) -->
      <xsl:if test="$body/in:fetchProductDetails/GCInputs/medium">
        <xsl:element name="out:medium">
          <xsl:value-of select="$body/in:fetchProductDetails/GCInputs/medium"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:fetchProductDetails/GCInputs/campaign"(string) to "out:campaign"(string) -->
      <xsl:if test="$body/in:fetchProductDetails/GCInputs/campaign">
        <xsl:element name="out:campaign">
          <xsl:value-of select="$body/in:fetchProductDetails/GCInputs/campaign"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:fetchProductDetails/productCode"(string) to "out:ProductCd"(string) -->
      <xsl:if test="$body/in:fetchProductDetails/productCode">
        <xsl:element name="out:ProductCd">
          <xsl:value-of select="$body/in:fetchProductDetails/productCode"/>
        </xsl:element>
      </xsl:if>
    </out:fetchPolicy>
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