<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- used by soap transformation-related address fixed value: /ibse/IBSEServlet/wsdl/-->
	<xsl:param name="soapAddress"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="/">
		<definitions xmlns:regcom="http://configsm.ibi.com/xml/registry" xmlns:tns="http://iwregistry.ibi.com/config" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" targetNamespace="http://iwregistry.ibi.com/config">
			<types>
				<xs:schema xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" elementFormDefault="qualified">
					<xs:import namespace="http://configsm.ibi.com/xml/registry">
						<xsl:attribute name="schemaLocation"><xsl:value-of select="$soapAddress"/>admin/iwregistry/configsm/schemas/registry.xsd</xsl:attribute>
					</xs:import>
				</xs:schema>
			</types>
			<!-- exceptions -->
			<message name="GeneralRegistryException">
				<part name="fault" element="regcom:GeneralRegistryException"/>
			</message>
			<message name="ComponentAddException">
				<part name="fault" element="regcom:ComponentAddException"/>
			</message>
			<message name="AuthenticationException">
				<part name="fault" element="regcom:AuthenticationException"/>
			</message>
			<!-- generic component messages -->
			<message name="GetComponentsIn">
				<part name="parameters" element="regcom:GetComponentsReq"/>
			</message>
			<message name="GetComponentsOut">
				<part name="parameters" element="regcom:GetComponentsRes"/>
			</message>
			<message name="GetComponentsGenericIn">
				<part name="parameters" element="regcom:GetComponentsGenericReq"/>
			</message>
			<message name="GetComponentsGenericOut">
				<part name="parameters" element="regcom:GetComponentsGenericRes"/>
			</message>
			<message name="GetComponentFilesIn">
				<part name="parameters" element="regcom:GetComponentFilesReq"/>
			</message>
			<message name="GetComponentFilesOut">
				<part name="parameters" element="regcom:GetComponentFilesRes"/>
			</message>
			<!-- adapter messages -->
			<message name="AddAdapterIn">
				<part name="parameters" element="regcom:AddAdapterReq"/>
			</message>
			<message name="AddAdapterOut">
				<part name="parameters" element="regcom:AddAdapterRes"/>
			</message>
			<message name="UpdateAdapterIn">
				<part name="parameters" element="regcom:UpdateAdapterReq"/>
			</message>
			<message name="UpdateAdapterOut">
				<part name="parameters" element="regcom:UpdateAdapterRes"/>
			</message>
      <!-- app archive messages -->
      <message name="AddApplicationArchiveIn">
        <part name="parameters" element="regcom:AddApplicationArchiveReq"/>
      </message>
      <message name="AddApplicationArchiveOut">
        <part name="parameters" element="regcom:AddApplicationArchiveRes"/>
      </message>
      <message name="AddApplicationArchiveV2In">
        <part name="parameters" element="regcom:AddApplicationArchiveV2Req"/>
      </message>
			<!-- channel messages -->
			<message name="GetChannelIn">
				<part name="parameters" element="regcom:GetChannelReq"/>
			</message>
			<message name="GetChannelOut">
				<part name="parameters" element="regcom:GetChannelRes"/>
			</message>
			<message name="AddChannelIn">
				<part name="parameters" element="regcom:AddChannelReq"/>
			</message>
			<message name="AddChannelOut">
				<part name="parameters" element="regcom:AddChannelRes"/>
			</message>
			<message name="UpdateChannelIn">
				<part name="parameters" element="regcom:UpdateChannelReq"/>
			</message>
			<message name="UpdateChannelOut">
				<part name="parameters" element="regcom:UpdateChannelRes"/>
			</message>
			<!-- decryptor messages -->
			<message name="AddDecryptorIn">
				<part name="parameters" element="regcom:AddDecryptorReq"/>
			</message>
			<message name="AddDecryptorOut">
				<part name="parameters" element="regcom:AddDecryptorRes"/>
			</message>
			<message name="UpdateDecryptorIn">
				<part name="parameters" element="regcom:UpdateDecryptorReq"/>
			</message>
			<message name="UpdateDecryptorOut">
				<part name="parameters" element="regcom:UpdateDecryptorRes"/>
			</message>
			<!-- ebix messages -->
			<message name="AddEbixIn">
				<part name="parameters" element="regcom:AddEbixReq"/>
			</message>
			<message name="AddEbixOut">
				<part name="parameters" element="regcom:AddEbixRes"/>
			</message>
			<message name="AddEbixV2In">
				<part name="parameters" element="regcom:AddEbixV2Req"/>
			</message>
			<message name="UpdateEbixIn">
				<part name="parameters" element="regcom:UpdateEbixReq"/>
			</message>
			<message name="UpdateEbixOut">
				<part name="parameters" element="regcom:UpdateEbixRes"/>
			</message>
			<message name="UpdateEbixV2In">
				<part name="parameters" element="regcom:UpdateEbixV2Req"/>
			</message>
			<!-- emitter messages -->
			<message name="AddEmitterIn">
				<part name="parameters" element="regcom:AddEmitterReq"/>
			</message>
			<message name="AddEmitterOut">
				<part name="parameters" element="regcom:AddEmitterRes"/>
			</message>
			<message name="UpdateEmitterIn">
				<part name="parameters" element="regcom:UpdateEmitterReq"/>
			</message>
			<message name="UpdateEmitterOut">
				<part name="parameters" element="regcom:UpdateEmitterRes"/>
			</message>
			<!-- encryptor messages -->
			<message name="AddEncryptorIn">
				<part name="parameters" element="regcom:AddEncryptorReq"/>
			</message>
			<message name="AddEncryptorOut">
				<part name="parameters" element="regcom:AddEncryptorRes"/>
			</message>
			<message name="UpdateEncryptorIn">
				<part name="parameters" element="regcom:UpdateEncryptorReq"/>
			</message>
			<message name="UpdateEncryptorOut">
				<part name="parameters" element="regcom:UpdateEncryptorRes"/>
			</message>
			<!-- inlet messages -->
			<message name="GetInletIn">
				<part name="parameters" element="regcom:GetInletReq"/>
			</message>
			<message name="GetInletOut">
				<part name="parameters" element="regcom:GetInletRes"/>
			</message>
			<message name="AddInletIn">
				<part name="parameters" element="regcom:AddInletReq"/>
			</message>
			<message name="AddInletOut">
				<part name="parameters" element="regcom:AddInletRes"/>
			</message>
			<message name="UpdateInletIn">
				<part name="parameters" element="regcom:UpdateInletReq"/>
			</message>
			<message name="UpdateInletOut">
				<part name="parameters" element="regcom:UpdateInletRes"/>
			</message>
			<!-- listener messages -->
			<message name="AddListenerIn">
				<part name="parameters" element="regcom:AddListenerReq"/>
			</message>
			<message name="AddListenerOut">
				<part name="parameters" element="regcom:AddListenerRes"/>
			</message>
			<message name="UpdateListenerIn">
				<part name="parameters" element="regcom:UpdateListenerReq"/>
			</message>
			<message name="UpdateListenerOut">
				<part name="parameters" element="regcom:UpdateListenerRes"/>
			</message>
			<!-- other messages -->
			<message name="AddOtherIn">
				<part name="parameters" element="regcom:AddOtherReq"/>
			</message>
			<message name="AddOtherOut">
				<part name="parameters" element="regcom:AddOtherRes"/>
			</message>
			<message name="UpdateOtherIn">
				<part name="parameters" element="regcom:UpdateOtherReq"/>
			</message>
			<message name="UpdateOtherOut">
				<part name="parameters" element="regcom:UpdateOtherRes"/>
			</message>
			<!-- outlet messages -->
			<message name="GetOutletIn">
				<part name="parameters" element="regcom:GetOutletReq"/>
			</message>
			<message name="GetOutletOut">
				<part name="parameters" element="regcom:GetOutletRes"/>
			</message>
			<message name="AddOutletIn">
				<part name="parameters" element="regcom:AddOutletReq"/>
			</message>
			<message name="AddOutletOut">
				<part name="parameters" element="regcom:AddOutletRes"/>
			</message>
			<message name="UpdateOutletIn">
				<part name="parameters" element="regcom:UpdateOutletReq"/>
			</message>
			<message name="UpdateOutletOut">
				<part name="parameters" element="regcom:UpdateOutletRes"/>
			</message>
			<!-- parameter messages -->
			<message name="AddParameterIn">
				<part name="parameters" element="regcom:AddParameterReq"/>
			</message>
			<message name="AddParameterOut">
				<part name="parameters" element="regcom:AddParameterRes"/>
			</message>
			<message name="UpdateParameterIn">
				<part name="parameters" element="regcom:UpdateParameterReq"/>
			</message>
			<message name="UpdateParameterOut">
				<part name="parameters" element="regcom:UpdateParameterRes"/>
			</message>
			<!-- preemitter messages -->
			<message name="AddPreemitterIn">
				<part name="parameters" element="regcom:AddPreemitterReq"/>
			</message>
			<message name="AddPreemitterOut">
				<part name="parameters" element="regcom:AddPreemitterRes"/>
			</message>
			<message name="UpdatePreemitterIn">
				<part name="parameters" element="regcom:UpdatePreemitterReq"/>
			</message>
			<message name="UpdatePreemitterOut">
				<part name="parameters" element="regcom:UpdatePreemitterRes"/>
			</message>
			<!-- preparser messages -->
			<message name="AddPreparserIn">
				<part name="parameters" element="regcom:AddPreparserReq"/>
			</message>
			<message name="AddPreparserOut">
				<part name="parameters" element="regcom:AddPreparserRes"/>
			</message>
			<message name="UpdatePreparserIn">
				<part name="parameters" element="regcom:UpdatePreparserReq"/>
			</message>
			<message name="UpdatePreparserOut">
				<part name="parameters" element="regcom:UpdatePreparserRes"/>
			</message>
			<!-- process messages -->
			<message name="GetProcessIn">
				<part name="parameters" element="regcom:GetProcessReq"/>
			</message>
			<message name="GetProcessOut">
				<part name="parameters" element="regcom:GetProcessRes"/>
			</message>
			<message name="AddProcessIn">
				<part name="parameters" element="regcom:AddProcessReq"/>
			</message>
			<message name="AddProcessOut">
				<part name="parameters" element="regcom:AddProcessRes"/>
			</message>
			<message name="UpdateProcessIn">
				<part name="parameters" element="regcom:UpdateProcessReq"/>
			</message>
			<message name="UpdateProcessOut">
				<part name="parameters" element="regcom:UpdateProcessRes"/>
			</message>
			<!-- register messages -->
			<message name="AddRegisterIn">
				<part name="parameters" element="regcom:AddRegisterReq"/>
			</message>
			<message name="AddRegisterOut">
				<part name="parameters" element="regcom:AddRegisterRes"/>
			</message>
			<message name="UpdateRegisterIn">
				<part name="parameters" element="regcom:UpdateRegisterReq"/>
			</message>
			<message name="UpdateRegisterOut">
				<part name="parameters" element="regcom:UpdateRegisterRes"/>
			</message>
			<!-- reviewer messages -->
			<message name="AddReviewerIn">
				<part name="parameters" element="regcom:AddReviewerReq"/>
			</message>
			<message name="AddReviewerOut">
				<part name="parameters" element="regcom:AddReviewerRes"/>
			</message>
			<message name="UpdateReviewerIn">
				<part name="parameters" element="regcom:UpdateReviewerReq"/>
			</message>
			<message name="UpdateReviewerOut">
				<part name="parameters" element="regcom:UpdateReviewerRes"/>
			</message>
			<!-- route messages -->
			<message name="GetRouteIn">
				<part name="parameters" element="regcom:GetRouteReq"/>
			</message>
			<message name="GetRouteOut">
				<part name="parameters" element="regcom:GetRouteRes"/>
			</message>
			<message name="AddRouteIn">
				<part name="parameters" element="regcom:AddRouteReq"/>
			</message>
			<message name="AddRouteOut">
				<part name="parameters" element="regcom:AddRouteRes"/>
			</message>
			<message name="UpdateRouteIn">
				<part name="parameters" element="regcom:UpdateRouteReq"/>
			</message>
			<message name="UpdateRouteOut">
				<part name="parameters" element="regcom:UpdateRouteRes"/>
			</message>
			<!-- rule messages -->
			<message name="AddRuleIn">
				<part name="parameters" element="regcom:AddRuleReq"/>
			</message>
			<message name="AddRuleOut">
				<part name="parameters" element="regcom:AddRuleRes"/>
			</message>
			<message name="UpdateRuleIn">
				<part name="parameters" element="regcom:UpdateRuleReq"/>
			</message>
			<message name="UpdateRuleOut">
				<part name="parameters" element="regcom:UpdateRuleRes"/>
			</message>
			<!-- schema messages -->
			<message name="AddSchemaIn">
				<part name="parameters" element="regcom:AddSchemaReq"/>
			</message>
			<message name="AddSchemaOut">
				<part name="parameters" element="regcom:AddSchemaRes"/>
			</message>
			<message name="UpdateSchemaIn">
				<part name="parameters" element="regcom:UpdateSchemaReq"/>
			</message>
			<message name="UpdateSchemaOut">
				<part name="parameters" element="regcom:UpdateSchemaRes"/>
			</message>
			<message name="GetSchemaElementsIn">
				<part name="parameters" element="regcom:GetSchemaElementsReq"/>
			</message>
			<message name="GetSchemaElementsOut">
				<part name="parameters" element="regcom:GetSchemaElementsRes"/>
			</message>
			<!-- service messages -->
			<message name="AddServiceIn">
				<part name="parameters" element="regcom:AddServiceReq"/>
			</message>
			<message name="AddServiceOut">
				<part name="parameters" element="regcom:AddServiceRes"/>
			</message>
			<message name="UpdateServiceIn">
				<part name="parameters" element="regcom:UpdateServiceReq"/>
			</message>
			<message name="UpdateServiceOut">
				<part name="parameters" element="regcom:UpdateServiceRes"/>
			</message>
			<!-- transform messages -->
			<message name="AddTransformIn">
				<part name="parameters" element="regcom:AddTransformReq"/>
			</message>
			<message name="AddTransformOut">
				<part name="parameters" element="regcom:AddTransformRes"/>
			</message>
			<message name="UpdateTransformIn">
				<part name="parameters" element="regcom:UpdateTransformReq"/>
			</message>
			<message name="UpdateTransformOut">
				<part name="parameters" element="regcom:UpdateTransformRes"/>
			</message>
			<!-- transformer messages -->
			<message name="GetTransformerIn">
				<part name="parameters" element="regcom:GetTransformerReq"/>
			</message>
			<message name="GetTransformerOut">
				<part name="parameters" element="regcom:GetTransformerRes"/>
			</message>
			<message name="AddTransformerIn">
				<part name="parameters" element="regcom:AddTransformerReq"/>
			</message>
			<message name="AddTransformerOut">
				<part name="parameters" element="regcom:AddTransformerRes"/>
			</message>
			<message name="UpdateTransformerIn">
				<part name="parameters" element="regcom:UpdateTransformerReq"/>
			</message>
			<message name="UpdateTransformerOut">
				<part name="parameters" element="regcom:UpdateTransformerRes"/>
			</message>
			<portType name="iwregistrySoap">
				<operation name="GetComponents">
					<documentation>description2</documentation>
					<input message="tns:GetComponentsIn"/>
					<output message="tns:GetComponentsOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetComponentsGeneric">
					<documentation>description2</documentation>
					<input message="tns:GetComponentsGenericIn"/>
					<output message="tns:GetComponentsGenericOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetComponentFiles">
					<documentation>description2</documentation>
					<input message="tns:GetComponentFilesIn"/>
					<output message="tns:GetComponentFilesOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddAdapter">
					<documentation>description2</documentation>
					<input message="tns:AddAdapterIn"/>
					<output message="tns:AddAdapterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateAdapter">
					<documentation>description2</documentation>
					<input message="tns:UpdateAdapterIn"/>
					<output message="tns:UpdateAdapterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
        <operation name="AddApplicationArchive">
          <documentation>description2</documentation>
          <input message="tns:AddApplicationArchiveIn"/>
          <output message="tns:AddApplicationArchiveOut"/>
          <fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
        <operation name="AddApplicationArchiveV2">
          <documentation>description2</documentation>
          <input message="tns:AddApplicationArchiveV2In"/>
          <output message="tns:AddApplicationArchiveOut"/>
          <fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
          <fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
        </operation>
				<operation name="GetChannel">
					<documentation>description2</documentation>
					<input message="tns:GetChannelIn"/>
					<output message="tns:GetChannelOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddChannel">
					<documentation>description2</documentation>
					<input message="tns:AddChannelIn"/>
					<output message="tns:AddChannelOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateChannel">
					<documentation>description2</documentation>
					<input message="tns:UpdateChannelIn"/>
					<output message="tns:UpdateChannelOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddDecryptor">
					<documentation>description2</documentation>
					<input message="tns:AddDecryptorIn"/>
					<output message="tns:AddDecryptorOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateDecryptor">
					<documentation>description2</documentation>
					<input message="tns:UpdateDecryptorIn"/>
					<output message="tns:UpdateDecryptorOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddEbix">
					<documentation>description2</documentation>
					<input message="tns:AddEbixIn"/>
					<output message="tns:AddEbixOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddEbixV2">
					<documentation>description2</documentation>
					<input message="tns:AddEbixV2In"/>
					<output message="tns:AddEbixOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateEbix">
					<documentation>description2</documentation>
					<input message="tns:UpdateEbixIn"/>
					<output message="tns:UpdateEbixOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateEbixV2">
					<documentation>description2</documentation>
					<input message="tns:UpdateEbixV2In"/>
					<output message="tns:UpdateEbixOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddEmitter">
					<documentation>description2</documentation>
					<input message="tns:AddEmitterIn"/>
					<output message="tns:AddEmitterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateEmitter">
					<documentation>description2</documentation>
					<input message="tns:UpdateEmitterIn"/>
					<output message="tns:UpdateEmitterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddEncryptor">
					<documentation>description2</documentation>
					<input message="tns:AddEncryptorIn"/>
					<output message="tns:AddEncryptorOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateEncryptor">
					<documentation>description2</documentation>
					<input message="tns:UpdateEncryptorIn"/>
					<output message="tns:UpdateEncryptorOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetInlet">
					<documentation>description2</documentation>
					<input message="tns:GetInletIn"/>
					<output message="tns:GetInletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddInlet">
					<documentation>description2</documentation>
					<input message="tns:AddInletIn"/>
					<output message="tns:AddInletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateInlet">
					<documentation>description2</documentation>
					<input message="tns:UpdateInletIn"/>
					<output message="tns:UpdateInletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddListener">
					<documentation>description2</documentation>
					<input message="tns:AddListenerIn"/>
					<output message="tns:AddListenerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateListener">
					<documentation>description2</documentation>
					<input message="tns:UpdateListenerIn"/>
					<output message="tns:UpdateListenerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddOther">
					<documentation>description2</documentation>
					<input message="tns:AddOtherIn"/>
					<output message="tns:AddOtherOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateOther">
					<documentation>description2</documentation>
					<input message="tns:UpdateOtherIn"/>
					<output message="tns:UpdateOtherOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetOutlet">
					<documentation>description2</documentation>
					<input message="tns:GetOutletIn"/>
					<output message="tns:GetOutletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddOutlet">
					<documentation>description2</documentation>
					<input message="tns:AddOutletIn"/>
					<output message="tns:AddOutletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateOutlet">
					<documentation>description2</documentation>
					<input message="tns:UpdateOutletIn"/>
					<output message="tns:UpdateOutletOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddParameter">
					<documentation>description2</documentation>
					<input message="tns:AddParameterIn"/>
					<output message="tns:AddParameterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateParameter">
					<documentation>description2</documentation>
					<input message="tns:UpdateParameterIn"/>
					<output message="tns:UpdateParameterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddPreemitter">
					<documentation>description2</documentation>
					<input message="tns:AddPreemitterIn"/>
					<output message="tns:AddPreemitterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdatePreemitter">
					<documentation>description2</documentation>
					<input message="tns:UpdatePreemitterIn"/>
					<output message="tns:UpdatePreemitterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddPreparser">
					<documentation>description2</documentation>
					<input message="tns:AddPreparserIn"/>
					<output message="tns:AddPreparserOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdatePreparser">
					<documentation>description2</documentation>
					<input message="tns:UpdatePreparserIn"/>
					<output message="tns:UpdatePreparserOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetProcess">
					<documentation>description2</documentation>
					<input message="tns:GetProcessIn"/>
					<output message="tns:GetProcessOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddProcess">
					<documentation>description2</documentation>
					<input message="tns:AddProcessIn"/>
					<output message="tns:AddProcessOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateProcess">
					<documentation>description2</documentation>
					<input message="tns:UpdateProcessIn"/>
					<output message="tns:UpdateProcessOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddRegister">
					<documentation>description2</documentation>
					<input message="tns:AddRegisterIn"/>
					<output message="tns:AddRegisterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateRegister">
					<documentation>description2</documentation>
					<input message="tns:UpdateRegisterIn"/>
					<output message="tns:UpdateRegisterOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddReviewer">
					<documentation>description2</documentation>
					<input message="tns:AddReviewerIn"/>
					<output message="tns:AddReviewerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateReviewer">
					<documentation>description2</documentation>
					<input message="tns:UpdateReviewerIn"/>
					<output message="tns:UpdateReviewerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetRoute">
					<documentation>description2</documentation>
					<input message="tns:GetRouteIn"/>
					<output message="tns:GetRouteOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddRoute">
					<documentation>description2</documentation>
					<input message="tns:AddRouteIn"/>
					<output message="tns:AddRouteOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateRoute">
					<documentation>description2</documentation>
					<input message="tns:UpdateRouteIn"/>
					<output message="tns:UpdateRouteOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddRule">
					<documentation>description2</documentation>
					<input message="tns:AddRuleIn"/>
					<output message="tns:AddRuleOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateRule">
					<documentation>description2</documentation>
					<input message="tns:UpdateRuleIn"/>
					<output message="tns:UpdateRuleOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddSchema">
					<documentation>description2</documentation>
					<input message="tns:AddSchemaIn"/>
					<output message="tns:AddSchemaOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateSchema">
					<documentation>description2</documentation>
					<input message="tns:UpdateSchemaIn"/>
					<output message="tns:UpdateSchemaOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetSchemaElements">
					<documentation>description2</documentation>
					<input message="tns:GetSchemaElementsIn"/>
					<output message="tns:GetSchemaElementsOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddService">
					<documentation>description2</documentation>
					<input message="tns:AddServiceIn"/>
					<output message="tns:AddServiceOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateService">
					<documentation>description2</documentation>
					<input message="tns:UpdateServiceIn"/>
					<output message="tns:UpdateServiceOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddTransform">
					<documentation>description2</documentation>
					<input message="tns:AddTransformIn"/>
					<output message="tns:AddTransformOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateTransform">
					<documentation>description2</documentation>
					<input message="tns:UpdateTransformIn"/>
					<output message="tns:UpdateTransformOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="GetTransformer">
					<documentation>description2</documentation>
					<input message="tns:GetTransformerIn"/>
					<output message="tns:GetTransformerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="AddTransformer">
					<documentation>description2</documentation>
					<input message="tns:AddTransformerIn"/>
					<output message="tns:AddTransformerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="ComponentAddExceptionFault" message="tns:ComponentAddException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
				<operation name="UpdateTransformer">
					<documentation>description2</documentation>
					<input message="tns:UpdateTransformerIn"/>
					<output message="tns:UpdateTransformerOut"/>
					<fault name="GeneralRegistryExceptionFault" message="tns:GeneralRegistryException"/>
					<fault name="AuthenticationExceptionFault" message="tns:AuthenticationException"/>
				</operation>
			</portType>
			<binding name="iwregistrySoap" type="tns:iwregistrySoap">
				<soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
				<operation name="GetComponents">
					<soap:operation soapAction="iwregistry.GetComponentsRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetComponentsGeneric">
					<soap:operation soapAction="iwregistry.GetComponentsGenericRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetComponentFiles">
					<soap:operation soapAction="iwregistry.GetComponentFilesRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddAdapter">
					<soap:operation soapAction="iwregistry.AddAdapterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateAdapter">
					<soap:operation soapAction="iwregistry.UpdateAdapterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
        <operation name="AddApplicationArchive">
          <soap:operation soapAction="iwregistry.AddApplicationArchiveRequest@admin@@" style="document"/>
          <input>
            <soap:body use="literal"/>
          </input>
          <output>
            <soap:body use="literal"/>
          </output>
          <fault name="GeneralRegistryExceptionFault">
            <soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
          </fault>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
        <operation name="AddApplicationArchiveV2">
          <soap:operation soapAction="iwregistry.AddApplicationArchiveV2Request@admin@@" style="document"/>
          <input>
            <soap:body use="literal"/>
          </input>
          <output>
            <soap:body use="literal"/>
          </output>
          <fault name="GeneralRegistryExceptionFault">
            <soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
          </fault>
          <fault name="AuthenticationExceptionFault">
            <soap:fault name="AuthenticationExceptionFault" use="literal"/>
          </fault>
        </operation>
				<operation name="GetChannel">
					<soap:operation soapAction="iwregistry.GetChannelRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddChannel">
					<soap:operation soapAction="iwregistry.AddChannelRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateChannel">
					<soap:operation soapAction="iwregistry.UpdateChannelRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddDecryptor">
					<soap:operation soapAction="iwregistry.AddDecryptorRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateDecryptor">
					<soap:operation soapAction="iwregistry.UpdateDecryptorRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddEbix">
					<soap:operation soapAction="iwregistry.AddEbixRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddEbixV2">
					<soap:operation soapAction="iwregistry.AddEbixV2Request@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateEbix">
					<soap:operation soapAction="iwregistry.UpdateEbixRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateEbixV2">
					<soap:operation soapAction="iwregistry.UpdateEbixV2Request@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddEmitter">
					<soap:operation soapAction="iwregistry.AddEmitterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateEmitter">
					<soap:operation soapAction="iwregistry.UpdateEmitterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddEncryptor">
					<soap:operation soapAction="iwregistry.AddEncryptorRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateEncryptor">
					<soap:operation soapAction="iwregistry.UpdateEncryptorRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetInlet">
					<soap:operation soapAction="iwregistry.GetInletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddInlet">
					<soap:operation soapAction="iwregistry.AddInletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateInlet">
					<soap:operation soapAction="iwregistry.UpdateInletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddListener">
					<soap:operation soapAction="iwregistry.AddListenerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateListener">
					<soap:operation soapAction="iwregistry.UpdateListenerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddOther">
					<soap:operation soapAction="iwregistry.AddOtherRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateOther">
					<soap:operation soapAction="iwregistry.UpdateOtherRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetOutlet">
					<soap:operation soapAction="iwregistry.GetOutletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddOutlet">
					<soap:operation soapAction="iwregistry.AddOutletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateOutlet">
					<soap:operation soapAction="iwregistry.UpdateOutletRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddParameter">
					<soap:operation soapAction="iwregistry.AddParameterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateParameter">
					<soap:operation soapAction="iwregistry.UpdateParameterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddPreemitter">
					<soap:operation soapAction="iwregistry.AddPreemitterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdatePreemitter">
					<soap:operation soapAction="iwregistry.UpdatePreemitterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddPreparser">
					<soap:operation soapAction="iwregistry.AddPreparserRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdatePreparser">
					<soap:operation soapAction="iwregistry.UpdatePreparserRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetProcess">
					<soap:operation soapAction="iwregistry.GetProcessRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddProcess">
					<soap:operation soapAction="iwregistry.AddProcessRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateProcess">
					<soap:operation soapAction="iwregistry.UpdateProcessRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddRegister">
					<soap:operation soapAction="iwregistry.AddRegisterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateRegister">
					<soap:operation soapAction="iwregistry.UpdateRegisterRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddReviewer">
					<soap:operation soapAction="iwregistry.AddReviewerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateReviewer">
					<soap:operation soapAction="iwregistry.UpdateReviewerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetRoute">
					<soap:operation soapAction="iwregistry.GetRouteRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddRoute">
					<soap:operation soapAction="iwregistry.AddRouteRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateRoute">
					<soap:operation soapAction="iwregistry.UpdateRouteRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddRule">
					<soap:operation soapAction="iwregistry.AddRuleRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateRule">
					<soap:operation soapAction="iwregistry.UpdateRuleRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddSchema">
					<soap:operation soapAction="iwregistry.AddSchemaRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateSchema">
					<soap:operation soapAction="iwregistry.UpdateSchemaRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetSchemaElements">
					<soap:operation soapAction="iwregistry.GetSchemaElementsRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddService">
					<soap:operation soapAction="iwregistry.AddServiceRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateService">
					<soap:operation soapAction="iwregistry.UpdateServiceRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddTransform">
					<soap:operation soapAction="iwregistry.AddTransformRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateTransform">
					<soap:operation soapAction="iwregistry.UpdateTransformRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="GetTransformer">
					<soap:operation soapAction="iwregistry.GetTransformerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="AddTransformer">
					<soap:operation soapAction="iwregistry.AddTransformerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="ComponentAddExceptionFault">
						<soap:fault name="ComponentAddExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
				<operation name="UpdateTransformer">
					<soap:operation soapAction="iwregistry.UpdateTransformerRequest@admin@@" style="document"/>
					<input>
						<soap:body use="literal"/>
					</input>
					<output>
						<soap:body use="literal"/>
					</output>
					<fault name="GeneralRegistryExceptionFault">
						<soap:fault name="GeneralRegistryExceptionFault" use="literal"/>
					</fault>
					<fault name="AuthenticationExceptionFault">
						<soap:fault name="AuthenticationExceptionFault" use="literal"/>
					</fault>
				</operation>
			</binding>
			<service name="iwregistry">
				<documentation>description</documentation>
				<port name="iwregistrySoap1" binding="tns:iwregistrySoap">
					<soap:address>
						<xsl:attribute name="location"><xsl:value-of select="$soapAddress"/>XDSOAPISMRegistry</xsl:attribute>
					</soap:address>
				</port>
			</service>
		</definitions>
	</xsl:template>
</xsl:stylesheet>
