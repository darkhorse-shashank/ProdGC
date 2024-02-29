<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/find_MainReceipt_Details_InputMap_req_1.map" md5sum="fb45d781c6634f9d0930e94ece52cccc" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		find_MainReceipt_Details_InputMap_req_1.map
*   Map declaration(s):	find_MainReceipt_Details_InputMap_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FRetrieveAccessGC%257DfindMainReceiptDetailsRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DfetchReceiptDetails/xpath%3D%252F/smo.xsd
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
    xmlns:in2="http://GCLibrary/org/aig/access/BO"
    xmlns:in4="http://RACASBO"
    xmlns:in3="http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in5="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/RetrieveAccessGC"
    xmlns:in="http://GCLibrary/org/aig/access/bo"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:out="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:map="http://Access-ApplicationGC/xslt/find_MainReceipt_Details_InputMap_req_1"
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
            <xsl:call-template name="map:find_MainReceipt_Details_InputMap_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:find_MainReceipt_Details_InputMap_req_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:find_MainReceipt_Details_InputMap_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:correlationBO'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/receiptNumber"(string) to "crsno"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/receiptNumber">
            <xsl:element name="crsno">
              <xsl:value-of select="body/in3:findMainReceiptDetails/receiptNumber"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/proposalNumber"(string) to "proposalNo"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/proposalNumber">
            <xsl:element name="proposalNo">
              <xsl:value-of select="body/in3:findMainReceiptDetails/proposalNumber"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:fetchReceiptDetails'"/>
        </xsl:attribute>
        <out2:fetchReceiptDetails>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/mainReceiptsInput/source"(string) to "out2:source"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/mainReceiptsInput/source">
            <xsl:element name="out2:source">
              <xsl:value-of select="body/in3:findMainReceiptDetails/mainReceiptsInput/source"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/mainReceiptsInput/medium"(string) to "out2:medium"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/mainReceiptsInput/medium">
            <xsl:element name="out2:medium">
              <xsl:value-of select="body/in3:findMainReceiptDetails/mainReceiptsInput/medium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/mainReceiptsInput/campaign"(string) to "out2:campaign"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/mainReceiptsInput/campaign">
            <xsl:element name="out2:campaign">
              <xsl:value-of select="body/in3:findMainReceiptDetails/mainReceiptsInput/campaign"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken"(string) to "out2:strServiceToken"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken">
            <xsl:element name="out2:strServiceToken">
              <xsl:value-of select="body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/userId"(string) to "out2:UserId"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/userId">
            <xsl:element name="out2:UserId">
              <xsl:value-of select="body/in3:findMainReceiptDetails/userId"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/proposalNumber"(string) to "out2:ProposalNumber"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/proposalNumber">
            <xsl:element name="out2:ProposalNumber">
              <xsl:value-of select="body/in3:findMainReceiptDetails/proposalNumber"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/receiptNumber"(string) to "out2:ReceiptNumber"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/receiptNumber">
            <xsl:element name="out2:ReceiptNumber">
              <xsl:value-of select="body/in3:findMainReceiptDetails/receiptNumber"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:findMainReceiptDetails/payerType"(string) to "out2:PayerType"(string) -->
          <xsl:if test="body/in3:findMainReceiptDetails/payerType">
            <xsl:element name="out2:PayerType">
              <xsl:value-of select="body/in3:findMainReceiptDetails/payerType"/>
            </xsl:element>
          </xsl:if>
        </out2:fetchReceiptDetails>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:find_MainReceipt_Details_InputMap_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:correlationBO'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/receiptNumber"(string) to "crsno"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/receiptNumber">
          <xsl:element name="crsno">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/receiptNumber"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/proposalNumber"(string) to "proposalNo"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/proposalNumber">
          <xsl:element name="proposalNo">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/proposalNumber"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:fetchReceiptDetails'"/>
      </xsl:attribute>
      <out2:fetchReceiptDetails>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/source"(string) to "out2:source"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/source">
          <xsl:element name="out2:source">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/source"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/medium"(string) to "out2:medium"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/medium">
          <xsl:element name="out2:medium">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/medium"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/campaign"(string) to "out2:campaign"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/campaign">
          <xsl:element name="out2:campaign">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/campaign"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken"(string) to "out2:strServiceToken"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken">
          <xsl:element name="out2:strServiceToken">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/mainReceiptsInput/strServiceToken"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/userId"(string) to "out2:UserId"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/userId">
          <xsl:element name="out2:UserId">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/userId"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/proposalNumber"(string) to "out2:ProposalNumber"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/proposalNumber">
          <xsl:element name="out2:ProposalNumber">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/proposalNumber"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/receiptNumber"(string) to "out2:ReceiptNumber"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/receiptNumber">
          <xsl:element name="out2:ReceiptNumber">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/receiptNumber"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:findMainReceiptDetails/payerType"(string) to "out2:PayerType"(string) -->
        <xsl:if test="$smo/body/in3:findMainReceiptDetails/payerType">
          <xsl:element name="out2:PayerType">
            <xsl:value-of select="$smo/body/in3:findMainReceiptDetails/payerType"/>
          </xsl:element>
        </xsl:if>
      </out2:fetchReceiptDetails>
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
