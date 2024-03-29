<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/premiumCalculation_FautltMap.map" md5sum="608ebad2f98ba94c4016a561b3418937" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		premiumCalculation_FautltMap.map
*   Map declaration(s):	premiumCalculation_FautltMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationDtls%257DWebService_PremiumCalculationDtlsSoapOut/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DcalculateCancellationRefund_calculateCancellationRefundFaultMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in2="WebService_RefundCancellationDtls"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in="wsdl.WebService_RefundCancellationDtls"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://GCLibrary/org/aig/access/BO"
    xmlns:out2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out4="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:out="http://RACASBO"
    xmlns:out5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/premiumCalculation_FautltMap"
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
            <xsl:call-template name="map:premiumCalculation_FautltMap2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:premiumCalculation_FautltMap"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:premiumCalculation_FautltMap">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:calculateCancellationRefund_calculateCancellationRefundFaultMsg'"/>
        </xsl:attribute>
        <out4:calculateCancellationRefundFault1_calculateCancellationRefundFault>
          <!-- a simple data mapping: "body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status"(string) to "out:status"(string) -->
          <xsl:if test="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status">
            <xsl:element name="out:status">
              <xsl:value-of select="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/request"(string) to "out:data"(string) -->
          <xsl:if test="context/correlation/request">
            <xsl:element name="out:data">
              <xsl:value-of select="context/correlation/request"/>
            </xsl:element>
          </xsl:if>
          <out:error>
            <!-- a simple data mapping: "body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID"(string) to "out:errorCode"(string) -->
            <xsl:if test="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID">
              <xsl:element name="out:errorCode">
                <xsl:value-of select="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "out:message"(string) -->
            <xsl:element name="out:message">
              <xsl:text>Calculate Premium Service Failed</xsl:text>
            </xsl:element>
            <!-- a simple data mapping: "body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"(string) to "out:errorDetail"(string) -->
            <xsl:if test="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc">
              <xsl:element name="out:errorDetail">
                <xsl:value-of select="body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"/>
              </xsl:element>
            </xsl:if>
          </out:error>
        </out4:calculateCancellationRefundFault1_calculateCancellationRefundFault>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:premiumCalculation_FautltMap2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:calculateCancellationRefund_calculateCancellationRefundFaultMsg'"/>
      </xsl:attribute>
      <out4:calculateCancellationRefundFault1_calculateCancellationRefundFault>
        <!-- a simple data mapping: "$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status"(string) to "out:status"(string) -->
        <xsl:if test="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status">
          <xsl:element name="out:status">
            <xsl:value-of select="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:Status"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/request"(string) to "out:data"(string) -->
        <xsl:if test="$smo/context/correlation/request">
          <xsl:element name="out:data">
            <xsl:value-of select="$smo/context/correlation/request"/>
          </xsl:element>
        </xsl:if>
        <out:error>
          <!-- a simple data mapping: "$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID"(string) to "out:errorCode"(string) -->
          <xsl:if test="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID">
            <xsl:element name="out:errorCode">
              <xsl:value-of select="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "out:message"(string) -->
          <xsl:element name="out:message">
            <xsl:text>Calculate Premium Service Failed</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"(string) to "out:errorDetail"(string) -->
          <xsl:if test="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc">
            <xsl:element name="out:errorDetail">
              <xsl:value-of select="$smo/body/in2:WebService_PremiumCalculationDtlsResponse/in2:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"/>
            </xsl:element>
          </xsl:if>
        </out:error>
      </out4:calculateCancellationRefundFault1_calculateCancellationRefundFault>
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
