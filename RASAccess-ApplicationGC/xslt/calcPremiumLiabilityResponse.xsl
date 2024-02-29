<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/calcPremiumLiabilityResponse.map" md5sum="00c17e8effe9f696ec2c249a6b7ede10" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		calcPremiumLiabilityResponse.map
*   Map declaration(s):	calcPremiumLiabilityResponse
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationCasualty%257DWebService_PremiumCalculationCasualtySoapOut/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationDtls%257DWebService_PremiumCalculationDtlsSoapOut/xpath%3D%252F/smo.xsd
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
    xmlns:in2="wsdl.WebService_RefundCancellationCasualty"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in="WebService_RefundCancellationCasualty"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="WebService_RefundCancellationDtls"
    xmlns:out="wsdl.WebService_RefundCancellationDtls"
    xmlns:map="http://Access-ApplicationGC/xslt/calcPremiumLiabilityResponse"
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
            <xsl:call-template name="map:calcPremiumLiabilityResponse2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:calcPremiumLiabilityResponse"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:calcPremiumLiabilityResponse">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:correlationBO'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/request"(string) to "request"(string) -->
          <xsl:if test="context/correlation/request">
            <xsl:element name="request">
              <xsl:value-of select="context/correlation/request"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:WebService_PremiumCalculationDtlsSoapOut'"/>
        </xsl:attribute>
        <out2:WebService_PremiumCalculationDtlsResponse>
          <out2:WebService_PremiumCalculationDtlsResult>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium"(string) to "out2:NetPremium"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium">
              <xsl:element name="out2:NetPremium">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST"(string) to "out2:GST"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST">
              <xsl:element name="out2:GST">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST"(string) to "out2:JKGST"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST">
              <xsl:element name="out2:JKGST">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty"(string) to "out2:StampDuty"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty">
              <xsl:element name="out2:StampDuty">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium"(string) to "out2:TotalPremium"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium">
              <xsl:element name="out2:TotalPremium">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status"(string) to "out2:Status"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status">
              <xsl:element name="out2:Status">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID"(string) to "out2:ErrorID"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID">
              <xsl:element name="out2:ErrorID">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc"(string) to "out2:ErrorDesc"(string) -->
            <xsl:if test="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc">
              <xsl:element name="out2:ErrorDesc">
                <xsl:value-of select="body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc"/>
              </xsl:element>
            </xsl:if>
          </out2:WebService_PremiumCalculationDtlsResult>
        </out2:WebService_PremiumCalculationDtlsResponse>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:calcPremiumLiabilityResponse2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:correlationBO'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/request"(string) to "request"(string) -->
        <xsl:if test="$smo/context/correlation/request">
          <xsl:element name="request">
            <xsl:value-of select="$smo/context/correlation/request"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:WebService_PremiumCalculationDtlsSoapOut'"/>
      </xsl:attribute>
      <out2:WebService_PremiumCalculationDtlsResponse>
        <out2:WebService_PremiumCalculationDtlsResult>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium"(string) to "out2:NetPremium"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium">
            <xsl:element name="out2:NetPremium">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:NetPremium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST"(string) to "out2:GST"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST">
            <xsl:element name="out2:GST">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:GST"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST"(string) to "out2:JKGST"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST">
            <xsl:element name="out2:JKGST">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:JKGST"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty"(string) to "out2:StampDuty"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty">
            <xsl:element name="out2:StampDuty">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:StampDuty"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium"(string) to "out2:TotalPremium"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium">
            <xsl:element name="out2:TotalPremium">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:TotalPremium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status"(string) to "out2:Status"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status">
            <xsl:element name="out2:Status">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID"(string) to "out2:ErrorID"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID">
            <xsl:element name="out2:ErrorID">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc"(string) to "out2:ErrorDesc"(string) -->
          <xsl:if test="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc">
            <xsl:element name="out2:ErrorDesc">
              <xsl:value-of select="$smo/body/in:WebService_PremiumCalculationCasualtyResponse/in:WebService_PremiumCalculationCasualtyResult/in:ErrorDesc"/>
            </xsl:element>
          </xsl:if>
        </out2:WebService_PremiumCalculationDtlsResult>
      </out2:WebService_PremiumCalculationDtlsResponse>
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
