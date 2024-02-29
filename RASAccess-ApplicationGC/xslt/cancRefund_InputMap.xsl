<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/cancRefund_InputMap.map" md5sum="5543e57c84c27da2da32c7e0846826ab" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		cancRefund_InputMap.map
*   Map declaration(s):	cancRefund_InputMap
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FMaintainAccessGC%257DcreateCancellationRefundRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_AccRefundRequest%257DRefundRequestSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:in4="http://GCLibrary/org/aig/access/BO"
    xmlns:in3="http://RACASBO"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in="http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="WebService_AccRefundRequest"
    xmlns:out="wsdl.WebService_AccRefundRequest"
    xmlns:in5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/cancRefund_InputMap"
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
              <xsl:value-of select="'out:RefundRequestSoapIn'"/>
            </xsl:attribute>
            <xsl:call-template name="map:cancRefund_InputMap2">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:cancRefund_InputMap"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:cancRefund_InputMap">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:RefundRequestSoapIn'"/>
      </xsl:attribute>
      <out2:RefundRequest>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/userId"(string) to "out2:UserId"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/userId">
          <xsl:element name="out2:UserId">
            <xsl:value-of select="in:createCancellationRefund/cancData/userId"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/policyNo"(string) to "out2:PolicyNo"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/policyNo">
          <xsl:element name="out2:PolicyNo">
            <xsl:value-of select="in:createCancellationRefund/cancData/policyNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/proposalNo"(string) to "out2:ProposalNo"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/proposalNo">
          <xsl:element name="out2:ProposalNo">
            <xsl:value-of select="in:createCancellationRefund/cancData/proposalNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/product"(string) to "out2:Product"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/product">
          <xsl:element name="out2:Product">
            <xsl:value-of select="in:createCancellationRefund/cancData/product"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payerType"(string) to "out2:PayerType"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payerType">
          <xsl:element name="out2:PayerType">
            <xsl:value-of select="in:createCancellationRefund/cancData/payerType"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payeeName"(string) to "out2:PayeeName"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payeeName">
          <xsl:element name="out2:PayeeName">
            <xsl:value-of select="in:createCancellationRefund/cancData/payeeName"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payeeBank"(string) to "out2:PayeeBank"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payeeBank">
          <xsl:element name="out2:PayeeBank">
            <xsl:value-of select="in:createCancellationRefund/cancData/payeeBank"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payeeIfscCode"(string) to "out2:PayeeIFSCcode"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payeeIfscCode">
          <xsl:element name="out2:PayeeIFSCcode">
            <xsl:value-of select="in:createCancellationRefund/cancData/payeeIfscCode"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payeeBankAccNo"(string) to "out2:PayeeBankAccNo"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payeeBankAccNo">
          <xsl:element name="out2:PayeeBankAccNo">
            <xsl:value-of select="in:createCancellationRefund/cancData/payeeBankAccNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/chequeNo"(string) to "out2:ChequeNumber"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/chequeNo">
          <xsl:element name="out2:ChequeNumber">
            <xsl:value-of select="in:createCancellationRefund/cancData/chequeNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/payeeAddress"(string) to "out2:PayeeAddress"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/payeeAddress">
          <xsl:element name="out2:PayeeAddress">
            <xsl:value-of select="in:createCancellationRefund/cancData/payeeAddress"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:createCancellationRefund/cancData/chequeType"(string) to "out2:ChequeType"(string) -->
        <xsl:if test="in:createCancellationRefund/cancData/chequeType">
          <xsl:element name="out2:ChequeType">
            <xsl:value-of select="in:createCancellationRefund/cancData/chequeType"/>
          </xsl:element>
        </xsl:if>
      </out2:RefundRequest>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:cancRefund_InputMap2">
    <xsl:param name="body"/>
    <out2:RefundRequest>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/userId"(string) to "out2:UserId"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/userId">
        <xsl:element name="out2:UserId">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/userId"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/policyNo"(string) to "out2:PolicyNo"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/policyNo">
        <xsl:element name="out2:PolicyNo">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/policyNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/proposalNo"(string) to "out2:ProposalNo"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/proposalNo">
        <xsl:element name="out2:ProposalNo">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/proposalNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/product"(string) to "out2:Product"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/product">
        <xsl:element name="out2:Product">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/product"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payerType"(string) to "out2:PayerType"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payerType">
        <xsl:element name="out2:PayerType">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payerType"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payeeName"(string) to "out2:PayeeName"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payeeName">
        <xsl:element name="out2:PayeeName">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payeeName"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payeeBank"(string) to "out2:PayeeBank"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payeeBank">
        <xsl:element name="out2:PayeeBank">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payeeBank"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payeeIfscCode"(string) to "out2:PayeeIFSCcode"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payeeIfscCode">
        <xsl:element name="out2:PayeeIFSCcode">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payeeIfscCode"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payeeBankAccNo"(string) to "out2:PayeeBankAccNo"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payeeBankAccNo">
        <xsl:element name="out2:PayeeBankAccNo">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payeeBankAccNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/chequeNo"(string) to "out2:ChequeNumber"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/chequeNo">
        <xsl:element name="out2:ChequeNumber">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/chequeNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/payeeAddress"(string) to "out2:PayeeAddress"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/payeeAddress">
        <xsl:element name="out2:PayeeAddress">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/payeeAddress"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:createCancellationRefund/cancData/chequeType"(string) to "out2:ChequeType"(string) -->
      <xsl:if test="$body/in:createCancellationRefund/cancData/chequeType">
        <xsl:element name="out2:ChequeType">
          <xsl:value-of select="$body/in:createCancellationRefund/cancData/chequeType"/>
        </xsl:element>
      </xsl:if>
    </out2:RefundRequest>
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
