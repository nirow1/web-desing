<?xml version="1.0" encoding="UFT-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" omit-xml-declaration="yes" indent="no" media-type="application/json"/>
  <xsl:template match="/">
    "name": "CryptoWalet",
    "tag": "<xsl:value-of select="CryptoWalet/tag/@value"/>",
    "měna": [
      <xsl:for-each select="CryptoWalet/longTerm/cryptocurencyL">
        <xsl:sort select="name"/>
        {
        "tag": "<xsl:value-of select="tag"/>",
        "quantyty": "<xsl:value-of select="quantyty"/>",
        <xsl:choose>
          <xsl:when test="name='Bitcoin'">
            "name": "<xsl:value-of select ="name"/>"
          </xsl:when>
          <xsl:otherwise>
            "name" : "jiná měna"
          </xsl:otherwise>
        </xsl:choose>
        }
        <xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>