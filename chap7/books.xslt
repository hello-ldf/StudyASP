<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

  <!--
  <xsl:template match="/">
    <xsl:for-each select="Books">
      <xsl:element name="Book">
        <xsl:for-each select="Book">
          <xsl:element name="Book">
            <xsl:attribute name="ID">
              <xsl:value-of select="@ID"/>
            </xsl:attribute>
            <xsl:attribute name="BookName">
              <xsl:value-of select="BookName"/>
            </xsl:attribute>
            <xsl:attribute name="Price">
              <xsl:value-of select="Price"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
  -->
</xsl:stylesheet>
