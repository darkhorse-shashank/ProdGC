<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/cancelPolicyHomeRequest.map" md5sum="3dd4aac575f77b289154c9f1c027107c" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		cancelPolicyHomeRequest.map
*   Map declaration(s):	cancelPolicyHomeRequest
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FMaintainAccessGC%257DcancelPolicyRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationHome%257DWebService_RefundCancellationHomeSoapIn/xpath%3D%252F/smo.xsd
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
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in="http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="WebService_RefundCancellationHome"
    xmlns:out="wsdl.WebService_RefundCancellationHome"
    xmlns:in5="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/cancelPolicyHomeRequest"
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
            <xsl:call-template name="map:cancelPolicyHomeRequest2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:cancelPolicyHomeRequest"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:cancelPolicyHomeRequest">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:WebService_RefundCancellationHomeSoapIn'"/>
        </xsl:attribute>
        <out2:WebService_RefundCancellationHome>
          <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/userId"(string) to "out2:UserId"(string) -->
          <xsl:if test="body/in:cancelPolicy/cancPolicyData/userId">
            <xsl:element name="out2:UserId">
              <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/userId"/>
            </xsl:element>
          </xsl:if>
          <out2:RefundCancellation>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/policyNo"(string) to "out2:PolicyNo"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/policyNo">
              <xsl:element name="out2:PolicyNo">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/policyNo"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/proposalNo"(string) to "out2:ProposalNo"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/proposalNo">
              <xsl:element name="out2:ProposalNo">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/proposalNo"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/productCode"(string) to "out2:ProductCode"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/productCode">
              <xsl:element name="out2:ProductCode">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/productCode"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/endDateOfRequest"(string) to "out2:EndDateOfRequest"(string) -->
            <xsl:if test="context/correlation/endDateOfRequest">
              <xsl:element name="out2:EndDateOfRequest">
                <xsl:value-of select="context/correlation/endDateOfRequest"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/endDateOfRequest"(string) to "out2:MTAEffDate"(string) -->
            <xsl:if test="context/correlation/endDateOfRequest">
              <xsl:element name="out2:MTAEffDate">
                <xsl:value-of select="context/correlation/endDateOfRequest"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/effectiveTime"(string) to "out2:MTAEffTime"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/effectiveTime">
              <xsl:element name="out2:MTAEffTime">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/effectiveTime"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "out2:ReasonforCanc"(string) -->
            <xsl:element name="out2:ReasonforCanc">
              <xsl:text>Request From Insured- Double Insurance(Information on the other insurance details cancellation)</xsl:text>
            </xsl:element>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/cancellationDescription"(string) to "out2:DescofCancReason"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/cancellationDescription">
              <xsl:element name="out2:DescofCancReason">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/cancellationDescription"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/cancellationOption"(string) to "out2:OptionforCancofInsurance"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/cancellationOption">
              <xsl:element name="out2:OptionforCancofInsurance">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/cancellationOption"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in:cancelPolicy/cancPolicyData/cancellationReason"(string) to "out2:Remarks"(string) -->
            <xsl:if test="body/in:cancelPolicy/cancPolicyData/cancellationReason">
              <xsl:element name="out2:Remarks">
                <xsl:value-of select="body/in:cancelPolicy/cancPolicyData/cancellationReason"/>
              </xsl:element>
            </xsl:if>
          </out2:RefundCancellation>
        </out2:WebService_RefundCancellationHome>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:cancelPolicyHomeRequest2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:WebService_RefundCancellationHomeSoapIn'"/>
      </xsl:attribute>
      <out2:WebService_RefundCancellationHome>
        <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/userId"(string) to "out2:UserId"(string) -->
        <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/userId">
          <xsl:element name="out2:UserId">
            <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/userId"/>
          </xsl:element>
        </xsl:if>
        <out2:RefundCancellation>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/policyNo"(string) to "out2:PolicyNo"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/policyNo">
            <xsl:element name="out2:PolicyNo">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/policyNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/proposalNo"(string) to "out2:ProposalNo"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/proposalNo">
            <xsl:element name="out2:ProposalNo">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/proposalNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/productCode"(string) to "out2:ProductCode"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/productCode">
            <xsl:element name="out2:ProductCode">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/productCode"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/endDateOfRequest"(string) to "out2:EndDateOfRequest"(string) -->
          <xsl:if test="$smo/context/correlation/endDateOfRequest">
            <xsl:element name="out2:EndDateOfRequest">
              <xsl:value-of select="$smo/context/correlation/endDateOfRequest"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/endDateOfRequest"(string) to "out2:MTAEffDate"(string) -->
          <xsl:if test="$smo/context/correlation/endDateOfRequest">
            <xsl:element name="out2:MTAEffDate">
              <xsl:value-of select="$smo/context/correlation/endDateOfRequest"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/effectiveTime"(string) to "out2:MTAEffTime"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/effectiveTime">
            <xsl:element name="out2:MTAEffTime">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/effectiveTime"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "out2:ReasonforCanc"(string) -->
          <xsl:element name="out2:ReasonforCanc">
            <xsl:text>Request From Insured- Double Insurance(Information on the other insurance details cancellation)</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/cancellationDescription"(string) to "out2:DescofCancReason"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/cancellationDescription">
            <xsl:element name="out2:DescofCancReason">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/cancellationDescription"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/cancellationOption"(string) to "out2:OptionforCancofInsurance"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/cancellationOption">
            <xsl:element name="out2:OptionforCancofInsurance">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/cancellationOption"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in:cancelPolicy/cancPolicyData/cancellationReason"(string) to "out2:Remarks"(string) -->
          <xsl:if test="$smo/body/in:cancelPolicy/cancPolicyData/cancellationReason">
            <xsl:element name="out2:Remarks">
              <xsl:value-of select="$smo/body/in:cancelPolicy/cancPolicyData/cancellationReason"/>
            </xsl:element>
          </xsl:if>
        </out2:RefundCancellation>
      </out2:WebService_RefundCancellationHome>
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
