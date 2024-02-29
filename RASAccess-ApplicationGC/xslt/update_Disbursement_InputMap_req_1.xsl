<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/update_Disbursement_InputMap_req_1.map" md5sum="e0d10bbcf9b342e3ccd9f5cf58493ad0" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		update_Disbursement_InputMap_req_1.map
*   Map declaration(s):	update_Disbursement_InputMap_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FMaintainAccessGC%257DupdateDisbursementRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DrasDataUpdate/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:in4="http://RACASBO"
    xmlns:in3="http://GCLibrary/org/aig/access/bo"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:in5="http://GCLibrary/org/aig/access/BO"
    xmlns:in="http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:out="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:map="http://Access-ApplicationGC/xslt/update_Disbursement_InputMap_req_1"
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
              <xsl:value-of select="'out:rasDataUpdate'"/>
            </xsl:attribute>
            <xsl:call-template name="map:update_Disbursement_InputMap_req_12">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:update_Disbursement_InputMap_req_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:update_Disbursement_InputMap_req_1">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:rasDataUpdate'"/>
      </xsl:attribute>
      <out2:rasDataUpdate>
        <!-- a simple data mapping: "in:updateDisbursement/rasDataUpdateInput/source"(string) to "out2:source"(string) -->
        <xsl:if test="in:updateDisbursement/rasDataUpdateInput/source">
          <xsl:element name="out2:source">
            <xsl:value-of select="in:updateDisbursement/rasDataUpdateInput/source"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/rasDataUpdateInput/medium"(string) to "out2:medium"(string) -->
        <xsl:if test="in:updateDisbursement/rasDataUpdateInput/medium">
          <xsl:element name="out2:medium">
            <xsl:value-of select="in:updateDisbursement/rasDataUpdateInput/medium"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/rasDataUpdateInput/campaign"(string) to "out2:campaign"(string) -->
        <xsl:if test="in:updateDisbursement/rasDataUpdateInput/campaign">
          <xsl:element name="out2:campaign">
            <xsl:value-of select="in:updateDisbursement/rasDataUpdateInput/campaign"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/rasDataUpdateInput/strServiceToken"(string) to "out2:strServiceToken"(string) -->
        <xsl:if test="in:updateDisbursement/rasDataUpdateInput/strServiceToken">
          <xsl:element name="out2:strServiceToken">
            <xsl:value-of select="in:updateDisbursement/rasDataUpdateInput/strServiceToken"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/userId"(string) to "out2:UserId"(string) -->
        <xsl:if test="in:updateDisbursement/data/userId">
          <xsl:element name="out2:UserId">
            <xsl:value-of select="in:updateDisbursement/data/userId"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/policyNo"(string) to "out2:PolicyNo"(string) -->
        <xsl:if test="in:updateDisbursement/data/policyNo">
          <xsl:element name="out2:PolicyNo">
            <xsl:value-of select="in:updateDisbursement/data/policyNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/utrReferenceNo"(string) to "out2:UTRReferenceNo"(string) -->
        <xsl:if test="in:updateDisbursement/data/utrReferenceNo">
          <xsl:element name="out2:UTRReferenceNo">
            <xsl:value-of select="in:updateDisbursement/data/utrReferenceNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/valueDate"(date) to "out2:ValueDate"(string) -->
        <xsl:if test="in:updateDisbursement/data/valueDate">
          <xsl:element name="out2:ValueDate">
            <xsl:value-of select="in:updateDisbursement/data/valueDate"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/amount"(string) to "out2:Amount"(string) -->
        <xsl:if test="in:updateDisbursement/data/amount">
          <xsl:element name="out2:Amount">
            <xsl:value-of select="in:updateDisbursement/data/amount"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/counterPartyName"(string) to "out2:CounterPartyName"(string) -->
        <xsl:if test="in:updateDisbursement/data/counterPartyName">
          <xsl:element name="out2:CounterPartyName">
            <xsl:value-of select="in:updateDisbursement/data/counterPartyName"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/orderPartyReference"(string) to "out2:OrderPartyReference"(string) -->
        <xsl:if test="in:updateDisbursement/data/orderPartyReference">
          <xsl:element name="out2:OrderPartyReference">
            <xsl:value-of select="in:updateDisbursement/data/orderPartyReference"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/reasonDescription"(string) to "out2:ReasonDescription"(string) -->
        <xsl:if test="in:updateDisbursement/data/reasonDescription">
          <xsl:element name="out2:ReasonDescription">
            <xsl:value-of select="in:updateDisbursement/data/reasonDescription"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "in:updateDisbursement/data/voucherNo"(string) to "out2:VoucherNo"(string) -->
        <xsl:if test="in:updateDisbursement/data/voucherNo">
          <xsl:element name="out2:VoucherNo">
            <xsl:value-of select="in:updateDisbursement/data/voucherNo"/>
          </xsl:element>
        </xsl:if>
      </out2:rasDataUpdate>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:update_Disbursement_InputMap_req_12">
    <xsl:param name="body"/>
    <out2:rasDataUpdate>
      <!-- a simple data mapping: "$body/in:updateDisbursement/rasDataUpdateInput/source"(string) to "out2:source"(string) -->
      <xsl:if test="$body/in:updateDisbursement/rasDataUpdateInput/source">
        <xsl:element name="out2:source">
          <xsl:value-of select="$body/in:updateDisbursement/rasDataUpdateInput/source"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/rasDataUpdateInput/medium"(string) to "out2:medium"(string) -->
      <xsl:if test="$body/in:updateDisbursement/rasDataUpdateInput/medium">
        <xsl:element name="out2:medium">
          <xsl:value-of select="$body/in:updateDisbursement/rasDataUpdateInput/medium"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/rasDataUpdateInput/campaign"(string) to "out2:campaign"(string) -->
      <xsl:if test="$body/in:updateDisbursement/rasDataUpdateInput/campaign">
        <xsl:element name="out2:campaign">
          <xsl:value-of select="$body/in:updateDisbursement/rasDataUpdateInput/campaign"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/rasDataUpdateInput/strServiceToken"(string) to "out2:strServiceToken"(string) -->
      <xsl:if test="$body/in:updateDisbursement/rasDataUpdateInput/strServiceToken">
        <xsl:element name="out2:strServiceToken">
          <xsl:value-of select="$body/in:updateDisbursement/rasDataUpdateInput/strServiceToken"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/userId"(string) to "out2:UserId"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/userId">
        <xsl:element name="out2:UserId">
          <xsl:value-of select="$body/in:updateDisbursement/data/userId"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/policyNo"(string) to "out2:PolicyNo"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/policyNo">
        <xsl:element name="out2:PolicyNo">
          <xsl:value-of select="$body/in:updateDisbursement/data/policyNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/utrReferenceNo"(string) to "out2:UTRReferenceNo"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/utrReferenceNo">
        <xsl:element name="out2:UTRReferenceNo">
          <xsl:value-of select="$body/in:updateDisbursement/data/utrReferenceNo"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/valueDate"(date) to "out2:ValueDate"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/valueDate">
        <xsl:element name="out2:ValueDate">
          <xsl:value-of select="$body/in:updateDisbursement/data/valueDate"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/amount"(string) to "out2:Amount"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/amount">
        <xsl:element name="out2:Amount">
          <xsl:value-of select="$body/in:updateDisbursement/data/amount"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/counterPartyName"(string) to "out2:CounterPartyName"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/counterPartyName">
        <xsl:element name="out2:CounterPartyName">
          <xsl:value-of select="$body/in:updateDisbursement/data/counterPartyName"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/orderPartyReference"(string) to "out2:OrderPartyReference"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/orderPartyReference">
        <xsl:element name="out2:OrderPartyReference">
          <xsl:value-of select="$body/in:updateDisbursement/data/orderPartyReference"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/reasonDescription"(string) to "out2:ReasonDescription"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/reasonDescription">
        <xsl:element name="out2:ReasonDescription">
          <xsl:value-of select="$body/in:updateDisbursement/data/reasonDescription"/>
        </xsl:element>
      </xsl:if>
      <!-- a simple data mapping: "$body/in:updateDisbursement/data/voucherNo"(string) to "out2:VoucherNo"(string) -->
      <xsl:if test="$body/in:updateDisbursement/data/voucherNo">
        <xsl:element name="out2:VoucherNo">
          <xsl:value-of select="$body/in:updateDisbursement/data/voucherNo"/>
        </xsl:element>
      </xsl:if>
    </out2:rasDataUpdate>
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