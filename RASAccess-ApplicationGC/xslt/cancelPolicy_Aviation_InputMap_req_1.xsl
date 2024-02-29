<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/cancelPolicy_Aviation_InputMap_req_1.map" md5sum="a16f73d6c0662d154e85512d3b6fc3f7" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		cancelPolicy_Aviation_InputMap_req_1.map
*   Map declaration(s):	cancelPolicy_Aviation_InputMap_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FMaintainAccessGC%257DcancelPolicyRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASAviation%252F%257DwebServiceRefundCancellationAviation/xpath%3D%252F/smo.xsd
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
    xmlns:in4="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:in3="http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in5="http://RACASBO"
    xmlns:in="http://GCLibrary/org/aig/access/bo"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://stub.tagicesb.com/wsdl/RASAviation/"
    xmlns:out2="WebService_RefundCancellationAviation"
    xmlns:out="wsdl.http://stub.tagicesb.com/wsdl/RASAviation/"
    xmlns:map="http://Access-ApplicationGC/xslt/cancelPolicy_Aviation_InputMap_req_1"
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
            <xsl:call-template name="map:cancelPolicy_Aviation_InputMap_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:cancelPolicy_Aviation_InputMap_req_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:cancelPolicy_Aviation_InputMap_req_1">
    <io2:smo>
      <context>
        <!-- a structural mapping: "context/correlation"(correlationBO) to "correlation"(correlationBO) -->
        <xsl:if test="context/correlation">
          <xsl:copy-of select="context/correlation"/>
        </xsl:if>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:webServiceRefundCancellationAviation'"/>
        </xsl:attribute>
        <out3:webServiceRefundCancellationAviation>
          <!-- a simple data mapping: "body/in3:cancelPolicy/cancellationRefundInput/source"(string) to "out3:source"(string) -->
          <xsl:if test="body/in3:cancelPolicy/cancellationRefundInput/source">
            <xsl:element name="out3:source">
              <xsl:value-of select="body/in3:cancelPolicy/cancellationRefundInput/source"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:cancelPolicy/cancellationRefundInput/medium"(string) to "out3:medium"(string) -->
          <xsl:if test="body/in3:cancelPolicy/cancellationRefundInput/medium">
            <xsl:element name="out3:medium">
              <xsl:value-of select="body/in3:cancelPolicy/cancellationRefundInput/medium"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:cancelPolicy/cancellationRefundInput/campaign"(string) to "out3:campaingn"(string) -->
          <xsl:if test="body/in3:cancelPolicy/cancellationRefundInput/campaign">
            <xsl:element name="out3:campaingn">
              <xsl:value-of select="body/in3:cancelPolicy/cancellationRefundInput/campaign"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:cancelPolicy/cancellationRefundInput/strServiceToken"(string) to "out3:strServiceToken"(string) -->
          <xsl:if test="body/in3:cancelPolicy/cancellationRefundInput/strServiceToken">
            <xsl:element name="out3:strServiceToken">
              <xsl:value-of select="body/in3:cancelPolicy/cancellationRefundInput/strServiceToken"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/userId"(string) to "out3:UserId"(string) -->
          <xsl:if test="body/in3:cancelPolicy/cancPolicyData/userId">
            <xsl:element name="out3:UserId">
              <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/userId"/>
            </xsl:element>
          </xsl:if>
          <out3:RefundCancellation>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/policyNo"(string) to "out2:PolicyNo"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/policyNo">
              <xsl:element name="out2:PolicyNo">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/policyNo"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/proposalNo"(string) to "out2:ProposalNo"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/proposalNo">
              <xsl:element name="out2:ProposalNo">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/proposalNo"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/productCode"(string) to "out2:ProductCode"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/productCode">
              <xsl:element name="out2:ProductCode">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/productCode"/>
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
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/effectiveTime"(string) to "out2:MTAEffTime"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/effectiveTime">
              <xsl:element name="out2:MTAEffTime">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/effectiveTime"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/cancellationReason"(string) to "out2:ReasonforCanc"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/cancellationReason">
              <xsl:element name="out2:ReasonforCanc">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/cancellationReason"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/remarks"(string) to "out2:DescofCancReason"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/remarks">
              <xsl:element name="out2:DescofCancReason">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/remarks"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/cancellationOption"(string) to "out2:OptionforCancofInsurance"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/cancellationOption">
              <xsl:element name="out2:OptionforCancofInsurance">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/cancellationOption"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/refundAmount"(string) to "out2:RefundAmt"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/refundAmount">
              <xsl:element name="out2:RefundAmt">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/refundAmount"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/exchangeRate"(string) to "out2:ExchangeRate"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/exchangeRate">
              <xsl:element name="out2:ExchangeRate">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/exchangeRate"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in3:cancelPolicy/cancPolicyData/remarks"(string) to "out2:Remarks"(string) -->
            <xsl:if test="body/in3:cancelPolicy/cancPolicyData/remarks">
              <xsl:element name="out2:Remarks">
                <xsl:value-of select="body/in3:cancelPolicy/cancPolicyData/remarks"/>
              </xsl:element>
            </xsl:if>
          </out3:RefundCancellation>
        </out3:webServiceRefundCancellationAviation>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:cancelPolicy_Aviation_InputMap_req_12">
    <xsl:param name="smo"/>
    <context>
      <!-- a structural mapping: "$smo/context/correlation"(correlationBO) to "correlation"(correlationBO) -->
      <xsl:if test="$smo/context/correlation">
        <xsl:copy-of select="$smo/context/correlation"/>
      </xsl:if>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:webServiceRefundCancellationAviation'"/>
      </xsl:attribute>
      <out3:webServiceRefundCancellationAviation>
        <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancellationRefundInput/source"(string) to "out3:source"(string) -->
        <xsl:if test="$smo/body/in3:cancelPolicy/cancellationRefundInput/source">
          <xsl:element name="out3:source">
            <xsl:value-of select="$smo/body/in3:cancelPolicy/cancellationRefundInput/source"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancellationRefundInput/medium"(string) to "out3:medium"(string) -->
        <xsl:if test="$smo/body/in3:cancelPolicy/cancellationRefundInput/medium">
          <xsl:element name="out3:medium">
            <xsl:value-of select="$smo/body/in3:cancelPolicy/cancellationRefundInput/medium"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancellationRefundInput/campaign"(string) to "out3:campaingn"(string) -->
        <xsl:if test="$smo/body/in3:cancelPolicy/cancellationRefundInput/campaign">
          <xsl:element name="out3:campaingn">
            <xsl:value-of select="$smo/body/in3:cancelPolicy/cancellationRefundInput/campaign"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancellationRefundInput/strServiceToken"(string) to "out3:strServiceToken"(string) -->
        <xsl:if test="$smo/body/in3:cancelPolicy/cancellationRefundInput/strServiceToken">
          <xsl:element name="out3:strServiceToken">
            <xsl:value-of select="$smo/body/in3:cancelPolicy/cancellationRefundInput/strServiceToken"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/userId"(string) to "out3:UserId"(string) -->
        <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/userId">
          <xsl:element name="out3:UserId">
            <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/userId"/>
          </xsl:element>
        </xsl:if>
        <out3:RefundCancellation>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/policyNo"(string) to "out2:PolicyNo"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/policyNo">
            <xsl:element name="out2:PolicyNo">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/policyNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/proposalNo"(string) to "out2:ProposalNo"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/proposalNo">
            <xsl:element name="out2:ProposalNo">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/proposalNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/productCode"(string) to "out2:ProductCode"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/productCode">
            <xsl:element name="out2:ProductCode">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/productCode"/>
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
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/effectiveTime"(string) to "out2:MTAEffTime"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/effectiveTime">
            <xsl:element name="out2:MTAEffTime">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/effectiveTime"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/cancellationReason"(string) to "out2:ReasonforCanc"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/cancellationReason">
            <xsl:element name="out2:ReasonforCanc">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/cancellationReason"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/remarks"(string) to "out2:DescofCancReason"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/remarks">
            <xsl:element name="out2:DescofCancReason">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/remarks"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/cancellationOption"(string) to "out2:OptionforCancofInsurance"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/cancellationOption">
            <xsl:element name="out2:OptionforCancofInsurance">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/cancellationOption"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/refundAmount"(string) to "out2:RefundAmt"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/refundAmount">
            <xsl:element name="out2:RefundAmt">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/refundAmount"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/exchangeRate"(string) to "out2:ExchangeRate"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/exchangeRate">
            <xsl:element name="out2:ExchangeRate">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/exchangeRate"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in3:cancelPolicy/cancPolicyData/remarks"(string) to "out2:Remarks"(string) -->
          <xsl:if test="$smo/body/in3:cancelPolicy/cancPolicyData/remarks">
            <xsl:element name="out2:Remarks">
              <xsl:value-of select="$smo/body/in3:cancelPolicy/cancPolicyData/remarks"/>
            </xsl:element>
          </xsl:if>
        </out3:RefundCancellation>
      </out3:webServiceRefundCancellationAviation>
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
