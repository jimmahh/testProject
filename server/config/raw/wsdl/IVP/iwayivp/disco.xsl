<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:param name="location"/>
   <xsl:output method="xml" version="1.0" encoding="UTF-8"  omit-xml-declaration="yes" indent="yes" />
   
   <xsl:template match="/">
	<discovery xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.xmlsoap.org/disco/">
	<xsl:element name="contractRef" xmlns="http://schemas.xmlsoap.org/disco/scl/">
	   <xsl:attribute name="ref"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/license"/>/<xsl:value-of select="//iWayBusinessService/@name"/>.ibs?wsdl</xsl:attribute>
	   <xsl:attribute name="docRef"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/license"/>/<xsl:value-of select="//iWayBusinessService/@name"/>.ibs?html</xsl:attribute>
	</xsl:element>
	<soap xmlns="http://schemas.xmlsoap.org/disco/soap/" xmlns:q1="urn:schemas-iwaysoftware-com:iwse">
	   <xsl:attribute name="address"><xsl:choose><xsl:when test="//address"><xsl:value-of select="//address"/></xsl:when><xsl:otherwise><xsl:value-of select="//iWayBusinessService/location"/></xsl:otherwise></xsl:choose></xsl:attribute>
	   <xsl:attribute name="binding">q1:<xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
	</soap>
	</discovery>
   </xsl:template>
</xsl:stylesheet>
   
   

