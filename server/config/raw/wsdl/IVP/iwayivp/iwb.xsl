<?xmlspysamplexml D:\download\IWB\iwayivp-ibs.xml?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="soapName">soap1</xsl:param>
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="no" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="svcName" select="//iWayBusinessService/@name"/>
		<Metadata xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.0.0.0" xmlns="http://schemas.microsoft.com/InformationBridge/2004/Metadata">
		<MetadataScopes>
				<MetadataScope Name="" Version="">
					<Ports>
						<Port xsi:type="PortFileXml" Name="urn:schemas-iwaysoftware-com:iwse" IsCached="false" AuthenticationTypeValue="None">
							<Data>
								<xs:schema elementFormDefault="qualified" targetNamespace="urn:schemas-iwaysoftware-com:iwse" 		xmlns:xs="http://www.w3.org/2001/XMLSchema">
									<xs:element name="ibsinfo">
										<xs:complexType>
											<xs:sequence>
												<xs:element name="service" type="xs:string"/>
												<xs:element name="method" type="xs:string"/>
												<xs:element name="license" type="xs:string"/>
												<xs:element minOccurs="0" name="disposition" type="xs:string"/>
												<xs:element minOccurs="0" name="Username" type="xs:string"/>
												<xs:element minOccurs="0" name="Password" type="xs:string"/>
												<xs:element minOccurs="0" name="language" type="xs:string"/>
											</xs:sequence>
										</xs:complexType>
									</xs:element>
									<xs:element name="adapterexception">
										<xs:complexType>
											<xs:sequence>
												<xs:element name="error" type="xs:string"/>
											</xs:sequence>
										</xs:complexType>
									</xs:element>
								</xs:schema>
							</Data>
						</Port>
						<xsl:for-each select="iWayBusinessService/operations/method">
							<Port xsi:type="PortFileXml" IsCached="false" AuthenticationTypeValue="None">
								<xsl:attribute name="Name">urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="@name"/></xsl:attribute>
								 <Data><xsl:copy-of select="input/xs:schema" xmlns:xs="http://www.w3.org/2001/XMLSchema"/></Data> 
							</Port>	
							<Port xsi:type="PortFileXml" IsCached="false" AuthenticationTypeValue="None">
								<xsl:attribute name="Name">urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="@name"/>:response</xsl:attribute>
								 <Data><xsl:copy-of select="output/xs:schema" xmlns:xs="http://www.w3.org/2001/XMLSchema"/></Data>
							</Port>	
						</xsl:for-each>
						<xsl:for-each select="//address">	
							<Port xsi:type="PortSoap" IsCached="false" AuthenticationTypeValue="Windows">
								<xsl:attribute name="Name"><xsl:value-of select="$svcName"/>Soap<xsl:value-of select="position()"/></xsl:attribute>
								<xsl:attribute name="Location"><xsl:value-of select="$soapAddress"/><xsl:value-of select="."/></xsl:attribute>
							</Port>
						</xsl:for-each> 
					</Ports>
					<Operations>
						<xsl:for-each select="iWayBusinessService/operations/method">
							<xsl:variable name="mthName" select="@name"/>
							<Operation xsi:type="OperationSoapRequest" TimeOut="0" IsUpdate="false">
								<xsl:attribute name="Name"><xsl:value-of select="$mthName"/></xsl:attribute>	
								<xsl:attribute name="PortName"><xsl:value-of select="$svcName"/>Soap1</xsl:attribute>	
								<xsl:attribute name="SoapAction"><xsl:value-of select="$svcName"/>.<xsl:value-of select="$mthName"/>Request@<xsl:value-of select="//license"/>@@</xsl:attribute>	
								<InputSchemas>
									 <SchemaInstance SchemaName="ibsinfo (urn:schemas-iwaysoftware-com:iwse)" Index="-1"/>
									 <SchemaInstance Index="1">
										<xsl:attribute name="SchemaName"><xsl:value-of select="$mthName"/><xsl:text> (urn:iwaysoftware:ibse:jul2003:</xsl:text><xsl:value-of select="$mthName"/>)</xsl:attribute>
									</SchemaInstance>
								</InputSchemas>
								<OutputSchemas>
									<SchemaInstance Index="1">
										<xsl:attribute name="SchemaName"><xsl:value-of select="$mthName"/>Response<xsl:text> (urn:iwaysoftware:ibse:jul2003:</xsl:text><xsl:value-of select="$mthName"/>:response)</xsl:attribute>
									</SchemaInstance> 
								</OutputSchemas>
							</Operation>
						</xsl:for-each> 
					</Operations>
					<Schemas>
						<xsl:for-each select="iWayBusinessService/operations/method">
							<xsl:variable name="mthName" select="@name"/>
							<Schema xsi:type="SchemaXsd">
								<xsl:attribute name="Name"><xsl:value-of select="$mthName"/><xsl:text>  (urn:iwaysoftware:ibse:jul2003:</xsl:text><xsl:value-of select="$mthName"/>)</xsl:attribute>	
								<xsl:attribute name="PortName">urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="$mthName"/></xsl:attribute>	
							</Schema>
							<Schema xsi:type="SchemaXsd">
								<xsl:attribute name="Name"><xsl:value-of select="$mthName"/>Response<xsl:text>  (urn:iwaysoftware:ibse:jul2003:</xsl:text><xsl:value-of select="$mthName"/>:response)</xsl:attribute>	
								<xsl:attribute name="PortName">urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="$mthName"/>:response</xsl:attribute>	
							</Schema>	
						</xsl:for-each>
						<Schema xsi:type="SchemaXsd" Name="ibsinfo (urn:schemas-iwaysoftware-com:iwse)" PortName="urn:schemas-iwaysoftware-com:iwse" /> 
					</Schemas>
			</MetadataScope>
		</MetadataScopes>
		</Metadata>
	</xsl:template>
</xsl:stylesheet>
