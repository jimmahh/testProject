<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--
		used by soap transformation-related address fixed value:
		/ibse/IBSEServlet/wsdl/
	-->
	<xsl:param name="soapAddress" />
	<xsl:output method="xml" version="1.0" encoding="UTF-8"
		omit-xml-declaration="yes" indent="yes" />
	<xsl:template match="/">
		<definitions xmlns:srvcom="http://configsm.ibi.com/xml/server" xmlns:regcom="http://configsm.ibi.com/xml/registry"
			xmlns:tns="http://iwserver.ibi.com/config" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
			xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/"
			xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
			xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" targetNamespace="http://iwserver.ibi.com/config">
			<types>
				<xs:schema xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
					elementFormDefault="qualified">
					<xs:import namespace="http://configsm.ibi.com/xml/server">
						<xsl:attribute name="schemaLocation"><xsl:value-of
							select="$soapAddress" />admin/iwserver/configsm/schemas/server.xsd</xsl:attribute>
					</xs:import>
				</xs:schema>
			</types>
			<message name="AuthenticationException">
				<part name="fault" element="regcom:AuthenticationException"/>
			</message>
			<message name="GetComponentDescriptorsIn">
				<part name="parameters" element="srvcom:GetComponentDescriptorsReq" />
			</message>
			<message name="GetComponentDescriptorsOut">
				<part name="parameters" element="srvcom:GetComponentDescriptorsRes" />
			</message>
			<message name="GetGeneralPropertiesIn">
				<part name="parameters" element="srvcom:GetGeneralPropertiesReq" />
			</message>
			<message name="GetGeneralPropertiesOut">
				<part name="parameters" element="srvcom:GetGeneralPropertiesRes" />
			</message>
			<message name="CompileProcessFlowIn">
				<part name="parameters" element="srvcom:CompileProcessFlowReq" />
			</message>
			<message name="CompileProcessFlowOut">
				<part name="parameters" element="srvcom:CompileProcessFlowRes" />
			</message>
			<message name="TestProcessFlowIn">
				<part name="parameters" element="srvcom:TestProcessFlowReq" />
			</message>
			<message name="TestProcessFlowOut">
				<part name="parameters" element="srvcom:TestProcessFlowRes" />
			</message>
			<message name="TestProcessFlowV2In">
				<part name="parameters" element="srvcom:TestProcessFlowV2Req" />
			</message>
			<message name="TestProcessFlowV2Out">
				<part name="parameters" element="srvcom:TestProcessFlowV2Res" />
			</message>
			<message name="DeployTransformIn">
				<part name="parameters" element="srvcom:DeployTransformReq" />
			</message>
			<message name="DeployTransformOut">
				<part name="parameters" element="srvcom:DeployTransformRes" />
			</message>
			<message name="DeployChannelIn">
				<part name="parameters" element="srvcom:DeployChannelReq" />
			</message>
			<message name="DeployComponentFilesIn">
				<part name="parameters" element="srvcom:DeployComponentFilesReq" />
			</message>
			<message name="IsResourceExistsIn">
				<part name="parameters" element="srvcom:IsResourceExistsReq" />
			</message>
			<message name="IsResourceExistsOut">
				<part name="parameters" element="srvcom:IsResourceExistsRes" />
			</message>
			<message name="GetConfigurationsIn">
				<part name="parameters" element="srvcom:GetConfigurationsReq" />
			</message>
			<message name="GetConfigurationsOut">
				<part name="parameters" element="srvcom:GetConfigurationsRes" />
			</message>
			<message name="GetAPIsIn">
				<part name="parameters" element="srvcom:GetAPIsReq" />
			</message>
			<message name="GetAPIsOut">
				<part name="parameters" element="srvcom:GetAPIsRes" />
			</message>
			<message name="GetAPIDefinitionIn">
				<part name="parameters" element="srvcom:GetAPIDefinitionReq" />
			</message>
			<message name="GetAPIDefinitionOut">
				<part name="parameters" element="srvcom:GetAPIDefinitionRes" />
			</message>
			<message name="GetFeaturesIn">
				<part name="parameters" element="srvcom:GetFeaturesReq" />
			</message>
			<message name="GetFeaturesOut">
				<part name="parameters" element="srvcom:GetFeaturesRes" />
			</message>
			<message name="GetConfigurationContentsIn">
				<part name="parameters" element="srvcom:GetConfigurationContentsReq" />
			</message>
			<message name="GetConfigurationContentsOut">
				<part name="parameters" element="srvcom:GetConfigurationContentsRes" />
			</message>
			<message name="DeployProcessIn">
				<part name="parameters" element="srvcom:DeployProcessReq" />
			</message>
			<message name="DeployProcessOut">
				<part name="parameters" element="srvcom:DeployProcessRes" />
			</message>
			<message name="GetProcessDeployLocationsIn">
				<part name="parameters" element="srvcom:GetProcessDeployLocationsReq" />
			</message>
			<message name="GetProcessDeployLocationsOut">
				<part name="parameters" element="srvcom:GetProcessDeployLocationsRes" />
			</message>
			<message name="TestTransformIn">
				<part name="parameters" element="srvcom:TestTransformReq" />
			</message>
			<message name="TestTransformOut">
				<part name="parameters" element="srvcom:TestTransformRes" />
			</message>	
      <message name="DeployAppIn">
        <part name="parameters" element="srvcom:DeployAppReq" />
      </message>
      <message name="DeployAppDirectIn">
        <part name="parameters" element="srvcom:DeployAppDirectReq" />
      </message>
      <message name="ReDeployAppIn">
        <part name="parameters" element="srvcom:ReDeployAppReq" />
      </message>
      <message name="StartAppIn">
        <part name="parameters" element="srvcom:StartAppReq" />
      </message>
      <message name="StopAppIn">
        <part name="parameters" element="srvcom:StopAppReq" />
      </message>
      <message name="StartChannelIn">
        <part name="parameters" element="srvcom:StartChannelReq" />
      </message>
      <message name="StopChannelIn">
        <part name="parameters" element="srvcom:StopChannelReq" />
      </message>
      <message name="GetStatusIn">
        <part name="parameters" element="srvcom:GetStatusReq" />
      </message>
      <message name="GetStatusOut">
        <part name="parameters" element="srvcom:GetStatusRes" />
      </message>
      <message name="DeleteAppIn">
        <part name="parameters" element="srvcom:DeleteAppReq" />
      </message>
      <message name="ImportTemplateIn">
        <part name="parameters" element="srvcom:ImportTemplateReq" />
      </message>
      <message name="ImportTemplateV2In">
        <part name="parameters" element="srvcom:ImportTemplateV2Req" />
      </message>
	  <message name="GetIFLComponentDescriptorsIn">
		<part name="parameters" element="srvcom:GetIFLComponentDescriptorsReq" />
	  </message>
	  <message name="GetIFLComponentDescriptorsOut">
		<part name="parameters" element="srvcom:GetIFLComponentDescriptorsRes" />
	  </message>
	  
	  <message name="GetApplicationLogIn">
		<part name="parameters" element="srvcom:GetApplicationLogReq" />
	  </message>
	  <message name="GetApplicationLogOut">
		<part name="parameters" element="srvcom:GetApplicationLogRes" />
	  </message>
	  <message name="GetApplicationPropertiesIn">
		<part name="parameters" element="srvcom:GetApplicationPropertiesReq" />
	  </message>
	  <message name="GetApplicationPropertiesOut">
		<part name="parameters" element="srvcom:GetApplicationPropertiesRes" />
	  </message>
	   <message name="GetListApplicationStatusIn">
		<part name="parameters" element="srvcom:GetListApplicationStatusReq" />
	  </message>
	  <message name="GetListApplicationStatusOut">
		<part name="parameters" element="srvcom:GetListApplicationStatusRes" />
	  </message>
	  
	 
			<portType name="iwserverSoap">
				<operation name="GetComponentDescriptors">
					<documentation>description2</documentation>
					<input message="tns:GetComponentDescriptorsIn" />
					<output message="tns:GetComponentDescriptorsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetGeneralProperties">
					<documentation>description2</documentation>
					<input message="tns:GetGeneralPropertiesIn" />
					<output message="tns:GetGeneralPropertiesOut" />
				</operation>
				<operation name="CompileProcessFlow">
					<documentation>description2</documentation>
					<input message="tns:CompileProcessFlowIn" />
					<output message="tns:CompileProcessFlowOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="TestProcessFlow">
					<documentation>description2</documentation>
					<input message="tns:TestProcessFlowIn" />
					<output message="tns:TestProcessFlowOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="TestProcessFlowV2">
					<documentation>description2</documentation>
					<input message="tns:TestProcessFlowV2In" />
					<output message="tns:TestProcessFlowV2Out" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="DeployTransform">
					<documentation>description2</documentation>
					<input message="tns:DeployTransformIn" />
					<output message="tns:DeployTransformOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="DeployChannel">
					<documentation>deploy channel</documentation>
					<input message="tns:DeployChannelIn" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="DeployComponentFiles">
					<documentation>update component files</documentation>
					<input message="tns:DeployComponentFilesIn" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="IsResourceExists">
					<documentation>returns true if resource exists false
						otherwise</documentation>
					<input message="tns:IsResourceExistsIn" />
					<output message="tns:IsResourceExistsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetConfigurations">
					<documentation>server configurations</documentation>
					<input message="tns:GetConfigurationsIn" />
					<output message="tns:GetConfigurationsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetAPIs">
					<documentation>server APIs</documentation>
					<input message="tns:GetAPIsIn" />
					<output message="tns:GetAPIsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetAPIDefinition">
					<documentation>returns an API definition</documentation>
					<input message="tns:GetAPIDefinitionIn" />
					<output message="tns:GetAPIDefinitionOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetFeatures">
					<documentation>server features</documentation>
					<input message="tns:GetFeaturesIn" />
					<output message="tns:GetFeaturesOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetConfigurationContents">
					<documentation>server configurations</documentation>
					<input message="tns:GetConfigurationContentsIn" />
					<output message="tns:GetConfigurationContentsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="DeployProcess">
					<documentation>server configurations</documentation>
					<input message="tns:DeployProcessIn" />
					<output message="tns:DeployProcessOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetProcessDeployLocations">
					<documentation>return process deploy locations</documentation>
					<input message="tns:GetProcessDeployLocationsIn" />
					<output message="tns:GetProcessDeployLocationsOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="TestTransform">
					<documentation>transform test run</documentation>
					<input message="tns:TestTransformIn" />
					<output message="tns:TestTransformOut" />
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>				
        <operation name="DeployApp">
          <documentation>description2</documentation>
          <input message="tns:DeployAppIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="DeployAppDirect">
          <documentation>description2</documentation>
          <input message="tns:DeployAppDirectIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="ReDeployApp">
          <documentation>description2</documentation>
          <input message="tns:ReDeployAppIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="StartApp">
          <documentation>description2</documentation>
          <input message="tns:StartAppIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="StopApp">
          <documentation>description2</documentation>
          <input message="tns:StopAppIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="StartChannel">
          <documentation>description2</documentation>
          <input message="tns:StartChannelIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="StopChannel">
          <documentation>description2</documentation>
          <input message="tns:StopChannelIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="GetStatus">
          <documentation>description2</documentation>
          <input message="tns:GetStatusIn" />
		  <output message="tns:GetStatusOut" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="DeleteApp">
          <documentation>description2</documentation>
          <input message="tns:DeleteAppIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="ImportTemplate">
          <documentation>description2</documentation>
          <input message="tns:ImportTemplateIn" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="ImportTemplateV2">
          <documentation>description2</documentation>
          <input message="tns:ImportTemplateV2In" />
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
		<operation name="GetIFLComponentDescriptors">
			<documentation>description2</documentation>
			<input message="tns:GetIFLComponentDescriptorsIn" />
			<output message="tns:GetIFLComponentDescriptorsOut" />
			<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
		</operation>
		<operation name="GetApplicationLog">
			<documentation>description2</documentation>
			<input message="tns:GetApplicationLogIn" />
			<output message="tns:GetApplicationLogOut" />
			<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
		</operation>
		<operation name="GetApplicationProperties">
			<documentation>description2</documentation>
			<input message="tns:GetApplicationPropertiesIn" />
			<output message="tns:GetApplicationPropertiesOut" />
			<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
		</operation>
		<operation name="GetListApplicationStatus">
			<documentation>description2</documentation>
			<input message="tns:GetListApplicationStatusIn" />
			<output message="tns:GetListApplicationStatusOut" />
			<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
		</operation>
				
			</portType>
			<binding name="iwserverSoap" type="tns:iwserverSoap">
				<soap:binding style="document"
					transport="http://schemas.xmlsoap.org/soap/http" />
				<operation name="GetComponentDescriptors">
					<soap:operation soapAction="iwserver.GetComponentDescriptorsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetGeneralProperties">
					<soap:operation soapAction="iwserver.GetGeneralPropertiesRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
				</operation>
				<operation name="CompileProcessFlow">
					<soap:operation soapAction="iwserver.CompileProcessFlowRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="TestProcessFlow">
					<soap:operation soapAction="iwserver.TestProcessFlowRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="TestProcessFlowV2">
					<soap:operation soapAction="iwserver.TestProcessFlowV2Request@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="DeployTransform">
					<soap:operation soapAction="iwserver.DeployTransformRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="DeployChannel">
					<soap:operation soapAction="iwserver.DeployChannelRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="DeployComponentFiles">
					<soap:operation soapAction="iwserver.DeployComponentFilesRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="IsResourceExists">
					<soap:operation soapAction="iwserver.IsResourceExistsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetFeatures">
					<soap:operation soapAction="iwserver.GetFeaturesRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetConfigurations">
					<soap:operation soapAction="iwserver.GetConfigurationsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetAPIs">
					<soap:operation soapAction="iwserver.GetAPIsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetAPIDefinition">
					<soap:operation soapAction="iwserver.GetAPIDefinitionRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetConfigurationContents">
					<soap:operation soapAction="iwserver.GetConfigurationContentsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="DeployProcess">
					<soap:operation soapAction="iwserver.DeployProcessRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetProcessDeployLocations">
					<soap:operation soapAction="iwserver.GetProcessDeployLocationsRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="TestTransform">
					<soap:operation soapAction="iwserver.TestTransformRequest@admin@@"
						style="document" />
					<input>
						<soap:body use="literal" />
					</input>
					<output>
						<soap:body use="literal" />
					</output>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
        <operation name="DeployApp">
          <soap:operation soapAction="iwserver.DeployAppRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="DeployAppDirect">
          <soap:operation soapAction="iwserver.DeployAppDirectRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="ReDeployApp">
          <soap:operation soapAction="iwserver.ReDeployAppRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="StartApp">
          <soap:operation soapAction="iwserver.StartAppRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="StopApp">
          <soap:operation soapAction="iwserver.StopAppRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="StartChannel">
          <soap:operation soapAction="iwserver.StartChannelRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="StopChannel">
          <soap:operation soapAction="iwserver.StopChannelRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="GetStatus">
          <soap:operation soapAction="iwserver.GetStatusRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <output>
            <soap:body use="literal" />
          </output>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="DeleteApp">
          <soap:operation soapAction="iwserver.DeleteAppRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="ImportTemplate">
          <soap:operation soapAction="iwserver.ImportTemplateRequest@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="ImportTemplateV2">
          <soap:operation soapAction="iwserver.ImportTemplateV2Request@admin@@"
            style="document" />
          <input>
            <soap:body use="literal" />
          </input>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
		<operation name="GetIFLComponentDescriptors">
			<soap:operation soapAction="iwserver.GetIFLComponentDescriptorsRequest@admin@@" style="document" />
			<input>
				<soap:body use="literal" />
			</input>
			<output>
				<soap:body use="literal" />
			</output>
			<fault name="AuthenticationExceptionFault">
				<soap:fault name="AuthenticationExceptionFault" use="literal"/>
			</fault>
		</operation>
		<operation name="GetApplicationLog">
			<soap:operation soapAction="iwserver.GetApplicationLogRequest@admin@@" style="document" />
			<input>
				<soap:body use="literal" />
			</input>
			<output>
				<soap:body use="literal" />
			</output>
			<fault name="AuthenticationExceptionFault">
				<soap:fault name="AuthenticationExceptionFault" use="literal"/>
			</fault>
		</operation>
		<operation name="GetApplicationProperties">
			<soap:operation soapAction="iwserver.GetApplicationPropertiesRequest@admin@@" style="document" />
			<input>
				<soap:body use="literal" />
			</input>
			<output>
				<soap:body use="literal" />
			</output>
			<fault name="AuthenticationExceptionFault">
				<soap:fault name="AuthenticationExceptionFault" use="literal"/>
			</fault>
		</operation>
		<operation name="GetListApplicationStatus">
			<soap:operation soapAction="iwserver.GetListApplicationStatusRequest@admin@@" style="document" />
			<input>
				<soap:body use="literal" />
			</input>
			<output>
				<soap:body use="literal" />
			</output>
			<fault name="AuthenticationExceptionFault">
				<soap:fault name="AuthenticationExceptionFault" use="literal"/>
			</fault>
		</operation>
		
			</binding>
			<service name="iwserver">
				<documentation>description</documentation>
				<port name="iwserverSoap1" binding="tns:iwserverSoap">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of
							select="$soapAddress" />XDSOAPISMServer</xsl:attribute>
					</soap:address>
				</port>
			</service>
		</definitions>
	</xsl:template>
</xsl:stylesheet>
