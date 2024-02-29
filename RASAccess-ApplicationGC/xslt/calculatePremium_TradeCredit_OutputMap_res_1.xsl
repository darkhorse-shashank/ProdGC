<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/calculatePremium_TradeCredit_OutputMap_res_1.map" md5sum="3c6de9ceb3908b179af8b9af1ce5d7b2" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		calculatePremium_TradeCredit_OutputMap_res_1.map
*   Map declaration(s):	calculatePremium_TradeCredit_OutputMap_res_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fcom.tagic.esb.RASTradeCreditStub%252Fwsdl%252FRASTradeCreditService%252F%257DwebServicePremiumCalculationDtlsResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fstub.unotechsoft.com%252Fwsdl%252FRASMotor%252F%257DwebServicePremiumCalculationDtlsResponse/xpath%3D%252F/smo.xsd
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
    xmlns:in2="WebService_RefundCancellationTradeCredit"
    xmlns:in3="wsdl.http://com.tagic.esb.RASTradeCreditStub/wsdl/RASTradeCreditService/"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in="http://com.tagic.esb.RASTradeCreditStub/wsdl/RASTradeCreditService/"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="wsdl.http://stub.unotechsoft.com/wsdl/RASMotor/"
    xmlns:out2="http://stub.unotechsoft.com/wsdl/RASMotor/"
    xmlns:out="WebService_RefundCancellationDtls"
    xmlns:map="http://Access-ApplicationGC/xslt/calculatePremium_TradeCredit_OutputMap_res_1"
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
            <xsl:call-template name="map:calculatePremium_TradeCredit_OutputMap_res_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:calculatePremium_TradeCredit_OutputMap_res_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:calculatePremium_TradeCredit_OutputMap_res_1">
    <io2:smo>
      <context>
        <!-- a structural mapping: "context/correlation"(correlationBO) to "correlation"(correlationBO) -->
        <xsl:if test="context/correlation">
          <xsl:copy-of select="context/correlation"/>
        </xsl:if>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out3:webServicePremiumCalculationDtlsResponse'"/>
        </xsl:attribute>
        <out2:webServicePremiumCalculationDtlsResponse>
          <out2:WebService_PremiumCalculationDtlsResult>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium"(string) to "out:NetPremium"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium">
              <xsl:element name="out:NetPremium">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST"(string) to "out:GST"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST">
              <xsl:element name="out:GST">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST"(string) to "out:JKGST"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST">
              <xsl:element name="out:JKGST">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty"(string) to "out:StampDuty"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty">
              <xsl:element name="out:StampDuty">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium"(string) to "out:TotalPremium"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium">
              <xsl:element name="out:TotalPremium">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status"(string) to "out:Status"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status">
              <xsl:element name="out:Status">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID"(string) to "out:ErrorID"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID">
              <xsl:element name="out:ErrorID">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"(string) to "out:ErrorDesc"(string) -->
            <xsl:if test="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc">
              <xsl:element name="out:ErrorDesc">
                <xsl:value-of select="body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"/>
              </xsl:element>
            </xsl:if>
          </out2:WebService_PremiumCalculationDtlsResult>
        </out2:webServicePremiumCalculationDtlsResponse>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:calculatePremium_TradeCredit_OutputMap_res_12">
    <xsl:param name="smo"/>
    <context>
      <!-- a structural mapping: "$smo/context/correlation"(correlationBO) to "correlation"(correlationBO) -->
      <xsl:if test="$smo/context/correlation">
        <xsl:copy-of select="$smo/context/correlation"/>
      </xsl:if>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:webServicePremiumCalculationDtlsResponse'"/>
      </xsl:attribute>
      <out2:webServicePremiumCalculationDtlsResponse>
        <out2:WebService_PremiumCalculationDtlsResult>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium"(string) to "out:NetPremium"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium">
            <xsl:element name="out:NetPremium">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:NetPremium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST"(string) to "out:GST"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST">
            <xsl:element name="out:GST">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:GST"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST"(string) to "out:JKGST"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST">
            <xsl:element name="out:JKGST">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:JKGST"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty"(string) to "out:StampDuty"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty">
            <xsl:element name="out:StampDuty">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:StampDuty"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium"(string) to "out:TotalPremium"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium">
            <xsl:element name="out:TotalPremium">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:TotalPremium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status"(string) to "out:Status"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status">
            <xsl:element name="out:Status">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID"(string) to "out:ErrorID"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID">
            <xsl:element name="out:ErrorID">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"(string) to "out:ErrorDesc"(string) -->
          <xsl:if test="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc">
            <xsl:element name="out:ErrorDesc">
              <xsl:value-of select="$smo/body/in:webServicePremiumCalculationDtlsResponse/in:WebService_PremiumCalculationDtlsResult/in2:ErrorDesc"/>
            </xsl:element>
          </xsl:if>
        </out2:WebService_PremiumCalculationDtlsResult>
      </out2:webServicePremiumCalculationDtlsResponse>
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
