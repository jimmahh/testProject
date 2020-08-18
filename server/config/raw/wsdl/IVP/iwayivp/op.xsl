<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="mthName">mthIBO</xsl:param>
	<!-- style sheet name -->
	<xsl:param name="ssname">IVP/iwse1.css</xsl:param>
	<!-- used by gifs and css files for url purpose -->
	<xsl:param name="location"></xsl:param>
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"></xsl:param>
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
				<title><xsl:value-of select="//iWayBusinessService/@name"/> - An iWay Business Service</title>
			</head>
			<xsl:if test="$ssname='IVP/iwse1.css'">
				<script language="JScript">
function ReadFromFile() 
{ 
  var fso, a, ForReading; ForReading = 1;
  var fileName = document.all('fileInput').value;
  fso = new ActiveXObject("Scripting.FileSystemObject");
  file = fso.OpenTextFile(fileName, ForReading, false); 
  var name = file.readAll();
  file.Close(); 
  document.all('parm').value=name;
} 
function SizeBox() 
{ 
	var rc=document.all('parm').rows;
	if(rc==5)
	{
		document.all('expand').value="Less";
		document.all('parm').rows=18;
	}
	else
	{
		document.all('expand').value="More";
		document.all('parm').rows=5;
	}
} 
function Hide()
{
	var obj = document.getElementById('soap');
   var dsp = 'none';
   if (obj.style.display == dsp) dsp = '';
   if (dsp == '')obj.style.display = '';
	else obj.style.display = 'none';
}		 
				</script>
			</xsl:if>
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
							<br/>
						</td>
					</tr>
					<tr>
						<td>Click <a><xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/></xsl:attribute>here</a> for a complete list of operations.</td>
					</tr>
					<tr>
						<td>
							<br/>
						</td>
					</tr>
					<tr>
						<td>
							<xsl:for-each select="//method[@name=$mthName]">
								<table width="100%">
									<tr>
										<td class="MethodName"><xsl:value-of select="@name"/></td>
									</tr>
									<tr>
										<td><xsl:value-of disable-output-escaping="yes" select="description"/></td>
									</tr>
									<tr>
										<td class="Test">Test</td>
									</tr>
									<tr>
										<td>
											<div>
												To test the operation using the <a href="#soap" onclick="Hide();">SOAP protocol</a>, click the 'Invoke' button.
												<form name="input" method="POST">
													<xsl:attribute name="action"><xsl:value-of select="$location"/><xsl:value-of select="$soapAddress"/>XDSOAPHTTPGET</xsl:attribute>
												
													<!-- 5 hidden filed license, svcName, mthName, type, paramCount -->
													<input class="frmInput" type="hidden" name="license">
														<xsl:attribute name="value"><xsl:value-of select="//license"/></xsl:attribute>
													</input>
													<input class="frmInput" type="hidden" name="svcName">
														<xsl:attribute name="value"><xsl:value-of select="//iWayBusinessService/@name"/></xsl:attribute>
													</input>
													<input class="frmInput" type="hidden" name="mthName">
														<xsl:attribute name="value"><xsl:value-of select="@name"/></xsl:attribute>
													</input>
													<input class="frmInput" type="hidden" name="type">
														<xsl:attribute name="value"><xsl:value-of select="@type"/></xsl:attribute>
													</input>
													<input class="frmInput" type="hidden" name="paramCount">
														<xsl:attribute name="value"><xsl:value-of select="count(input/paramlist/parameter)"/></xsl:attribute>
													</input>
													
													<xsl:choose>
														<xsl:when test="@type='AGENT' or @type='ADAPTER' or @type='ADAPTER2'">
															<table cellspacing="0" cellpadding="4" frame="box" bordercolor="#dcdcdc" rules="none" style="border-collapse:collapse;table-layout: fixed;">
																<tr>
																	<td colspan="4" class="frmHeader">input xml:</td>
																</tr>
																<tr>
																	<td colspan="4">
																		<textarea name="parm" rows="5" cols="48"/>
																	</td>
																</tr>
																<tr height="28">
																	<td colspan="2">
																		<input type="file" name="fileInput" accept="text/xml" class="flat" size="20"/>
																	</td>
																	<td colspan="2" align="right">
																		<input name="test" value="Upload" type="button" class="flat2" onclick="ReadFromFile()"/>
																		<xsl:text> </xsl:text>
																		<input name="expand" value="More" type="button" class="flat2" onclick="SizeBox()"/>
																		<xsl:text> </xsl:text>
																		<input name="inv" type="submit" class="flat2" value="Invoke"/>
																	</td>
																</tr>
															</table>
														</xsl:when>
														
														<xsl:when test="@type='ADPRPC' or @type='ADPRPC2'">
															<xsl:choose>
																<xsl:when test="input/paramlist/parameter">
																	<table cellspacing="0" cellpadding="4" frame="box" bordercolor="#dcdcdc" rules="none" style="border-collapse:collapse;table-layout: fixed;" width="98%">
																		<tr>
																			<td class="frmHeader" width="140" style="border-right: 2px solid white;">Parameter</td>
																			<td class="frmHeader">Value</td>
																		</tr>
																		<xsl:for-each select="input/paramlist/parameter">
																			<tr>
																				<xsl:variable name="inparam"/>
																				<td class="frmText" style="color: #000000; font-weight:normal;">
																					<xsl:value-of select="@name"/>:</td>
																				<td>
																					<input class="frmInput" type="text" size="47">
																						<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
																						<xsl:if test="@fixed">
																							<xsl:attribute name="value"><xsl:value-of select="@fixed"/></xsl:attribute>
																							<xsl:attribute name="disabled">true</xsl:attribute>
																						</xsl:if>
																					</input>
																				</td>
																			</tr>
																			<xsl:if test="@fixed">
																				<input class="frmInput" type="hidden">
																					<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
																					<xsl:attribute name="value"><xsl:value-of select="@fixed"/></xsl:attribute>
																				</input>
																			</xsl:if>
																		</xsl:for-each>
																		<tr>
																			<td/>
																			<td align="right">
																				<input name="inv" type="submit" class="flat2" value="Invoke"/>
																				<xsl:text> </xsl:text>
																			</td>
																		</tr>
																	</table>
																</xsl:when>
																<xsl:otherwise>
																	<table>
																		<tr>
																			<td align="left">
																				<input name="inv" type="submit" class="flat2" value="Invoke"/>
																			</td>
																		</tr>
																	</table>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:when>
														<xsl:otherwise>
															<xsl:choose>
																<xsl:when test="input/paramlist/parameter">
																	<table cellspacing="0" cellpadding="4" frame="box" bordercolor="#dcdcdc" rules="none" style="border-collapse:collapse;table-layout: fixed;" width="100%">
																		<tr>
																			<td class="frmHeader" background="#dcdcdc" style="border-right: 2px solid white;">Parameter</td>
																			<td class="frmHeader" background="#dcdcdc">Value</td>
																		</tr>
																		<xsl:for-each select="input/paramlist/parameter">
																			<tr>
																				<xsl:variable name="inparam"/>
																				<td class="frmText" style="color: #000000; font-weight:normal;">
																					<xsl:value-of select="@name"/>:</td>
																				<td>
																					<input class="frmInput" type="text" size="50" name="parm"/>
																				</td>
																			</tr>
																		</xsl:for-each>
																		<tr>
																			<td/>
																			<td align="right">
																				<input name="inv" type="submit" class="flat2" value="Invoke"/>
																			</td>
																		</tr>
																	</table>
																</xsl:when>
																<xsl:otherwise>
																	<table>
																		<tr>
																			<td align="left">
																				<input name="inv" type="submit" class="flat2" value="Invoke"/>
																			</td>
																		</tr>
																	</table>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:otherwise>
													</xsl:choose>
												</form>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>
											<div id="soap" style="display:none">
												<a name="soap"/>
												<table>
													<tr>
														<td class="Test">SOAP</td>
													</tr>
													<tr>
														<td>
															<p>The following is a sample SOAP request and response.The <font class="value">placeholders</font> shown need to be replaced with actual values.</p>
															<pre>
POST <xsl:value-of select="//iWayBusinessService/address"/> HTTP/1.1
Host: www.soapclient.com
Content-Type: text/xml
Content-Length: <font class="value">length</font>
SOAPAction: <xsl:value-of select="//iWayBusinessService/@name"/>.<xsl:value-of select="@name"/>Request#<xsl:value-of select="//license"/>##

&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema"&gt;
   &lt;SOAP-ENV:Body&gt;
      &lt;<xsl:value-of select="@name"/> xmlns="urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="@name"/>"&gt;
	<xsl:choose>
																	<xsl:when test="@type='AGENT'"> Complex input detected, See <a>
																			<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/>?schema=<xsl:value-of select="@name"/></xsl:attribute>schema</a> for details.</xsl:when>
																	<xsl:when test="@type='ADAPTER' or @type='ADAPTER2'"> Complex input detected, See <a>
																			<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/>?schema=<xsl:value-of select="@name"/></xsl:attribute>schema</a> for details.</xsl:when>
																	<xsl:when test="@type='ADPRPC' or @type='ADPRPC2'">
																		<xsl:for-each select="input/paramlist/parameter">
																			<xsl:if test="position()=1">
																				<xsl:text></xsl:text>
																			</xsl:if>
																			<xsl:if test="position()!=1">
																				<br/>
																				<xsl:text>             </xsl:text>
																			</xsl:if>&lt;<xsl:value-of select="@name"/>&gt;<font class="value">xs:<xsl:value-of select="@type"/>
																			</font>&lt;/<xsl:value-of select="@name"/>&gt;</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise> &lt;<xsl:value-of select="@name"/>Params&gt;<xsl:for-each select="input/paramlist/parameter">
																			<br/>            &lt;<xsl:value-of select="@name"/>&gt;<font class="value">xs:<xsl:value-of select="@type"/>
																			</font>&lt;/<xsl:value-of select="@name"/>&gt;</xsl:for-each>
																		<br/>         &lt;/<xsl:value-of select="@name"/>Params&gt;</xsl:otherwise>
																</xsl:choose>
																<br/>      &lt;/<xsl:value-of select="@name"/>&gt;
   &lt;/SOAP-ENV:Body&gt;
&lt;/SOAP-ENV:Envelope&gt;
</pre>
															<pre>
HTTP/1.1 200 OK
Content-Type: text/xml
Content-Length: <font class="value">length</font>

&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema"&gt;
   &lt;SOAP-ENV:Body&gt;
      &lt;<xsl:value-of select="@name"/>Response xmlns="urn:iwaysoftware:ibse:jul2003:<xsl:value-of select="@name"/>:Response" <br/>         cid="<font class="value">xs:string</font>"&gt;
      <xsl:choose>
																	<xsl:when test="@type='AGENT'">   Complex input detected, See <a>
																			<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/>?schema=<xsl:value-of select="@name"/>Response</xsl:attribute>schema</a> for details.</xsl:when>
																	<xsl:when test="@type='ADAPTER'">   Complex input detected, See <a>
																			<xsl:attribute name="href"><xsl:value-of select="$location"/><xsl:value-of select="//iWayBusinessService/location"/>?schema=<xsl:value-of select="@name"/>Response</xsl:attribute>schema</a> for details.</xsl:when>
																	<xsl:when test="@type='ADPRPC'">
																		<xsl:for-each select="output/paramlist/parameter">
																			<xsl:if test="position()=1">
																				<xsl:text>      </xsl:text>
																			</xsl:if>
																			<xsl:if test="position()!=1">
																				<br/>
																				<xsl:text>            </xsl:text>
																			</xsl:if>&lt;<xsl:value-of select="@name"/>&gt;<font class="value">xs:<xsl:value-of select="@type"/>
																			</font>&lt;/<xsl:value-of select="@name"/>&gt;</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>   &lt;<xsl:value-of select="@name"/>Result run="<font class="value">xs:string</font>"&gt;<br/>            &lt;<xsl:value-of select="@name"/>Row&gt;<xsl:for-each select="output/paramlist/parameter">
																			<br/>               &lt;<xsl:value-of select="@name"/>&gt;<font class="value">xs:<xsl:value-of select="@type"/>
																			</font>&lt;/<xsl:value-of select="@name"/>&gt;</xsl:for-each>
																		<br/>            &lt;/<xsl:value-of select="@name"/>Row&gt;<br/>         &lt;/<xsl:value-of select="@name"/>Result&gt;</xsl:otherwise>
																</xsl:choose>
      &lt;/<xsl:value-of select="@name"/>Response&gt;
   &lt;/SOAP-ENV:Body&gt;
&lt;/SOAP-ENV:Envelope&gt;
</pre>
													
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
								</table>
							</xsl:for-each>
						</td>
					</tr>
					
				</table>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
