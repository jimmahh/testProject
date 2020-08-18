<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rep="http://consolesm.ibi.com/xml/repository">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<iWayBusinessService xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="iwregistry" xmlns:xs="http://www.w3.org/2001/XMLSchema">
			<abstract><xsl:value-of select="/rep:rChannelDescriptor/@name"/></abstract>
			<description>
				<xsl:value-of select="/rep:rChannelDescriptor/@description"/>
			</description>
			<location>channels/<xsl:value-of select="/rep:rChannelDescriptor/@name"/>.ibs</location>
			<address>XDSOAPChannel</address>
			<license>admin</license>
			<operations>
				<method name="execute" type="ADAPTER">
					<abstract>
						<xsl:value-of select="/rep:rChannelDescriptor/@description"/>
					</abstract>
					<description>
						<xsl:value-of select="/rep:rChannelDescriptor/@description"/>
					</description>
					<input>
						<paramlist/>
					</input>
				</method>
			</operations>
		</iWayBusinessService>
	</xsl:template>
</xsl:stylesheet>
