<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<definitions xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:rep="http://consolesm.ibi.com/xml/repository" xmlns:ap="http://iwaysoftware.com/ap/ism" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:iway="http://iwaysoftware.com/ism/channels" xmlns:ibsp="urn:schemas-iwaysoftware-com:iwse" xmlns:xdchan="http://iwaysoftware.com/ibsp/xdchannel" targetNamespace="http://iwaysoftware.com/ism/channels">
			
			<import namespace="http://iwaysoftware.com/ap/ism">
				<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>admin/iwchannel/iwayservices.wsdl</xsl:attribute>
			</import>
			<types>
				<xs:schema>
					<xs:import namespace="urn:schemas-iwaysoftware-com:iwse">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>ibspcommon.xsd</xsl:attribute>
					</xs:import>
					
					<xs:import namespace="http://consolesm.ibi.com/xml/repository" schemaLocation="../iwregistry/consolesm/schemas/repository.xsd">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>admin/iwregistry/consolesm/schemas/repository.xsd</xsl:attribute>
					</xs:import>
					<xs:import namespace="http://iwaysoftware.com/ibsp/xdchannel">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>admin/iwchannel/xdchannel.xsd</xsl:attribute>
					</xs:import>
				</xs:schema>
			</types>
			<message name="addwsReq">
				<part name="channel" element="rep:rChannelDescriptor"/>
			</message>
			<message name="addwsResp">
				<part name="result" type="xs:boolean"/>
			</message>
			<message name="deletewsReq">
				<part name="channel" type="xs:string"/>
			</message>
			<message name="deletewsResp">
				<part name="result" type="xs:boolean"/>
			</message>
			<message name="ServiceExistsException">
				<part name="message" element="xdchan:ServiceExistsException"/>
			</message>
			<message name="MethodExistsException">
				<part name="message" element="xdchan:MethodExistsException"/>
			</message>
			<message name="FatalException">
				<part name="message" element="xdchan:FatalException"/>
			</message>
			<portType name="xdchannel">
				<operation name="ADDWS">
					<input message="iway:addwsReq"/>
					<output message="iway:addwsResp"/>
					<fault name="ServiceExistsException" message="iway:ServiceExistsException"/>
					<fault name="MethodExistsException" message="iway:MethodExistsException"/>
					<fault name="FatalException" message="iway:FatalException"/>
				</operation>
				<operation name="DeleteWS">
					<input message="iway:deletewsReq"/>
					<output message="iway:deletewsResp"/>
					<fault name="FatalException" message="iway:FatalException"/>
				</operation>
			</portType>
			<binding name="xdchannel" type="iway:xdchannel">
				<soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
				<operation name="ADDWS">
					<input>
						<soap:body use="encoded"/>
					</input>
					<output>
						<soap:body use="encoded"/>
					</output>
					<fault name="ServiceExistsException">
						<soap:fault name="SeviceExistsFault" use="literal"/>
					</fault>
					<fault name="MethodExistsException">
						<soap:fault name="MethodExistsFault" use="literal"/>
					</fault>
					<fault name="FatalException">
						<soap:fault name="FatalFault" use="literal"/>
					</fault>
				</operation>
				<operation name="DeleteWS">
					<input>
						<soap:body use="encoded"/>
					</input>
					<output>
						<soap:body use="encoded"/>
					</output>
					<fault name="FatalException">
						<soap:fault name="FatalFault" use="literal"/>
					</fault>
				</operation>
			</binding>
			<service name="xdchannel">
				<port name="channel" binding="iway:xdchannel">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel</xsl:attribute>
					</soap:address>
				</port>
			</service>
			<service name="ap">
				<port name="ap" binding="ap:ap2">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel</xsl:attribute>
					</soap:address>
				</port>
			</service>
		</definitions>
	</xsl:template>
</xsl:stylesheet>