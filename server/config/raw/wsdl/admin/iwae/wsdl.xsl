<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>

	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<definitions targetNamespace="urn:schemas-iwaysoftware-com:dec2002:iwse:af" xmlns:tns="urn:schemas-iwaysoftware-com:dec2002:iwse:af" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns="http://schemas.xmlsoap.org/wsdl/">
			<types>
				<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:schemas-iwaysoftware-com:dec2002:iwse:af" targetNamespace="urn:schemas-iwaysoftware-com:dec2002:iwse:af" elementFormDefault="qualified">
					<xsl:for-each select="iWayBusinessService/operations/method">
						<xsl:copy-of select="input/xs:schema/xs:element"/>
						<xsl:copy-of select="input/xs:schema/xs:complexType"/>
						<xsl:copy-of select="input/xs:schema/xs:simpleType"/>
						<xsl:copy-of select="input/xs:schema/xs:attributeGroup"/>
						<xsl:copy-of select="input/xs:schema/xs:attribute"/>
						<xsl:copy-of select="output/xs:schema/xs:element"/>
						<xsl:copy-of select="output/xs:schema/xs:complexType"/>
						<xsl:copy-of select="output/xs:schema/xs:simpleType"/>
						<xsl:copy-of select="output/xs:schema/xs:attributeGroup"/>
						<xsl:copy-of select="output/xs:schema/xs:attribute"/>
					</xsl:for-each>
					<xs:element name="ibsinfo">
						<xs:complexType>
							<xs:sequence>
								<!-- web service name                                  -->
								<xs:element name="service" type="xs:string"/>
								<!-- web method name                                  -->
								<xs:element name="method" type="xs:string"/>
								<!-- category or license name                       -->
								<xs:element name="license" type="xs:string"/>
								<!-- the request is an async one if this field is specified            --> 
								<xs:element name="disposition" type="xs:string" minOccurs="0"/>
								<!-- user id for policy-based security                                         -->
								<xs:element name="Username" type="xs:string" minOccurs="0"/>
								<!-- password for policy-based security                                    -->
								<xs:element name="Password" type="xs:string" minOccurs="0"/>
								<!--default "en-US" language code=en and country code=US   -->
								<!--if - is missing, country code=""                                             --> 
								<xs:element name="language" type="xs:string" minOccurs="0" />
							</xs:sequence>
						</xs:complexType>
					</xs:element>
				</xs:schema>
			</types>
			<xsl:for-each select="iWayBusinessService/operations/method">
				<message>
					<xsl:attribute name="name"><xsl:value-of select="@name"/>In</xsl:attribute>
					<part name="parameters">
						<xsl:attribute name="element">tns:<xsl:value-of select="@name"/></xsl:attribute>
					</part>
				</message>
				<message>
					<xsl:attribute name="name"><xsl:value-of select="@name"/>Out</xsl:attribute>
					<part name="parameters">
						<xsl:attribute name="element">tns:<xsl:value-of select="@name"/>Response</xsl:attribute>
					</part>
				</message>
			</xsl:for-each>
			<message>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Header</xsl:attribute>
				<part name="header">
					<xsl:attribute name="element">tns:ibsinfo</xsl:attribute>
				</part>
			</message>
			<portType>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<xsl:for-each select="iWayBusinessService/operations/method">
					<operation>
						<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
						<documentation>
							<xsl:value-of select="description"/>
						</documentation>
						<input>
							<xsl:attribute name="message">tns:<xsl:value-of select="@name"/>In</xsl:attribute>
						</input>
						<output>
							<xsl:attribute name="message">tns:<xsl:value-of select="@name"/>Out</xsl:attribute>
						</output>
					</operation>
				</xsl:for-each>
			</portType>
			<binding>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<xsl:attribute name="type">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<soap:binding>
					<xsl:attribute name="transport">http://schemas.xmlsoap.org/soap/http</xsl:attribute>
					<xsl:attribute name="style">document</xsl:attribute>
				</soap:binding>
				<xsl:for-each select="iWayBusinessService/operations/method">
					<operation>
						<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
						<soap:operation>
							<xsl:attribute name="soapAction"><xsl:value-of select="//iWayBusinessService/@name"/>.<xsl:value-of select="@name"/>Request#<xsl:value-of select="//license"/>##</xsl:attribute>
							<xsl:attribute name="style">document</xsl:attribute>
						</soap:operation>
						<input>
							<soap:body use="literal"/>
							<soap:header>
								<xsl:attribute name="message">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Header</xsl:attribute>
								<xsl:attribute name="part">header</xsl:attribute>
								<xsl:attribute name="use">literal</xsl:attribute>
							</soap:header>
						</input>
						<output>
							<soap:body use="literal"/>
						</output>
					</operation>
				</xsl:for-each>
			</binding>
			<service>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/></xsl:attribute>
				<documentation>
					<xsl:value-of select="//iWayBusinessService/description"/>
				</documentation>
				<xsl:for-each select="//address">
					<port>
						<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap<xsl:value-of select="position()"/></xsl:attribute>
						<xsl:attribute name="binding">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
						<soap:address>
							<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/><xsl:value-of select="."/></xsl:attribute>
						</soap:address>
					</port>
				</xsl:for-each>
			</service>
		</definitions>
	</xsl:template>
</xsl:stylesheet>
