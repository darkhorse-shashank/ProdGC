<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/update_Disbursement_FaultMap_res_1.map" md5sum="ef60ad8f6a21f965557c56979e3dc66f" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		update_Disbursement_FaultMap_res_1.map
*   Map declaration(s):	update_Disbursement_FaultMap_res_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252Fstub.tagicesb.com%252Fwsdl%252FRASGenericService%252F%257DrasDataUpdateResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAccess-ApplicationGC%257DcorrelationBO/message%3D%257Bhttp%253A%252F%252FGCDomain-v1.0.0%252Forg%252Ftataaig%252Faccess%252FMaintainAccessGC%257DupdateDisbursement_updateDisbursementFaultMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in2="wsdl.http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:in3="http://stub.tagicesb.com/wsdl/RASGenericService/"
    xmlns:io5="http://www.w3.org/2005/08/addressing"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io6="http://Access-ApplicationGC"
    xmlns:io7="http://www.w3.org/2003/05/soap-envelope"
    xmlns:in="WebService_RefundDetails"
    xmlns:io="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:out2="http://GCLibrary/org/aig/access/BO"
    xmlns:out5="http://RACASBO"
    xmlns:out4="wsdl.http://GCDomain-v1.0.0/org/tataaig/access/MaintainAccessGC"
    xmlns:out="http://GCLibrary/org/aig/access/bo"
    xmlns:map="http://Access-ApplicationGC/xslt/update_Disbursement_FaultMap_res_1"
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
              <xsl:value-of select="'io3:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:update_Disbursement_FaultMap_res_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:update_Disbursement_FaultMap_res_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:update_Disbursement_FaultMap_res_1">
    <io3:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out4:updateDisbursement_updateDisbursementFaultMsg'"/>
        </xsl:attribute>
        <out3:updateDisbursementFault1_updateDisbursementFault>
          <!-- a simple data mapping: "body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status"(string) to "out5:status"(string) -->
          <xsl:if test="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status">
            <xsl:element name="out5:status">
              <xsl:value-of select="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/request"(string) to "out5:data"(string) -->
          <xsl:if test="context/correlation/request">
            <xsl:element name="out5:data">
              <xsl:value-of select="context/correlation/request"/>
            </xsl:element>
          </xsl:if>
          <out5:error>
            <!-- a simple data mapping: "body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID"(string) to "out5:errorCode"(string) -->
            <xsl:if test="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID">
              <xsl:element name="out5:errorCode">
                <xsl:value-of select="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "out5:message"(string) -->
            <xsl:element name="out5:message">
              <xsl:text>Update Disbursement Service Failed</xsl:text>
            </xsl:element>
            <!-- a simple data mapping: "body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc"(string) to "out5:errorDetail"(string) -->
            <xsl:if test="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc">
              <xsl:element name="out5:errorDetail">
                <xsl:value-of select="body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc"/>
              </xsl:element>
            </xsl:if>
          </out5:error>
        </out3:updateDisbursementFault1_updateDisbursementFault>
      </body>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:update_Disbursement_FaultMap_res_12">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out4:updateDisbursement_updateDisbursementFaultMsg'"/>
      </xsl:attribute>
      <out3:updateDisbursementFault1_updateDisbursementFault>
        <!-- a simple data mapping: "$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status"(string) to "out5:status"(string) -->
        <xsl:if test="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status">
          <xsl:element name="out5:status">
            <xsl:value-of select="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:Status"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/request"(string) to "out5:data"(string) -->
        <xsl:if test="$smo/context/correlation/request">
          <xsl:element name="out5:data">
            <xsl:value-of select="$smo/context/correlation/request"/>
          </xsl:element>
        </xsl:if>
        <out5:error>
          <!-- a simple data mapping: "$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID"(string) to "out5:errorCode"(string) -->
          <xsl:if test="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID">
            <xsl:element name="out5:errorCode">
              <xsl:value-of select="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "out5:message"(string) -->
          <xsl:element name="out5:message">
            <xsl:text>Update Disbursement Service Failed</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc"(string) to "out5:errorDetail"(string) -->
          <xsl:if test="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc">
            <xsl:element name="out5:errorDetail">
              <xsl:value-of select="$smo/body/in3:rasDataUpdateResponse/in3:RASDataUpdateResult/in:RASDataUpdate[1]/in:ErrorDesc"/>
            </xsl:element>
          </xsl:if>
        </out5:error>
      </out3:updateDisbursementFault1_updateDisbursementFault>
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
