<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/CDDetailsAccExceptionMap.map" md5sum="3bf0a1e6d5cb4461d3ecc14ebe351a5b" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		CDDetailsAccExceptionMap.map
*   Map declaration(s):	CDDetailsAccExceptionMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfindCdDetailsAcc_findCdDetailsAccFaultMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io6="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io5="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.w3.org/2005/08/addressing"
    xmlns:out2="http://RACASBO"
    xmlns:out3="http://GCLibrary/org/aig/access/BO"
    xmlns:out4="http://GCLibrary/org/aig/access/bo"
    xmlns:out5="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:map="http://RASAccess-ApplicationGC/xslt/CDDetailsAccExceptionMap"
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
              <xsl:value-of select="'io6:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:CDDetailsAccExceptionMap2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io6:smo" mode="map:CDDetailsAccExceptionMap">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io6:smo" to "io6:smo".  -->
  <xsl:template match="io6:smo"  mode="map:CDDetailsAccExceptionMap">
    <io6:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out5:findCdDetailsAcc_findCdDetailsAccFaultMsg'"/>
        </xsl:attribute>
        <out:findCdDetailsAccFault1_findCdDetailsAccFault>
          <!-- a simple mapping with no associated source:  to "out2:status"(string) -->
          <xsl:element name="out2:status">
            <xsl:text>FAILED</xsl:text>
          </xsl:element>
          <out2:error>
            <!-- a simple data mapping: "context/failInfo/failureString"(string) to "out2:message"(string) -->
            <xsl:if test="context/failInfo/failureString">
              <xsl:element name="out2:message">
                <xsl:value-of select="context/failInfo/failureString"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "context/failInfo/origin"(string) to "out2:errorDetail"(string) -->
            <xsl:if test="context/failInfo/origin">
              <xsl:element name="out2:errorDetail">
                <xsl:value-of select="context/failInfo/origin"/>
              </xsl:element>
            </xsl:if>
          </out2:error>
        </out:findCdDetailsAccFault1_findCdDetailsAccFault>
      </body>
    </io6:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io6:smo" to "io6:smo".  -->
  <xsl:template name="map:CDDetailsAccExceptionMap2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out5:findCdDetailsAcc_findCdDetailsAccFaultMsg'"/>
      </xsl:attribute>
      <out:findCdDetailsAccFault1_findCdDetailsAccFault>
        <!-- a simple mapping with no associated source:  to "out2:status"(string) -->
        <xsl:element name="out2:status">
          <xsl:text>FAILED</xsl:text>
        </xsl:element>
        <out2:error>
          <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "out2:message"(string) -->
          <xsl:if test="$smo/context/failInfo/failureString">
            <xsl:element name="out2:message">
              <xsl:value-of select="$smo/context/failInfo/failureString"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/failInfo/origin"(string) to "out2:errorDetail"(string) -->
          <xsl:if test="$smo/context/failInfo/origin">
            <xsl:element name="out2:errorDetail">
              <xsl:value-of select="$smo/context/failInfo/origin"/>
            </xsl:element>
          </xsl:if>
        </out2:error>
      </out:findCdDetailsAccFault1_findCdDetailsAccFault>
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
