public struct TCTsfError: TCErrorType {
    enum Code: String {
        case failedOperation_ApiMetaParseFailed = "FailedOperation.ApiMetaParseFailed"
        case failedOperation_ApplicationCreateEsAtuhError = "FailedOperation.ApplicationCreateEsAtuhError"
        case failedOperation_ApplicationQueryFailed = "FailedOperation.ApplicationQueryFailed"
        case failedOperation_ClusterCreateVpcFail = "FailedOperation.ClusterCreateVpcFail"
        case failedOperation_ClusterQueryFailed = "FailedOperation.ClusterQueryFailed"
        case failedOperation_ConfigApplicationQueryFailed = "FailedOperation.ConfigApplicationQueryFailed"
        case failedOperation_ConfigCreateFailed = "FailedOperation.ConfigCreateFailed"
        case failedOperation_ConfigGroupQueryFailed = "FailedOperation.ConfigGroupQueryFailed"
        case failedOperation_ConfigNamespaceQueryFailed = "FailedOperation.ConfigNamespaceQueryFailed"
        case failedOperation_ConfigQueryFailed = "FailedOperation.ConfigQueryFailed"
        case failedOperation_ConfigReleaseQueryFailed = "FailedOperation.ConfigReleaseQueryFailed"
        case failedOperation_ContainergroupGroupHasrun = "FailedOperation.ContainergroupGroupHasrun"
        case failedOperation_ContainergroupGroupHasstop = "FailedOperation.ContainergroupGroupHasstop"
        case failedOperation_CvmCaeMasterHealthCheckConfigError = "FailedOperation.CvmCaeMasterHealthCheckConfigError"
        case failedOperation_GatewayRemoteCallError = "FailedOperation.GatewayRemoteCallError"
        case failedOperation_GroupExists = "FailedOperation.GroupExists"
        case failedOperation_GroupQueryFaild = "FailedOperation.GroupQueryFaild"
        case failedOperation_InstanceDeleteFailed = "FailedOperation.InstanceDeleteFailed"
        case failedOperation_InstanceQueryFailed = "FailedOperation.InstanceQueryFailed"
        case failedOperation_InstanceResetError = "FailedOperation.InstanceResetError"
        case failedOperation_InstanceResetTimeout = "FailedOperation.InstanceResetTimeout"
        case failedOperation_InstanceUpdateFailed = "FailedOperation.InstanceUpdateFailed"
        case failedOperation_LaneInfoDeleteConsulFailed = "FailedOperation.LaneInfoDeleteConsulFailed"
        case failedOperation_LaneInfoGroupNotEmpty = "FailedOperation.LaneInfoGroupNotEmpty"
        case failedOperation_LaneInfoReleaseConsulFailed = "FailedOperation.LaneInfoReleaseConsulFailed"
        case failedOperation_LaneInfoReleaseMeshFailed = "FailedOperation.LaneInfoReleaseMeshFailed"
        case failedOperation_LaneRuleEnableConsulFailed = "FailedOperation.LaneRuleEnableConsulFailed"
        case failedOperation_LaneRuleMaxLimit = "FailedOperation.LaneRuleMaxLimit"
        case failedOperation_NamespaceCreateFailed = "FailedOperation.NamespaceCreateFailed"
        case failedOperation_NamespaceQueryFailed = "FailedOperation.NamespaceQueryFailed"
        case failedOperation_RatelimitConsulError = "FailedOperation.RatelimitConsulError"
        case failedOperation_ServiceInsertFailed = "FailedOperation.ServiceInsertFailed"
        case failedOperation_ServiceQueryFailed = "FailedOperation.ServiceQueryFailed"
        case failedOperation_TaskCreateError = "FailedOperation.TaskCreateError"
        case failedOperation_TaskDeleteError = "FailedOperation.TaskDeleteError"
        case failedOperation_TaskOperationFailed = "FailedOperation.TaskOperationFailed"
        case failedOperation_TaskOperationForbidden = "FailedOperation.TaskOperationForbidden"
        case failedOperation_TaskPushError = "FailedOperation.TaskPushError"
        case failedOperation_TaskQueryError = "FailedOperation.TaskQueryError"
        case failedOperation_TaskTerminateFailed = "FailedOperation.TaskTerminateFailed"
        case failedOperation_TaskUpdateError = "FailedOperation.TaskUpdateError"
        case failedOperation_TkeClusterCreateFailed = "FailedOperation.TkeClusterCreateFailed"
        case failedOperation_TkeClusterQueryFailed = "FailedOperation.TkeClusterQueryFailed"
        case failedOperation_TsfApmBusiLogCfgSchemaQueryError = "FailedOperation.TsfApmBusiLogCfgSchemaQueryError"
        case failedOperation_TsfApmBusiLogCfgWriteError = "FailedOperation.TsfApmBusiLogCfgWriteError"
        case failedOperation_TsfApmCtsdbClientRequestError = "FailedOperation.TsfApmCtsdbClientRequestError"
        case failedOperation_TsfCmonitorCtsdbClientRequestFail = "FailedOperation.TsfCmonitorCtsdbClientRequestFail"
        case failedOperation_TsfMonitorWaitedTimeout = "FailedOperation.TsfMonitorWaitedTimeout"
        case failedOperation_TsfPrivilegeError = "FailedOperation.TsfPrivilegeError"
        case failedOperation_UnhandledException = "FailedOperation.UnhandledException"
        case internalError_ApplicationMasterFeignError = "InternalError.ApplicationMasterFeignError"
        case internalError_ApplicationMasterNuknownError = "InternalError.ApplicationMasterNuknownError"
        case internalError_ApplicationRepoDeletePkg = "InternalError.ApplicationRepoDeletePkg"
        case internalError_ApplicationScalableInitError = "InternalError.ApplicationScalableInitError"
        case internalError_CamRoleRequestError = "InternalError.CamRoleRequestError"
        case internalError_CanNotConnConsulServer = "InternalError.CanNotConnConsulServer"
        case internalError_CloudApiProxyError = "InternalError.CloudApiProxyError"
        case internalError_ClusterCommonError = "InternalError.ClusterCommonError"
        case internalError_ClusterMasterFeignError = "InternalError.ClusterMasterFeignError"
        case internalError_ClusterNotExistOrPrivilegeError = "InternalError.ClusterNotExistOrPrivilegeError"
        case internalError_ConsulServerError = "InternalError.ConsulServerError"
        case internalError_ContainergroupKuberneteApiInvokeError = "InternalError.ContainergroupKuberneteApiInvokeError"
        case internalError_ContainergroupKuberneteConnectError = "InternalError.ContainergroupKuberneteConnectError"
        case internalError_ContainergroupKuberneteDeploymentNotfound = "InternalError.ContainergroupKuberneteDeploymentNotfound"
        case internalError_ContainergroupSqlFailed = "InternalError.ContainergroupSqlFailed"
        case internalError_CpClusterUnavailable = "InternalError.CpClusterUnavailable"
        case internalError_CvmCaeMasterDispatchError = "InternalError.CvmCaeMasterDispatchError"
        case internalError_CvmCaeMasterInternalError = "InternalError.CvmCaeMasterInternalError"
        case internalError_CvmCaeMasterNonAlive = "InternalError.CvmCaeMasterNonAlive"
        case internalError_GatewayCommonError = "InternalError.GatewayCommonError"
        case internalError_GatewayConsistencyError = "InternalError.GatewayConsistencyError"
        case internalError_GatewayConsulError = "InternalError.GatewayConsulError"
        case internalError_GatewayDbError = "InternalError.GatewayDbError"
        case internalError_GroupCommonError = "InternalError.GroupCommonError"
        case internalError_GroupMasterNuknownError = "InternalError.GroupMasterNuknownError"
        case internalError_ImagerepoTcrBindError = "InternalError.ImagerepoTcrBindError"
        case internalError_InstanceCommonError = "InternalError.InstanceCommonError"
        case internalError_KubernetesApiCreateNamespacesError = "InternalError.KubernetesApiCreateNamespacesError"
        case internalError_KubernetesApiCreateSecretError = "InternalError.KubernetesApiCreateSecretError"
        case internalError_KubernetesCallError = "InternalError.KubernetesCallError"
        case internalError_RemoteServiceCallError = "InternalError.RemoteServiceCallError"
        case internalError_RuntimeError = "InternalError.RuntimeError"
        case internalError_SqlTooManyInItem = "InternalError.SqlTooManyInItem"
        case internalError_TaskInternalError = "InternalError.TaskInternalError"
        case internalError_TkeApiFailedOperation = "InternalError.TkeApiFailedOperation"
        case internalError_TsfApmBusiLogCfgAppRelationMasterError = "InternalError.TsfApmBusiLogCfgAppRelationMasterError"
        case internalError_TsfApmCallTsfMsFailed = "InternalError.TsfApmCallTsfMsFailed"
        case internalError_TsfApmCommonError = "InternalError.TsfApmCommonError"
        case internalError_TsfApmEsResponseStatusException = "InternalError.TsfApmEsResponseStatusException"
        case internalError_TsfApmInternalError = "InternalError.TsfApmInternalError"
        case internalError_TsfMonitorDateParseFailed = "InternalError.TsfMonitorDateParseFailed"
        case internalError_TsfMonitorInternalError = "InternalError.TsfMonitorInternalError"
        case internalError_UnhandledException = "InternalError.UnhandledException"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ApplicationMicroTypeInvalid = "InvalidParameterValue.ApplicationMicroTypeInvalid"
        case invalidParameterValue_ApplicationNameExist = "InvalidParameterValue.ApplicationNameExist"
        case invalidParameterValue_ApplicationNameLength = "InvalidParameterValue.ApplicationNameLength"
        case invalidParameterValue_ApplicationNameNull = "InvalidParameterValue.ApplicationNameNull"
        case invalidParameterValue_ApplicationNameRegxInvalid = "InvalidParameterValue.ApplicationNameRegxInvalid"
        case invalidParameterValue_ApplicationNotExists = "InvalidParameterValue.ApplicationNotExists"
        case invalidParameterValue_ApplicationPageLimitInvalid = "InvalidParameterValue.ApplicationPageLimitInvalid"
        case invalidParameterValue_ApplicationTypeInvalid = "InvalidParameterValue.ApplicationTypeInvalid"
        case invalidParameterValue_ClusterCidrConflict = "InvalidParameterValue.ClusterCidrConflict"
        case invalidParameterValue_ClusterNameExist = "InvalidParameterValue.ClusterNameExist"
        case invalidParameterValue_ClusterNameRequired = "InvalidParameterValue.ClusterNameRequired"
        case invalidParameterValue_ClusterRegionInvalid = "InvalidParameterValue.ClusterRegionInvalid"
        case invalidParameterValue_ClusterTypeInvalid = "InvalidParameterValue.ClusterTypeInvalid"
        case invalidParameterValue_ClusterZoneInvalid = "InvalidParameterValue.ClusterZoneInvalid"
        case invalidParameterValue_ConfigAlreadyReleased = "InvalidParameterValue.ConfigAlreadyReleased"
        case invalidParameterValue_ConfigExists = "InvalidParameterValue.ConfigExists"
        case invalidParameterValue_ConfigGroupApplicationIdNotMatch = "InvalidParameterValue.ConfigGroupApplicationIdNotMatch"
        case invalidParameterValue_ConfigNameInvalid = "InvalidParameterValue.ConfigNameInvalid"
        case invalidParameterValue_ConfigNotExistsOrPermissionDenied = "InvalidParameterValue.ConfigNotExistsOrPermissionDenied"
        case invalidParameterValue_ConfigReleaseNotExists = "InvalidParameterValue.ConfigReleaseNotExists"
        case invalidParameterValue_ConfigValueFormatInvalid = "InvalidParameterValue.ConfigValueFormatInvalid"
        case invalidParameterValue_ConfigValueTooLong = "InvalidParameterValue.ConfigValueTooLong"
        case invalidParameterValue_ConfigVersionDescInvalid = "InvalidParameterValue.ConfigVersionDescInvalid"
        case invalidParameterValue_ConfigVersionInvalid = "InvalidParameterValue.ConfigVersionInvalid"
        case invalidParameterValue_ContainerGroupImageTagIsInUse = "InvalidParameterValue.ContainerGroupImageTagIsInUse"
        case invalidParameterValue_ContainergroupAccesstypeNull = "InvalidParameterValue.ContainergroupAccesstypeNull"
        case invalidParameterValue_ContainergroupApplicationIdNull = "InvalidParameterValue.ContainergroupApplicationIdNull"
        case invalidParameterValue_ContainergroupCpulimitOver = "InvalidParameterValue.ContainergroupCpulimitOver"
        case invalidParameterValue_ContainergroupGroupidNull = "InvalidParameterValue.ContainergroupGroupidNull"
        case invalidParameterValue_ContainergroupGroupnameLegnth = "InvalidParameterValue.ContainergroupGroupnameLegnth"
        case invalidParameterValue_ContainergroupGroupnameNull = "InvalidParameterValue.ContainergroupGroupnameNull"
        case invalidParameterValue_ContainergroupGroupnameRegexMatchFalse = "InvalidParameterValue.ContainergroupGroupnameRegexMatchFalse"
        case invalidParameterValue_ContainergroupInstanceNumInvalid = "InvalidParameterValue.ContainergroupInstanceNumInvalid"
        case invalidParameterValue_ContainergroupInvalidCpuInfo = "InvalidParameterValue.ContainergroupInvalidCpuInfo"
        case invalidParameterValue_ContainergroupInvalidMemInfo = "InvalidParameterValue.ContainergroupInvalidMemInfo"
        case invalidParameterValue_ContainergroupLimitValueInvalid = "InvalidParameterValue.ContainergroupLimitValueInvalid"
        case invalidParameterValue_ContainergroupMemlimitOver = "InvalidParameterValue.ContainergroupMemlimitOver"
        case invalidParameterValue_ContainergroupNodePortInvalid = "InvalidParameterValue.ContainergroupNodePortInvalid"
        case invalidParameterValue_ContainergroupPortInvalid = "InvalidParameterValue.ContainergroupPortInvalid"
        case invalidParameterValue_ContainergroupPortsRepeat = "InvalidParameterValue.ContainergroupPortsRepeat"
        case invalidParameterValue_ContainergroupProtocolInvalid = "InvalidParameterValue.ContainergroupProtocolInvalid"
        case invalidParameterValue_ContainergroupProtocolMixError = "InvalidParameterValue.ContainergroupProtocolMixError"
        case invalidParameterValue_ContainergroupProtocolNull = "InvalidParameterValue.ContainergroupProtocolNull"
        case invalidParameterValue_ContainergroupProtocolPortsNull = "InvalidParameterValue.ContainergroupProtocolPortsNull"
        case invalidParameterValue_ContainergroupReponameInvalid = "InvalidParameterValue.ContainergroupReponameInvalid"
        case invalidParameterValue_ContainergroupResourceAgentValueInvalid = "InvalidParameterValue.ContainergroupResourceAgentValueInvalid"
        case invalidParameterValue_ContainergroupTargetPortsRepeat = "InvalidParameterValue.ContainergroupTargetPortsRepeat"
        case invalidParameterValue_ContainergroupTargetportNull = "InvalidParameterValue.ContainergroupTargetportNull"
        case invalidParameterValue_ContainergroupUpdateivlInvalid = "InvalidParameterValue.ContainergroupUpdateivlInvalid"
        case invalidParameterValue_ContainergroupUpdatetypeInvalid = "InvalidParameterValue.ContainergroupUpdatetypeInvalid"
        case invalidParameterValue_ContainergroupYamlUserContainerNotFound = "InvalidParameterValue.ContainergroupYamlUserContainerNotFound"
        case invalidParameterValue_CvmCaeMasterAgentBusy = "InvalidParameterValue.CvmCaeMasterAgentBusy"
        case invalidParameterValue_CvmCaeMasterAgentNotFound = "InvalidParameterValue.CvmCaeMasterAgentNotFound"
        case invalidParameterValue_CvmCaeMasterGroupNoAgent = "InvalidParameterValue.CvmCaeMasterGroupNoAgent"
        case invalidParameterValue_DeployGroupNotExists = "InvalidParameterValue.DeployGroupNotExists"
        case invalidParameterValue_FileConfigAlreadyReleased = "InvalidParameterValue.FileConfigAlreadyReleased"
        case invalidParameterValue_FileConfigExists = "InvalidParameterValue.FileConfigExists"
        case invalidParameterValue_FileConfigExistsPath = "InvalidParameterValue.FileConfigExistsPath"
        case invalidParameterValue_FileConfigExistsPathOther = "InvalidParameterValue.FileConfigExistsPathOther"
        case invalidParameterValue_FileConfigFilePathInvalid = "InvalidParameterValue.FileConfigFilePathInvalid"
        case invalidParameterValue_FileConfigNameInvalid = "InvalidParameterValue.FileConfigNameInvalid"
        case invalidParameterValue_FileConfigNotExistsOrPermissionDenied = "InvalidParameterValue.FileConfigNotExistsOrPermissionDenied"
        case invalidParameterValue_FileConfigPathExists = "InvalidParameterValue.FileConfigPathExists"
        case invalidParameterValue_FileConfigVersionDescInvalid = "InvalidParameterValue.FileConfigVersionDescInvalid"
        case invalidParameterValue_GatewayParameterError = "InvalidParameterValue.GatewayParameterError"
        case invalidParameterValue_GatewayParameterInvalid = "InvalidParameterValue.GatewayParameterInvalid"
        case invalidParameterValue_GlobalNamespaceNameExist = "InvalidParameterValue.GlobalNamespaceNameExist"
        case invalidParameterValue_GroupBatchParameterInvalid = "InvalidParameterValue.GroupBatchParameterInvalid"
        case invalidParameterValue_GroupClusterNamespaceNotBound = "InvalidParameterValue.GroupClusterNamespaceNotBound"
        case invalidParameterValue_GroupClusterTypeMismatch = "InvalidParameterValue.GroupClusterTypeMismatch"
        case invalidParameterValue_GroupDeleteClusterTypeMismatch = "InvalidParameterValue.GroupDeleteClusterTypeMismatch"
        case invalidParameterValue_GroupIdNull = "InvalidParameterValue.GroupIdNull"
        case invalidParameterValue_GroupNameExist = "InvalidParameterValue.GroupNameExist"
        case invalidParameterValue_GroupNameLength = "InvalidParameterValue.GroupNameLength"
        case invalidParameterValue_GroupNameRegxMismatch = "InvalidParameterValue.GroupNameRegxMismatch"
        case invalidParameterValue_GroupNotExists = "InvalidParameterValue.GroupNotExists"
        case invalidParameterValue_GroupPageLimitInvalid = "InvalidParameterValue.GroupPageLimitInvalid"
        case invalidParameterValue_GroupStatusInvalid = "InvalidParameterValue.GroupStatusInvalid"
        case invalidParameterValue_GroupValidInstanceNull = "InvalidParameterValue.GroupValidInstanceNull"
        case invalidParameterValue_ImagerepoRepoNameNull = "InvalidParameterValue.ImagerepoRepoNameNull"
        case invalidParameterValue_ImagerepoReponameInvalid = "InvalidParameterValue.ImagerepoReponameInvalid"
        case invalidParameterValue_ImagerepoTagnameNull = "InvalidParameterValue.ImagerepoTagnameNull"
        case invalidParameterValue_InstanceInvalidImage = "InvalidParameterValue.InstanceInvalidImage"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case invalidParameterValue_InvalidParameterFormat = "InvalidParameterValue.InvalidParameterFormat"
        case invalidParameterValue_LaneInfoAlreadyUsed = "InvalidParameterValue.LaneInfoAlreadyUsed"
        case invalidParameterValue_LaneInfoNameAlreadyUsed = "InvalidParameterValue.LaneInfoNameAlreadyUsed"
        case invalidParameterValue_LaneInfoNameInvalid = "InvalidParameterValue.LaneInfoNameInvalid"
        case invalidParameterValue_LaneInfoNameNotEmpty = "InvalidParameterValue.LaneInfoNameNotEmpty"
        case invalidParameterValue_LaneInfoNameTooLong = "InvalidParameterValue.LaneInfoNameTooLong"
        case invalidParameterValue_LaneInfoNotExist = "InvalidParameterValue.LaneInfoNotExist"
        case invalidParameterValue_LaneInfoNotExistEntrance = "InvalidParameterValue.LaneInfoNotExistEntrance"
        case invalidParameterValue_LaneInfoRemarkTooLong = "InvalidParameterValue.LaneInfoRemarkTooLong"
        case invalidParameterValue_LaneRuleInfoNotExist = "InvalidParameterValue.LaneRuleInfoNotExist"
        case invalidParameterValue_LaneRuleNameAlreadyUsed = "InvalidParameterValue.LaneRuleNameAlreadyUsed"
        case invalidParameterValue_LaneRuleNameInvalid = "InvalidParameterValue.LaneRuleNameInvalid"
        case invalidParameterValue_LaneRuleNameNotEmpty = "InvalidParameterValue.LaneRuleNameNotEmpty"
        case invalidParameterValue_LaneRuleNameTooLong = "InvalidParameterValue.LaneRuleNameTooLong"
        case invalidParameterValue_LaneRuleNotExist = "InvalidParameterValue.LaneRuleNotExist"
        case invalidParameterValue_LaneRuleRemarkTooLong = "InvalidParameterValue.LaneRuleRemarkTooLong"
        case invalidParameterValue_LaneRuleTagNameNotEmpty = "InvalidParameterValue.LaneRuleTagNameNotEmpty"
        case invalidParameterValue_LaneRuleTagNameTooLong = "InvalidParameterValue.LaneRuleTagNameTooLong"
        case invalidParameterValue_LaneRuleTagNotEmpty = "InvalidParameterValue.LaneRuleTagNotEmpty"
        case invalidParameterValue_LaneRuleTagValueTooLong = "InvalidParameterValue.LaneRuleTagValueTooLong"
        case invalidParameterValue_LaneRuleTagValueTotalTooLong = "InvalidParameterValue.LaneRuleTagValueTotalTooLong"
        case invalidParameterValue_NamespaceAlreadyBindCluster = "InvalidParameterValue.NamespaceAlreadyBindCluster"
        case invalidParameterValue_NamespaceDescInvalid = "InvalidParameterValue.NamespaceDescInvalid"
        case invalidParameterValue_NamespaceNameExist = "InvalidParameterValue.NamespaceNameExist"
        case invalidParameterValue_NamespaceNameInvalid = "InvalidParameterValue.NamespaceNameInvalid"
        case invalidParameterValue_NamespaceNotExists = "InvalidParameterValue.NamespaceNotExists"
        case invalidParameterValue_ReleasedConfigCanNotBeDeleted = "InvalidParameterValue.ReleasedConfigCanNotBeDeleted"
        case invalidParameterValue_ResourcePermissionDenied = "InvalidParameterValue.ResourcePermissionDenied"
        case invalidParameterValue_ResourceTypeError = "InvalidParameterValue.ResourceTypeError"
        case invalidParameterValue_ServiceDescLength = "InvalidParameterValue.ServiceDescLength"
        case invalidParameterValue_ServiceNameRepeated = "InvalidParameterValue.ServiceNameRepeated"
        case invalidParameterValue_ServiceNotExistsOrPermissionDenied = "InvalidParameterValue.ServiceNotExistsOrPermissionDenied"
        case invalidParameterValue_TaskParameterInvalid = "InvalidParameterValue.TaskParameterInvalid"
        case invalidParameterValue_WrongDontStartValue = "InvalidParameterValue.WrongDontStartValue"
        case invalidParameter_BadRequest = "InvalidParameter.BadRequest"
        case invalidParameter_CvmCaeMasterUnknownInstanceStatus = "InvalidParameter.CvmCaeMasterUnknownInstanceStatus"
        case invalidParameter_ImagerepoTcrNamespaceNotFound = "InvalidParameter.ImagerepoTcrNamespaceNotFound"
        case invalidParameter_KubernetesParamError = "InvalidParameter.KubernetesParamError"
        case invalidParameter_LaneInfoAlreadyUsed = "InvalidParameter.LaneInfoAlreadyUsed"
        case invalidParameter_LaneInfoNameAlreadyUsed = "InvalidParameter.LaneInfoNameAlreadyUsed"
        case invalidParameter_LaneInfoNameInvalid = "InvalidParameter.LaneInfoNameInvalid"
        case invalidParameter_LaneInfoNameNotEmpty = "InvalidParameter.LaneInfoNameNotEmpty"
        case invalidParameter_LaneInfoNameTooLong = "InvalidParameter.LaneInfoNameTooLong"
        case invalidParameter_LaneInfoNotExist = "InvalidParameter.LaneInfoNotExist"
        case invalidParameter_LaneInfoNotExistEntrance = "InvalidParameter.LaneInfoNotExistEntrance"
        case invalidParameter_LaneInfoRemarkTooLong = "InvalidParameter.LaneInfoRemarkTooLong"
        case invalidParameter_LaneRuleInfoNotExist = "InvalidParameter.LaneRuleInfoNotExist"
        case invalidParameter_LaneRuleNameAlreadyUsed = "InvalidParameter.LaneRuleNameAlreadyUsed"
        case invalidParameter_LaneRuleNameInvalid = "InvalidParameter.LaneRuleNameInvalid"
        case invalidParameter_LaneRuleNameNotEmpty = "InvalidParameter.LaneRuleNameNotEmpty"
        case invalidParameter_LaneRuleNameTooLong = "InvalidParameter.LaneRuleNameTooLong"
        case invalidParameter_LaneRuleNotExist = "InvalidParameter.LaneRuleNotExist"
        case invalidParameter_LaneRuleRemarkTooLong = "InvalidParameter.LaneRuleRemarkTooLong"
        case invalidParameter_LaneRuleTagNameNotEmpty = "InvalidParameter.LaneRuleTagNameNotEmpty"
        case invalidParameter_LaneRuleTagNameTooLong = "InvalidParameter.LaneRuleTagNameTooLong"
        case invalidParameter_LaneRuleTagNotEmpty = "InvalidParameter.LaneRuleTagNotEmpty"
        case invalidParameter_LaneRuleTagValueTooLong = "InvalidParameter.LaneRuleTagValueTooLong"
        case invalidParameter_LaneRuleTagValueTotalTooLong = "InvalidParameter.LaneRuleTagValueTotalTooLong"
        case invalidParameter_PackageInUse = "InvalidParameter.PackageInUse"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_RepoPackageParamError = "InvalidParameter.RepoPackageParamError"
        case invalidParameter_RepositoryNotEmpty = "InvalidParameter.RepositoryNotEmpty"
        case invalidParameter_TsfApmBusiLogCfgAppParamError = "InvalidParameter.TsfApmBusiLogCfgAppParamError"
        case invalidParameter_TsfApmBusiLogCfgAppRelationParamError = "InvalidParameter.TsfApmBusiLogCfgAppRelationParamError"
        case invalidParameter_TsfApmBusiLogCfgCloudParamError = "InvalidParameter.TsfApmBusiLogCfgCloudParamError"
        case invalidParameter_TsfApmBusiLogCfgIdParamError = "InvalidParameter.TsfApmBusiLogCfgIdParamError"
        case invalidParameter_TsfApmBusiLogCfgLimitParamError = "InvalidParameter.TsfApmBusiLogCfgLimitParamError"
        case invalidParameter_TsfApmBusiLogSearchRequestParamError = "InvalidParameter.TsfApmBusiLogSearchRequestParamError"
        case invalidParameter_TsfApmStatsSearchRequestParamError = "InvalidParameter.TsfApmStatsSearchRequestParamError"
        case invalidParameter_TsfApmStdoutSearchRequestParamError = "InvalidParameter.TsfApmStdoutSearchRequestParamError"
        case invalidParameter_TsfApmTraceSearchRequestParamError = "InvalidParameter.TsfApmTraceSearchRequestParamError"
        case invalidParameter_TsfMonitorRequestParamIllegal = "InvalidParameter.TsfMonitorRequestParamIllegal"
        case invalidParameter_UpperDeleteLimit = "InvalidParameter.UpperDeleteLimit"
        case limitExceeded_ErrNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
        case limitExceeded_ErrRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
        case limitExceeded_TkeClusterNumberExceedLimit = "LimitExceeded.TkeClusterNumberExceedLimit"
        case missingParameter_ApplicationIdNull = "MissingParameter.ApplicationIdNull"
        case missingParameter_ApplicationIdRequired = "MissingParameter.ApplicationIdRequired"
        case missingParameter_ApplicationTypeNull = "MissingParameter.ApplicationTypeNull"
        case missingParameter_ClusterIdRequired = "MissingParameter.ClusterIdRequired"
        case missingParameter_ClusterSubnetRequired = "MissingParameter.ClusterSubnetRequired"
        case missingParameter_ConfigIdRequired = "MissingParameter.ConfigIdRequired"
        case missingParameter_ConfigNameRequired = "MissingParameter.ConfigNameRequired"
        case missingParameter_ConfigReleaseIdRequired = "MissingParameter.ConfigReleaseIdRequired"
        case missingParameter_ConfigTypeRequired = "MissingParameter.ConfigTypeRequired"
        case missingParameter_ConfigValueRequired = "MissingParameter.ConfigValueRequired"
        case missingParameter_ConfigVersionRequired = "MissingParameter.ConfigVersionRequired"
        case missingParameter_FileConfigFileValueRequired = "MissingParameter.FileConfigFileValueRequired"
        case missingParameter_GatewayParameterRequired = "MissingParameter.GatewayParameterRequired"
        case missingParameter_GroupApplicationNull = "MissingParameter.GroupApplicationNull"
        case missingParameter_GroupIdNull = "MissingParameter.GroupIdNull"
        case missingParameter_GroupIdRequired = "MissingParameter.GroupIdRequired"
        case missingParameter_GroupNamespaceNull = "MissingParameter.GroupNamespaceNull"
        case missingParameter_InstanceImportModeNull = "MissingParameter.InstanceImportModeNull"
        case missingParameter_NamespaceIdRequired = "MissingParameter.NamespaceIdRequired"
        case missingParameter_RequiredParameterMissing = "MissingParameter.RequiredParameterMissing"
        case missingParameter_ServiceIdRequired = "MissingParameter.ServiceIdRequired"
        case missingParameter_TaskParameterMissed = "MissingParameter.TaskParameterMissed"
        case resourceInUse_ApplicationCannotDelete = "ResourceInUse.ApplicationCannotDelete"
        case resourceInUse_CvmcaeMasterCannotDelete = "ResourceInUse.CvmcaeMasterCannotDelete"
        case resourceInUse_DefaultNamepsaceCannotBeDeleted = "ResourceInUse.DefaultNamepsaceCannotBeDeleted"
        case resourceInUse_GroupCannotDelete = "ResourceInUse.GroupCannotDelete"
        case resourceInUse_GroupInOperation = "ResourceInUse.GroupInOperation"
        case resourceInUse_InstanceHasBeenUsed = "ResourceInUse.InstanceHasBeenUsed"
        case resourceInUse_NamespaceCannotDelete = "ResourceInUse.NamespaceCannotDelete"
        case resourceInUse_ObjectExist = "ResourceInUse.ObjectExist"
        case resourceInUse_RatelimitRuleExistError = "ResourceInUse.RatelimitRuleExistError"
        case resourceInsufficient_PackageSpaceFull = "ResourceInsufficient.PackageSpaceFull"
        case resourceNotFound_ApplicationNotExist = "ResourceNotFound.ApplicationNotExist"
        case resourceNotFound_ApplicationProjectNotMatch = "ResourceNotFound.ApplicationProjectNotMatch"
        case resourceNotFound_ClusterNotExist = "ResourceNotFound.ClusterNotExist"
        case resourceNotFound_ClusterVpcNotExist = "ResourceNotFound.ClusterVpcNotExist"
        case resourceNotFound_ContainergroupClusterNotfound = "ResourceNotFound.ContainergroupClusterNotfound"
        case resourceNotFound_ContainergroupGroupNamespaceClusterNotFound = "ResourceNotFound.ContainergroupGroupNamespaceClusterNotFound"
        case resourceNotFound_ContainergroupGroupNotFound = "ResourceNotFound.ContainergroupGroupNotFound"
        case resourceNotFound_CvmcaeMasterResourceNotFound = "ResourceNotFound.CvmcaeMasterResourceNotFound"
        case resourceNotFound_ErrNoRepo = "ResourceNotFound.ErrNoRepo"
        case resourceNotFound_ErrNoUser = "ResourceNotFound.ErrNoUser"
        case resourceNotFound_GroupApplicationNotExist = "ResourceNotFound.GroupApplicationNotExist"
        case resourceNotFound_GroupNamespaceNotExist = "ResourceNotFound.GroupNamespaceNotExist"
        case resourceNotFound_GroupNotExist = "ResourceNotFound.GroupNotExist"
        case resourceNotFound_InstanceNotExist = "ResourceNotFound.InstanceNotExist"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceNotFound_LicenseServerNotFound = "ResourceNotFound.LicenseServerNotFound"
        case resourceNotFound_MicroserviceOffline = "ResourceNotFound.MicroserviceOffline"
        case resourceNotFound_NamespaceNotExist = "ResourceNotFound.NamespaceNotExist"
        case resourceNotFound_ObjectNoExist = "ResourceNotFound.ObjectNoExist"
        case resourceNotFound_ServiceNotExist = "ResourceNotFound.ServiceNotExist"
        case resourceNotFound_TaskNotFound = "ResourceNotFound.TaskNotFound"
        case resourceNotFound_TkeClusterNotExists = "ResourceNotFound.TkeClusterNotExists"
        case unauthorizedOperation_CamGeneralError = "UnauthorizedOperation.CamGeneralError"
        case unauthorizedOperation_CamTsfRoleNoPermission = "UnauthorizedOperation.CamTsfRoleNoPermission"
        case unauthorizedOperation_CamTsfRoleNotExist = "UnauthorizedOperation.CamTsfRoleNotExist"
        case unauthorizedOperation_LicenseInactive = "UnauthorizedOperation.LicenseInactive"
        case unauthorizedOperation_LicenseUnauthorized = "UnauthorizedOperation.LicenseUnauthorized"
        case unauthorizedOperation_NoLicense = "UnauthorizedOperation.NoLicense"
        case unauthorizedOperation_NoPrivilege = "UnauthorizedOperation.NoPrivilege"
        case unsupportedOperation_GatewayTooManyRequestParameter = "UnsupportedOperation.GatewayTooManyRequestParameter"
        case unsupportedOperation_TaskNotSupported = "UnsupportedOperation.TaskNotSupported"
        case unsupportedOperation_UnsupportAction = "UnsupportedOperation.UnsupportAction"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// API元数据解析失败。
    public static var failedOperation_ApiMetaParseFailed: TCTsfError {
        TCTsfError(.failedOperation_ApiMetaParseFailed)
    }
    
    /// 创建应用，获取ES鉴权信息失败。
    public static var failedOperation_ApplicationCreateEsAtuhError: TCTsfError {
        TCTsfError(.failedOperation_ApplicationCreateEsAtuhError)
    }
    
    /// 应用查询失败。
    public static var failedOperation_ApplicationQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ApplicationQueryFailed)
    }
    
    /// 创建集群，开通VPC网络权限失败。
    public static var failedOperation_ClusterCreateVpcFail: TCTsfError {
        TCTsfError(.failedOperation_ClusterCreateVpcFail)
    }
    
    /// 查询集群失败。
    public static var failedOperation_ClusterQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ClusterQueryFailed)
    }
    
    /// 应用查询失败。
    public static var failedOperation_ConfigApplicationQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigApplicationQueryFailed)
    }
    
    /// 配置项创建失败。
    public static var failedOperation_ConfigCreateFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigCreateFailed)
    }
    
    /// 部署组查询失败。
    public static var failedOperation_ConfigGroupQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigGroupQueryFailed)
    }
    
    /// 命名空间查询失败。
    public static var failedOperation_ConfigNamespaceQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigNamespaceQueryFailed)
    }
    
    /// 配置项查询失败。
    public static var failedOperation_ConfigQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigQueryFailed)
    }
    
    /// 配置项发布信息查询失败。
    public static var failedOperation_ConfigReleaseQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ConfigReleaseQueryFailed)
    }
    
    /// 部署组处于运行状态，无法启动。
    public static var failedOperation_ContainergroupGroupHasrun: TCTsfError {
        TCTsfError(.failedOperation_ContainergroupGroupHasrun)
    }
    
    /// 部署组处于停止状态，无法执行此操作。
    public static var failedOperation_ContainergroupGroupHasstop: TCTsfError {
        TCTsfError(.failedOperation_ContainergroupGroupHasstop)
    }
    
    /// 健康检查配置失败。
    public static var failedOperation_CvmCaeMasterHealthCheckConfigError: TCTsfError {
        TCTsfError(.failedOperation_CvmCaeMasterHealthCheckConfigError)
    }
    
    /// 远端访问错误: %s。
    public static var failedOperation_GatewayRemoteCallError: TCTsfError {
        TCTsfError(.failedOperation_GatewayRemoteCallError)
    }
    
    /// 命名空间下存在部署组。
    public static var failedOperation_GroupExists: TCTsfError {
        TCTsfError(.failedOperation_GroupExists)
    }
    
    /// 部署组查询失败。
    public static var failedOperation_GroupQueryFaild: TCTsfError {
        TCTsfError(.failedOperation_GroupQueryFaild)
    }
    
    /// 机器实例删除失败。
    public static var failedOperation_InstanceDeleteFailed: TCTsfError {
        TCTsfError(.failedOperation_InstanceDeleteFailed)
    }
    
    /// 查询机器实例部分失败。
    public static var failedOperation_InstanceQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_InstanceQueryFailed)
    }
    
    /// 重装系统失败，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var failedOperation_InstanceResetError: TCTsfError {
        TCTsfError(.failedOperation_InstanceResetError)
    }
    
    /// 重装系统，请求超时。
    public static var failedOperation_InstanceResetTimeout: TCTsfError {
        TCTsfError(.failedOperation_InstanceResetTimeout)
    }
    
    /// 机器实例更新失败。
    public static var failedOperation_InstanceUpdateFailed: TCTsfError {
        TCTsfError(.failedOperation_InstanceUpdateFailed)
    }
    
    /// 泳道从consul删除失败。
    public static var failedOperation_LaneInfoDeleteConsulFailed: TCTsfError {
        TCTsfError(.failedOperation_LaneInfoDeleteConsulFailed)
    }
    
    /// 新增关联部署组不能为空。
    public static var failedOperation_LaneInfoGroupNotEmpty: TCTsfError {
        TCTsfError(.failedOperation_LaneInfoGroupNotEmpty)
    }
    
    /// 泳道同步到consul失败。
    public static var failedOperation_LaneInfoReleaseConsulFailed: TCTsfError {
        TCTsfError(.failedOperation_LaneInfoReleaseConsulFailed)
    }
    
    /// 泳道发布到mesh失败。
    public static var failedOperation_LaneInfoReleaseMeshFailed: TCTsfError {
        TCTsfError(.failedOperation_LaneInfoReleaseMeshFailed)
    }
    
    /// 全链路灰度规则启用失败。
    public static var failedOperation_LaneRuleEnableConsulFailed: TCTsfError {
        TCTsfError(.failedOperation_LaneRuleEnableConsulFailed)
    }
    
    /// 用户全链路灰度规则最大100条。
    public static var failedOperation_LaneRuleMaxLimit: TCTsfError {
        TCTsfError(.failedOperation_LaneRuleMaxLimit)
    }
    
    /// 无法创建命名空间。
    public static var failedOperation_NamespaceCreateFailed: TCTsfError {
        TCTsfError(.failedOperation_NamespaceCreateFailed)
    }
    
    /// 命名空间查询失败。
    public static var failedOperation_NamespaceQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_NamespaceQueryFailed)
    }
    
    /// 访问配置中心失败。
    public static var failedOperation_RatelimitConsulError: TCTsfError {
        TCTsfError(.failedOperation_RatelimitConsulError)
    }
    
    /// 服务数据库入库失败。
    public static var failedOperation_ServiceInsertFailed: TCTsfError {
        TCTsfError(.failedOperation_ServiceInsertFailed)
    }
    
    /// 服务查询失败。
    public static var failedOperation_ServiceQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_ServiceQueryFailed)
    }
    
    /// 任务创建异常。
    public static var failedOperation_TaskCreateError: TCTsfError {
        TCTsfError(.failedOperation_TaskCreateError)
    }
    
    /// 任务删除异常。
    public static var failedOperation_TaskDeleteError: TCTsfError {
        TCTsfError(.failedOperation_TaskDeleteError)
    }
    
    /// 操作失败。
    public static var failedOperation_TaskOperationFailed: TCTsfError {
        TCTsfError(.failedOperation_TaskOperationFailed)
    }
    
    /// 禁止操作。
    public static var failedOperation_TaskOperationForbidden: TCTsfError {
        TCTsfError(.failedOperation_TaskOperationForbidden)
    }
    
    /// 任务下发异常。
    public static var failedOperation_TaskPushError: TCTsfError {
        TCTsfError(.failedOperation_TaskPushError)
    }
    
    /// 任务查询异常。
    public static var failedOperation_TaskQueryError: TCTsfError {
        TCTsfError(.failedOperation_TaskQueryError)
    }
    
    /// 停止任务失败。
    public static var failedOperation_TaskTerminateFailed: TCTsfError {
        TCTsfError(.failedOperation_TaskTerminateFailed)
    }
    
    /// 任务更新异常。
    public static var failedOperation_TaskUpdateError: TCTsfError {
        TCTsfError(.failedOperation_TaskUpdateError)
    }
    
    /// TKE 集群创建失败，%s。
    public static var failedOperation_TkeClusterCreateFailed: TCTsfError {
        TCTsfError(.failedOperation_TkeClusterCreateFailed)
    }
    
    /// TKE 集群查询失败。
    public static var failedOperation_TkeClusterQueryFailed: TCTsfError {
        TCTsfError(.failedOperation_TkeClusterQueryFailed)
    }
    
    /// TSF应用性能管理业务日志配置解析规则查询失败。
    public static var failedOperation_TsfApmBusiLogCfgSchemaQueryError: TCTsfError {
        TCTsfError(.failedOperation_TsfApmBusiLogCfgSchemaQueryError)
    }
    
    /// TSF应用性能管理业务日志配置数据库写入失败。
    public static var failedOperation_TsfApmBusiLogCfgWriteError: TCTsfError {
        TCTsfError(.failedOperation_TsfApmBusiLogCfgWriteError)
    }
    
    /// TSF应用性能管理CTSDB客户端调用失败。
    public static var failedOperation_TsfApmCtsdbClientRequestError: TCTsfError {
        TCTsfError(.failedOperation_TsfApmCtsdbClientRequestError)
    }
    
    /// ctsdb数据库请求失败。
    public static var failedOperation_TsfCmonitorCtsdbClientRequestFail: TCTsfError {
        TCTsfError(.failedOperation_TsfCmonitorCtsdbClientRequestFail)
    }
    
    /// TSF监控统计等待超时, 请稍后重试。
    public static var failedOperation_TsfMonitorWaitedTimeout: TCTsfError {
        TCTsfError(.failedOperation_TsfMonitorWaitedTimeout)
    }
    
    /// TSF权限模块异常，请联系系统管理员。。
    public static var failedOperation_TsfPrivilegeError: TCTsfError {
        TCTsfError(.failedOperation_TsfPrivilegeError)
    }
    
    /// 模块未处理异常。
    public static var failedOperation_UnhandledException: TCTsfError {
        TCTsfError(.failedOperation_UnhandledException)
    }
    
    /// 应用操作请求MASTER FEIGN失败。
    public static var internalError_ApplicationMasterFeignError: TCTsfError {
        TCTsfError(.internalError_ApplicationMasterFeignError)
    }
    
    /// 应用操作请求MASTER 操作失败。
    public static var internalError_ApplicationMasterNuknownError: TCTsfError {
        TCTsfError(.internalError_ApplicationMasterNuknownError)
    }
    
    /// 删除应用程序包请求仓库失败。
    public static var internalError_ApplicationRepoDeletePkg: TCTsfError {
        TCTsfError(.internalError_ApplicationRepoDeletePkg)
    }
    
    /// 创建应用初始化tsf-scalable请求失败。
    public static var internalError_ApplicationScalableInitError: TCTsfError {
        TCTsfError(.internalError_ApplicationScalableInitError)
    }
    
    /// TSF云API调用申请角色临时凭证调用请求失败。
    public static var internalError_CamRoleRequestError: TCTsfError {
        TCTsfError(.internalError_CamRoleRequestError)
    }
    
    /// 配置发布失败：无法连接配置中心服务器。
    public static var internalError_CanNotConnConsulServer: TCTsfError {
        TCTsfError(.internalError_CanNotConnConsulServer)
    }
    
    /// TSF云API请求调用失败。
    public static var internalError_CloudApiProxyError: TCTsfError {
        TCTsfError(.internalError_CloudApiProxyError)
    }
    
    /// 集群通用错误。
    public static var internalError_ClusterCommonError: TCTsfError {
        TCTsfError(.internalError_ClusterCommonError)
    }
    
    /// 虚拟机集群请求MASTER FEIGN失败。
    public static var internalError_ClusterMasterFeignError: TCTsfError {
        TCTsfError(.internalError_ClusterMasterFeignError)
    }
    
    /// 无法找到部署组，或相应集群/命名空间/应用的权限不足。
    public static var internalError_ClusterNotExistOrPrivilegeError: TCTsfError {
        TCTsfError(.internalError_ClusterNotExistOrPrivilegeError)
    }
    
    /// 配置发布失败：配置中心服务器处理失败。
    public static var internalError_ConsulServerError: TCTsfError {
        TCTsfError(.internalError_ConsulServerError)
    }
    
    /// 访问TKE服务失败。
    public static var internalError_ContainergroupKuberneteApiInvokeError: TCTsfError {
        TCTsfError(.internalError_ContainergroupKuberneteApiInvokeError)
    }
    
    /// 连接TKE服务失败。
    public static var internalError_ContainergroupKuberneteConnectError: TCTsfError {
        TCTsfError(.internalError_ContainergroupKuberneteConnectError)
    }
    
    /// Kubernetes deployment 未找到。
    public static var internalError_ContainergroupKuberneteDeploymentNotfound: TCTsfError {
        TCTsfError(.internalError_ContainergroupKuberneteDeploymentNotfound)
    }
    
    /// 容器应用SQL错误。
    public static var internalError_ContainergroupSqlFailed: TCTsfError {
        TCTsfError(.internalError_ContainergroupSqlFailed)
    }
    
    /// 容器平台集群不可用，当前状态 %s。
    public static var internalError_CpClusterUnavailable: TCTsfError {
        TCTsfError(.internalError_CpClusterUnavailable)
    }
    
    /// 命令下放失败。
    public static var internalError_CvmCaeMasterDispatchError: TCTsfError {
        TCTsfError(.internalError_CvmCaeMasterDispatchError)
    }
    
    /// TSF MASTER 内部执行错误。
    public static var internalError_CvmCaeMasterInternalError: TCTsfError {
        TCTsfError(.internalError_CvmCaeMasterInternalError)
    }
    
    /// MASTER通道查询失败。
    public static var internalError_CvmCaeMasterNonAlive: TCTsfError {
        TCTsfError(.internalError_CvmCaeMasterNonAlive)
    }
    
    /// 网关通用异常:%s。
    public static var internalError_GatewayCommonError: TCTsfError {
        TCTsfError(.internalError_GatewayCommonError)
    }
    
    /// 数据一致性异常:%s。
    public static var internalError_GatewayConsistencyError: TCTsfError {
        TCTsfError(.internalError_GatewayConsistencyError)
    }
    
    /// 配置中心访问异常。
    public static var internalError_GatewayConsulError: TCTsfError {
        TCTsfError(.internalError_GatewayConsulError)
    }
    
    /// 网关数据异常。
    public static var internalError_GatewayDbError: TCTsfError {
        TCTsfError(.internalError_GatewayDbError)
    }
    
    /// 部署组通用异常。
    public static var internalError_GroupCommonError: TCTsfError {
        TCTsfError(.internalError_GroupCommonError)
    }
    
    /// 部署组操作请求MASTER 操作失败。
    public static var internalError_GroupMasterNuknownError: TCTsfError {
        TCTsfError(.internalError_GroupMasterNuknownError)
    }
    
    /// tcr仓库绑定失败。
    public static var internalError_ImagerepoTcrBindError: TCTsfError {
        TCTsfError(.internalError_ImagerepoTcrBindError)
    }
    
    /// TSF节点管理通用错误信息。
    public static var internalError_InstanceCommonError: TCTsfError {
        TCTsfError(.internalError_InstanceCommonError)
    }
    
    /// 创建kubernetes命名空间失败。
    public static var internalError_KubernetesApiCreateNamespacesError: TCTsfError {
        TCTsfError(.internalError_KubernetesApiCreateNamespacesError)
    }
    
    /// 创建kubernetes密钥失败。
    public static var internalError_KubernetesApiCreateSecretError: TCTsfError {
        TCTsfError(.internalError_KubernetesApiCreateSecretError)
    }
    
    /// kubernetes api 调用失败。
    public static var internalError_KubernetesCallError: TCTsfError {
        TCTsfError(.internalError_KubernetesCallError)
    }
    
    /// 远程调用失败。
    public static var internalError_RemoteServiceCallError: TCTsfError {
        TCTsfError(.internalError_RemoteServiceCallError)
    }
    
    /// 仓库内部错误。
    public static var internalError_RuntimeError: TCTsfError {
        TCTsfError(.internalError_RuntimeError)
    }
    
    /// IN子句中超过1000个候选项。
    public static var internalError_SqlTooManyInItem: TCTsfError {
        TCTsfError(.internalError_SqlTooManyInItem)
    }
    
    /// 任务内部异常。
    public static var internalError_TaskInternalError: TCTsfError {
        TCTsfError(.internalError_TaskInternalError)
    }
    
    /// 调用 TKE 接口失败，%s。
    public static var internalError_TkeApiFailedOperation: TCTsfError {
        TCTsfError(.internalError_TkeApiFailedOperation)
    }
    
    /// TSF应用性能管理业务日志配置与应用关联处理错误。
    public static var internalError_TsfApmBusiLogCfgAppRelationMasterError: TCTsfError {
        TCTsfError(.internalError_TsfApmBusiLogCfgAppRelationMasterError)
    }
    
    /// TSF应用性能管理调用tsf-ms模块失败。
    public static var internalError_TsfApmCallTsfMsFailed: TCTsfError {
        TCTsfError(.internalError_TsfApmCallTsfMsFailed)
    }
    
    /// TSF应用性能管理通用异常。
    public static var internalError_TsfApmCommonError: TCTsfError {
        TCTsfError(.internalError_TsfApmCommonError)
    }
    
    /// TSF应用性能管理ES客户端响应状态异常。
    public static var internalError_TsfApmEsResponseStatusException: TCTsfError {
        TCTsfError(.internalError_TsfApmEsResponseStatusException)
    }
    
    /// TSF应用性能管理内部异常, 请稍后重试。
    public static var internalError_TsfApmInternalError: TCTsfError {
        TCTsfError(.internalError_TsfApmInternalError)
    }
    
    /// TSF监控统计时间日期解析失败。
    public static var internalError_TsfMonitorDateParseFailed: TCTsfError {
        TCTsfError(.internalError_TsfMonitorDateParseFailed)
    }
    
    /// TSF监控统计内部异常, 请稍后重试。
    public static var internalError_TsfMonitorInternalError: TCTsfError {
        TCTsfError(.internalError_TsfMonitorInternalError)
    }
    
    /// [%s]模块未处理异常。。
    public static var internalError_UnhandledException: TCTsfError {
        TCTsfError(.internalError_UnhandledException)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTsfError {
        TCTsfError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTsfError {
        TCTsfError(.invalidParameterValue)
    }
    
    /// 无效的微服务类型。
    public static var invalidParameterValue_ApplicationMicroTypeInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationMicroTypeInvalid)
    }
    
    /// 应用名称已存在，请更换其他名称。
    public static var invalidParameterValue_ApplicationNameExist: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationNameExist)
    }
    
    /// 应用名称不能大于60字符。
    public static var invalidParameterValue_ApplicationNameLength: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationNameLength)
    }
    
    /// 应用名称不能为空。
    public static var invalidParameterValue_ApplicationNameNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationNameNull)
    }
    
    /// 应用名称格式不正确,只能包含小写字母、数字及分隔符("_"、"-")，且不能以分隔符开头或结尾。
    public static var invalidParameterValue_ApplicationNameRegxInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationNameRegxInvalid)
    }
    
    /// 无法获取应用。
    public static var invalidParameterValue_ApplicationNotExists: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationNotExists)
    }
    
    /// 无效的应用分页参数。
    public static var invalidParameterValue_ApplicationPageLimitInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationPageLimitInvalid)
    }
    
    /// 无效的应用类型。
    public static var invalidParameterValue_ApplicationTypeInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ApplicationTypeInvalid)
    }
    
    /// 与同VPC其它集群CIDR冲突。
    public static var invalidParameterValue_ClusterCidrConflict: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterCidrConflict)
    }
    
    /// 集群命名已存在，请更换其他名称。
    public static var invalidParameterValue_ClusterNameExist: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterNameExist)
    }
    
    /// 集群命名不能为空。
    public static var invalidParameterValue_ClusterNameRequired: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterNameRequired)
    }
    
    /// 创建集群，无效的地域字段。
    public static var invalidParameterValue_ClusterRegionInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterRegionInvalid)
    }
    
    /// 非法集群类型。
    public static var invalidParameterValue_ClusterTypeInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterTypeInvalid)
    }
    
    /// 创建集群，无效的可用区字段。
    public static var invalidParameterValue_ClusterZoneInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ClusterZoneInvalid)
    }
    
    /// 配置项已经发布过。
    public static var invalidParameterValue_ConfigAlreadyReleased: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigAlreadyReleased)
    }
    
    /// 配置项已存在。
    public static var invalidParameterValue_ConfigExists: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigExists)
    }
    
    /// 配置项和部署组所属应用不一致。
    public static var invalidParameterValue_ConfigGroupApplicationIdNotMatch: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigGroupApplicationIdNotMatch)
    }
    
    /// 配置项名称不合规。
    public static var invalidParameterValue_ConfigNameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigNameInvalid)
    }
    
    /// 无法获取配置项或无权限访问。
    public static var invalidParameterValue_ConfigNotExistsOrPermissionDenied: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigNotExistsOrPermissionDenied)
    }
    
    /// 无法获取配置项发布信息。
    public static var invalidParameterValue_ConfigReleaseNotExists: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigReleaseNotExists)
    }
    
    /// 配置格式不符合YAML要求。
    public static var invalidParameterValue_ConfigValueFormatInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigValueFormatInvalid)
    }
    
    /// 配置项值内容大小（%s）超过限制。
    public static var invalidParameterValue_ConfigValueTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigValueTooLong)
    }
    
    /// 配置项版本描述不合规。
    public static var invalidParameterValue_ConfigVersionDescInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigVersionDescInvalid)
    }
    
    /// 配置项版本不合规。
    public static var invalidParameterValue_ConfigVersionInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ConfigVersionInvalid)
    }
    
    /// 该镜像被占用中。
    public static var invalidParameterValue_ContainerGroupImageTagIsInUse: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainerGroupImageTagIsInUse)
    }
    
    /// 服务访问方式不能为空。
    public static var invalidParameterValue_ContainergroupAccesstypeNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupAccesstypeNull)
    }
    
    /// 所属应用ID不能为空。
    public static var invalidParameterValue_ContainergroupApplicationIdNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupApplicationIdNull)
    }
    
    /// 集群 CPU 资源不足。
    public static var invalidParameterValue_ContainergroupCpulimitOver: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupCpulimitOver)
    }
    
    /// 部署组ID不能为空。
    public static var invalidParameterValue_ContainergroupGroupidNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupGroupidNull)
    }
    
    /// 部署组名不能大于60个字符。
    public static var invalidParameterValue_ContainergroupGroupnameLegnth: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupGroupnameLegnth)
    }
    
    /// 部署组名不能为空。
    public static var invalidParameterValue_ContainergroupGroupnameNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupGroupnameNull)
    }
    
    /// 部署组名称格式不正确,只能包含小写字母、数字及分隔符("-"),且必须以小写字母开头，数字或小写字母结尾。
    public static var invalidParameterValue_ContainergroupGroupnameRegexMatchFalse: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupGroupnameRegexMatchFalse)
    }
    
    /// 实例数量不能为空或不合法。
    public static var invalidParameterValue_ContainergroupInstanceNumInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupInstanceNumInvalid)
    }
    
    /// CPU limit 和 request 不能同时为空。
    public static var invalidParameterValue_ContainergroupInvalidCpuInfo: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupInvalidCpuInfo)
    }
    
    /// 内存 limit 和 request 不能同时为空。
    public static var invalidParameterValue_ContainergroupInvalidMemInfo: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupInvalidMemInfo)
    }
    
    /// limit最大数量，默认 20, 最大值 50。
    public static var invalidParameterValue_ContainergroupLimitValueInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupLimitValueInvalid)
    }
    
    /// 集群内存资源不足。
    public static var invalidParameterValue_ContainergroupMemlimitOver: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupMemlimitOver)
    }
    
    /// 主机端口值非法。
    public static var invalidParameterValue_ContainergroupNodePortInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupNodePortInvalid)
    }
    
    /// 服务端口值非法。
    public static var invalidParameterValue_ContainergroupPortInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupPortInvalid)
    }
    
    /// 服务端口不允许重复映射。
    public static var invalidParameterValue_ContainergroupPortsRepeat: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupPortsRepeat)
    }
    
    /// 协议值非法,限定:TCP/UDP。
    public static var invalidParameterValue_ContainergroupProtocolInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupProtocolInvalid)
    }
    
    /// 公网访问方式下，协议需要一致。
    public static var invalidParameterValue_ContainergroupProtocolMixError: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupProtocolMixError)
    }
    
    /// 协议不能为空。
    public static var invalidParameterValue_ContainergroupProtocolNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupProtocolNull)
    }
    
    /// 协议端口不能为空。
    public static var invalidParameterValue_ContainergroupProtocolPortsNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupProtocolPortsNull)
    }
    
    /// 镜像仓库名与应用名不匹配。
    public static var invalidParameterValue_ContainergroupReponameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupReponameInvalid)
    }
    
    /// agent 容器资源值非法 , %s。
    public static var invalidParameterValue_ContainergroupResourceAgentValueInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupResourceAgentValueInvalid)
    }
    
    /// 容器端口不允许重复映射。
    public static var invalidParameterValue_ContainergroupTargetPortsRepeat: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupTargetPortsRepeat)
    }
    
    /// 容器端口不能为空。
    public static var invalidParameterValue_ContainergroupTargetportNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupTargetportNull)
    }
    
    /// 更新间隔不能为空或者数值非法。
    public static var invalidParameterValue_ContainergroupUpdateivlInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupUpdateivlInvalid)
    }
    
    /// updateType参数不合法，值必须为0、1。
    public static var invalidParameterValue_ContainergroupUpdatetypeInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupUpdatetypeInvalid)
    }
    
    /// 找不到业务容器。
    public static var invalidParameterValue_ContainergroupYamlUserContainerNotFound: TCTsfError {
        TCTsfError(.invalidParameterValue_ContainergroupYamlUserContainerNotFound)
    }
    
    /// TSF MASTER 正在执行任务，请等待任务执行完成再下发新任务。
    public static var invalidParameterValue_CvmCaeMasterAgentBusy: TCTsfError {
        TCTsfError(.invalidParameterValue_CvmCaeMasterAgentBusy)
    }
    
    /// 无可用实例。
    public static var invalidParameterValue_CvmCaeMasterAgentNotFound: TCTsfError {
        TCTsfError(.invalidParameterValue_CvmCaeMasterAgentNotFound)
    }
    
    /// TSF MASTER 部署组中无云主机。
    public static var invalidParameterValue_CvmCaeMasterGroupNoAgent: TCTsfError {
        TCTsfError(.invalidParameterValue_CvmCaeMasterGroupNoAgent)
    }
    
    /// 部署组不存在。
    public static var invalidParameterValue_DeployGroupNotExists: TCTsfError {
        TCTsfError(.invalidParameterValue_DeployGroupNotExists)
    }
    
    /// 文件配置项已经发布。
    public static var invalidParameterValue_FileConfigAlreadyReleased: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigAlreadyReleased)
    }
    
    /// 文件配置项已存在。
    public static var invalidParameterValue_FileConfigExists: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigExists)
    }
    
    /// 配置文件路径重复。
    public static var invalidParameterValue_FileConfigExistsPath: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigExistsPath)
    }
    
    /// 其他用户已发布此配置文件路径。
    public static var invalidParameterValue_FileConfigExistsPathOther: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigExistsPathOther)
    }
    
    /// 文件配置项文件路径不合规。
    public static var invalidParameterValue_FileConfigFilePathInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigFilePathInvalid)
    }
    
    /// 文件配置项名称不合规。
    public static var invalidParameterValue_FileConfigNameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigNameInvalid)
    }
    
    /// 无法获取文件配置项或无权限访问。
    public static var invalidParameterValue_FileConfigNotExistsOrPermissionDenied: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigNotExistsOrPermissionDenied)
    }
    
    /// 同一部署组禁止配置文件重复(文件路径+文件名)。
    public static var invalidParameterValue_FileConfigPathExists: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigPathExists)
    }
    
    /// 文件配置项版本描述不合规。
    public static var invalidParameterValue_FileConfigVersionDescInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_FileConfigVersionDescInvalid)
    }
    
    /// 请求参数异常:%s。
    public static var invalidParameterValue_GatewayParameterError: TCTsfError {
        TCTsfError(.invalidParameterValue_GatewayParameterError)
    }
    
    /// 无效请求参数:%s。
    public static var invalidParameterValue_GatewayParameterInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_GatewayParameterInvalid)
    }
    
    /// 全局命名空间已经存在，只能创建一个全局命名空间。
    public static var invalidParameterValue_GlobalNamespaceNameExist: TCTsfError {
        TCTsfError(.invalidParameterValue_GlobalNamespaceNameExist)
    }
    
    /// 部署相关请求参数校验失败。
    public static var invalidParameterValue_GroupBatchParameterInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupBatchParameterInvalid)
    }
    
    /// 部署组的集群未绑定该命名空间。
    public static var invalidParameterValue_GroupClusterNamespaceNotBound: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupClusterNamespaceNotBound)
    }
    
    /// 创建分组， 集群类型不匹配。
    public static var invalidParameterValue_GroupClusterTypeMismatch: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupClusterTypeMismatch)
    }
    
    /// 删除分组，集群类型不匹配。
    public static var invalidParameterValue_GroupDeleteClusterTypeMismatch: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupDeleteClusterTypeMismatch)
    }
    
    /// 部署组ID不能为空。
    public static var invalidParameterValue_GroupIdNull: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupIdNull)
    }
    
    /// 部署组名称已存在，请更换其他名称。
    public static var invalidParameterValue_GroupNameExist: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupNameExist)
    }
    
    /// 部署组名不能大于50个字符。
    public static var invalidParameterValue_GroupNameLength: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupNameLength)
    }
    
    /// 部署组名称格式不正确,只能包含小写字母、数字及分隔符("-"),且必须以小写字母开头，数字或小写字母结尾。
    public static var invalidParameterValue_GroupNameRegxMismatch: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupNameRegxMismatch)
    }
    
    /// 无法获取部署组。
    public static var invalidParameterValue_GroupNotExists: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupNotExists)
    }
    
    /// 分组无效的分业参数。
    public static var invalidParameterValue_GroupPageLimitInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupPageLimitInvalid)
    }
    
    /// 无效的部署组状态过滤字段。
    public static var invalidParameterValue_GroupStatusInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupStatusInvalid)
    }
    
    /// 分组操作，无有效机器。
    public static var invalidParameterValue_GroupValidInstanceNull: TCTsfError {
        TCTsfError(.invalidParameterValue_GroupValidInstanceNull)
    }
    
    /// 镜像仓库名不能为空。
    public static var invalidParameterValue_ImagerepoRepoNameNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ImagerepoRepoNameNull)
    }
    
    /// 镜像仓库名不合法,示例:tsf-repo/nginx。
    public static var invalidParameterValue_ImagerepoReponameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_ImagerepoReponameInvalid)
    }
    
    /// imageTags不能为空。
    public static var invalidParameterValue_ImagerepoTagnameNull: TCTsfError {
        TCTsfError(.invalidParameterValue_ImagerepoTagnameNull)
    }
    
    /// 重装系统，无效的镜像id。
    public static var invalidParameterValue_InstanceInvalidImage: TCTsfError {
        TCTsfError(.invalidParameterValue_InstanceInvalidImage)
    }
    
    /// 参数 %s 取值错误。
    public static var invalidParameterValue_InvalidParameter: TCTsfError {
        TCTsfError(.invalidParameterValue_InvalidParameter)
    }
    
    /// 参数格式异常。
    public static var invalidParameterValue_InvalidParameterFormat: TCTsfError {
        TCTsfError(.invalidParameterValue_InvalidParameterFormat)
    }
    
    /// 已经绑定灰度规则，无法删除。
    public static var invalidParameterValue_LaneInfoAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoAlreadyUsed)
    }
    
    /// 存在同名的泳道。
    public static var invalidParameterValue_LaneInfoNameAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNameAlreadyUsed)
    }
    
    /// 泳道名称格式有误。
    public static var invalidParameterValue_LaneInfoNameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNameInvalid)
    }
    
    /// 泳道名称不能为空。
    public static var invalidParameterValue_LaneInfoNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNameNotEmpty)
    }
    
    /// 泳道名称不能超过60个字符。
    public static var invalidParameterValue_LaneInfoNameTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNameTooLong)
    }
    
    /// 泳道不存在。
    public static var invalidParameterValue_LaneInfoNotExist: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNotExist)
    }
    
    /// 泳道没有设置任何入口应用。
    public static var invalidParameterValue_LaneInfoNotExistEntrance: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoNotExistEntrance)
    }
    
    /// 泳道备注不能超过200个字符。
    public static var invalidParameterValue_LaneInfoRemarkTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneInfoRemarkTooLong)
    }
    
    /// 全链路灰度规则中的泳道不存在。
    public static var invalidParameterValue_LaneRuleInfoNotExist: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleInfoNotExist)
    }
    
    /// 存在同名的全链路灰度规则。
    public static var invalidParameterValue_LaneRuleNameAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleNameAlreadyUsed)
    }
    
    /// 全链路灰度规则名称格式有误。
    public static var invalidParameterValue_LaneRuleNameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleNameInvalid)
    }
    
    /// 全链路灰度规则名称不能为空。
    public static var invalidParameterValue_LaneRuleNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleNameNotEmpty)
    }
    
    /// 全链路灰度规则名称不能超过60个字符。
    public static var invalidParameterValue_LaneRuleNameTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleNameTooLong)
    }
    
    /// 全链路灰度规则不存在。
    public static var invalidParameterValue_LaneRuleNotExist: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleNotExist)
    }
    
    /// 全链路灰度规则备注不能超过200个字符。
    public static var invalidParameterValue_LaneRuleRemarkTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleRemarkTooLong)
    }
    
    /// 全链路灰度规则标签名不能为空。
    public static var invalidParameterValue_LaneRuleTagNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleTagNameNotEmpty)
    }
    
    /// 全链路灰度规则标签名不能超过32个字符。
    public static var invalidParameterValue_LaneRuleTagNameTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleTagNameTooLong)
    }
    
    /// 全链路灰度规则必须设置至少一个标签。
    public static var invalidParameterValue_LaneRuleTagNotEmpty: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleTagNotEmpty)
    }
    
    /// 全链路灰度规则标签值不能超过128个字符。
    public static var invalidParameterValue_LaneRuleTagValueTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleTagValueTooLong)
    }
    
    /// 全链路灰度规则总标签值不能超过200个字符。
    public static var invalidParameterValue_LaneRuleTagValueTotalTooLong: TCTsfError {
        TCTsfError(.invalidParameterValue_LaneRuleTagValueTotalTooLong)
    }
    
    /// 集群已关联该命名空间。
    public static var invalidParameterValue_NamespaceAlreadyBindCluster: TCTsfError {
        TCTsfError(.invalidParameterValue_NamespaceAlreadyBindCluster)
    }
    
    /// 命名空间描格式不正确。
    public static var invalidParameterValue_NamespaceDescInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_NamespaceDescInvalid)
    }
    
    /// 命名空间名称已存在，请更换其他名称。
    public static var invalidParameterValue_NamespaceNameExist: TCTsfError {
        TCTsfError(.invalidParameterValue_NamespaceNameExist)
    }
    
    /// 命名空间名称格式不正确。
    public static var invalidParameterValue_NamespaceNameInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_NamespaceNameInvalid)
    }
    
    /// 无法获取命名空间。
    public static var invalidParameterValue_NamespaceNotExists: TCTsfError {
        TCTsfError(.invalidParameterValue_NamespaceNotExists)
    }
    
    /// 配置项已经发布，不允许删除。
    public static var invalidParameterValue_ReleasedConfigCanNotBeDeleted: TCTsfError {
        TCTsfError(.invalidParameterValue_ReleasedConfigCanNotBeDeleted)
    }
    
    /// 无权限操作资源%s。
    public static var invalidParameterValue_ResourcePermissionDenied: TCTsfError {
        TCTsfError(.invalidParameterValue_ResourcePermissionDenied)
    }
    
    /// ResourceType 不支持。
    public static var invalidParameterValue_ResourceTypeError: TCTsfError {
        TCTsfError(.invalidParameterValue_ResourceTypeError)
    }
    
    /// 服务描述不能大于200字符。
    public static var invalidParameterValue_ServiceDescLength: TCTsfError {
        TCTsfError(.invalidParameterValue_ServiceDescLength)
    }
    
    /// 服务名称重复。
    public static var invalidParameterValue_ServiceNameRepeated: TCTsfError {
        TCTsfError(.invalidParameterValue_ServiceNameRepeated)
    }
    
    /// 服务不存在或权限不足。
    public static var invalidParameterValue_ServiceNotExistsOrPermissionDenied: TCTsfError {
        TCTsfError(.invalidParameterValue_ServiceNotExistsOrPermissionDenied)
    }
    
    /// 无效请求参数。
    public static var invalidParameterValue_TaskParameterInvalid: TCTsfError {
        TCTsfError(.invalidParameterValue_TaskParameterInvalid)
    }
    
    /// 仅有停止状态下的部署组才可以不启动。
    public static var invalidParameterValue_WrongDontStartValue: TCTsfError {
        TCTsfError(.invalidParameterValue_WrongDontStartValue)
    }
    
    /// [%s]模块接口[%s]请求不正确（400 BAD REQUEST）。。
    public static var invalidParameter_BadRequest: TCTsfError {
        TCTsfError(.invalidParameter_BadRequest)
    }
    
    /// TSF MASTER 实例状态异常。
    public static var invalidParameter_CvmCaeMasterUnknownInstanceStatus: TCTsfError {
        TCTsfError(.invalidParameter_CvmCaeMasterUnknownInstanceStatus)
    }
    
    /// 未找到 TCR 实例或命名空间。
    public static var invalidParameter_ImagerepoTcrNamespaceNotFound: TCTsfError {
        TCTsfError(.invalidParameter_ImagerepoTcrNamespaceNotFound)
    }
    
    /// 参数错误。
    public static var invalidParameter_KubernetesParamError: TCTsfError {
        TCTsfError(.invalidParameter_KubernetesParamError)
    }
    
    /// 已经绑定灰度规则，无法删除。
    public static var invalidParameter_LaneInfoAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoAlreadyUsed)
    }
    
    /// 存在同名的泳道。
    public static var invalidParameter_LaneInfoNameAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNameAlreadyUsed)
    }
    
    /// 泳道名称格式有误。
    public static var invalidParameter_LaneInfoNameInvalid: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNameInvalid)
    }
    
    /// 泳道名称不能为空。
    public static var invalidParameter_LaneInfoNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNameNotEmpty)
    }
    
    /// 泳道名称不能超过60个字符。
    public static var invalidParameter_LaneInfoNameTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNameTooLong)
    }
    
    /// 泳道不存在。
    public static var invalidParameter_LaneInfoNotExist: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNotExist)
    }
    
    /// 泳道没有设置任何入口应用。
    public static var invalidParameter_LaneInfoNotExistEntrance: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoNotExistEntrance)
    }
    
    /// 泳道备注不能超过200个字符。
    public static var invalidParameter_LaneInfoRemarkTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneInfoRemarkTooLong)
    }
    
    /// 泳道规则中的泳道不存在。
    public static var invalidParameter_LaneRuleInfoNotExist: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleInfoNotExist)
    }
    
    /// 存在同名的泳道规则名称。
    public static var invalidParameter_LaneRuleNameAlreadyUsed: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleNameAlreadyUsed)
    }
    
    /// 泳道规则名称格式有误。
    public static var invalidParameter_LaneRuleNameInvalid: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleNameInvalid)
    }
    
    /// 泳道规则名称不能为空。
    public static var invalidParameter_LaneRuleNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleNameNotEmpty)
    }
    
    /// 泳道规则名称不能超过60个字符。
    public static var invalidParameter_LaneRuleNameTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleNameTooLong)
    }
    
    /// 泳道规则不存在。
    public static var invalidParameter_LaneRuleNotExist: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleNotExist)
    }
    
    /// 泳道规则备注不能超过200个字符。
    public static var invalidParameter_LaneRuleRemarkTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleRemarkTooLong)
    }
    
    /// 泳道规则标签名不能为空。
    public static var invalidParameter_LaneRuleTagNameNotEmpty: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleTagNameNotEmpty)
    }
    
    /// 泳道规则标签名不能超过32个字符。
    public static var invalidParameter_LaneRuleTagNameTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleTagNameTooLong)
    }
    
    /// 泳道规则必须设置至少一个标签。
    public static var invalidParameter_LaneRuleTagNotEmpty: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleTagNotEmpty)
    }
    
    /// 泳道规则标签值不能超过128个字符。
    public static var invalidParameter_LaneRuleTagValueTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleTagValueTooLong)
    }
    
    /// 泳道规则总标签值不能超过200个字符。
    public static var invalidParameter_LaneRuleTagValueTotalTooLong: TCTsfError {
        TCTsfError(.invalidParameter_LaneRuleTagValueTotalTooLong)
    }
    
    /// 包正在被使用，请先解除占用。
    public static var invalidParameter_PackageInUse: TCTsfError {
        TCTsfError(.invalidParameter_PackageInUse)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCTsfError {
        TCTsfError(.invalidParameter_ParamError)
    }
    
    /// 请求参数有误。
    public static var invalidParameter_RepoPackageParamError: TCTsfError {
        TCTsfError(.invalidParameter_RepoPackageParamError)
    }
    
    /// 仓库中存在软件包，请先删除软件包。
    public static var invalidParameter_RepositoryNotEmpty: TCTsfError {
        TCTsfError(.invalidParameter_RepositoryNotEmpty)
    }
    
    /// TSF应用性能管理业务日志应用标识参数错误。
    public static var invalidParameter_TsfApmBusiLogCfgAppParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogCfgAppParamError)
    }
    
    /// TSF应用性能管理业务日志配置与应用关联参数错误。
    public static var invalidParameter_TsfApmBusiLogCfgAppRelationParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogCfgAppRelationParamError)
    }
    
    /// TSF应用性能管理业务日志配置云账户参数错误。
    public static var invalidParameter_TsfApmBusiLogCfgCloudParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogCfgCloudParamError)
    }
    
    /// TSF应用性能管理业务日志配置标识参数错误。
    public static var invalidParameter_TsfApmBusiLogCfgIdParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogCfgIdParamError)
    }
    
    /// TSF应用性能管理业务日志配置数目参数错误。
    public static var invalidParameter_TsfApmBusiLogCfgLimitParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogCfgLimitParamError)
    }
    
    /// TSF应用性能管理业务日志搜索请求参数错误。
    public static var invalidParameter_TsfApmBusiLogSearchRequestParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmBusiLogSearchRequestParamError)
    }
    
    /// TSF应用性能管理运行状态统计查询请求参数错误。
    public static var invalidParameter_TsfApmStatsSearchRequestParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmStatsSearchRequestParamError)
    }
    
    /// TSF应用性能管理标准输出日志搜索请求参数错误。
    public static var invalidParameter_TsfApmStdoutSearchRequestParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmStdoutSearchRequestParamError)
    }
    
    /// TSF应用性能管理调用链搜索请求参数错误。
    public static var invalidParameter_TsfApmTraceSearchRequestParamError: TCTsfError {
        TCTsfError(.invalidParameter_TsfApmTraceSearchRequestParamError)
    }
    
    /// TSF监控统计请求参数[%s]非法。
    public static var invalidParameter_TsfMonitorRequestParamIllegal: TCTsfError {
        TCTsfError(.invalidParameter_TsfMonitorRequestParamIllegal)
    }
    
    /// 仓库批量删除包数量超过单次允许上限。
    public static var invalidParameter_UpperDeleteLimit: TCTsfError {
        TCTsfError(.invalidParameter_UpperDeleteLimit)
    }
    
    /// 命名空间数达到上限。
    public static var limitExceeded_ErrNamespaceMaxLimit: TCTsfError {
        TCTsfError(.limitExceeded_ErrNamespaceMaxLimit)
    }
    
    /// 仓库达到上限。
    public static var limitExceeded_ErrRepoMaxLimit: TCTsfError {
        TCTsfError(.limitExceeded_ErrRepoMaxLimit)
    }
    
    /// 最多支持创建五个容器集群，当前已经超过使用上限。
    public static var limitExceeded_TkeClusterNumberExceedLimit: TCTsfError {
        TCTsfError(.limitExceeded_TkeClusterNumberExceedLimit)
    }
    
    /// 应用ID不能为空。
    public static var missingParameter_ApplicationIdNull: TCTsfError {
        TCTsfError(.missingParameter_ApplicationIdNull)
    }
    
    /// 应用ID未填写。
    public static var missingParameter_ApplicationIdRequired: TCTsfError {
        TCTsfError(.missingParameter_ApplicationIdRequired)
    }
    
    /// 应用类型不能为空。
    public static var missingParameter_ApplicationTypeNull: TCTsfError {
        TCTsfError(.missingParameter_ApplicationTypeNull)
    }
    
    /// 集群ID未填写。
    public static var missingParameter_ClusterIdRequired: TCTsfError {
        TCTsfError(.missingParameter_ClusterIdRequired)
    }
    
    /// 集群所属子网不能为空。
    public static var missingParameter_ClusterSubnetRequired: TCTsfError {
        TCTsfError(.missingParameter_ClusterSubnetRequired)
    }
    
    /// 配置项ID未填写。
    public static var missingParameter_ConfigIdRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigIdRequired)
    }
    
    /// 配置项名称未填写。
    public static var missingParameter_ConfigNameRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigNameRequired)
    }
    
    /// 配置项发布信息ID未填写。
    public static var missingParameter_ConfigReleaseIdRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigReleaseIdRequired)
    }
    
    /// 配置项类型未填写。
    public static var missingParameter_ConfigTypeRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigTypeRequired)
    }
    
    /// 配置项值未填写。
    public static var missingParameter_ConfigValueRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigValueRequired)
    }
    
    /// 配置项版本未填写。
    public static var missingParameter_ConfigVersionRequired: TCTsfError {
        TCTsfError(.missingParameter_ConfigVersionRequired)
    }
    
    /// 文件配置项文件内容未填写。
    public static var missingParameter_FileConfigFileValueRequired: TCTsfError {
        TCTsfError(.missingParameter_FileConfigFileValueRequired)
    }
    
    /// 缺少请求参数:%s。
    public static var missingParameter_GatewayParameterRequired: TCTsfError {
        TCTsfError(.missingParameter_GatewayParameterRequired)
    }
    
    /// 分组所属应用不能为空。
    public static var missingParameter_GroupApplicationNull: TCTsfError {
        TCTsfError(.missingParameter_GroupApplicationNull)
    }
    
    /// 分组ID不能为空。
    public static var missingParameter_GroupIdNull: TCTsfError {
        TCTsfError(.missingParameter_GroupIdNull)
    }
    
    /// 部署组ID未填写。
    public static var missingParameter_GroupIdRequired: TCTsfError {
        TCTsfError(.missingParameter_GroupIdRequired)
    }
    
    /// 分组所属命名空间不能为空。
    public static var missingParameter_GroupNamespaceNull: TCTsfError {
        TCTsfError(.missingParameter_GroupNamespaceNull)
    }
    
    /// 虚拟机集群导入云主机导入方式为空。
    public static var missingParameter_InstanceImportModeNull: TCTsfError {
        TCTsfError(.missingParameter_InstanceImportModeNull)
    }
    
    /// 命名空间ID不能为空。
    public static var missingParameter_NamespaceIdRequired: TCTsfError {
        TCTsfError(.missingParameter_NamespaceIdRequired)
    }
    
    /// %s缺失。
    public static var missingParameter_RequiredParameterMissing: TCTsfError {
        TCTsfError(.missingParameter_RequiredParameterMissing)
    }
    
    /// 未填写服务Id。
    public static var missingParameter_ServiceIdRequired: TCTsfError {
        TCTsfError(.missingParameter_ServiceIdRequired)
    }
    
    /// 缺少必填参数。
    public static var missingParameter_TaskParameterMissed: TCTsfError {
        TCTsfError(.missingParameter_TaskParameterMissed)
    }
    
    /// 此应用下存在资源，无法执行删除操作。
    public static var resourceInUse_ApplicationCannotDelete: TCTsfError {
        TCTsfError(.resourceInUse_ApplicationCannotDelete)
    }
    
    /// 资源仍在使用中 无法删除。
    public static var resourceInUse_CvmcaeMasterCannotDelete: TCTsfError {
        TCTsfError(.resourceInUse_CvmcaeMasterCannotDelete)
    }
    
    /// 默认命名空间不能被删除。
    public static var resourceInUse_DefaultNamepsaceCannotBeDeleted: TCTsfError {
        TCTsfError(.resourceInUse_DefaultNamepsaceCannotBeDeleted)
    }
    
    /// 此分组下存在资源，无法执行删除操作。
    public static var resourceInUse_GroupCannotDelete: TCTsfError {
        TCTsfError(.resourceInUse_GroupCannotDelete)
    }
    
    /// 部署组在更新中 请稍后再执行该操作。
    public static var resourceInUse_GroupInOperation: TCTsfError {
        TCTsfError(.resourceInUse_GroupInOperation)
    }
    
    /// 机器实例已经被使用。
    public static var resourceInUse_InstanceHasBeenUsed: TCTsfError {
        TCTsfError(.resourceInUse_InstanceHasBeenUsed)
    }
    
    /// 此命名空间下存在资源，无法执行删除操作。
    public static var resourceInUse_NamespaceCannotDelete: TCTsfError {
        TCTsfError(.resourceInUse_NamespaceCannotDelete)
    }
    
    /// 资源对象已存在。
    public static var resourceInUse_ObjectExist: TCTsfError {
        TCTsfError(.resourceInUse_ObjectExist)
    }
    
    /// 限流规则已存在，请检查规则名和规则配置。
    public static var resourceInUse_RatelimitRuleExistError: TCTsfError {
        TCTsfError(.resourceInUse_RatelimitRuleExistError)
    }
    
    /// 仓库空间达到上限。
    public static var resourceInsufficient_PackageSpaceFull: TCTsfError {
        TCTsfError(.resourceInsufficient_PackageSpaceFull)
    }
    
    /// 无法获取应用信息。
    public static var resourceNotFound_ApplicationNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_ApplicationNotExist)
    }
    
    /// 应用不存在或应用不属于当前项目。
    ///
    /// 无法获取应用或应用不属于当前项目。
    public static var resourceNotFound_ApplicationProjectNotMatch: TCTsfError {
        TCTsfError(.resourceNotFound_ApplicationProjectNotMatch)
    }
    
    /// 无法获取命名空间所属集群。
    public static var resourceNotFound_ClusterNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_ClusterNotExist)
    }
    
    /// 集群所属私有网络不存在。
    public static var resourceNotFound_ClusterVpcNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_ClusterVpcNotExist)
    }
    
    /// 找不到集群。
    public static var resourceNotFound_ContainergroupClusterNotfound: TCTsfError {
        TCTsfError(.resourceNotFound_ContainergroupClusterNotfound)
    }
    
    /// 无法找到该部署组所属集群和命名空间。
    public static var resourceNotFound_ContainergroupGroupNamespaceClusterNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_ContainergroupGroupNamespaceClusterNotFound)
    }
    
    /// 无法找到该部署组。
    public static var resourceNotFound_ContainergroupGroupNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_ContainergroupGroupNotFound)
    }
    
    /// TSF MASTER 资源不存在。
    public static var resourceNotFound_CvmcaeMasterResourceNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_CvmcaeMasterResourceNotFound)
    }
    
    /// 镜像仓库不存在。
    public static var resourceNotFound_ErrNoRepo: TCTsfError {
        TCTsfError(.resourceNotFound_ErrNoRepo)
    }
    
    /// 用户错误。
    public static var resourceNotFound_ErrNoUser: TCTsfError {
        TCTsfError(.resourceNotFound_ErrNoUser)
    }
    
    /// 无法获取分组所属应用。
    public static var resourceNotFound_GroupApplicationNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_GroupApplicationNotExist)
    }
    
    /// 无法获取分组所属命名空间。
    public static var resourceNotFound_GroupNamespaceNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_GroupNamespaceNotExist)
    }
    
    /// 此部署组不存在，无法执行该操作。
    public static var resourceNotFound_GroupNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_GroupNotExist)
    }
    
    /// 无法获取机器信息。
    public static var resourceNotFound_InstanceNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_InstanceNotExist)
    }
    
    /// [%s]模块未提供该接口[%s]。。
    public static var resourceNotFound_InterfaceNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 无法找到License服务器。
    public static var resourceNotFound_LicenseServerNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_LicenseServerNotFound)
    }
    
    /// 目标微服务已离线[%s]。。
    public static var resourceNotFound_MicroserviceOffline: TCTsfError {
        TCTsfError(.resourceNotFound_MicroserviceOffline)
    }
    
    /// 无法获取命名空间。
    public static var resourceNotFound_NamespaceNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_NamespaceNotExist)
    }
    
    /// 资源对象不存在。
    public static var resourceNotFound_ObjectNoExist: TCTsfError {
        TCTsfError(.resourceNotFound_ObjectNoExist)
    }
    
    /// 无法获取服务，无法执行该操作。
    public static var resourceNotFound_ServiceNotExist: TCTsfError {
        TCTsfError(.resourceNotFound_ServiceNotExist)
    }
    
    /// 任务不存在。
    public static var resourceNotFound_TaskNotFound: TCTsfError {
        TCTsfError(.resourceNotFound_TaskNotFound)
    }
    
    /// TKE 中不存在该集群。
    public static var resourceNotFound_TkeClusterNotExists: TCTsfError {
        TCTsfError(.resourceNotFound_TkeClusterNotExists)
    }
    
    /// 访问 CAM 系统出错，%s。
    public static var unauthorizedOperation_CamGeneralError: TCTsfError {
        TCTsfError(.unauthorizedOperation_CamGeneralError)
    }
    
    /// 协作者身份未授权，需要主账号授予协作者权限，参考 TSF 官网文档「快速入门/准备工作」。
    public static var unauthorizedOperation_CamTsfRoleNoPermission: TCTsfError {
        TCTsfError(.unauthorizedOperation_CamTsfRoleNoPermission)
    }
    
    /// 当前主账号未创建TSF_QCSRole或未对子账号授予预设策略QcloudCamSubaccountsAuthorizeRoleFullAccess。请参考产品文档主账号协作者使用说明。。
    public static var unauthorizedOperation_CamTsfRoleNotExist: TCTsfError {
        TCTsfError(.unauthorizedOperation_CamTsfRoleNotExist)
    }
    
    /// License未激活。。
    public static var unauthorizedOperation_LicenseInactive: TCTsfError {
        TCTsfError(.unauthorizedOperation_LicenseInactive)
    }
    
    /// 您所购买的服务不支持该操作。
    public static var unauthorizedOperation_LicenseUnauthorized: TCTsfError {
        TCTsfError(.unauthorizedOperation_LicenseUnauthorized)
    }
    
    /// 缺少License。。
    public static var unauthorizedOperation_NoLicense: TCTsfError {
        TCTsfError(.unauthorizedOperation_NoLicense)
    }
    
    /// 用户无权限访问该接口。。
    public static var unauthorizedOperation_NoPrivilege: TCTsfError {
        TCTsfError(.unauthorizedOperation_NoPrivilege)
    }
    
    /// 批量操作数量超过限制:%s。
    public static var unsupportedOperation_GatewayTooManyRequestParameter: TCTsfError {
        TCTsfError(.unsupportedOperation_GatewayTooManyRequestParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation_TaskNotSupported: TCTsfError {
        TCTsfError(.unsupportedOperation_TaskNotSupported)
    }
    
    /// 不支持的ACTION。。
    public static var unsupportedOperation_UnsupportAction: TCTsfError {
        TCTsfError(.unsupportedOperation_UnsupportAction)
    }
}

extension TCTsfError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTsfError: Equatable {
    public static func == (lhs: TCTsfError, rhs: TCTsfError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTsfError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTsfError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
