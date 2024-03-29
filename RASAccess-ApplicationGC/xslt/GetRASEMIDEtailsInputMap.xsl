<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/GetRASEMIDEtailsInputMap.map" md5sum="4348c6e306a6866cb1e920162ed9eeec" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		GetRASEMIDEtailsInputMap.map
*   Map declaration(s):	GetRASEMIDEtailsInputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DgetEMIDetailsRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DgetRASEmiDetails/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="http://RACASBO"
    xmlns:in4="http://GCLibrary/org/aig/access/BO"
    xmlns:in3="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in5="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:in="http://GCLibrary/org/aig/access/bo"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:out="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:map="http://RASAccess-ApplicationGC/xslt/GetRASEMIDEtailsInputMap"
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
              <xsl:value-of select="'out:getRASEmiDetails'"/>
            </xsl:attribute>
            <xsl:call-template name="map:GetRASEMIDEtailsInputMap2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:GetRASEMIDEtailsInputMap">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:GetRASEMIDEtailsInputMap">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:getRASEmiDetails'"/>
      </xsl:attribute>
      <out2:getRASEmiDetails>
        <!-- a simple data mapping: "in5:getEMIDetails/GCInputs/source"(string) to "out2:source"(string) -->
        <xsl:if test="in5:getEMIDetails/GCInputs/source">
          <xsl:element name="out2:source">
            <xsl:value-of select="in5:getEMIDetails/GCInputs/source"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in5:getEMIDetails/GCInputs/medium"(string) to "out2:medium"(string) -->
        <xsl:if test="in5:getEMIDetails/GCInputs/medium">
          <xsl:element name="out2:medium">
            <xsl:value-of select="in5:getEMIDetails/GCInputs/medium"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in5:getEMIDetails/GCInputs/campaign"(string) to "out2:campaign"(string) -->
        <xsl:if test="in5:getEMIDetails/GCInputs/campaign">
          <xsl:element name="out2:campaign">
            <xsl:value-of select="in5:getEMIDetails/GCInputs/campaign"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in5:getEMIDetails/GCInputs/strServiceToken"(string) to "out2:strServiceToken"(string) -->
        <xsl:if test="in5:getEMIDetails/GCInputs/strServiceToken">
          <xsl:element name="out2:strServiceToken">
            <xsl:value-of select="in5:getEMIDetails/GCInputs/strServiceToken"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in5:getEMIDetails/proposalNumber"(string) to "out2:ProposalNo"(string) -->
        <xsl:if test="in5:getEMIDetails/proposalNumber">
          <xsl:element name="out2:ProposalNo">
            <xsl:value-of select="in5:getEMIDetails/proposalNumber"/>
          </xsl:element>
        </xsl:if>
      </out2:getRASEmiDetails>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:GetRASEMIDEtailsInputMap2">
    <xsl:param name="body"/>
    <out2:getRASEmiDetails>
      <!-- a simple data mapping: "$body/in5:getEMIDetails/GCInputs/source"(string) to "out2:source"(string) -->
      <xsl:if test="$body/in5:getEMIDetails/GCInputs/source">
        <xsl:element name="out2:source">
          <xsl:value-of select="$body/in5:getEMIDetails/GCInputs/source"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in5:getEMIDetails/GCInputs/medium"(string) to "out2:medium"(string) -->
      <xsl:if test="$body/in5:getEMIDetails/GCInputs/medium">
        <xsl:element name="out2:medium">
          <xsl:value-of select="$body/in5:getEMIDetails/GCInputs/medium"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in5:getEMIDetails/GCInputs/campaign"(string) to "out2:campaign"(string) -->
      <xsl:if test="$body/in5:getEMIDetails/GCInputs/campaign">
        <xsl:element name="out2:campaign">
          <xsl:value-of select="$body/in5:getEMIDetails/GCInputs/campaign"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in5:getEMIDetails/GCInputs/strServiceToken"(string) to "out2:strServiceToken"(string) -->
      <xsl:if test="$body/in5:getEMIDetails/GCInputs/strServiceToken">
        <xsl:element name="out2:strServiceToken">
          <xsl:value-of select="$body/in5:getEMIDetails/GCInputs/strServiceToken"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in5:getEMIDetails/proposalNumber"(string) to "out2:ProposalNo"(string) -->
      <xsl:if test="$body/in5:getEMIDetails/proposalNumber">
        <xsl:element name="out2:ProposalNo">
          <xsl:value-of select="$body/in5:getEMIDetails/proposalNumber"/>
        </xsl:element>
      </xsl:if>
    </out2:getRASEmiDetails>
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
