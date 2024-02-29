<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/GetRASEMIDetailsOutputMap.map" md5sum="4693434b073d6f2c30c925ffe50d0b23" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		GetRASEMIDetailsOutputMap.map
*   Map declaration(s):	GetRASEMIDetailsOutputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DgetRASEmiDetailsResponse/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DgetEMIDetailsResponseMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out2="http://RACASBO"
    xmlns:out5="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out4="http://GCLibrary/org/aig/access/BO"
    xmlns:out="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://RASAccess-ApplicationGC/xslt/GetRASEMIDetailsOutputMap"
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
              <xsl:value-of select="'out3:getEMIDetailsResponseMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:GetRASEMIDetailsOutputMap2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:GetRASEMIDetailsOutputMap">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:GetRASEMIDetailsOutputMap">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:getEMIDetailsResponseMsg'"/>
      </xsl:attribute>
      <out5:getEMIDetailsResponse>
        <!-- a simple data mapping: "in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails[1]/emiFlag"(string) to "emiPolicy"(string) -->
        <xsl:element name="emiPolicy">
          <xsl:value-of select="in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails[1]/emiFlag"/>
        </xsl:element>
        <!-- a simple data mapping: "in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiFinancierName"(string) to "emiFinancierName"(string) -->
        <xsl:element name="emiFinancierName">
          <xsl:value-of select="in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiFinancierName"/>
        </xsl:element>
        <!-- a simple data mapping: "in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiLan"(string) to "emiLan"(string) -->
        <xsl:element name="emiLan">
          <xsl:value-of select="in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiLan"/>
        </xsl:element>
        <!-- a simple data mapping: "in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/premFinaPartnerName"(string) to "premFinaPartnerName"(string) -->
        <xsl:element name="premFinaPartnerName">
          <xsl:value-of select="in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/premFinaPartnerName"/>
        </xsl:element>
      </out5:getEMIDetailsResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:GetRASEMIDetailsOutputMap2">
    <xsl:param name="body"/>
    <out5:getEMIDetailsResponse>
      <!-- a simple data mapping: "$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails[1]/emiFlag"(string) to "emiPolicy"(string) -->
      <xsl:element name="emiPolicy">
        <xsl:value-of select="$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails[1]/emiFlag"/>
      </xsl:element>
      <!-- a simple data mapping: "$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiFinancierName"(string) to "emiFinancierName"(string) -->
      <xsl:element name="emiFinancierName">
        <xsl:value-of select="$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiFinancierName"/>
      </xsl:element>
      <!-- a simple data mapping: "$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiLan"(string) to "emiLan"(string) -->
      <xsl:element name="emiLan">
        <xsl:value-of select="$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/emiLan"/>
      </xsl:element>
      <!-- a simple data mapping: "$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/premFinaPartnerName"(string) to "premFinaPartnerName"(string) -->
      <xsl:element name="premFinaPartnerName">
        <xsl:value-of select="$body/in2:getRASEmiDetailsResponse/in2:GetRASEmiDetailsResult/emiDetails/premFinaPartnerName"/>
      </xsl:element>
    </out5:getEMIDetailsResponse>
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
