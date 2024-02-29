<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/cancelPolicyTravel_res_1.map" md5sum="0dcaaaff9bcdd3ffefe93136305df4f9" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		cancelPolicyTravel_res_1.map
*   Map declaration(s):	cancelPolicyTravel_res_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationLTA%257DWebService_RefundCancellationLTASoapOut/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257BWebService_RefundCancellationDtls%257DWebService_RefundCancellationDtlsSoapOut/xpath%3D%252F/smo.xsd
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
    xmlns:in2="WebService_RefundCancellationLTA"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://Access-ApplicationGC"
    xmlns:in="wsdl.WebService_RefundCancellationLTA"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out2="WebService_RefundCancellationDtls"
    xmlns:out="wsdl.WebService_RefundCancellationDtls"
    xmlns:map="http://Access-ApplicationGC/xslt/cancelPolicyTravel_res_1"
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
            <xsl:call-template name="map:cancelPolicyTravel_res_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:cancelPolicyTravel_res_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:cancelPolicyTravel_res_1">
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
          <xsl:value-of select="'out:WebService_RefundCancellationDtlsSoapOut'"/>
        </xsl:attribute>
        <out2:WebService_RefundCancellationDtlsResponse>
          <out2:WebService_RefundCancellationDtlsResult>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo"(string) to "out2:ProposalNo"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo">
              <xsl:element name="out2:ProposalNo">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus"(string) to "out2:ProposalStatus"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus">
              <xsl:element name="out2:ProposalStatus">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow"(string) to "out2:ApprovalFlow"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow">
              <xsl:element name="out2:ApprovalFlow">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status"(string) to "out2:Status"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status">
              <xsl:element name="out2:Status">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID"(string) to "out2:ErrorID"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID">
              <xsl:element name="out2:ErrorID">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc"(string) to "out2:ErrorDesc"(string) -->
            <xsl:if test="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc">
              <xsl:element name="out2:ErrorDesc">
                <xsl:value-of select="body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc"/>
              </xsl:element>
            </xsl:if>
          </out2:WebService_RefundCancellationDtlsResult>
        </out2:WebService_RefundCancellationDtlsResponse>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:cancelPolicyTravel_res_12">
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
        <xsl:value-of select="'out:WebService_RefundCancellationDtlsSoapOut'"/>
      </xsl:attribute>
      <out2:WebService_RefundCancellationDtlsResponse>
        <out2:WebService_RefundCancellationDtlsResult>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo"(string) to "out2:ProposalNo"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo">
            <xsl:element name="out2:ProposalNo">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus"(string) to "out2:ProposalStatus"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus">
            <xsl:element name="out2:ProposalStatus">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ProposalStatus"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow"(string) to "out2:ApprovalFlow"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow">
            <xsl:element name="out2:ApprovalFlow">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ApprovalFlow"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status"(string) to "out2:Status"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status">
            <xsl:element name="out2:Status">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID"(string) to "out2:ErrorID"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID">
            <xsl:element name="out2:ErrorID">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc"(string) to "out2:ErrorDesc"(string) -->
          <xsl:if test="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc">
            <xsl:element name="out2:ErrorDesc">
              <xsl:value-of select="$smo/body/in2:WebService_RefundCancellationLTAResponse/in2:WebService_RefundCancellationLTAResult/in2:ErrorDesc"/>
            </xsl:element>
          </xsl:if>
        </out2:WebService_RefundCancellationDtlsResult>
      </out2:WebService_RefundCancellationDtlsResponse>
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