public struct TCApigatewayError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessKeyExist = "FailedOperation.AccessKeyExist"
        case failedOperation_ApiBindEnvironmen = "FailedOperation.ApiBindEnvironmen"
        case failedOperation_ApiBindEnvironment = "FailedOperation.ApiBindEnvironment"
        case failedOperation_ApiError = "FailedOperation.ApiError"
        case failedOperation_ApiInOperation = "FailedOperation.ApiInOperation"
        case failedOperation_CertificateIdBindError = "FailedOperation.CertificateIdBindError"
        case failedOperation_CertificateIdEnterpriseWaitSubmit = "FailedOperation.CertificateIdEnterpriseWaitSubmit"
        case failedOperation_CertificateIdError = "FailedOperation.CertificateIdError"
        case failedOperation_CertificateIdExpired = "FailedOperation.CertificateIdExpired"
        case failedOperation_CertificateIdInfoError = "FailedOperation.CertificateIdInfoError"
        case failedOperation_CertificateIdUnderVerify = "FailedOperation.CertificateIdUnderVerify"
        case failedOperation_CertificateIdUnknownError = "FailedOperation.CertificateIdUnknownError"
        case failedOperation_CertificateIdVerifyFail = "FailedOperation.CertificateIdVerifyFail"
        case failedOperation_CertificateIsNull = "FailedOperation.CertificateIsNull"
        case failedOperation_ClsError = "FailedOperation.ClsError"
        case failedOperation_CodingError = "FailedOperation.CodingError"
        case failedOperation_DefineMappingEnvironmentError = "FailedOperation.DefineMappingEnvironmentError"
        case failedOperation_DefineMappingNotNull = "FailedOperation.DefineMappingNotNull"
        case failedOperation_DefineMappingParamRepeat = "FailedOperation.DefineMappingParamRepeat"
        case failedOperation_DefineMappingPathError = "FailedOperation.DefineMappingPathError"
        case failedOperation_DeletePathMappingSetError = "FailedOperation.DeletePathMappingSetError"
        case failedOperation_DescribeServiceSubDomainsError = "FailedOperation.DescribeServiceSubDomainsError"
        case failedOperation_DomainAlreadyBindOtherService = "FailedOperation.DomainAlreadyBindOtherService"
        case failedOperation_DomainAlreadyBindService = "FailedOperation.DomainAlreadyBindService"
        case failedOperation_DomainInBlackList = "FailedOperation.DomainInBlackList"
        case failedOperation_DomainNeedBeian = "FailedOperation.DomainNeedBeian"
        case failedOperation_DomainNotBindService = "FailedOperation.DomainNotBindService"
        case failedOperation_DomainResolveError = "FailedOperation.DomainResolveError"
        case failedOperation_EIAMError = "FailedOperation.EIAMError"
        case failedOperation_EbError = "FailedOperation.EbError"
        case failedOperation_FormatError = "FailedOperation.FormatError"
        case failedOperation_GenerateApiDocumentError = "FailedOperation.GenerateApiDocumentError"
        case failedOperation_GetRoleError = "FailedOperation.GetRoleError"
        case failedOperation_InstanceNotExist = "FailedOperation.InstanceNotExist"
        case failedOperation_IsDefaultMapping = "FailedOperation.IsDefaultMapping"
        case failedOperation_NetSubDomainError = "FailedOperation.NetSubDomainError"
        case failedOperation_OperateUpstream = "FailedOperation.OperateUpstream"
        case failedOperation_PathMappingSetError = "FailedOperation.PathMappingSetError"
        case failedOperation_ScfError = "FailedOperation.ScfError"
        case failedOperation_ServiceError = "FailedOperation.ServiceError"
        case failedOperation_ServiceInOperation = "FailedOperation.ServiceInOperation"
        case failedOperation_ServiceNotExist = "FailedOperation.ServiceNotExist"
        case failedOperation_SetCustomPathMappingError = "FailedOperation.SetCustomPathMappingError"
        case failedOperation_SubDomainFormatError = "FailedOperation.SubDomainFormatError"
        case failedOperation_TagBindServiceError = "FailedOperation.TagBindServiceError"
        case failedOperation_UnknownProtocolTypeError = "FailedOperation.UnknownProtocolTypeError"
        case internalError = "InternalError"
        case internalError_ApigwException = "InternalError.ApigwException"
        case internalError_CauthException = "InternalError.CauthException"
        case internalError_ClbException = "InternalError.ClbException"
        case internalError_OssException = "InternalError.OssException"
        case internalError_ScfException = "InternalError.ScfException"
        case internalError_TsfException = "InternalError.TsfException"
        case internalError_VpcException = "InternalError.VpcException"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DuplicatePluginConfig = "InvalidParameterValue.DuplicatePluginConfig"
        case invalidParameterValue_IllegalProxyIp = "InvalidParameterValue.IllegalProxyIp"
        case invalidParameterValue_InvalidAccessKeyIds = "InvalidParameterValue.InvalidAccessKeyIds"
        case invalidParameterValue_InvalidApiBusinessType = "InvalidParameterValue.InvalidApiBusinessType"
        case invalidParameterValue_InvalidApiIds = "InvalidParameterValue.InvalidApiIds"
        case invalidParameterValue_InvalidApiRequestConfig = "InvalidParameterValue.InvalidApiRequestConfig"
        case invalidParameterValue_InvalidApiType = "InvalidParameterValue.InvalidApiType"
        case invalidParameterValue_InvalidBackendPath = "InvalidParameterValue.InvalidBackendPath"
        case invalidParameterValue_InvalidClb = "InvalidParameterValue.InvalidClb"
        case invalidParameterValue_InvalidCondition = "InvalidParameterValue.InvalidCondition"
        case invalidParameterValue_InvalidConstantParameters = "InvalidParameterValue.InvalidConstantParameters"
        case invalidParameterValue_InvalidEnv = "InvalidParameterValue.InvalidEnv"
        case invalidParameterValue_InvalidEnvStatus = "InvalidParameterValue.InvalidEnvStatus"
        case invalidParameterValue_InvalidFilterNotSupportedName = "InvalidParameterValue.InvalidFilterNotSupportedName"
        case invalidParameterValue_InvalidGenLanguage = "InvalidParameterValue.InvalidGenLanguage"
        case invalidParameterValue_InvalidIPAddress = "InvalidParameterValue.InvalidIPAddress"
        case invalidParameterValue_InvalidMaxRequestNum = "InvalidParameterValue.InvalidMaxRequestNum"
        case invalidParameterValue_InvalidMethod = "InvalidParameterValue.InvalidMethod"
        case invalidParameterValue_InvalidPluginConfig = "InvalidParameterValue.InvalidPluginConfig"
        case invalidParameterValue_InvalidPort = "InvalidParameterValue.InvalidPort"
        case invalidParameterValue_InvalidProcotol = "InvalidParameterValue.InvalidProcotol"
        case invalidParameterValue_InvalidPublicKey = "InvalidParameterValue.InvalidPublicKey"
        case invalidParameterValue_InvalidRegion = "InvalidParameterValue.InvalidRegion"
        case invalidParameterValue_InvalidRequestParameters = "InvalidParameterValue.InvalidRequestParameters"
        case invalidParameterValue_InvalidScfConfig = "InvalidParameterValue.InvalidScfConfig"
        case invalidParameterValue_InvalidServiceConfig = "InvalidParameterValue.InvalidServiceConfig"
        case invalidParameterValue_InvalidServiceMockReturnMessage = "InvalidParameterValue.InvalidServiceMockReturnMessage"
        case invalidParameterValue_InvalidServiceParam = "InvalidParameterValue.InvalidServiceParam"
        case invalidParameterValue_InvalidServiceParameters = "InvalidParameterValue.InvalidServiceParameters"
        case invalidParameterValue_InvalidServiceType = "InvalidParameterValue.InvalidServiceType"
        case invalidParameterValue_InvalidTagValues = "InvalidParameterValue.InvalidTagValues"
        case invalidParameterValue_InvalidTsfConfig = "InvalidParameterValue.InvalidTsfConfig"
        case invalidParameterValue_InvalidUpstream = "InvalidParameterValue.InvalidUpstream"
        case invalidParameterValue_InvalidUrl = "InvalidParameterValue.InvalidUrl"
        case invalidParameterValue_InvalidVpcConfig = "InvalidParameterValue.InvalidVpcConfig"
        case invalidParameterValue_InvalidWSMethod = "InvalidParameterValue.InvalidWSMethod"
        case invalidParameterValue_LengthExceeded = "InvalidParameterValue.LengthExceeded"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_NotInOptions = "InvalidParameterValue.NotInOptions"
        case invalidParameterValue_NothingModifyForOauth = "InvalidParameterValue.NothingModifyForOauth"
        case invalidParameterValue_ParameterNotMatch = "InvalidParameterValue.ParameterNotMatch"
        case invalidParameterValue_ParameterValueLimitExceeded = "InvalidParameterValue.ParameterValueLimitExceeded"
        case invalidParameterValue_RangeExceeded = "InvalidParameterValue.RangeExceeded"
        case invalidParameterValue_UnsupportedParameter = "InvalidParameterValue.UnsupportedParameter"
        case invalidParameter_BasicServiceNotAllowAttachPlugin = "InvalidParameter.BasicServiceNotAllowAttachPlugin"
        case invalidParameter_DuplicatePluginConfig = "InvalidParameter.DuplicatePluginConfig"
        case invalidParameter_FormatError = "InvalidParameter.FormatError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_APIDocLimitExceeded = "LimitExceeded.APIDocLimitExceeded"
        case limitExceeded_AccessKeyCountInUsagePlanLimitExceeded = "LimitExceeded.AccessKeyCountInUsagePlanLimitExceeded"
        case limitExceeded_ApiAppCountLimitExceeded = "LimitExceeded.ApiAppCountLimitExceeded"
        case limitExceeded_ApiCountLimitExceeded = "LimitExceeded.ApiCountLimitExceeded"
        case limitExceeded_ApiKeyCountLimitExceeded = "LimitExceeded.ApiKeyCountLimitExceeded"
        case limitExceeded_ExceededDefineMappingLimit = "LimitExceeded.ExceededDefineMappingLimit"
        case limitExceeded_ExceededDomainLimit = "LimitExceeded.ExceededDomainLimit"
        case limitExceeded_IpStrategyLimitExceeded = "LimitExceeded.IpStrategyLimitExceeded"
        case limitExceeded_RequestLimitExceeded = "LimitExceeded.RequestLimitExceeded"
        case limitExceeded_ServiceCountForPluginLimitExceeded = "LimitExceeded.ServiceCountForPluginLimitExceeded"
        case limitExceeded_ServiceCountLimitExceeded = "LimitExceeded.ServiceCountLimitExceeded"
        case limitExceeded_UsagePlanLimitExceeded = "LimitExceeded.UsagePlanLimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_BackendSpecificParam = "MissingParameter.BackendSpecificParam"
        case missingParameter_PluginConfig = "MissingParameter.PluginConfig"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_InvalidAccessKeyId = "ResourceNotFound.InvalidAccessKeyId"
        case resourceNotFound_InvalidApi = "ResourceNotFound.InvalidApi"
        case resourceNotFound_InvalidApiApp = "ResourceNotFound.InvalidApiApp"
        case resourceNotFound_InvalidApiDoc = "ResourceNotFound.InvalidApiDoc"
        case resourceNotFound_InvalidIPStrategy = "ResourceNotFound.InvalidIPStrategy"
        case resourceNotFound_InvalidOauthApi = "ResourceNotFound.InvalidOauthApi"
        case resourceNotFound_InvalidPlugin = "ResourceNotFound.InvalidPlugin"
        case resourceNotFound_InvalidService = "ResourceNotFound.InvalidService"
        case resourceNotFound_InvalidUsagePlan = "ResourceNotFound.InvalidUsagePlan"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AccessResource = "UnauthorizedOperation.AccessResource"
        case unauthorizedOperation_UncertifiedUser = "UnauthorizedOperation.UncertifiedUser"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AccountArrears = "UnsupportedOperation.AccountArrears"
        case unsupportedOperation_AlreadyBindUsagePlan = "UnsupportedOperation.AlreadyBindUsagePlan"
        case unsupportedOperation_AttachPlugin = "UnsupportedOperation.AttachPlugin"
        case unsupportedOperation_BasicServiceNoMoreApi = "UnsupportedOperation.BasicServiceNoMoreApi"
        case unsupportedOperation_ClsSearchTime = "UnsupportedOperation.ClsSearchTime"
        case unsupportedOperation_ForceHttps = "UnsupportedOperation.ForceHttps"
        case unsupportedOperation_InvalidAction = "UnsupportedOperation.InvalidAction"
        case unsupportedOperation_InvalidEndpointType = "UnsupportedOperation.InvalidEndpointType"
        case unsupportedOperation_InvalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
        case unsupportedOperation_InvalidServiceTrade = "UnsupportedOperation.InvalidServiceTrade"
        case unsupportedOperation_InvalidStatus = "UnsupportedOperation.InvalidStatus"
        case unsupportedOperation_ModifyEIAMAuthApi = "UnsupportedOperation.ModifyEIAMAuthApi"
        case unsupportedOperation_ModifyNetType = "UnsupportedOperation.ModifyNetType"
        case unsupportedOperation_ModifyProtocol = "UnsupportedOperation.ModifyProtocol"
        case unsupportedOperation_NoUsagePlanEnv = "UnsupportedOperation.NoUsagePlanEnv"
        case unsupportedOperation_ReduceNetTypes = "UnsupportedOperation.ReduceNetTypes"
        case unsupportedOperation_ResourceAssociated = "UnsupportedOperation.ResourceAssociated"
        case unsupportedOperation_ResourceIsInUse = "UnsupportedOperation.ResourceIsInUse"
        case unsupportedOperation_ResourceUnassociated = "UnsupportedOperation.ResourceUnassociated"
        case unsupportedOperation_UinNotInWhiteList = "UnsupportedOperation.UinNotInWhiteList"
        case unsupportedOperation_UnsupportedBindApiKey = "UnsupportedOperation.UnsupportedBindApiKey"
        case unsupportedOperation_UnsupportedBindEnvironment = "UnsupportedOperation.UnsupportedBindEnvironment"
        case unsupportedOperation_UnsupportedDeleteApi = "UnsupportedOperation.UnsupportedDeleteApi"
        case unsupportedOperation_UnsupportedDeleteService = "UnsupportedOperation.UnsupportedDeleteService"
        case unsupportedOperation_UnsupportedDeleteUpstream = "UnsupportedOperation.UnsupportedDeleteUpstream"
        case unsupportedOperation_UnsupportedNetType = "UnsupportedOperation.UnsupportedNetType"
        case unsupportedOperation_UnsupportedUnBindEnvironment = "UnsupportedOperation.UnsupportedUnBindEnvironment"
        case unsupportedOperation_UnsupportedUpdateApiKey = "UnsupportedOperation.UnsupportedUpdateApiKey"
        case unsupportedOperation_UsagePlanInUse = "UnsupportedOperation.UsagePlanInUse"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCApigatewayError {
        TCApigatewayError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCApigatewayError {
        TCApigatewayError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCApigatewayError {
        TCApigatewayError(.failedOperation)
    }
    
    /// 自定义密钥已存在。
    public static var failedOperation_AccessKeyExist: TCApigatewayError {
        TCApigatewayError(.failedOperation_AccessKeyExist)
    }
    
    /// 该api绑定了使用计划。
    public static var failedOperation_ApiBindEnvironmen: TCApigatewayError {
        TCApigatewayError(.failedOperation_ApiBindEnvironmen)
    }
    
    /// Apis 绑定了使用计划，请先解绑再试。
    public static var failedOperation_ApiBindEnvironment: TCApigatewayError {
        TCApigatewayError(.failedOperation_ApiBindEnvironment)
    }
    
    /// api类错误。
    public static var failedOperation_ApiError: TCApigatewayError {
        TCApigatewayError(.failedOperation_ApiError)
    }
    
    /// 当前API正在操作中，请稍后再试。
    public static var failedOperation_ApiInOperation: TCApigatewayError {
        TCApigatewayError(.failedOperation_ApiInOperation)
    }
    
    /// 证书绑定错误。
    public static var failedOperation_CertificateIdBindError: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdBindError)
    }
    
    /// 该证书为企业证书，待提交。
    public static var failedOperation_CertificateIdEnterpriseWaitSubmit: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdEnterpriseWaitSubmit)
    }
    
    /// 证书不存在或者您没有权限查看，请在ssl证书管理平台上传有效证书。
    public static var failedOperation_CertificateIdError: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdError)
    }
    
    /// 证书已过期，请上传其他有效证书。
    public static var failedOperation_CertificateIdExpired: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdExpired)
    }
    
    /// 该证书信息内容为空，请联系证书同事。
    public static var failedOperation_CertificateIdInfoError: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdInfoError)
    }
    
    /// 该证书处于审核中状态，请上传其他有效证书。
    public static var failedOperation_CertificateIdUnderVerify: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdUnderVerify)
    }
    
    /// 证书处于未知状态，请联系证书同事查看具体状态。
    public static var failedOperation_CertificateIdUnknownError: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdUnknownError)
    }
    
    /// 证书处于审核失败状态，请上传其他有效证书。
    public static var failedOperation_CertificateIdVerifyFail: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIdVerifyFail)
    }
    
    /// Apis 证书为空，请上传证书。
    public static var failedOperation_CertificateIsNull: TCApigatewayError {
        TCApigatewayError(.failedOperation_CertificateIsNull)
    }
    
    /// 调用CLS服务失败。
    public static var failedOperation_ClsError: TCApigatewayError {
        TCApigatewayError(.failedOperation_ClsError)
    }
    
    /// API文档操作失败。
    public static var failedOperation_CodingError: TCApigatewayError {
        TCApigatewayError(.failedOperation_CodingError)
    }
    
    /// Apis 环境配置错误。
    public static var failedOperation_DefineMappingEnvironmentError: TCApigatewayError {
        TCApigatewayError(.failedOperation_DefineMappingEnvironmentError)
    }
    
    /// Apis自定义路径映射不能为空。
    public static var failedOperation_DefineMappingNotNull: TCApigatewayError {
        TCApigatewayError(.failedOperation_DefineMappingNotNull)
    }
    
    /// Apis 参数重复。
    public static var failedOperation_DefineMappingParamRepeat: TCApigatewayError {
        TCApigatewayError(.failedOperation_DefineMappingParamRepeat)
    }
    
    /// Apis自定义路径配置错误。
    public static var failedOperation_DefineMappingPathError: TCApigatewayError {
        TCApigatewayError(.failedOperation_DefineMappingPathError)
    }
    
    /// 删除自定义域名错误。
    public static var failedOperation_DeletePathMappingSetError: TCApigatewayError {
        TCApigatewayError(.failedOperation_DeletePathMappingSetError)
    }
    
    /// 服务自定义域名错误。
    public static var failedOperation_DescribeServiceSubDomainsError: TCApigatewayError {
        TCApigatewayError(.failedOperation_DescribeServiceSubDomainsError)
    }
    
    /// 该域名已经绑定其他服务。
    public static var failedOperation_DomainAlreadyBindOtherService: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainAlreadyBindOtherService)
    }
    
    /// 该域名已经绑定该服务。
    public static var failedOperation_DomainAlreadyBindService: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainAlreadyBindService)
    }
    
    /// 当前域名不满足合规要求，无法进行接入。
    public static var failedOperation_DomainInBlackList: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainInBlackList)
    }
    
    /// 该域名还未在腾讯云备案，请备案之后再绑定域名。
    public static var failedOperation_DomainNeedBeian: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainNeedBeian)
    }
    
    /// 自定义域名解绑失败，域名未绑定该服务。
    public static var failedOperation_DomainNotBindService: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainNotBindService)
    }
    
    /// 该域名未配置cname到默认域名，或者解析未生效。
    public static var failedOperation_DomainResolveError: TCApigatewayError {
        TCApigatewayError(.failedOperation_DomainResolveError)
    }
    
    /// EIAM返回错误。
    public static var failedOperation_EIAMError: TCApigatewayError {
        TCApigatewayError(.failedOperation_EIAMError)
    }
    
    /// 事件总线绑定/解绑失败。
    public static var failedOperation_EbError: TCApigatewayError {
        TCApigatewayError(.failedOperation_EbError)
    }
    
    /// 域名格式错误。
    public static var failedOperation_FormatError: TCApigatewayError {
        TCApigatewayError(.failedOperation_FormatError)
    }
    
    /// API文档生成失败。
    public static var failedOperation_GenerateApiDocumentError: TCApigatewayError {
        TCApigatewayError(.failedOperation_GenerateApiDocumentError)
    }
    
    /// 获取角色失败，请确认完成API网关相关服务接口授权。
    public static var failedOperation_GetRoleError: TCApigatewayError {
        TCApigatewayError(.failedOperation_GetRoleError)
    }
    
    /// 实例不存在，或者无效状态。
    public static var failedOperation_InstanceNotExist: TCApigatewayError {
        TCApigatewayError(.failedOperation_InstanceNotExist)
    }
    
    /// Apis 自定义路径与默认路径冲突。
    public static var failedOperation_IsDefaultMapping: TCApigatewayError {
        TCApigatewayError(.failedOperation_IsDefaultMapping)
    }
    
    /// 默认的二级域名输入错误。
    public static var failedOperation_NetSubDomainError: TCApigatewayError {
        TCApigatewayError(.failedOperation_NetSubDomainError)
    }
    
    /// 操作后端通道失败。
    ///
    /// 重试
    public static var failedOperation_OperateUpstream: TCApigatewayError {
        TCApigatewayError(.failedOperation_OperateUpstream)
    }
    
    /// 设置路径映射错误。
    public static var failedOperation_PathMappingSetError: TCApigatewayError {
        TCApigatewayError(.failedOperation_PathMappingSetError)
    }
    
    /// SCF触发器绑定/解绑操作失败。
    public static var failedOperation_ScfError: TCApigatewayError {
        TCApigatewayError(.failedOperation_ScfError)
    }
    
    /// 服务相关的错误。
    public static var failedOperation_ServiceError: TCApigatewayError {
        TCApigatewayError(.failedOperation_ServiceError)
    }
    
    /// 当前Service正在操作中, 请稍后再试。
    public static var failedOperation_ServiceInOperation: TCApigatewayError {
        TCApigatewayError(.failedOperation_ServiceInOperation)
    }
    
    /// 服务不存在。
    public static var failedOperation_ServiceNotExist: TCApigatewayError {
        TCApigatewayError(.failedOperation_ServiceNotExist)
    }
    
    /// 自定义域名已使用默认路径映射，不支持设置自定义路径。
    public static var failedOperation_SetCustomPathMappingError: TCApigatewayError {
        TCApigatewayError(.failedOperation_SetCustomPathMappingError)
    }
    
    /// 自定义域名格式错误。
    public static var failedOperation_SubDomainFormatError: TCApigatewayError {
        TCApigatewayError(.failedOperation_SubDomainFormatError)
    }
    
    /// 标签绑定服务失败。
    public static var failedOperation_TagBindServiceError: TCApigatewayError {
        TCApigatewayError(.failedOperation_TagBindServiceError)
    }
    
    /// 协议类型错误。
    public static var failedOperation_UnknownProtocolTypeError: TCApigatewayError {
        TCApigatewayError(.failedOperation_UnknownProtocolTypeError)
    }
    
    /// 内部错误。
    public static var internalError: TCApigatewayError {
        TCApigatewayError(.internalError)
    }
    
    /// API网关内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_ApigwException: TCApigatewayError {
        TCApigatewayError(.internalError_ApigwException)
    }
    
    /// CAuth内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_CauthException: TCApigatewayError {
        TCApigatewayError(.internalError_CauthException)
    }
    
    /// CLB内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_ClbException: TCApigatewayError {
        TCApigatewayError(.internalError_ClbException)
    }
    
    /// oss内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_OssException: TCApigatewayError {
        TCApigatewayError(.internalError_OssException)
    }
    
    /// SCF内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_ScfException: TCApigatewayError {
        TCApigatewayError(.internalError_ScfException)
    }
    
    /// TSF内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_TsfException: TCApigatewayError {
        TCApigatewayError(.internalError_TsfException)
    }
    
    /// vpc内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_VpcException: TCApigatewayError {
        TCApigatewayError(.internalError_VpcException)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCApigatewayError {
        TCApigatewayError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue)
    }
    
    /// 插件定义参数取值重复，请修改后重新操作。
    public static var invalidParameterValue_DuplicatePluginConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_DuplicatePluginConfig)
    }
    
    /// 非法的后端ip地址。
    ///
    /// 请使用正确的后端ip地址。
    public static var invalidParameterValue_IllegalProxyIp: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_IllegalProxyIp)
    }
    
    /// 密钥错误。
    public static var invalidParameterValue_InvalidAccessKeyIds: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidAccessKeyIds)
    }
    
    /// 传入的Api业务类型必须为OAUTH。
    public static var invalidParameterValue_InvalidApiBusinessType: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidApiBusinessType)
    }
    
    /// API Id错误。
    public static var invalidParameterValue_InvalidApiIds: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidApiIds)
    }
    
    /// 无效的API配置。
    public static var invalidParameterValue_InvalidApiRequestConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidApiRequestConfig)
    }
    
    /// API类型错误，微服务API只支持TSF后端服务类型。
    public static var invalidParameterValue_InvalidApiType: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidApiType)
    }
    
    /// 后端服务路径配置错误。
    public static var invalidParameterValue_InvalidBackendPath: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidBackendPath)
    }
    
    /// 不合法的clb。
    public static var invalidParameterValue_InvalidClb: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidClb)
    }
    
    /// 策略错误。
    public static var invalidParameterValue_InvalidCondition: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidCondition)
    }
    
    /// 不合法的常量参数。
    public static var invalidParameterValue_InvalidConstantParameters: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidConstantParameters)
    }
    
    /// 参数Env取值错误，取值范围为（release, prepub, test）。
    public static var invalidParameterValue_InvalidEnv: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidEnv)
    }
    
    /// 服务当前环境状态，不支持此操作。
    public static var invalidParameterValue_InvalidEnvStatus: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidEnvStatus)
    }
    
    /// 参数取值错误。
    ///
    /// 修改参数取值内容为可选范围内的取值。
    public static var invalidParameterValue_InvalidFilterNotSupportedName: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidFilterNotSupportedName)
    }
    
    /// 参数GenLanguage取值错误。
    public static var invalidParameterValue_InvalidGenLanguage: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidGenLanguage)
    }
    
    /// 参数后端地址取值错误。
    ///
    /// 请修改后端地址的取值再重试。
    public static var invalidParameterValue_InvalidIPAddress: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidIPAddress)
    }
    
    /// 参数请求配额总数取值错误。
    ///
    /// 请修改请求配额总数的取值再重试。
    public static var invalidParameterValue_InvalidMaxRequestNum: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidMaxRequestNum)
    }
    
    /// 方法错误。仅支持 ANY, BEGIN, GET, POST, DELETE, HEAD, PUT, OPTIONS, TRACE, PATCH，请修改后重新操作。
    public static var invalidParameterValue_InvalidMethod: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidMethod)
    }
    
    /// 插件定义参数取值错误，请修改后重新操作。
    public static var invalidParameterValue_InvalidPluginConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidPluginConfig)
    }
    
    /// 后端服务端口错误。
    public static var invalidParameterValue_InvalidPort: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidPort)
    }
    
    /// 无效的协议类型参数。
    public static var invalidParameterValue_InvalidProcotol: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidProcotol)
    }
    
    /// OAUTH2.0 API 公钥参数格式错误。
    public static var invalidParameterValue_InvalidPublicKey: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidPublicKey)
    }
    
    /// 地域错误。
    public static var invalidParameterValue_InvalidRegion: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidRegion)
    }
    
    /// 不合法的请求参数。
    public static var invalidParameterValue_InvalidRequestParameters: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidRequestParameters)
    }
    
    /// SCF类型API参数错误。
    public static var invalidParameterValue_InvalidScfConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidScfConfig)
    }
    
    /// 不合法的服务配置。
    public static var invalidParameterValue_InvalidServiceConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidServiceConfig)
    }
    
    /// 参数ServiceMockReturnMessage错误。
    public static var invalidParameterValue_InvalidServiceMockReturnMessage: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidServiceMockReturnMessage)
    }
    
    /// 参数配置错误，未配置在后端参数配置列表中。
    public static var invalidParameterValue_InvalidServiceParam: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidServiceParam)
    }
    
    /// 参数ServiceParameters错误。
    public static var invalidParameterValue_InvalidServiceParameters: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidServiceParameters)
    }
    
    /// 后端服务类型错误。WEBSOCKET类型的后端服务，前端协议需要配置为WEBSOCKET。
    public static var invalidParameterValue_InvalidServiceType: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidServiceType)
    }
    
    /// 标签参数错误。
    public static var invalidParameterValue_InvalidTagValues: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidTagValues)
    }
    
    /// TSF类型API配置错误。
    public static var invalidParameterValue_InvalidTsfConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidTsfConfig)
    }
    
    /// 当前后端通道不存在或者是无效状态。
    public static var invalidParameterValue_InvalidUpstream: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidUpstream)
    }
    
    /// URL参数错误。
    public static var invalidParameterValue_InvalidUrl: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidUrl)
    }
    
    /// 无效vpc信息。
    public static var invalidParameterValue_InvalidVpcConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidVpcConfig)
    }
    
    /// 方法错误。WEBSOCKET类型的后端服务，前端方法需要配置为GET。
    public static var invalidParameterValue_InvalidWSMethod: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_InvalidWSMethod)
    }
    
    /// 参数的长度超出限制。
    ///
    /// 修改参数的值，再重试。
    public static var invalidParameterValue_LengthExceeded: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_LengthExceeded)
    }
    
    /// 参数个数超出限制，上限为100。
    public static var invalidParameterValue_LimitExceeded: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 参数取值错误。当前值不在可选范围内。
    public static var invalidParameterValue_NotInOptions: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_NotInOptions)
    }
    
    /// OAuth接口无可用修改项。
    public static var invalidParameterValue_NothingModifyForOauth: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_NothingModifyForOauth)
    }
    
    /// 后端参数配置错误，未配置相关前端参数。
    public static var invalidParameterValue_ParameterNotMatch: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_ParameterNotMatch)
    }
    
    /// 参数个数超过限制。
    public static var invalidParameterValue_ParameterValueLimitExceeded: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_ParameterValueLimitExceeded)
    }
    
    /// 参数取值错误，不在参数范围内。
    public static var invalidParameterValue_RangeExceeded: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_RangeExceeded)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue_UnsupportedParameter: TCApigatewayError {
        TCApigatewayError(.invalidParameterValue_UnsupportedParameter)
    }
    
    /// 基础版服务不能绑定插件。
    public static var invalidParameter_BasicServiceNotAllowAttachPlugin: TCApigatewayError {
        TCApigatewayError(.invalidParameter_BasicServiceNotAllowAttachPlugin)
    }
    
    /// 当前绑定插件和已有插件冲突。
    public static var invalidParameter_DuplicatePluginConfig: TCApigatewayError {
        TCApigatewayError(.invalidParameter_DuplicatePluginConfig)
    }
    
    /// 参数格式错误。
    public static var invalidParameter_FormatError: TCApigatewayError {
        TCApigatewayError(.invalidParameter_FormatError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded)
    }
    
    /// API文档数量超出限制。
    public static var limitExceeded_APIDocLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_APIDocLimitExceeded)
    }
    
    /// 访问密钥数量超出限制。
    public static var limitExceeded_AccessKeyCountInUsagePlanLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_AccessKeyCountInUsagePlanLimitExceeded)
    }
    
    /// 服务绑定的应用数量超过限制。
    public static var limitExceeded_ApiAppCountLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ApiAppCountLimitExceeded)
    }
    
    /// API数量超过限制。
    public static var limitExceeded_ApiCountLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ApiCountLimitExceeded)
    }
    
    /// 密钥数量超出限制。
    public static var limitExceeded_ApiKeyCountLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ApiKeyCountLimitExceeded)
    }
    
    /// 自定义路径映射，最多三组。
    public static var limitExceeded_ExceededDefineMappingLimit: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ExceededDefineMappingLimit)
    }
    
    /// 绑定域名数量超出限制，默认最多5个。
    public static var limitExceeded_ExceededDomainLimit: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ExceededDomainLimit)
    }
    
    /// IP策略数量超出限制。
    public static var limitExceeded_IpStrategyLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_IpStrategyLimitExceeded)
    }
    
    /// 请求频率超限制，请稍等再试。
    public static var limitExceeded_RequestLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_RequestLimitExceeded)
    }
    
    /// 插件绑定的服务数量超出限制，请解绑服务或提升限额后重试。
    public static var limitExceeded_ServiceCountForPluginLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ServiceCountForPluginLimitExceeded)
    }
    
    /// 服务数量超过限制，请删除服务或提升限额后重试。
    public static var limitExceeded_ServiceCountLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_ServiceCountLimitExceeded)
    }
    
    /// 使用计划数量超出限制。
    public static var limitExceeded_UsagePlanLimitExceeded: TCApigatewayError {
        TCApigatewayError(.limitExceeded_UsagePlanLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCApigatewayError {
        TCApigatewayError(.missingParameter)
    }
    
    /// 缺少后端服务参数。
    public static var missingParameter_BackendSpecificParam: TCApigatewayError {
        TCApigatewayError(.missingParameter_BackendSpecificParam)
    }
    
    /// 插件缺少参数，请按规则重新操作。
    public static var missingParameter_PluginConfig: TCApigatewayError {
        TCApigatewayError(.missingParameter_PluginConfig)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCApigatewayError {
        TCApigatewayError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCApigatewayError {
        TCApigatewayError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCApigatewayError {
        TCApigatewayError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCApigatewayError {
        TCApigatewayError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCApigatewayError {
        TCApigatewayError(.resourceNotFound)
    }
    
    /// 密钥不存在。
    public static var resourceNotFound_InvalidAccessKeyId: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidAccessKeyId)
    }
    
    /// ApiId错误。
    public static var resourceNotFound_InvalidApi: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidApi)
    }
    
    /// 应用ID错误。
    public static var resourceNotFound_InvalidApiApp: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidApiApp)
    }
    
    /// API文档不存在。
    public static var resourceNotFound_InvalidApiDoc: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidApiDoc)
    }
    
    /// IP策略不存在。
    public static var resourceNotFound_InvalidIPStrategy: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidIPStrategy)
    }
    
    /// OAuth业务API错误。
    public static var resourceNotFound_InvalidOauthApi: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidOauthApi)
    }
    
    /// 插件不存在。
    public static var resourceNotFound_InvalidPlugin: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidPlugin)
    }
    
    /// 对应服务不可见。
    public static var resourceNotFound_InvalidService: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidService)
    }
    
    /// 使用计划不存在。
    public static var resourceNotFound_InvalidUsagePlan: TCApigatewayError {
        TCApigatewayError(.resourceNotFound_InvalidUsagePlan)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCApigatewayError {
        TCApigatewayError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCApigatewayError {
        TCApigatewayError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCApigatewayError {
        TCApigatewayError(.unauthorizedOperation)
    }
    
    /// 您没有权限访问资源。
    public static var unauthorizedOperation_AccessResource: TCApigatewayError {
        TCApigatewayError(.unauthorizedOperation_AccessResource)
    }
    
    /// 用户未实名制。
    public static var unauthorizedOperation_UncertifiedUser: TCApigatewayError {
        TCApigatewayError(.unauthorizedOperation_UncertifiedUser)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCApigatewayError {
        TCApigatewayError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation)
    }
    
    /// 账号余额不足
    ///
    /// 建议给账号余额冲正后重试
    public static var unsupportedOperation_AccountArrears: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_AccountArrears)
    }
    
    /// 密钥已绑定使用计划。
    public static var unsupportedOperation_AlreadyBindUsagePlan: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_AlreadyBindUsagePlan)
    }
    
    /// 当前插件不支持绑定。
    public static var unsupportedOperation_AttachPlugin: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_AttachPlugin)
    }
    
    /// 基础版服务不能创建超过一个API。
    public static var unsupportedOperation_BasicServiceNoMoreApi: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_BasicServiceNoMoreApi)
    }
    
    /// 日志检索起始时间间隔。
    public static var unsupportedOperation_ClsSearchTime: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ClsSearchTime)
    }
    
    /// 协议为HTTP时，不支持强制Https。
    public static var unsupportedOperation_ForceHttps: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ForceHttps)
    }
    
    /// 接口错误。
    public static var unsupportedOperation_InvalidAction: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_InvalidAction)
    }
    
    /// 不支持后端类型。
    public static var unsupportedOperation_InvalidEndpointType: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_InvalidEndpointType)
    }
    
    /// 当前实例状态，不支持当前操作。
    public static var unsupportedOperation_InvalidInstanceState: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_InvalidInstanceState)
    }
    
    /// 当前服务处于隔离中，暂不支持此操作。
    public static var unsupportedOperation_InvalidServiceTrade: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_InvalidServiceTrade)
    }
    
    /// 当前密钥状态不支持此操作。
    public static var unsupportedOperation_InvalidStatus: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_InvalidStatus)
    }
    
    /// 不支持修改EIAM类型授权API。
    public static var unsupportedOperation_ModifyEIAMAuthApi: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ModifyEIAMAuthApi)
    }
    
    /// 网络类型不支持修改。
    public static var unsupportedOperation_ModifyNetType: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ModifyNetType)
    }
    
    /// 前端协议类型不支持修改。
    public static var unsupportedOperation_ModifyProtocol: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ModifyProtocol)
    }
    
    /// 当前使用计划未绑定环境。
    public static var unsupportedOperation_NoUsagePlanEnv: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_NoUsagePlanEnv)
    }
    
    /// 不支持减少网络类型的操作。
    public static var unsupportedOperation_ReduceNetTypes: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ReduceNetTypes)
    }
    
    /// 资源已关联，请先解除。
    public static var unsupportedOperation_ResourceAssociated: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ResourceAssociated)
    }
    
    /// 密钥已绑定使用计划，请先解绑再试。
    public static var unsupportedOperation_ResourceIsInUse: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ResourceIsInUse)
    }
    
    /// 资源未关联。
    public static var unsupportedOperation_ResourceUnassociated: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_ResourceUnassociated)
    }
    
    /// 当前Uin未在手工密钥白名单列表内。
    public static var unsupportedOperation_UinNotInWhiteList: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UinNotInWhiteList)
    }
    
    /// 密钥已绑定使用计划。
    public static var unsupportedOperation_UnsupportedBindApiKey: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedBindApiKey)
    }
    
    /// 不支持绑定环境。
    public static var unsupportedOperation_UnsupportedBindEnvironment: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedBindEnvironment)
    }
    
    /// 当前API已绑定业务API，请先解绑再试。
    public static var unsupportedOperation_UnsupportedDeleteApi: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedDeleteApi)
    }
    
    /// 服务使用中，不能被删除。
    public static var unsupportedOperation_UnsupportedDeleteService: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedDeleteService)
    }
    
    /// 当前VPC通道存在绑定关系，不支持当前操作。
    public static var unsupportedOperation_UnsupportedDeleteUpstream: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedDeleteUpstream)
    }
    
    /// 不支持网络类型。
    public static var unsupportedOperation_UnsupportedNetType: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedNetType)
    }
    
    /// 不支持解绑环境，存在未绑定使用计划的API。
    public static var unsupportedOperation_UnsupportedUnBindEnvironment: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedUnBindEnvironment)
    }
    
    /// 当前密钥状态不支持此操作。
    public static var unsupportedOperation_UnsupportedUpdateApiKey: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UnsupportedUpdateApiKey)
    }
    
    /// 当前使用计划在使用中，请先解绑再试。
    public static var unsupportedOperation_UsagePlanInUse: TCApigatewayError {
        TCApigatewayError(.unsupportedOperation_UsagePlanInUse)
    }
}

extension TCApigatewayError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCApigatewayError: Equatable {
    public static func == (lhs: TCApigatewayError, rhs: TCApigatewayError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCApigatewayError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCApigatewayError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
