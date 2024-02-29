<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/getRASEMIDetailsExceptionMap.map" md5sum="4bcd7787ea2ac440fa595eb039404275" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		getRASEMIDetailsExceptionMap.map
*   Map declaration(s):	getRASEMIDetailsExceptionMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DgetEMIDetails_getEMIDetailsFaultMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out2="http://RACASBO"
    xmlns:out5="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out4="http://GCLibrary/org/aig/access/BO"
    xmlns:out="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://RASAccess-ApplicationGC/xslt/getRASEMIDetailsExceptionMap"
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
              <xsl:value-of select="'io2:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:getRASEMIDetailsExceptionMap2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:getRASEMIDetailsExceptionMap">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:getRASEMIDetailsExceptionMap">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out3:getEMIDetails_getEMIDetailsFaultMsg'"/>
        </xsl:attribute>
        <out5:getEMIDetailsFault1_getEMIDetailsFault>
          <!-- a simple mapping with no associated source:  to "out2:status"(string) -->
          <xsl:element name="out2:status">
            <xsl:text>FAILED</xsl:text>
          </xsl:element>
          <out2:error>
            <!-- a simple data mapping: "context/failInfo/origin"(string) to "out2:errorCode"(string) -->
            <xsl:if test="context/failInfo/origin">
              <xsl:element name="out2:errorCode">
                <xsl:value-of select="context/failInfo/origin"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "context/failInfo/failureString"(string) to "out2:message"(string) -->
            <xsl:if test="context/failInfo/failureString">
              <xsl:element name="out2:message">
                <xsl:value-of select="context/failInfo/failureString"/>
              </xsl:element>
            </xsl:if>
          </out2:error>
        </out5:getEMIDetailsFault1_getEMIDetailsFault>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:getRASEMIDetailsExceptionMap2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:getEMIDetails_getEMIDetailsFaultMsg'"/>
      </xsl:attribute>
      <out5:getEMIDetailsFault1_getEMIDetailsFault>
        <!-- a simple mapping with no associated source:  to "out2:status"(string) -->
        <xsl:element name="out2:status">
          <xsl:text>FAILED</xsl:text>
        </xsl:element>
        <out2:error>
          <!-- a simple data mapping: "$smo/context/failInfo/origin"(string) to "out2:errorCode"(string) -->
          <xsl:if test="$smo/context/failInfo/origin">
            <xsl:element name="out2:errorCode">
              <xsl:value-of select="$smo/context/failInfo/origin"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "out2:message"(string) -->
          <xsl:if test="$smo/context/failInfo/failureString">
            <xsl:element name="out2:message">
              <xsl:value-of select="$smo/context/failInfo/failureString"/>
            </xsl:element>
          </xsl:if>
        </out2:error>
      </out5:getEMIDetailsFault1_getEMIDetailsFault>
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
