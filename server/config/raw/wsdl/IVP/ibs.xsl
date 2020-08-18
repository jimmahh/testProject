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
				<META HTTP-EQUIV="Pragma" CONTENT="no-cache"/>
				<link rel="stylesheet" type="text/css">
					<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$ssname"/></xsl:attribute>
				</link>
				<title>Available iWay Business Services</title>
			</head>
			<body>
				<table class="TableTop" cellspacing="0" cellpadding="0">
					<tr>
						<td width="130"><img hspace="6"><xsl:attribute name="src"><xsl:value-of select="$location"/>IVP/iway.gif</xsl:attribute></img></td>
						<td>
                            <table style="table-layout: fixed;" cellspacing="0" cellpadding="0">
								<tr><td nowrap="nowrap" class="TableTopTd">iWay Business Services&#160;</td></tr>
								<tr><td nowrap="nowrap" class="TableTopTd2">Licensed under <font color="#00ff00"><b><i><xsl:value-of select="//IBOLIST/@license"/></i></b></font>&#160;</td></tr>
							</table>
						</td>
					</tr>
				</table>
				<table style="table-layout: fixed;" cellspacing="0" cellpadding="0" width="428">
					<tr>
						<td>
							<xsl:value-of disable-output-escaping="yes" select="//IBOLIST/@description"/>
						</td>
					</tr>
					<tr>
						<td>
							<br/>
							<xsl:choose>
								<xsl:when  test="count(//IBOLIST/IBO) = 0">No web services are currently available under license <b><xsl:value-of select="//IBOLIST/@license"/></b></xsl:when>
								<xsl:otherwise>The following web services are available under license <b><xsl:value-of select="//IBOLIST/@license"/></b></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>
							<ul>
								<table>
									<xsl:for-each select="IBOLIST/IBO">
										<tr>
											<td>
												<li>
													<xsl:element name="a">
														<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="$soapAddress"/><xsl:value-of select="//@license"/>/<xsl:value-of select="name"/>.ibs</xsl:attribute>
														<xsl:value-of select="name"/>
													</xsl:element>
													<br/>
													<div style="margin-left:15px;">
														<xsl:value-of disable-output-escaping="yes" select="description/node()"/>
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
