public struct TCTcbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_PartialFailure = "FailedOperation.PartialFailure"
        case internalError = "InternalError"
        case internalError_Database = "InternalError.Database"
        case internalError_SystemFail = "InternalError.SystemFail"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_APICreated = "InvalidParameter.APICreated"
        case invalidParameter_Action = "InvalidParameter.Action"
        case invalidParameter_EnvId = "InvalidParameter.EnvId"
        case invalidParameter_PathExist = "InvalidParameter.PathExist"
        case invalidParameter_ResourceNotExists = "InvalidParameter.ResourceNotExists"
        case invalidParameter_ServiceEvil = "InvalidParameter.ServiceEvil"
        case invalidParameter_ServiceNotExist = "InvalidParameter.ServiceNotExist"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Concurrent = "LimitExceeded.Concurrent"
        case limitExceeded_ErrNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
        case limitExceeded_ErrRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
        case limitExceeded_Request = "LimitExceeded.Request"
        case missingParameter = "MissingParameter"
        case missingParameter_Param = "MissingParameter.Param"
        case operationDenied = "OperationDenied"
        case operationDenied_ResourceFrozen = "OperationDenied.ResourceFrozen"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_UserNotExists = "ResourceNotFound.UserNotExists"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_BalanceNotEnough = "ResourceUnavailable.BalanceNotEnough"
        case resourceUnavailable_CDNFreezed = "ResourceUnavailable.CDNFreezed"
        case resourceUnavailable_InvoiceAmountLack = "ResourceUnavailable.InvoiceAmountLack"
        case resourceUnavailable_RefreshTokenExpired = "ResourceUnavailable.RefreshTokenExpired"
        case resourceUnavailable_ResourceOverdue = "ResourceUnavailable.ResourceOverdue"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CodeOAuthUnauthorized = "UnauthorizedOperation.CodeOAuthUnauthorized"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_TaskExisted = "UnsupportedOperation.TaskExisted"
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
    public static var authFailure: TCTcbError {
        TCTcbError(.authFailure)
    }
    
    /// 您没有查看该资源的权限。
    public static var authFailure_UnauthorizedOperation: TCTcbError {
        TCTcbError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTcbError {
        TCTcbError(.failedOperation)
    }
    
    /// 部分失败（有一部分操作失败）。
    ///
    /// 部分失败，一般是因为权限等问题导致有部分资源操作失败。具体信息关注Message。
    public static var failedOperation_PartialFailure: TCTcbError {
        TCTcbError(.failedOperation_PartialFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCTcbError {
        TCTcbError(.internalError)
    }
    
    /// 数据库错误。
    public static var internalError_Database: TCTcbError {
        TCTcbError(.internalError_Database)
    }
    
    /// 系统失败。
    public static var internalError_SystemFail: TCTcbError {
        TCTcbError(.internalError_SystemFail)
    }
    
    /// 服务超时。
    public static var internalError_Timeout: TCTcbError {
        TCTcbError(.internalError_Timeout)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcbError {
        TCTcbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTcbError {
        TCTcbError(.invalidParameterValue)
    }
    
    /// API已经创建。
    public static var invalidParameter_APICreated: TCTcbError {
        TCTcbError(.invalidParameter_APICreated)
    }
    
    /// 接口名非法。
    public static var invalidParameter_Action: TCTcbError {
        TCTcbError(.invalidParameter_Action)
    }
    
    /// 环境ID非法。
    public static var invalidParameter_EnvId: TCTcbError {
        TCTcbError(.invalidParameter_EnvId)
    }
    
    /// 路径已存在。
    public static var invalidParameter_PathExist: TCTcbError {
        TCTcbError(.invalidParameter_PathExist)
    }
    
    /// 对应资源不存在。
    public static var invalidParameter_ResourceNotExists: TCTcbError {
        TCTcbError(.invalidParameter_ResourceNotExists)
    }
    
    /// 没有操作权限。
    public static var invalidParameter_ServiceEvil: TCTcbError {
        TCTcbError(.invalidParameter_ServiceEvil)
    }
    
    /// 服务不存在。
    public static var invalidParameter_ServiceNotExist: TCTcbError {
        TCTcbError(.invalidParameter_ServiceNotExist)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTcbError {
        TCTcbError(.limitExceeded)
    }
    
    /// 并发请求超过配额限制。
    public static var limitExceeded_Concurrent: TCTcbError {
        TCTcbError(.limitExceeded_Concurrent)
    }
    
    /// 命名空间超过配额。
    public static var limitExceeded_ErrNamespaceMaxLimit: TCTcbError {
        TCTcbError(.limitExceeded_ErrNamespaceMaxLimit)
    }
    
    /// 镜像容器超过配额。
    public static var limitExceeded_ErrRepoMaxLimit: TCTcbError {
        TCTcbError(.limitExceeded_ErrRepoMaxLimit)
    }
    
    /// 请求次数超过配额限制。
    public static var limitExceeded_Request: TCTcbError {
        TCTcbError(.limitExceeded_Request)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTcbError {
        TCTcbError(.missingParameter)
    }
    
    /// 缺少必要参数。
    public static var missingParameter_Param: TCTcbError {
        TCTcbError(.missingParameter_Param)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTcbError {
        TCTcbError(.operationDenied)
    }
    
    /// 操作失败：资源被冻结。
    ///
    /// 相关资源被冻结，请前往 额度监控 控制台（https://console.cloud.tencent.com/tcb/env/safety?tabId=quota）手动解冻。
    public static var operationDenied_ResourceFrozen: TCTcbError {
        TCTcbError(.operationDenied_ResourceFrozen)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTcbError {
        TCTcbError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTcbError {
        TCTcbError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcbError {
        TCTcbError(.resourceNotFound)
    }
    
    /// 用户不存在。
    public static var resourceNotFound_UserNotExists: TCTcbError {
        TCTcbError(.resourceNotFound_UserNotExists)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTcbError {
        TCTcbError(.resourceUnavailable)
    }
    
    /// 资源不可用-余额不足。
    public static var resourceUnavailable_BalanceNotEnough: TCTcbError {
        TCTcbError(.resourceUnavailable_BalanceNotEnough)
    }
    
    /// 资源不可用，CDN冻结。
    public static var resourceUnavailable_CDNFreezed: TCTcbError {
        TCTcbError(.resourceUnavailable_CDNFreezed)
    }
    
    /// 当前发票余额不足，无法退费。
    public static var resourceUnavailable_InvoiceAmountLack: TCTcbError {
        TCTcbError(.resourceUnavailable_InvoiceAmountLack)
    }
    
    /// 云项目OAuth的refreshToken已过期，需要重新授权。
    public static var resourceUnavailable_RefreshTokenExpired: TCTcbError {
        TCTcbError(.resourceUnavailable_RefreshTokenExpired)
    }
    
    /// 资源过期。
    public static var resourceUnavailable_ResourceOverdue: TCTcbError {
        TCTcbError(.resourceUnavailable_ResourceOverdue)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTcbError {
        TCTcbError(.unauthorizedOperation)
    }
    
    /// 外部代码仓库未授权。
    public static var unauthorizedOperation_CodeOAuthUnauthorized: TCTcbError {
        TCTcbError(.unauthorizedOperation_CodeOAuthUnauthorized)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTcbError {
        TCTcbError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTcbError {
        TCTcbError(.unsupportedOperation)
    }
    
    /// 有正在进行中的任务。
    public static var unsupportedOperation_TaskExisted: TCTcbError {
        TCTcbError(.unsupportedOperation_TaskExisted)
    }
}

extension TCTcbError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTcbError: Equatable {
    public static func == (lhs: TCTcbError, rhs: TCTcbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
