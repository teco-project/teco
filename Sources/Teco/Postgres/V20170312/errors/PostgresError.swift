public struct TCPostgresError: TCErrorType {
    enum Code: String {
        case accountNotExist = "AccountNotExist"
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dbError = "DBError"
        case failedOperation = "FailedOperation"
        case failedOperation_AllocateQuotasError = "FailedOperation.AllocateQuotasError"
        case failedOperation_BaseNetworkAccessError = "FailedOperation.BaseNetworkAccessError"
        case failedOperation_CMQResponseError = "FailedOperation.CMQResponseError"
        case failedOperation_CamAuthFailed = "FailedOperation.CamAuthFailed"
        case failedOperation_CamCheckResourceError = "FailedOperation.CamCheckResourceError"
        case failedOperation_CamCheckResourceFailed = "FailedOperation.CamCheckResourceFailed"
        case failedOperation_CamSigAndAuthError = "FailedOperation.CamSigAndAuthError"
        case failedOperation_CdbCgwConnectError = "FailedOperation.CdbCgwConnectError"
        case failedOperation_CreateBasicNetworkDeniedError = "FailedOperation.CreateBasicNetworkDeniedError"
        case failedOperation_CreateOrderFailed = "FailedOperation.CreateOrderFailed"
        case failedOperation_DatabaseAccessError = "FailedOperation.DatabaseAccessError"
        case failedOperation_DatabaseAffectedError = "FailedOperation.DatabaseAffectedError"
        case failedOperation_DeleteAllRoute = "FailedOperation.DeleteAllRoute"
        case failedOperation_DeleteResourceProjectTagError = "FailedOperation.DeleteResourceProjectTagError"
        case failedOperation_DeleteResourcesToTagError = "FailedOperation.DeleteResourcesToTagError"
        case failedOperation_ESConnectError = "FailedOperation.ESConnectError"
        case failedOperation_ESQueryError = "FailedOperation.ESQueryError"
        case failedOperation_FailedOperationError = "FailedOperation.FailedOperationError"
        case failedOperation_FlowCreateError = "FailedOperation.FlowCreateError"
        case failedOperation_GetInstanceByResourceIdError = "FailedOperation.GetInstanceByResourceIdError"
        case failedOperation_GetPurchaseRecordFailed = "FailedOperation.GetPurchaseRecordFailed"
        case failedOperation_GetSubnetError = "FailedOperation.GetSubnetError"
        case failedOperation_GetVpcInfoError = "FailedOperation.GetVpcInfoError"
        case failedOperation_IllegalROInstanceNum = "FailedOperation.IllegalROInstanceNum"
        case failedOperation_InvalidAccountStatus = "FailedOperation.InvalidAccountStatus"
        case failedOperation_InvalidTradeOperate = "FailedOperation.InvalidTradeOperate"
        case failedOperation_LimitOperation = "FailedOperation.LimitOperation"
        case failedOperation_MasterInstanceQueryError = "FailedOperation.MasterInstanceQueryError"
        case failedOperation_ModifyROGroupError = "FailedOperation.ModifyROGroupError"
        case failedOperation_NetworkNumLimitError = "FailedOperation.NetworkNumLimitError"
        case failedOperation_OperateFrequencyLimitedError = "FailedOperation.OperateFrequencyLimitedError"
        case failedOperation_OssAccessError = "FailedOperation.OssAccessError"
        case failedOperation_OssOperationFailed = "FailedOperation.OssOperationFailed"
        case failedOperation_PayOrderFailed = "FailedOperation.PayOrderFailed"
        case failedOperation_PostPaidUnblockError = "FailedOperation.PostPaidUnblockError"
        case failedOperation_PresignedURLGetError = "FailedOperation.PresignedURLGetError"
        case failedOperation_QueryDealFailed = "FailedOperation.QueryDealFailed"
        case failedOperation_QueryInstanceBatchError = "FailedOperation.QueryInstanceBatchError"
        case failedOperation_QueryPriceFailed = "FailedOperation.QueryPriceFailed"
        case failedOperation_QuerySpecBySpecCodeError = "FailedOperation.QuerySpecBySpecCodeError"
        case failedOperation_QuerySpecError = "FailedOperation.QuerySpecError"
        case failedOperation_QueryTradeStatusError = "FailedOperation.QueryTradeStatusError"
        case failedOperation_QueryVpcFailed = "FailedOperation.QueryVpcFailed"
        case failedOperation_QueryVpcFalied = "FailedOperation.QueryVpcFalied"
        case failedOperation_ROGroupCannotBeDeletedError = "FailedOperation.ROGroupCannotBeDeletedError"
        case failedOperation_ROGroupMasterInstanceNotRight = "FailedOperation.ROGroupMasterInstanceNotRight"
        case failedOperation_ROGroupNotFoundError = "FailedOperation.ROGroupNotFoundError"
        case failedOperation_ROGroupNumExceedError = "FailedOperation.ROGroupNumExceedError"
        case failedOperation_ROInstanceHasInROGroupError = "FailedOperation.ROInstanceHasInROGroupError"
        case failedOperation_ServerlessNotSupportedError = "FailedOperation.ServerlessNotSupportedError"
        case failedOperation_ServiceAccessError = "FailedOperation.ServiceAccessError"
        case failedOperation_SetAutoRenewFlagError = "FailedOperation.SetAutoRenewFlagError"
        case failedOperation_StorageMemoryCheckError = "FailedOperation.StorageMemoryCheckError"
        case failedOperation_StorePathSplitError = "FailedOperation.StorePathSplitError"
        case failedOperation_TradeAccessError = "FailedOperation.TradeAccessError"
        case failedOperation_TradeCreateError = "FailedOperation.TradeCreateError"
        case failedOperation_TradePayOrdersError = "FailedOperation.TradePayOrdersError"
        case failedOperation_TradeQueryOrderError = "FailedOperation.TradeQueryOrderError"
        case failedOperation_TradeQueryPriceError = "FailedOperation.TradeQueryPriceError"
        case failedOperation_UpdateResourceProjectTagValueError = "FailedOperation.UpdateResourceProjectTagValueError"
        case failedOperation_VPCResetServiceError = "FailedOperation.VPCResetServiceError"
        case failedOperation_VPCUpdateRouteError = "FailedOperation.VPCUpdateRouteError"
        case flowError = "FlowError"
        case instanceNotExist = "InstanceNotExist"
        case interfaceNameNotFound = "InterfaceNameNotFound"
        case internalError = "InternalError"
        case internalError_CgwError = "InternalError.CgwError"
        case internalError_CnsError = "InternalError.CnsError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_DfwError = "InternalError.DfwError"
        case internalError_FlowError = "InternalError.FlowError"
        case internalError_InstanceDataError = "InternalError.InstanceDataError"
        case internalError_InternalHttpServerError = "InternalError.InternalHttpServerError"
        case internalError_MarshalError = "InternalError.MarshalError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_TransactioBeginError = "InternalError.TransactioBeginError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case internalError_VpcError = "InternalError.VpcError"
        case invalidAccountPassword = "InvalidAccountPassword"
        case invalidAccountStatus = "InvalidAccountStatus"
        case invalidInstanceStatus = "InvalidInstanceStatus"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountExist = "InvalidParameterValue.AccountExist"
        case invalidParameterValue_AccountNotExist = "InvalidParameterValue.AccountNotExist"
        case invalidParameterValue_AccountNotExistError = "InvalidParameterValue.AccountNotExistError"
        case invalidParameterValue_BadSpec = "InvalidParameterValue.BadSpec"
        case invalidParameterValue_CharsetNotFoundError = "InvalidParameterValue.CharsetNotFoundError"
        case invalidParameterValue_DataConvertError = "InvalidParameterValue.DataConvertError"
        case invalidParameterValue_IllegalChargeType = "InvalidParameterValue.IllegalChargeType"
        case invalidParameterValue_IllegalInstanceChargeType = "InvalidParameterValue.IllegalInstanceChargeType"
        case invalidParameterValue_IllegalProjectId = "InvalidParameterValue.IllegalProjectId"
        case invalidParameterValue_IllegalRegion = "InvalidParameterValue.IllegalRegion"
        case invalidParameterValue_IllegalZone = "InvalidParameterValue.IllegalZone"
        case invalidParameterValue_InstanceNameExist = "InvalidParameterValue.InstanceNameExist"
        case invalidParameterValue_InstanceNotExist = "InvalidParameterValue.InstanceNotExist"
        case invalidParameterValue_InterfaceNameNotFound = "InvalidParameterValue.InterfaceNameNotFound"
        case invalidParameterValue_InvalidAccountError = "InvalidParameterValue.InvalidAccountError"
        case invalidParameterValue_InvalidAccountFormat = "InvalidParameterValue.InvalidAccountFormat"
        case invalidParameterValue_InvalidAccountName = "InvalidParameterValue.InvalidAccountName"
        case invalidParameterValue_InvalidCharset = "InvalidParameterValue.InvalidCharset"
        case invalidParameterValue_InvalidInstanceNum = "InvalidParameterValue.InvalidInstanceNum"
        case invalidParameterValue_InvalidInstanceVolume = "InvalidParameterValue.InvalidInstanceVolume"
        case invalidParameterValue_InvalidOrderNum = "InvalidParameterValue.InvalidOrderNum"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_InvalidPasswordFormat = "InvalidParameterValue.InvalidPasswordFormat"
        case invalidParameterValue_InvalidPasswordLengthError = "InvalidParameterValue.InvalidPasswordLengthError"
        case invalidParameterValue_InvalidPasswordValueError = "InvalidParameterValue.InvalidPasswordValueError"
        case invalidParameterValue_InvalidPid = "InvalidParameterValue.InvalidPid"
        case invalidParameterValue_InvalidReadOnlyGroupStatus = "InvalidParameterValue.InvalidReadOnlyGroupStatus"
        case invalidParameterValue_InvalidZoneIdError = "InvalidParameterValue.InvalidZoneIdError"
        case invalidParameterValue_NullDealNames = "InvalidParameterValue.NullDealNames"
        case invalidParameterValue_ParameterCharacterError = "InvalidParameterValue.ParameterCharacterError"
        case invalidParameterValue_ParameterCharacterLimitError = "InvalidParameterValue.ParameterCharacterLimitError"
        case invalidParameterValue_ParameterCharacterPreLimitError = "InvalidParameterValue.ParameterCharacterPreLimitError"
        case invalidParameterValue_ParameterHandleError = "InvalidParameterValue.ParameterHandleError"
        case invalidParameterValue_ParameterLengthLimitError = "InvalidParameterValue.ParameterLengthLimitError"
        case invalidParameterValue_ParameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
        case invalidParameterValue_ParameterValueExceedError = "InvalidParameterValue.ParameterValueExceedError"
        case invalidParameterValue_ReadOnlyGroupNotExist = "InvalidParameterValue.ReadOnlyGroupNotExist"
        case invalidParameterValue_RegionNotSupported = "InvalidParameterValue.RegionNotSupported"
        case invalidParameterValue_SpecNotRecognizedError = "InvalidParameterValue.SpecNotRecognizedError"
        case invalidParameterValue_StructParseFailed = "InvalidParameterValue.StructParseFailed"
        case invalidParameter_InstanceNameExist = "InvalidParameter.InstanceNameExist"
        case invalidParameter_ParameterCheckError = "InvalidParameter.ParameterCheckError"
        case invalidParameter_TradeAccessDeniedError = "InvalidParameter.TradeAccessDeniedError"
        case invalidParameter_VpcNotFoundError = "InvalidParameter.VpcNotFoundError"
        case invalidPid = "InvalidPid"
        case limitExceeded = "LimitExceeded"
        case limitOperation = "LimitOperation"
        case missingParameter = "MissingParameter"
        case operationDenied_CamDeniedError = "OperationDenied.CamDeniedError"
        case operationDenied_DTSInstanceStatusError = "OperationDenied.DTSInstanceStatusError"
        case operationDenied_InstanceAccessDeniedError = "OperationDenied.InstanceAccessDeniedError"
        case operationDenied_InstanceIpv6NotSupportedError = "OperationDenied.InstanceIpv6NotSupportedError"
        case operationDenied_InstanceStatusDeniedError = "OperationDenied.InstanceStatusDeniedError"
        case operationDenied_InstanceStatusLimitError = "OperationDenied.InstanceStatusLimitError"
        case operationDenied_InstanceStatusLimitOpError = "OperationDenied.InstanceStatusLimitOpError"
        case operationDenied_NotSupportZoneError = "OperationDenied.NotSupportZoneError"
        case operationDenied_PayModeError = "OperationDenied.PayModeError"
        case operationDenied_PostPaidPayModeError = "OperationDenied.PostPaidPayModeError"
        case operationDenied_ROGroupStatusError = "OperationDenied.ROGroupStatusError"
        case operationDenied_ROInstanceIpv6NotSupportedError = "OperationDenied.ROInstanceIpv6NotSupportedError"
        case operationDenied_ROInstanceStatusLimitOpError = "OperationDenied.ROInstanceStatusLimitOpError"
        case operationDenied_RoInstanceCountExeedError = "OperationDenied.RoInstanceCountExeedError"
        case operationDenied_UserNotAuthenticatedError = "OperationDenied.UserNotAuthenticatedError"
        case operationDenied_VersionNotSupportError = "OperationDenied.VersionNotSupportError"
        case operationDenied_VpcDeniedError = "OperationDenied.VpcDeniedError"
        case regionNotSupported = "RegionNotSupported"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient_ResourceNotEnough = "ResourceInsufficient.ResourceNotEnough"
        case resourceNotFound_InstanceNotFoundError = "ResourceNotFound.InstanceNotFoundError"
        case resourceUnavailable_InvalidInstanceStatus = "ResourceUnavailable.InvalidInstanceStatus"
        case resourceUnavailable_ResourceNoPermission = "ResourceUnavailable.ResourceNoPermission"
        case resourceUnavailable_VpcResourceNotFound = "ResourceUnavailable.VpcResourceNotFound"
        case structParseFailed = "StructParseFailed"
        case systemError = "SystemError"
        case unauthorizedOperation_UserHasNoRealnameAuthentication = "UnauthorizedOperation.UserHasNoRealnameAuthentication"
        case unknownError = "UnknownError"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case vpcError = "VpcError"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
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
    
    /// 当前账号不存在。
    public static var accountNotExist: TCPostgresError {
        TCPostgresError(.accountNotExist)
    }
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCPostgresError {
        TCPostgresError(.authFailure)
    }
    
    /// 鉴权失败。
    public static var authFailure_UnauthorizedOperation: TCPostgresError {
        TCPostgresError(.authFailure_UnauthorizedOperation)
    }
    
    /// 后台DB执行错误。
    public static var dbError: TCPostgresError {
        TCPostgresError(.dbError)
    }
    
    /// 操作失败。
    public static var failedOperation: TCPostgresError {
        TCPostgresError(.failedOperation)
    }
    
    public static var failedOperation_AllocateQuotasError: TCPostgresError {
        TCPostgresError(.failedOperation_AllocateQuotasError)
    }
    
    /// 访问基础网络服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_BaseNetworkAccessError: TCPostgresError {
        TCPostgresError(.failedOperation_BaseNetworkAccessError)
    }
    
    /// 访问CMQ失败。
    public static var failedOperation_CMQResponseError: TCPostgresError {
        TCPostgresError(.failedOperation_CMQResponseError)
    }
    
    /// CAM鉴权失败。
    public static var failedOperation_CamAuthFailed: TCPostgresError {
        TCPostgresError(.failedOperation_CamAuthFailed)
    }
    
    /// 获取权限失败，请稍后重试。如果持续不成功，请联系客服进行处理。。
    public static var failedOperation_CamCheckResourceError: TCPostgresError {
        TCPostgresError(.failedOperation_CamCheckResourceError)
    }
    
    /// CAM资源检查失败。
    public static var failedOperation_CamCheckResourceFailed: TCPostgresError {
        TCPostgresError(.failedOperation_CamCheckResourceFailed)
    }
    
    /// 鉴权失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CamSigAndAuthError: TCPostgresError {
        TCPostgresError(.failedOperation_CamSigAndAuthError)
    }
    
    /// 获取项目信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CdbCgwConnectError: TCPostgresError {
        TCPostgresError(.failedOperation_CdbCgwConnectError)
    }
    
    /// 不支持新增基础网络。
    public static var failedOperation_CreateBasicNetworkDeniedError: TCPostgresError {
        TCPostgresError(.failedOperation_CreateBasicNetworkDeniedError)
    }
    
    /// 创建续费订单失败。
    public static var failedOperation_CreateOrderFailed: TCPostgresError {
        TCPostgresError(.failedOperation_CreateOrderFailed)
    }
    
    /// 管控元数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_DatabaseAccessError: TCPostgresError {
        TCPostgresError(.failedOperation_DatabaseAccessError)
    }
    
    /// 数据操作失败，请联系客服进行处理。
    public static var failedOperation_DatabaseAffectedError: TCPostgresError {
        TCPostgresError(.failedOperation_DatabaseAffectedError)
    }
    
    /// VPC删除路由失败。
    public static var failedOperation_DeleteAllRoute: TCPostgresError {
        TCPostgresError(.failedOperation_DeleteAllRoute)
    }
    
    /// 资源解绑项目失败。
    public static var failedOperation_DeleteResourceProjectTagError: TCPostgresError {
        TCPostgresError(.failedOperation_DeleteResourceProjectTagError)
    }
    
    /// 资源解绑标签失败。
    public static var failedOperation_DeleteResourcesToTagError: TCPostgresError {
        TCPostgresError(.failedOperation_DeleteResourcesToTagError)
    }
    
    /// ES访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_ESConnectError: TCPostgresError {
        TCPostgresError(.failedOperation_ESConnectError)
    }
    
    /// ES查询失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_ESQueryError: TCPostgresError {
        TCPostgresError(.failedOperation_ESQueryError)
    }
    
    /// 操作失败，请稍后重试。
    public static var failedOperation_FailedOperationError: TCPostgresError {
        TCPostgresError(.failedOperation_FailedOperationError)
    }
    
    /// 创建流程失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_FlowCreateError: TCPostgresError {
        TCPostgresError(.failedOperation_FlowCreateError)
    }
    
    /// 查询实例信息失败，请稍后重试。
    public static var failedOperation_GetInstanceByResourceIdError: TCPostgresError {
        TCPostgresError(.failedOperation_GetInstanceByResourceIdError)
    }
    
    /// 获取购买记录失败。
    public static var failedOperation_GetPurchaseRecordFailed: TCPostgresError {
        TCPostgresError(.failedOperation_GetPurchaseRecordFailed)
    }
    
    /// 获取VPC子网失败。
    public static var failedOperation_GetSubnetError: TCPostgresError {
        TCPostgresError(.failedOperation_GetSubnetError)
    }
    
    /// 获取VPC信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_GetVpcInfoError: TCPostgresError {
        TCPostgresError(.failedOperation_GetVpcInfoError)
    }
    
    /// 只读实例数目非法。
    public static var failedOperation_IllegalROInstanceNum: TCPostgresError {
        TCPostgresError(.failedOperation_IllegalROInstanceNum)
    }
    
    /// 当前账号状态不正确，不允许操作。
    public static var failedOperation_InvalidAccountStatus: TCPostgresError {
        TCPostgresError(.failedOperation_InvalidAccountStatus)
    }
    
    /// 计费相关错误，不允许对当前实例进行对应的新购/续费/配置变更操作。
    public static var failedOperation_InvalidTradeOperate: TCPostgresError {
        TCPostgresError(.failedOperation_InvalidTradeOperate)
    }
    
    /// 实例被限制操作。
    public static var failedOperation_LimitOperation: TCPostgresError {
        TCPostgresError(.failedOperation_LimitOperation)
    }
    
    /// 查询主实例信息失败。
    public static var failedOperation_MasterInstanceQueryError: TCPostgresError {
        TCPostgresError(.failedOperation_MasterInstanceQueryError)
    }
    
    /// 修改只读组配置失败。
    public static var failedOperation_ModifyROGroupError: TCPostgresError {
        TCPostgresError(.failedOperation_ModifyROGroupError)
    }
    
    /// 不符合资源所拥有的的网络数量要求。
    public static var failedOperation_NetworkNumLimitError: TCPostgresError {
        TCPostgresError(.failedOperation_NetworkNumLimitError)
    }
    
    /// 操作超过频率限制，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_OperateFrequencyLimitedError: TCPostgresError {
        TCPostgresError(.failedOperation_OperateFrequencyLimitedError)
    }
    
    /// 访问管控服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_OssAccessError: TCPostgresError {
        TCPostgresError(.failedOperation_OssAccessError)
    }
    
    /// 请求后端接口失败。
    public static var failedOperation_OssOperationFailed: TCPostgresError {
        TCPostgresError(.failedOperation_OssOperationFailed)
    }
    
    /// 支付订单失败。
    public static var failedOperation_PayOrderFailed: TCPostgresError {
        TCPostgresError(.failedOperation_PayOrderFailed)
    }
    
    /// 按量计费实例账户解冻结失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_PostPaidUnblockError: TCPostgresError {
        TCPostgresError(.failedOperation_PostPaidUnblockError)
    }
    
    /// 获取预签名授权URL错误。
    public static var failedOperation_PresignedURLGetError: TCPostgresError {
        TCPostgresError(.failedOperation_PresignedURLGetError)
    }
    
    /// 查询订单信息失败。
    public static var failedOperation_QueryDealFailed: TCPostgresError {
        TCPostgresError(.failedOperation_QueryDealFailed)
    }
    
    /// 批量获取实例信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_QueryInstanceBatchError: TCPostgresError {
        TCPostgresError(.failedOperation_QueryInstanceBatchError)
    }
    
    /// 查询价格失败。
    public static var failedOperation_QueryPriceFailed: TCPostgresError {
        TCPostgresError(.failedOperation_QueryPriceFailed)
    }
    
    /// 查询规格信息失败。
    public static var failedOperation_QuerySpecBySpecCodeError: TCPostgresError {
        TCPostgresError(.failedOperation_QuerySpecBySpecCodeError)
    }
    
    /// 查询规格信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_QuerySpecError: TCPostgresError {
        TCPostgresError(.failedOperation_QuerySpecError)
    }
    
    /// 查询订单交易状态失败。
    public static var failedOperation_QueryTradeStatusError: TCPostgresError {
        TCPostgresError(.failedOperation_QueryTradeStatusError)
    }
    
    /// 查询VPC失败。
    public static var failedOperation_QueryVpcFailed: TCPostgresError {
        TCPostgresError(.failedOperation_QueryVpcFailed)
    }
    
    /// 获取VPC详情失败。
    public static var failedOperation_QueryVpcFalied: TCPostgresError {
        TCPostgresError(.failedOperation_QueryVpcFalied)
    }
    
    /// 只读组还有实例，该只读组不允许删除。
    public static var failedOperation_ROGroupCannotBeDeletedError: TCPostgresError {
        TCPostgresError(.failedOperation_ROGroupCannotBeDeletedError)
    }
    
    /// 只读组主实例信息不匹配。
    public static var failedOperation_ROGroupMasterInstanceNotRight: TCPostgresError {
        TCPostgresError(.failedOperation_ROGroupMasterInstanceNotRight)
    }
    
    /// 只读组不存在。
    public static var failedOperation_ROGroupNotFoundError: TCPostgresError {
        TCPostgresError(.failedOperation_ROGroupNotFoundError)
    }
    
    /// 只读组数量已经达到上限值。
    public static var failedOperation_ROGroupNumExceedError: TCPostgresError {
        TCPostgresError(.failedOperation_ROGroupNumExceedError)
    }
    
    /// 只读实例已在其他只读组。
    public static var failedOperation_ROInstanceHasInROGroupError: TCPostgresError {
        TCPostgresError(.failedOperation_ROInstanceHasInROGroupError)
    }
    
    /// Serverless实例不支持此操作。
    public static var failedOperation_ServerlessNotSupportedError: TCPostgresError {
        TCPostgresError(.failedOperation_ServerlessNotSupportedError)
    }
    
    /// 访问内部服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_ServiceAccessError: TCPostgresError {
        TCPostgresError(.failedOperation_ServiceAccessError)
    }
    
    /// 设置自动续费标记失败。
    public static var failedOperation_SetAutoRenewFlagError: TCPostgresError {
        TCPostgresError(.failedOperation_SetAutoRenewFlagError)
    }
    
    /// 实例升配时，存储或内存需要高于原实例规格。
    public static var failedOperation_StorageMemoryCheckError: TCPostgresError {
        TCPostgresError(.failedOperation_StorageMemoryCheckError)
    }
    
    /// 存储路径格式不正确。
    public static var failedOperation_StorePathSplitError: TCPostgresError {
        TCPostgresError(.failedOperation_StorePathSplitError)
    }
    
    /// 访问计费平台失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeAccessError: TCPostgresError {
        TCPostgresError(.failedOperation_TradeAccessError)
    }
    
    /// 请求计费平台创建订单失败。
    public static var failedOperation_TradeCreateError: TCPostgresError {
        TCPostgresError(.failedOperation_TradeCreateError)
    }
    
    /// 请求支付订单失败。
    public static var failedOperation_TradePayOrdersError: TCPostgresError {
        TCPostgresError(.failedOperation_TradePayOrdersError)
    }
    
    /// 查询订单信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeQueryOrderError: TCPostgresError {
        TCPostgresError(.failedOperation_TradeQueryOrderError)
    }
    
    /// 获取价格信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeQueryPriceError: TCPostgresError {
        TCPostgresError(.failedOperation_TradeQueryPriceError)
    }
    
    /// 资源修改标签失败。
    public static var failedOperation_UpdateResourceProjectTagValueError: TCPostgresError {
        TCPostgresError(.failedOperation_UpdateResourceProjectTagValueError)
    }
    
    /// VPC设置失败。
    public static var failedOperation_VPCResetServiceError: TCPostgresError {
        TCPostgresError(.failedOperation_VPCResetServiceError)
    }
    
    /// VPC更新路由失败。
    public static var failedOperation_VPCUpdateRouteError: TCPostgresError {
        TCPostgresError(.failedOperation_VPCUpdateRouteError)
    }
    
    /// 流程创建失败。
    public static var flowError: TCPostgresError {
        TCPostgresError(.flowError)
    }
    
    /// 当前实例不存在。
    public static var instanceNotExist: TCPostgresError {
        TCPostgresError(.instanceNotExist)
    }
    
    /// ACTION输入错误。
    public static var interfaceNameNotFound: TCPostgresError {
        TCPostgresError(.interfaceNameNotFound)
    }
    
    /// 内部错误。
    public static var internalError: TCPostgresError {
        TCPostgresError(.internalError)
    }
    
    /// CGW相关错误。
    public static var internalError_CgwError: TCPostgresError {
        TCPostgresError(.internalError_CgwError)
    }
    
    /// 基础网络相关错误。
    public static var internalError_CnsError: TCPostgresError {
        TCPostgresError(.internalError_CnsError)
    }
    
    /// 后台DB执行错误。
    public static var internalError_DBError: TCPostgresError {
        TCPostgresError(.internalError_DBError)
    }
    
    /// DFW相关错误。
    public static var internalError_DfwError: TCPostgresError {
        TCPostgresError(.internalError_DfwError)
    }
    
    /// 流程创建失败。
    public static var internalError_FlowError: TCPostgresError {
        TCPostgresError(.internalError_FlowError)
    }
    
    /// 管控系统元数据访问异常，请联系客服处理。
    public static var internalError_InstanceDataError: TCPostgresError {
        TCPostgresError(.internalError_InstanceDataError)
    }
    
    public static var internalError_InternalHttpServerError: TCPostgresError {
        TCPostgresError(.internalError_InternalHttpServerError)
    }
    
    /// 后台数据解析失败，请联系客服进行处理。
    public static var internalError_MarshalError: TCPostgresError {
        TCPostgresError(.internalError_MarshalError)
    }
    
    /// 系统错误。出现这种错误时，请联系客服支持。
    public static var internalError_SystemError: TCPostgresError {
        TCPostgresError(.internalError_SystemError)
    }
    
    public static var internalError_TransactioBeginError: TCPostgresError {
        TCPostgresError(.internalError_TransactioBeginError)
    }
    
    /// 其他未知错误。出现这种错误时，请联系客服支持。
    public static var internalError_UnknownError: TCPostgresError {
        TCPostgresError(.internalError_UnknownError)
    }
    
    /// VPC相关错误。
    public static var internalError_VpcError: TCPostgresError {
        TCPostgresError(.internalError_VpcError)
    }
    
    /// 账号密码不正确。
    public static var invalidAccountPassword: TCPostgresError {
        TCPostgresError(.invalidAccountPassword)
    }
    
    /// 当前账号状态不正确，不允许操作。
    public static var invalidAccountStatus: TCPostgresError {
        TCPostgresError(.invalidAccountStatus)
    }
    
    /// 实例状态错误。
    public static var invalidInstanceStatus: TCPostgresError {
        TCPostgresError(.invalidInstanceStatus)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCPostgresError {
        TCPostgresError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCPostgresError {
        TCPostgresError(.invalidParameterValue)
    }
    
    /// 当前账号已存在。
    public static var invalidParameterValue_AccountExist: TCPostgresError {
        TCPostgresError(.invalidParameterValue_AccountExist)
    }
    
    /// 当前账号不存在。
    public static var invalidParameterValue_AccountNotExist: TCPostgresError {
        TCPostgresError(.invalidParameterValue_AccountNotExist)
    }
    
    /// 账号不存在。
    public static var invalidParameterValue_AccountNotExistError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_AccountNotExistError)
    }
    
    /// 当前实例所要扩容的规格目前不售卖。
    public static var invalidParameterValue_BadSpec: TCPostgresError {
        TCPostgresError(.invalidParameterValue_BadSpec)
    }
    
    /// 数据库字符集错误。
    public static var invalidParameterValue_CharsetNotFoundError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_CharsetNotFoundError)
    }
    
    /// 数据格式转换失败，请联系客服处理。
    public static var invalidParameterValue_DataConvertError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_DataConvertError)
    }
    
    /// 不支持的计费类型。
    public static var invalidParameterValue_IllegalChargeType: TCPostgresError {
        TCPostgresError(.invalidParameterValue_IllegalChargeType)
    }
    
    /// 计费模式错误。
    public static var invalidParameterValue_IllegalInstanceChargeType: TCPostgresError {
        TCPostgresError(.invalidParameterValue_IllegalInstanceChargeType)
    }
    
    /// 非法ProjectId。
    public static var invalidParameterValue_IllegalProjectId: TCPostgresError {
        TCPostgresError(.invalidParameterValue_IllegalProjectId)
    }
    
    /// 非法的Region参数。
    public static var invalidParameterValue_IllegalRegion: TCPostgresError {
        TCPostgresError(.invalidParameterValue_IllegalRegion)
    }
    
    /// 非法的Zone参数。
    public static var invalidParameterValue_IllegalZone: TCPostgresError {
        TCPostgresError(.invalidParameterValue_IllegalZone)
    }
    
    /// 当前账号已存在。
    public static var invalidParameterValue_InstanceNameExist: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InstanceNameExist)
    }
    
    /// 当前实例不存在。
    public static var invalidParameterValue_InstanceNotExist: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InstanceNotExist)
    }
    
    /// ACTION输入错误。
    public static var invalidParameterValue_InterfaceNameNotFound: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InterfaceNameNotFound)
    }
    
    /// 账号设置无效，请遵循账号命名规则：账号名需要1-16个字符，只能由字母、数字或下划线组成；不能为postgres；不能由数字和pg_开头；所有规则均不区分大小写。
    public static var invalidParameterValue_InvalidAccountError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidAccountError)
    }
    
    /// 账号格式不正确。
    public static var invalidParameterValue_InvalidAccountFormat: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidAccountFormat)
    }
    
    /// 当前账号名称不允许是保留字符。
    public static var invalidParameterValue_InvalidAccountName: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidAccountName)
    }
    
    /// 数据库字符集错误，当前只支持UTF8、LATIN1。
    public static var invalidParameterValue_InvalidCharset: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidCharset)
    }
    
    /// 购买实例数超过限制。
    public static var invalidParameterValue_InvalidInstanceNum: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidInstanceNum)
    }
    
    /// 扩容后的实例规格不能小于当前实例规格。
    public static var invalidParameterValue_InvalidInstanceVolume: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidInstanceVolume)
    }
    
    /// 计费相关错误，订单类型ID无效。
    public static var invalidParameterValue_InvalidOrderNum: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidOrderNum)
    }
    
    /// 参数值有误。
    public static var invalidParameterValue_InvalidParameterValueError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 密码格式不正确。
    public static var invalidParameterValue_InvalidPasswordFormat: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidPasswordFormat)
    }
    
    /// 密码设置无效，长度不满足规则。
    public static var invalidParameterValue_InvalidPasswordLengthError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidPasswordLengthError)
    }
    
    /// 密码设置无效，不能以“/”开头，必须包含大写字母、小写字母、符号()`~!@#$%^&amp;*-+=_|{}[]:;'&lt;&gt;,.?/和数字。
    public static var invalidParameterValue_InvalidPasswordValueError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidPasswordValueError)
    }
    
    /// PID参数输入错误。
    public static var invalidParameterValue_InvalidPid: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidPid)
    }
    
    /// 只读实例组状态错误。
    public static var invalidParameterValue_InvalidReadOnlyGroupStatus: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidReadOnlyGroupStatus)
    }
    
    /// 无效的可用区。
    public static var invalidParameterValue_InvalidZoneIdError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_InvalidZoneIdError)
    }
    
    /// 输入订单名为空。
    public static var invalidParameterValue_NullDealNames: TCPostgresError {
        TCPostgresError(.invalidParameterValue_NullDealNames)
    }
    
    /// 参数无效，只允许英文字母、数字、下划线、中划线，以及全体汉字。
    public static var invalidParameterValue_ParameterCharacterError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterCharacterError)
    }
    
    /// 参数不满足规则，请修改后重试。
    public static var invalidParameterValue_ParameterCharacterLimitError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterCharacterLimitError)
    }
    
    /// 参数前缀设置不符合规则要求，请修改后重试。
    public static var invalidParameterValue_ParameterCharacterPreLimitError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterCharacterPreLimitError)
    }
    
    /// 参数处理失败，请检参数值设置是否有效。
    public static var invalidParameterValue_ParameterHandleError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterHandleError)
    }
    
    /// 参数长度超过限制。
    public static var invalidParameterValue_ParameterLengthLimitError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterLengthLimitError)
    }
    
    /// 存在无效的参数值。
    public static var invalidParameterValue_ParameterOutRangeError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterOutRangeError)
    }
    
    /// 参数值超过上限。
    public static var invalidParameterValue_ParameterValueExceedError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ParameterValueExceedError)
    }
    
    /// 只读实例组不存在。
    public static var invalidParameterValue_ReadOnlyGroupNotExist: TCPostgresError {
        TCPostgresError(.invalidParameterValue_ReadOnlyGroupNotExist)
    }
    
    /// 不支持当前地域。
    public static var invalidParameterValue_RegionNotSupported: TCPostgresError {
        TCPostgresError(.invalidParameterValue_RegionNotSupported)
    }
    
    /// 规格信息{{1}}无法被识别。
    public static var invalidParameterValue_SpecNotRecognizedError: TCPostgresError {
        TCPostgresError(.invalidParameterValue_SpecNotRecognizedError)
    }
    
    /// 解析参数出错。
    public static var invalidParameterValue_StructParseFailed: TCPostgresError {
        TCPostgresError(.invalidParameterValue_StructParseFailed)
    }
    
    /// 实例名已存在。
    public static var invalidParameter_InstanceNameExist: TCPostgresError {
        TCPostgresError(.invalidParameter_InstanceNameExist)
    }
    
    /// 参数检查失败。
    public static var invalidParameter_ParameterCheckError: TCPostgresError {
        TCPostgresError(.invalidParameter_ParameterCheckError)
    }
    
    /// pid错误。
    public static var invalidParameter_TradeAccessDeniedError: TCPostgresError {
        TCPostgresError(.invalidParameter_TradeAccessDeniedError)
    }
    
    /// 未获取到VPC信息。
    public static var invalidParameter_VpcNotFoundError: TCPostgresError {
        TCPostgresError(.invalidParameter_VpcNotFoundError)
    }
    
    /// PID参数输入错误。
    public static var invalidPid: TCPostgresError {
        TCPostgresError(.invalidPid)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCPostgresError {
        TCPostgresError(.limitExceeded)
    }
    
    /// 实例被限制操作。
    public static var limitOperation: TCPostgresError {
        TCPostgresError(.limitOperation)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCPostgresError {
        TCPostgresError(.missingParameter)
    }
    
    /// 当前操作被限制。
    public static var operationDenied_CamDeniedError: TCPostgresError {
        TCPostgresError(.operationDenied_CamDeniedError)
    }
    
    /// 目标实例状态检查不通过。
    public static var operationDenied_DTSInstanceStatusError: TCPostgresError {
        TCPostgresError(.operationDenied_DTSInstanceStatusError)
    }
    
    /// 您没有权限操作当前资源。
    public static var operationDenied_InstanceAccessDeniedError: TCPostgresError {
        TCPostgresError(.operationDenied_InstanceAccessDeniedError)
    }
    
    /// 不支持ipv6。
    public static var operationDenied_InstanceIpv6NotSupportedError: TCPostgresError {
        TCPostgresError(.operationDenied_InstanceIpv6NotSupportedError)
    }
    
    /// 实例状态限制当前操作。
    public static var operationDenied_InstanceStatusDeniedError: TCPostgresError {
        TCPostgresError(.operationDenied_InstanceStatusDeniedError)
    }
    
    /// 实例当前状态限制本次操作。
    public static var operationDenied_InstanceStatusLimitError: TCPostgresError {
        TCPostgresError(.operationDenied_InstanceStatusLimitError)
    }
    
    /// 实例状态限制当前操作。
    public static var operationDenied_InstanceStatusLimitOpError: TCPostgresError {
        TCPostgresError(.operationDenied_InstanceStatusLimitOpError)
    }
    
    /// Serverless不支持当前可用区。
    public static var operationDenied_NotSupportZoneError: TCPostgresError {
        TCPostgresError(.operationDenied_NotSupportZoneError)
    }
    
    /// 不支持的付费类型。
    public static var operationDenied_PayModeError: TCPostgresError {
        TCPostgresError(.operationDenied_PayModeError)
    }
    
    /// 按量付费实例不支持续费。
    public static var operationDenied_PostPaidPayModeError: TCPostgresError {
        TCPostgresError(.operationDenied_PostPaidPayModeError)
    }
    
    /// 只读组状态限制当前操作。
    public static var operationDenied_ROGroupStatusError: TCPostgresError {
        TCPostgresError(.operationDenied_ROGroupStatusError)
    }
    
    /// 只读实例不支持ipv6。
    public static var operationDenied_ROInstanceIpv6NotSupportedError: TCPostgresError {
        TCPostgresError(.operationDenied_ROInstanceIpv6NotSupportedError)
    }
    
    public static var operationDenied_ROInstanceStatusLimitOpError: TCPostgresError {
        TCPostgresError(.operationDenied_ROInstanceStatusLimitOpError)
    }
    
    /// 只读节点总数不能超过上限值。
    public static var operationDenied_RoInstanceCountExeedError: TCPostgresError {
        TCPostgresError(.operationDenied_RoInstanceCountExeedError)
    }
    
    /// 用户未进行实名认证，请先进行实名认证才可购买。
    public static var operationDenied_UserNotAuthenticatedError: TCPostgresError {
        TCPostgresError(.operationDenied_UserNotAuthenticatedError)
    }
    
    /// Serverless不支持该版本。
    public static var operationDenied_VersionNotSupportError: TCPostgresError {
        TCPostgresError(.operationDenied_VersionNotSupportError)
    }
    
    /// 您没有权限操作该VPC网络。
    public static var operationDenied_VpcDeniedError: TCPostgresError {
        TCPostgresError(.operationDenied_VpcDeniedError)
    }
    
    /// 不支持当前地域。
    public static var regionNotSupported: TCPostgresError {
        TCPostgresError(.regionNotSupported)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCPostgresError {
        TCPostgresError(.requestLimitExceeded)
    }
    
    /// 当前地域购买此规格的实例没有足够的资源。
    public static var resourceInsufficient_ResourceNotEnough: TCPostgresError {
        TCPostgresError(.resourceInsufficient_ResourceNotEnough)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFoundError: TCPostgresError {
        TCPostgresError(.resourceNotFound_InstanceNotFoundError)
    }
    
    /// 实例状态错误。
    public static var resourceUnavailable_InvalidInstanceStatus: TCPostgresError {
        TCPostgresError(.resourceUnavailable_InvalidInstanceStatus)
    }
    
    /// 没有该VPC网络权限。
    public static var resourceUnavailable_ResourceNoPermission: TCPostgresError {
        TCPostgresError(.resourceUnavailable_ResourceNoPermission)
    }
    
    /// 没有找到实例所属VPC信息。
    public static var resourceUnavailable_VpcResourceNotFound: TCPostgresError {
        TCPostgresError(.resourceUnavailable_VpcResourceNotFound)
    }
    
    /// 解析参数出错。
    public static var structParseFailed: TCPostgresError {
        TCPostgresError(.structParseFailed)
    }
    
    /// 系统错误。出现这种错误时，请联系客服支持。
    public static var systemError: TCPostgresError {
        TCPostgresError(.systemError)
    }
    
    /// 用户未进行实名认证。
    public static var unauthorizedOperation_UserHasNoRealnameAuthentication: TCPostgresError {
        TCPostgresError(.unauthorizedOperation_UserHasNoRealnameAuthentication)
    }
    
    /// 其他未知错误。出现这种错误时，请联系客服支持。
    public static var unknownError: TCPostgresError {
        TCPostgresError(.unknownError)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCPostgresError {
        TCPostgresError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCPostgresError {
        TCPostgresError(.unsupportedOperation)
    }
    
    /// VPC相关错误。
    public static var vpcError: TCPostgresError {
        TCPostgresError(.vpcError)
    }
}

extension TCPostgresError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, OperationDenied.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCPostgresError: Equatable {
    public static func == (lhs: TCPostgresError, rhs: TCPostgresError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPostgresError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}