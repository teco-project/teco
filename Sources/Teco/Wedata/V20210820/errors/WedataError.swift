public struct TCWedataError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_SignatureExpire = "AuthFailure.SignatureExpire"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_CallSchedulerApiError = "InternalError.CallSchedulerApiError"
        case internalError_InternalCallCloudApiError = "InternalError.InternalCallCloudApiError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_DuplicateName = "InvalidParameter.DuplicateName"
        case invalidParameter_InvalidFilterParameter = "InvalidParameter.InvalidFilterParameter"
        case invalidParameter_RuleNotExist = "InvalidParameter.RuleNotExist"
        case invalidParameter_ServiceIsBusy = "InvalidParameter.ServiceIsBusy"
        case invalidParameter_WorkspaceNotExist = "InvalidParameter.WorkspaceNotExist"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_UserNotInWhitelistError = "OperationDenied.UserNotInWhitelistError"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_UserNotInProject = "UnauthorizedOperation.UserNotInProject"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    public static var authFailure: TCWedataError {
        TCWedataError(.authFailure)
    }
    
    /// 未登陆或登陆已过期。
    ///
    /// 用户未登陆或者登陆已过期，请重新登陆。
    public static var authFailure_SignatureExpire: TCWedataError {
        TCWedataError(.authFailure_SignatureExpire)
    }
    
    /// CAM未授权，请联系主账号到CAM中授权QcloudWeDataFullAccess策略给该账户。
    ///
    /// 请联系主账号到CAM中授权QcloudWeDataFullAccess策略给该账户
    public static var authFailure_UnauthorizedOperation: TCWedataError {
        TCWedataError(.authFailure_UnauthorizedOperation)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCWedataError {
        TCWedataError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCWedataError {
        TCWedataError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCWedataError {
        TCWedataError(.internalError)
    }
    
    /// 外部系统调用异常。
    public static var internalError_CallSchedulerApiError: TCWedataError {
        TCWedataError(.internalError_CallSchedulerApiError)
    }
    
    /// 调用云API失败。
    public static var internalError_InternalCallCloudApiError: TCWedataError {
        TCWedataError(.internalError_InternalCallCloudApiError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCWedataError {
        TCWedataError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCWedataError {
        TCWedataError(.invalidParameterValue)
    }
    
    /// 名称重复。
    public static var invalidParameter_DuplicateName: TCWedataError {
        TCWedataError(.invalidParameter_DuplicateName)
    }
    
    /// 查询过滤条件参数错误。
    ///
    /// 查询过滤条件参数错误
    public static var invalidParameter_InvalidFilterParameter: TCWedataError {
        TCWedataError(.invalidParameter_InvalidFilterParameter)
    }
    
    /// 规则不存在。
    public static var invalidParameter_RuleNotExist: TCWedataError {
        TCWedataError(.invalidParameter_RuleNotExist)
    }
    
    /// 服务繁忙，请稍后重试。
    ///
    /// 服务繁忙，请稍后重试
    public static var invalidParameter_ServiceIsBusy: TCWedataError {
        TCWedataError(.invalidParameter_ServiceIsBusy)
    }
    
    /// 工作空间不存在。
    public static var invalidParameter_WorkspaceNotExist: TCWedataError {
        TCWedataError(.invalidParameter_WorkspaceNotExist)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCWedataError {
        TCWedataError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCWedataError {
        TCWedataError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCWedataError {
        TCWedataError(.operationDenied)
    }
    
    /// 用户不在白名单。
    public static var operationDenied_UserNotInWhitelistError: TCWedataError {
        TCWedataError(.operationDenied_UserNotInWhitelistError)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCWedataError {
        TCWedataError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCWedataError {
        TCWedataError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCWedataError {
        TCWedataError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCWedataError {
        TCWedataError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCWedataError {
        TCWedataError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCWedataError {
        TCWedataError(.unauthorizedOperation)
    }
    
    /// 用户不是当前项目成员。
    public static var unauthorizedOperation_UserNotInProject: TCWedataError {
        TCWedataError(.unauthorizedOperation_UserNotInProject)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCWedataError {
        TCWedataError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCWedataError {
        TCWedataError(.unsupportedOperation)
    }
}

extension TCWedataError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, OperationDenied.self, UnauthorizedOperation.self]
    }
}

extension TCWedataError: Equatable {
    public static func == (lhs: TCWedataError, rhs: TCWedataError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCWedataError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCWedataError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
