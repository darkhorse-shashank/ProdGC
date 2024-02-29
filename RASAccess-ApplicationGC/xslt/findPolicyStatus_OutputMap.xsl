<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/findPolicyStatus_OutputMap.map" md5sum="30c8b9949b186606596c0d96291cb1c7" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		findPolicyStatus_OutputMap.map
*   Map declaration(s):	findPolicyStatus_OutputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fstub.unotechsoft.com%252Fwsdl%252FDBService%252F%257DgetProposalStatusResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfindPolicyStatusResponseMsg/xpath%3D%252F/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:math="http://exslt.org/math"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:exsl="http://exslt.org/common"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:in2="http://stub.unotechsoft.com/wsdl/DBService/"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in="wsdl.http://stub.unotechsoft.com/wsdl/DBService/"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://GCLibrary/org/aig/access/BO"
    xmlns:out2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out4="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out="http://RACASBO"
    xmlns:out5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/findPolicyStatus_OutputMap"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="math str set date exsl map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io2:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:findPolicyStatus_OutputMap2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:findPolicyStatus_OutputMap"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:findPolicyStatus_OutputMap">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:findPolicyStatusResponseMsg'"/>
        </xsl:attribute>
        <out4:findPolicyStatusResponse>
          <response>
            <!-- a simple data mapping: "body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status"(string) to "out:status"(string) -->
            <xsl:if test="body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status">
              <xsl:element name="out:status">
                <xsl:value-of select="body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo"(string) to "out:data"(string) -->
            <xsl:if test="body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo">
              <xsl:element name="out:data">
                <xsl:value-of select="body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo"/>
              </xsl:element>
            </xsl:if>
          </response>
        </out4:findPolicyStatusResponse>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:findPolicyStatus_OutputMap2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:findPolicyStatusResponseMsg'"/>
      </xsl:attribute>
      <out4:findPolicyStatusResponse>
        <response>
          <!-- a simple data mapping: "$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status"(string) to "out:status"(string) -->
          <xsl:if test="$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status">
            <xsl:element name="out:status">
              <xsl:value-of select="$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo"(string) to "out:data"(string) -->
          <xsl:if test="$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo">
            <xsl:element name="out:data">
              <xsl:value-of select="$smo/body/in2:getProposalStatusResponse/in2:GetProposalStatusResult/PolicyNo"/>
            </xsl:element>
          </xsl:if>
        </response>
      </out4:findPolicyStatusResponse>
    </body>
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