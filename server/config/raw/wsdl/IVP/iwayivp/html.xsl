<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- style sheet name -->
	<xsl:param name="ssname">IVP/iwse1.css</xsl:param>
	<!-- used by gifs and css files for url purpose -->
	<xsl:param name="location"/>
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="html" version="4.0" encoding="UTF-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<xsl:element name="link">
					<xsl:attribute name="rel">alternate</xsl:attribute>
					<xsl:attribute name="type">text/xml</xsl:attribute>
					<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/>?disco</xsl:attribute>
				</xsl:element>
				<link rel="stylesheet" type="text/css">
					<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$ssname"/></xsl:attribute>
				</link>
				<title><xsl:value-of select="//iWayBusinessService/@name"/>- An iWay Business Service</title>
            </head>
			<body>
				<table class="TableTop" cellspacing="0" cellpadding="0">
					<tr>
						<td width="130"><img hspace="6"><xsl:attribute name="src"><xsl:value-of select="$location"/>IVP/iway.gif</xsl:attribute></img></td>
						<td>
                            <table style="table-layout: fixed;" cellspacing="0" cellpadding="0">
								<tr><td nowrap="nowrap" class="TableTopTd"><xsl:value-of select="//iWayBusinessService/@name"/>&#160;</td></tr>
								<tr><td nowrap="nowrap" class="TableTopTagline">An iWay Business Service&#160;</td></tr>
							</table>
						</td>
					</tr>
				</table>
				<table style="table-layout: fixed;" cellspacing="0" cellpadding="0" width="428">
					<tr>
						<td>
							<xsl:value-of disable-output-escaping="yes" select="//iWayBusinessService/description/node()"/>
						</td>
					</tr>
					<tr>
						<td>
							<br/>
						</td>
					</tr>
					<tr>
						<xsl:variable name="add" select="//iWayBusinessService/address"/>
						<xsl:choose>
							<xsl:when test="contains($add, '?')">
								<td>This service consumes a third-party web service.  For a formal definition, please review the <a>
										<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$soapAddress"/><xsl:value-of select="//iWayBusinessService/location"/>?relay</xsl:attribute>Service Description</a>.</td>
							</xsl:when>
							<xsl:otherwise>
								<td>The following operations are supported.  For a formal definition, please review the <a>
										<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$soapAddress"/><xsl:value-of select="//iWayBusinessService/location"/>?wsdl</xsl:attribute>Service Description</a>.</td>
							</xsl:otherwise>
						</xsl:choose>
					</tr>
					<tr>
						<td>
							<ul>
								<table>
									<xsl:for-each select="iWayBusinessService/operations/method">
										<tr>
											<td>
												<li>
													<xsl:element name="a">
														<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$soapAddress"/><xsl:value-of select="//iWayBusinessService/location"/>?op=<xsl:value-of select="@name"/></xsl:attribute>
														<xsl:value-of select="@name"/>
													</xsl:element>
													<br/>
													<div style="margin-left:15px;">
														<xsl:value-of disable-output-escaping="yes" select="description"/>
													</div>
												</li>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</ul>
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
