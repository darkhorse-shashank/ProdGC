<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/findPolicyStatus_InputMap.map" md5sum="ed21f8eb402b090b21a5a352383cc883" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		findPolicyStatus_InputMap.map
*   Map declaration(s):	findPolicyStatus_InputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfindPolicyStatusRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fstub.unotechsoft.com%252Fwsdl%252FDBService%252F%257DgetProposalStatus/xpath%3D%252F/smo.xsd
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
    xmlns:in2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:in4="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:in3="http://GCLibrary/org/aig/access/BO"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in="http://RACASBO"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="http://stub.unotechsoft.com/wsdl/DBService/"
    xmlns:out="wsdl.http://stub.unotechsoft.com/wsdl/DBService/"
    xmlns:in5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/findPolicyStatus_InputMap"
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
            <xsl:call-template name="map:findPolicyStatus_InputMap2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:findPolicyStatus_InputMap"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:findPolicyStatus_InputMap">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:getProposalStatus'"/>
        </xsl:attribute>
        <out2:getProposalStatus>
          <!-- a simple mapping with no associated source:  to "out2:Source"(string) -->
          <xsl:element name="out2:Source">
            <xsl:text>0</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "out2:Medium"(string) -->
          <xsl:element name="out2:Medium">
            <xsl:text>0</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "out2:Campaign"(string) -->
          <xsl:element name="out2:Campaign">
            <xsl:text>0</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "out2:AuthenticationToken"(string) -->
          <xsl:element name="out2:AuthenticationToken">
            <xsl:text></xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "body/in4:findPolicyStatus/proposalNo"(string) to "out2:ReferenceNumber"(string) -->
          <xsl:if test="body/in4:findPolicyStatus/proposalNo">
            <xsl:element name="out2:ReferenceNumber">
              <xsl:value-of select="body/in4:findPolicyStatus/proposalNo"/>
            </xsl:element>
          </xsl:if>
        </out2:getProposalStatus>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:findPolicyStatus_InputMap2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:getProposalStatus'"/>
      </xsl:attribute>
      <out2:getProposalStatus>
        <!-- a simple mapping with no associated source:  to "out2:Source"(string) -->
        <xsl:element name="out2:Source">
          <xsl:text>0</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "out2:Medium"(string) -->
        <xsl:element name="out2:Medium">
          <xsl:text>0</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "out2:Campaign"(string) -->
        <xsl:element name="out2:Campaign">
          <xsl:text>0</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "out2:AuthenticationToken"(string) -->
        <xsl:element name="out2:AuthenticationToken">
          <xsl:text></xsl:text>
        </xsl:element>
        <!-- a simple data mapping: "$smo/body/in4:findPolicyStatus/proposalNo"(string) to "out2:ReferenceNumber"(string) -->
        <xsl:if test="$smo/body/in4:findPolicyStatus/proposalNo">
          <xsl:element name="out2:ReferenceNumber">
            <xsl:value-of select="$smo/body/in4:findPolicyStatus/proposalNo"/>
          </xsl:element>
        </xsl:if>
      </out2:getProposalStatus>
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
