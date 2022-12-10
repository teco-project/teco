public struct TCCynosdbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation_BatchGetInstanceError = "FailedOperation.BatchGetInstanceError"
        case failedOperation_CamCheckResourceError = "FailedOperation.CamCheckResourceError"
        case failedOperation_CamSigAndAuthError = "FailedOperation.CamSigAndAuthError"
        case failedOperation_CreateOrder = "FailedOperation.CreateOrder"
        case failedOperation_DatabaseAccessError = "FailedOperation.DatabaseAccessError"
        case failedOperation_FlowCreateError = "FailedOperation.FlowCreateError"
        case failedOperation_FlowNotFoundError = "FailedOperation.FlowNotFoundError"
        case failedOperation_GetBackupStrategyError = "FailedOperation.GetBackupStrategyError"
        case failedOperation_InsufficientBalance = "FailedOperation.InsufficientBalance"
        case failedOperation_OperationFailedError = "FailedOperation.OperationFailedError"
        case failedOperation_QuerySpecBySpecCodeError = "FailedOperation.QuerySpecBySpecCodeError"
        case failedOperation_TradeCreateOrderError = "FailedOperation.TradeCreateOrderError"
        case internalError = "InternalError"
        case internalError_DbOperationFailed = "InternalError.DbOperationFailed"
        case internalError_GetSecurityGroupDetailFailed = "InternalError.GetSecurityGroupDetailFailed"
        case internalError_GetSubnetFailed = "InternalError.GetSubnetFailed"
        case internalError_GetVpcFailed = "InternalError.GetVpcFailed"
        case internalError_InternalHttpServerError = "InternalError.InternalHttpServerError"
        case internalError_ListInstanceFailed = "InternalError.ListInstanceFailed"
        case internalError_OperateWanFail = "InternalError.OperateWanFail"
        case internalError_OperationNotSupport = "InternalError.OperationNotSupport"
        case internalError_QueryDatabaseFailed = "InternalError.QueryDatabaseFailed"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountAlreadyExistError = "InvalidParameterValue.AccountAlreadyExistError"
        case invalidParameterValue_AccountExist = "InvalidParameterValue.AccountExist"
        case invalidParameterValue_AccountNotExistError = "InvalidParameterValue.AccountNotExistError"
        case invalidParameterValue_ClusterNotFound = "InvalidParameterValue.ClusterNotFound"
        case invalidParameterValue_DBTypeNotFound = "InvalidParameterValue.DBTypeNotFound"
        case invalidParameterValue_DbModeNotServerlessError = "InvalidParameterValue.DbModeNotServerlessError"
        case invalidParameterValue_DealNameNotFound = "InvalidParameterValue.DealNameNotFound"
        case invalidParameterValue_FlowNotFound = "InvalidParameterValue.FlowNotFound"
        case invalidParameterValue_IllegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
        case invalidParameterValue_IllegalOrderBy = "InvalidParameterValue.IllegalOrderBy"
        case invalidParameterValue_IllegalPassword = "InvalidParameterValue.IllegalPassword"
        case invalidParameterValue_InstanceNotFound = "InvalidParameterValue.InstanceNotFound"
        case invalidParameterValue_InternalAccount = "InvalidParameterValue.InternalAccount"
        case invalidParameterValue_InvalidDBVersion = "InvalidParameterValue.InvalidDBVersion"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_InvalidRegionIdError = "InvalidParameterValue.InvalidRegionIdError"
        case invalidParameterValue_InvalidSpec = "InvalidParameterValue.InvalidSpec"
        case invalidParameterValue_InvalidZoneIdError = "InvalidParameterValue.InvalidZoneIdError"
        case invalidParameterValue_ParamBothSetError = "InvalidParameterValue.ParamBothSetError"
        case invalidParameterValue_ParamError = "InvalidParameterValue.ParamError"
        case invalidParameterValue_ParameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
        case invalidParameterValue_PrePayPayModeError = "InvalidParameterValue.PrePayPayModeError"
        case invalidParameterValue_RegionZoneUnavailable = "InvalidParameterValue.RegionZoneUnavailable"
        case invalidParameterValue_StoragePoolNotFound = "InvalidParameterValue.StoragePoolNotFound"
        case invalidParameterValue_SubnetNotFound = "InvalidParameterValue.SubnetNotFound"
        case invalidParameterValue_VpcNotFound = "InvalidParameterValue.VpcNotFound"
        case invalidParameter_ControllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
        case invalidParameter_InvalidParameterError = "InvalidParameter.InvalidParameterError"
        case invalidParameter_IsolateNotAllowed = "InvalidParameter.IsolateNotAllowed"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_UserInstanceLimit = "LimitExceeded.UserInstanceLimit"
        case missingParameter = "MissingParameter"
        case operationDenied_ClusterOpNotAllowedError = "OperationDenied.ClusterOpNotAllowedError"
        case operationDenied_ClusterStatusDeniedError = "OperationDenied.ClusterStatusDeniedError"
        case operationDenied_InstanceStatusDeniedError = "OperationDenied.InstanceStatusDeniedError"
        case operationDenied_InsufficientBalanceError = "OperationDenied.InsufficientBalanceError"
        case operationDenied_ServerlessClusterStatusDenied = "OperationDenied.ServerlessClusterStatusDenied"
        case operationDenied_ServerlessInstanceStatusDenied = "OperationDenied.ServerlessInstanceStatusDenied"
        case operationDenied_TaskConflictError = "OperationDenied.TaskConflictError"
        case operationDenied_UserNotAuthenticatedError = "OperationDenied.UserNotAuthenticatedError"
        case operationDenied_VersionNotSupportError = "OperationDenied.VersionNotSupportError"
        case resourceNotFound_ClusterNotFoundError = "ResourceNotFound.ClusterNotFoundError"
        case resourceNotFound_InstanceNotFoundError = "ResourceNotFound.InstanceNotFoundError"
        case resourceNotFound_ResourceError = "ResourceNotFound.ResourceError"
        case resourceUnavailable_InstanceLockFail = "ResourceUnavailable.InstanceLockFail"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case unauthorizedOperation_NotRealNameAccount = "UnauthorizedOperation.NotRealNameAccount"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
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
    public static var authFailure: TCCynosdbError {
        TCCynosdbError(.authFailure)
    }
    
    /// 批量查询失败。
    public static var failedOperation_BatchGetInstanceError: TCCynosdbError {
        TCCynosdbError(.failedOperation_BatchGetInstanceError)
    }
    
    /// 获取权限失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CamCheckResourceError: TCCynosdbError {
        TCCynosdbError(.failedOperation_CamCheckResourceError)
    }
    
    /// 鉴权失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CamSigAndAuthError: TCCynosdbError {
        TCCynosdbError(.failedOperation_CamSigAndAuthError)
    }
    
    /// 创建并支付订单失败。
    public static var failedOperation_CreateOrder: TCCynosdbError {
        TCCynosdbError(.failedOperation_CreateOrder)
    }
    
    /// 数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_DatabaseAccessError: TCCynosdbError {
        TCCynosdbError(.failedOperation_DatabaseAccessError)
    }
    
    /// 创建流程失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_FlowCreateError: TCCynosdbError {
        TCCynosdbError(.failedOperation_FlowCreateError)
    }
    
    /// Flow不存在。
    public static var failedOperation_FlowNotFoundError: TCCynosdbError {
        TCCynosdbError(.failedOperation_FlowNotFoundError)
    }
    
    /// 获取备份策略失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_GetBackupStrategyError: TCCynosdbError {
        TCCynosdbError(.failedOperation_GetBackupStrategyError)
    }
    
    /// 账号余额不足。
    public static var failedOperation_InsufficientBalance: TCCynosdbError {
        TCCynosdbError(.failedOperation_InsufficientBalance)
    }
    
    /// 操作失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_OperationFailedError: TCCynosdbError {
        TCCynosdbError(.failedOperation_OperationFailedError)
    }
    
    /// 规格信息查询失败。
    public static var failedOperation_QuerySpecBySpecCodeError: TCCynosdbError {
        TCCynosdbError(.failedOperation_QuerySpecBySpecCodeError)
    }
    
    /// 创建并支付订单失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeCreateOrderError: TCCynosdbError {
        TCCynosdbError(.failedOperation_TradeCreateOrderError)
    }
    
    /// 内部错误。
    public static var internalError: TCCynosdbError {
        TCCynosdbError(.internalError)
    }
    
    /// 查询数据库失败。
    public static var internalError_DbOperationFailed: TCCynosdbError {
        TCCynosdbError(.internalError_DbOperationFailed)
    }
    
    /// 获取安全组信息失败。
    public static var internalError_GetSecurityGroupDetailFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetSecurityGroupDetailFailed)
    }
    
    /// 获取子网失败。
    public static var internalError_GetSubnetFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetSubnetFailed)
    }
    
    /// 获取VPC失败。
    public static var internalError_GetVpcFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetVpcFailed)
    }
    
    /// http请求执行异常。
    public static var internalError_InternalHttpServerError: TCCynosdbError {
        TCCynosdbError(.internalError_InternalHttpServerError)
    }
    
    /// 安全组查询实例失败。
    public static var internalError_ListInstanceFailed: TCCynosdbError {
        TCCynosdbError(.internalError_ListInstanceFailed)
    }
    
    /// 操作外网失败。
    public static var internalError_OperateWanFail: TCCynosdbError {
        TCCynosdbError(.internalError_OperateWanFail)
    }
    
    /// 操作不支持。
    public static var internalError_OperationNotSupport: TCCynosdbError {
        TCCynosdbError(.internalError_OperationNotSupport)
    }
    
    /// 查询数据库失败。
    public static var internalError_QueryDatabaseFailed: TCCynosdbError {
        TCCynosdbError(.internalError_QueryDatabaseFailed)
    }
    
    /// 系统内部错误。
    public static var internalError_SystemError: TCCynosdbError {
        TCCynosdbError(.internalError_SystemError)
    }
    
    /// 未知的内部错误。
    public static var internalError_UnknownError: TCCynosdbError {
        TCCynosdbError(.internalError_UnknownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCynosdbError {
        TCCynosdbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue)
    }
    
    /// 账号已存在。
    public static var invalidParameterValue_AccountAlreadyExistError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountAlreadyExistError)
    }
    
    /// 账号已存在。
    public static var invalidParameterValue_AccountExist: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountExist)
    }
    
    /// 实例不存在账号。
    public static var invalidParameterValue_AccountNotExistError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountNotExistError)
    }
    
    /// 未查询到集群。
    public static var invalidParameterValue_ClusterNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ClusterNotFound)
    }
    
    /// 不支持的实例类型。
    public static var invalidParameterValue_DBTypeNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DBTypeNotFound)
    }
    
    /// 集群类型必须为serverless。
    public static var invalidParameterValue_DbModeNotServerlessError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DbModeNotServerlessError)
    }
    
    /// 未查询到订单id。
    public static var invalidParameterValue_DealNameNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DealNameNotFound)
    }
    
    /// 任务流ID不存在。
    public static var invalidParameterValue_FlowNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_FlowNotFound)
    }
    
    /// 实例名称字符非法。
    public static var invalidParameterValue_IllegalInstanceName: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalInstanceName)
    }
    
    /// 无效的排序字段。
    public static var invalidParameterValue_IllegalOrderBy: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalOrderBy)
    }
    
    /// 密码不符合要求。
    public static var invalidParameterValue_IllegalPassword: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalPassword)
    }
    
    /// 实例不存在。
    public static var invalidParameterValue_InstanceNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InstanceNotFound)
    }
    
    /// 内置账号不允许操作。
    public static var invalidParameterValue_InternalAccount: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InternalAccount)
    }
    
    /// 实例版本非法。
    public static var invalidParameterValue_InvalidDBVersion: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidDBVersion)
    }
    
    /// 参数值无效。
    public static var invalidParameterValue_InvalidParameterValueError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 无效的地域。
    public static var invalidParameterValue_InvalidRegionIdError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidRegionIdError)
    }
    
    /// 实例规格非法。
    public static var invalidParameterValue_InvalidSpec: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidSpec)
    }
    
    /// 无效的可用区。
    public static var invalidParameterValue_InvalidZoneIdError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidZoneIdError)
    }
    
    /// 该两个参数不可以同时设定。
    public static var invalidParameterValue_ParamBothSetError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParamBothSetError)
    }
    
    /// 参数错误。
    public static var invalidParameterValue_ParamError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParamError)
    }
    
    /// 参数值无效，超过允许范围。
    public static var invalidParameterValue_ParameterOutRangeError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParameterOutRangeError)
    }
    
    /// 预付费类型不允许该操作。
    public static var invalidParameterValue_PrePayPayModeError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_PrePayPayModeError)
    }
    
    /// 所选地域和可用区不可用。
    public static var invalidParameterValue_RegionZoneUnavailable: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_RegionZoneUnavailable)
    }
    
    /// 未找到相关存储pool。
    public static var invalidParameterValue_StoragePoolNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_StoragePoolNotFound)
    }
    
    /// 找不到所选子网。
    public static var invalidParameterValue_SubnetNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_SubnetNotFound)
    }
    
    /// 找不到所选VPC网络。
    public static var invalidParameterValue_VpcNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_VpcNotFound)
    }
    
    /// 未找到该接口。
    ///
    /// 请确认业务是否提供该接口
    public static var invalidParameter_ControllerNotFoundError: TCCynosdbError {
        TCCynosdbError(.invalidParameter_ControllerNotFoundError)
    }
    
    /// 未知参数，请检查参数是否有效。
    public static var invalidParameter_InvalidParameterError: TCCynosdbError {
        TCCynosdbError(.invalidParameter_InvalidParameterError)
    }
    
    /// 当前实例不可隔离。
    public static var invalidParameter_IsolateNotAllowed: TCCynosdbError {
        TCCynosdbError(.invalidParameter_IsolateNotAllowed)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCynosdbError {
        TCCynosdbError(.limitExceeded)
    }
    
    /// 用户实例个数超出限制。
    public static var limitExceeded_UserInstanceLimit: TCCynosdbError {
        TCCynosdbError(.limitExceeded_UserInstanceLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCynosdbError {
        TCCynosdbError(.missingParameter)
    }
    
    /// 由于操作禁止，当前集群不允许该操作。
    public static var operationDenied_ClusterOpNotAllowedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_ClusterOpNotAllowedError)
    }
    
    /// 集群当前状态不允许该操作。
    public static var operationDenied_ClusterStatusDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_ClusterStatusDeniedError)
    }
    
    /// 实例当前状态不允许该操作。
    public static var operationDenied_InstanceStatusDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InstanceStatusDeniedError)
    }
    
    /// 账号余额不足。
    public static var operationDenied_InsufficientBalanceError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InsufficientBalanceError)
    }
    
    /// serverless集群当前状态不允许该操作。
    public static var operationDenied_ServerlessClusterStatusDenied: TCCynosdbError {
        TCCynosdbError(.operationDenied_ServerlessClusterStatusDenied)
    }
    
    /// serverless实例当前状态不允许该操作。
    public static var operationDenied_ServerlessInstanceStatusDenied: TCCynosdbError {
        TCCynosdbError(.operationDenied_ServerlessInstanceStatusDenied)
    }
    
    /// 任务冲突检查不通过。
    public static var operationDenied_TaskConflictError: TCCynosdbError {
        TCCynosdbError(.operationDenied_TaskConflictError)
    }
    
    /// 用户未进行实名认证，请先进行实名认证才可购买。
    public static var operationDenied_UserNotAuthenticatedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_UserNotAuthenticatedError)
    }
    
    /// Serverless不支持该版本。
    public static var operationDenied_VersionNotSupportError: TCCynosdbError {
        TCCynosdbError(.operationDenied_VersionNotSupportError)
    }
    
    /// 集群不存在。
    public static var resourceNotFound_ClusterNotFoundError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_ClusterNotFoundError)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFoundError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_InstanceNotFoundError)
    }
    
    /// 参数对应资源不存在。
    public static var resourceNotFound_ResourceError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_ResourceError)
    }
    
    /// 锁定实例失败，暂时不可操作。
    public static var resourceUnavailable_InstanceLockFail: TCCynosdbError {
        TCCynosdbError(.resourceUnavailable_InstanceLockFail)
    }
    
    /// 实例状态异常，暂时不可操作。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCCynosdbError {
        TCCynosdbError(.resourceUnavailable_InstanceStatusAbnormal)
    }
    
    /// 非实名用户禁止购买。
    public static var unauthorizedOperation_NotRealNameAccount: TCCynosdbError {
        TCCynosdbError(.unauthorizedOperation_NotRealNameAccount)
    }
    
    /// CAM鉴权不通过。
    public static var unauthorizedOperation_PermissionDenied: TCCynosdbError {
        TCCynosdbError(.unauthorizedOperation_PermissionDenied)
    }
}

extension TCCynosdbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCCynosdbError: Equatable {
    public static func == (lhs: TCCynosdbError, rhs: TCCynosdbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCynosdbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCynosdbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
