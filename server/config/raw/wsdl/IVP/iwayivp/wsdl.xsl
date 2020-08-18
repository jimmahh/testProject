<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<wsdl:definitions targetNamespace="urn:schemas-iwaysoftware-com:iwse" xmlns:tns="urn:schemas-iwaysoftware-com:iwse" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
			<wsdl:types>
				<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:schemas-iwaysoftware-com:iwse" targetNamespace="urn:schemas-iwaysoftware-com:iwse" elementFormDefault="qualified">
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
					<!-- ADAPTER EXCEPTION ELEMENT -->
					<xs:element name="adapterexception">
						<xs:complexType>
							<xs:sequence>
								<xs:element type="xs:string" name="error"/>
							</xs:sequence>
						</xs:complexType>
					</xs:element>
				</xs:schema>
				<xsl:for-each select="iWayBusinessService/operations/method">
					<xsl:copy-of select="input/xs:schema"/>
					<xsl:copy-of select="output/xs:schema"/>
				</xsl:for-each>
				<xsl:copy-of select="iWayBusinessService/imported/*"/>
			</wsdl:types>
			<xsl:for-each select="iWayBusinessService/operations/method">
				<xsl:variable name="mthName" select="@name"/>
				<wsdl:message>
					<xsl:attribute name="name"><xsl:value-of select="$mthName"/>In</xsl:attribute>
					<wsdl:part name="parameters">
						<xsl:attribute name="element"><xsl:value-of select="@label"/>:<xsl:value-of select="$mthName"/></xsl:attribute>
					</wsdl:part>
				</wsdl:message>
				<wsdl:message>
					<xsl:attribute name="name"><xsl:value-of select="$mthName"/>Out</xsl:attribute>
					<wsdl:part name="parameters">
						<xsl:attribute name="element"><xsl:value-of select="@label"/>a:<xsl:value-of select="$mthName"/>Response</xsl:attribute>
					</wsdl:part>
				</wsdl:message>
			</xsl:for-each>
			<wsdl:message>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Header</xsl:attribute>
				<wsdl:part name="header">
					<xsl:attribute name="element">tns:ibsinfo</xsl:attribute>
				</wsdl:part>
			</wsdl:message>
			<wsdl:message name="AdapterException">
				<wsdl:part name="fault" element="tns:adapterexception"/>
			</wsdl:message>
			<wsdl:portType>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<xsl:for-each select="iWayBusinessService/operations/method">
					<wsdl:operation>
						<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
						<wsdl:documentation>
							<xsl:value-of select="description"/>
						</wsdl:documentation>
						<wsdl:input>
							<xsl:attribute name="message">tns:<xsl:value-of select="@name"/>In</xsl:attribute>
						</wsdl:input>
						<wsdl:output>
							<xsl:attribute name="message">tns:<xsl:value-of select="@name"/>Out</xsl:attribute>
						</wsdl:output>
						<wsdl:fault name="AdapterExceptionFault" message="tns:AdapterException"/>
					</wsdl:operation>
				</xsl:for-each>
			</wsdl:portType>
			<wsdl:binding>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<xsl:attribute name="type">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
				<soap:binding>
					<xsl:attribute name="transport">http://schemas.xmlsoap.org/soap/http</xsl:attribute>
					<xsl:attribute name="style">document</xsl:attribute>
				</soap:binding>
				<xsl:for-each select="iWayBusinessService/operations/method">
					<wsdl:operation>
						<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
						<soap:operation>
							<xsl:attribute name="soapAction"><xsl:value-of select="//iWayBusinessService/@name"/>.<xsl:value-of select="@name"/>Request@<xsl:value-of select="//license"/>@@</xsl:attribute>
							<xsl:attribute name="style">document</xsl:attribute>
						</soap:operation>
						<wsdl:input>
							<soap:body use="literal"/>
							<soap:header>
								<xsl:attribute name="message">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Header</xsl:attribute>
								<xsl:attribute name="part">header</xsl:attribute>
								<xsl:attribute name="use">literal</xsl:attribute>
							</soap:header>
						</wsdl:input>
						<wsdl:output>
							<soap:body use="literal"/>
						</wsdl:output>
						<wsdl:fault name="AdapterExceptionFault">
							<soap:fault name="AdapterExceptionFault" use="literal"/>
						</wsdl:fault>
					</wsdl:operation>
				</xsl:for-each>
			</wsdl:binding>
			<wsdl:service>
				<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/></xsl:attribute>
				<wsdl:documentation>
					<xsl:value-of select="//iWayBusinessService/description"/>
				</wsdl:documentation>
				<xsl:for-each select="//address">
					<wsdl:port>
						<xsl:attribute name="name"><xsl:value-of select="//iWayBusinessService/@name"/>Soap<xsl:value-of select="position()"/></xsl:attribute>
						<xsl:attribute name="binding">tns:<xsl:value-of select="//iWayBusinessService/@name"/>Soap</xsl:attribute>
						<soap:address>
							<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/><xsl:value-of select="."/>/<xsl:value-of select="//iWayBusinessService/@name"/></xsl:attribute>
						</soap:address>
					</wsdl:port>
				</xsl:for-each>
			</wsdl:service>
		</wsdl:definitions>
	</xsl:template>
</xsl:stylesheet>
