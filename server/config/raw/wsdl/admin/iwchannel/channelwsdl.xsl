<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rep="http://consolesm.ibi.com/xml/repository">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<definitions xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:ap="http://iwaysoftware.com/ap/ism" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ibsp="urn:schemas-iwaysoftware-com:iwse" xmlns:channel="http://iwaysoftware.com/ibsp/channel/common" xmlns:tns="http://iwaysoftware.com/ism/channel" targetNamespace="http://iwaysoftware.com/ism/channel">

			<import namespace="http://iwaysoftware.com/ap/ism">
				<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>admin/iwchannel/iwayservices.wsdl</xsl:attribute>
			</import>
			
			<types>
				<xs:schema>
					<xsl:attribute name="targetNamespace">http://iwaysoftware.com/ism/channel</xsl:attribute>
					<xs:import namespace="urn:schemas-iwaysoftware-com:iwse">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>ibspcommon.xsd</xsl:attribute>
					</xs:import>
					<xs:import namespace="http://iwaysoftware.com/ibsp/channel/common">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>admin/iwchannel/channelcommon.xsd</xsl:attribute>
					</xs:import>
				</xs:schema>
			</types>
			<message name="channelRequest">
				<part name="input" element="channel:request"/>
			</message>
			<message name="channelResponse">
				<part name="output" element="channel:response"/>
			</message>
			<message name="logicalException">
				<part name="message" element="channel:LogicalException"/>
			</message>
			<message name="physicalException">
				<part name="message" element="channel:PhysicalException"/>
			</message>
			<message name="Header">
				<part name="header" element="ibsp:ibsinfo"/>
			</message>
			<portType>
				<xsl:attribute name="name"><xsl:value-of select="/iWayBusinessService/abstract"/>Port</xsl:attribute>
				<operation name="execute">
					<input message="tns:channelRequest"/>
					<output message="tns:channelResponse"/>
					<fault name="logicalException" message="tns:logicalException"/>
					<fault name="physicalException" message="tns:physicalException"/>
				</operation>
			</portType>
			<binding>
				<xsl:attribute name="name"><xsl:value-of select="/iWayBusinessService/abstract"/>Binding</xsl:attribute>
				<xsl:attribute name="type">tns:<xsl:value-of select="/iWayBusinessService/abstract"/>Port</xsl:attribute>
				<soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
				<operation name="execute">
					<soap:operation soapAction="channels.execute@channels@@"/>
					<input>
						<soap:body use="literal"/>
						<soap:header message="tns:Header" part="ibsp:Header" use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="logicalException">
						<soap:fault name="logicalException" use="literal"/>
					</fault>
					<fault name="physicalException">
						<soap:fault name="physicalException" use="literal"/>
					</fault>
				</operation>
			</binding>
			<service>
				<xsl:attribute name="name"><xsl:value-of select="/iWayBusinessService/abstract"/></xsl:attribute>
				<port>
					<xsl:attribute name="name"><xsl:value-of select="/iWayBusinessService/abstract"/>Port</xsl:attribute>
					<xsl:attribute name="binding">tns:<xsl:value-of select="/iWayBusinessService/abstract"/>Binding</xsl:attribute>
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel/<xsl:value-of select="/iWayBusinessService/abstract"/></xsl:attribute>
					</soap:address>
				</port>
				<port binding="ap:ap" name="ap">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel/<xsl:value-of select="/iWayBusinessService/abstract"/></xsl:attribute>
					</soap:address>
				</port>
				<!--port name="ap" binding="ap:ap">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel/<xsl:value-of select="/iWayBusinessService/abstract"/>/ap</xsl:attribute>
					</soap:address>
				</port-->
			</service>
			<!--service>
				<xsl:attribute name="name">ap<xsl:value-of select="/iWayBusinessService/abstract"/></xsl:attribute>
				<port name="apPort" binding="ap:ap">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPChannel/<xsl:value-of select="/iWayBusinessService/abstract"/>/ap</xsl:attribute>
					</soap:address>
				</port>
			</service-->
		</definitions>
	</xsl:template>
</xsl:stylesheet>
