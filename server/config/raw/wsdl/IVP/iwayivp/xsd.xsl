<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="no" indent="yes" />
	<xsl:template match="/">
		<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="urn:schemas-iwaysoftware-com:iwse" xmlns:tns="urn:schemas-iwaysoftware-com:iwse">
			<xsl:for-each select="iWayBusinessService/operations/method">
				<xsl:copy-of select="input/xs:schema/xs:element" />
				<xsl:copy-of select="input/xs:schema/xs:complexType" />
				<xsl:copy-of select="input/xs:schema/xs:attributeGroup" />
				<xsl:copy-of select="input/xs:schema/xs:attribute" />
				<xsl:copy-of select="output/xs:schema/xs:element" />
				<xsl:copy-of select="output/xs:schema/xs:complexType" />
				<xsl:copy-of select="output/xs:schema/xs:attributeGroup" />
				<xsl:copy-of select="output/xs:schema/xs:attribute" />
			</xsl:for-each>
			<xs:element name="ibsinfo"> 
				<xs:complexType> 
					<xs:sequence> 
						<xs:element name="service" type="xs:string" /> 
						<xs:element name="method" type="xs:string" /> 
						<xs:element name="license" type="xs:string" /> 
						<xs:element minOccurs="0" name="disposition" type="xs:string" /> 
						<xs:element type="xs:string" name="Username" minOccurs="0" /> 
						<xs:element type="xs:string" name="Password" minOccurs="0" /> 
					</xs:sequence> 
				</xs:complexType> 
			</xs:element>
		</xs:schema>
	</xsl:template>
</xsl:stylesheet>

