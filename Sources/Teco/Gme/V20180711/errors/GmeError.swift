public struct TCGmeError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_LoginFailed = "FailedOperation.LoginFailed"
        case failedOperation_UserFeeNegative = "FailedOperation.UserFeeNegative"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_CallbackAddress = "InvalidParameter.CallbackAddress"
        case invalidParameter_DateInvalid = "InvalidParameter.DateInvalid"
        case invalidParameter_TagKey = "InvalidParameter.TagKey"
        case invalidParameter_TimeRangeError = "InvalidParameter.TimeRangeError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Application = "LimitExceeded.Application"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_BizidIsNotFound = "ResourceNotFound.BizidIsNotFound"
        case resourceNotFound_TaskNotFound = "ResourceNotFound.TaskNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CreateAppDenied = "UnauthorizedOperation.CreateAppDenied"
        case unauthorizedOperation_UnRealNameAuth = "UnauthorizedOperation.UnRealNameAuth"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_PTTSwitchOff = "UnsupportedOperation.PTTSwitchOff"
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
    public static var authFailure: TCGmeError {
        TCGmeError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCGmeError {
        TCGmeError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCGmeError {
        TCGmeError(.failedOperation)
    }
    
    /// 登录态过期。
    public static var failedOperation_LoginFailed: TCGmeError {
        TCGmeError(.failedOperation_LoginFailed)
    }
    
    /// 欠费不可操作。
    public static var failedOperation_UserFeeNegative: TCGmeError {
        TCGmeError(.failedOperation_UserFeeNegative)
    }
    
    /// 内部错误。
    public static var internalError: TCGmeError {
        TCGmeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCGmeError {
        TCGmeError(.invalidParameter)
    }
    
    /// 回调地址不正确
    public static var invalidParameter_CallbackAddress: TCGmeError {
        TCGmeError(.invalidParameter_CallbackAddress)
    }
    
    /// 日期无效。
    public static var invalidParameter_DateInvalid: TCGmeError {
        TCGmeError(.invalidParameter_DateInvalid)
    }
    
    /// 标签不正确
    public static var invalidParameter_TagKey: TCGmeError {
        TCGmeError(.invalidParameter_TagKey)
    }
    
    /// 查询时间范围错误。
    public static var invalidParameter_TimeRangeError: TCGmeError {
        TCGmeError(.invalidParameter_TimeRangeError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCGmeError {
        TCGmeError(.limitExceeded)
    }
    
    /// 创建应用数已达上限。
    public static var limitExceeded_Application: TCGmeError {
        TCGmeError(.limitExceeded_Application)
    }
    
    /// 缺少参数。
    public static var missingParameter: TCGmeError {
        TCGmeError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCGmeError {
        TCGmeError(.operationDenied)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCGmeError {
        TCGmeError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCGmeError {
        TCGmeError(.resourceNotFound)
    }
    
    /// 应用ID不正确
    public static var resourceNotFound_BizidIsNotFound: TCGmeError {
        TCGmeError(.resourceNotFound_BizidIsNotFound)
    }
    
    /// 任务ID不正确
    public static var resourceNotFound_TaskNotFound: TCGmeError {
        TCGmeError(.resourceNotFound_TaskNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCGmeError {
        TCGmeError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCGmeError {
        TCGmeError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCGmeError {
        TCGmeError(.unauthorizedOperation)
    }
    
    /// 创建应用不被授权。
    public static var unauthorizedOperation_CreateAppDenied: TCGmeError {
        TCGmeError(.unauthorizedOperation_CreateAppDenied)
    }
    
    /// 该用户未进行实名认证。
    public static var unauthorizedOperation_UnRealNameAuth: TCGmeError {
        TCGmeError(.unauthorizedOperation_UnRealNameAuth)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCGmeError {
        TCGmeError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCGmeError {
        TCGmeError(.unsupportedOperation)
    }
    
    public static var unsupportedOperation_PTTSwitchOff: TCGmeError {
        TCGmeError(.unsupportedOperation_PTTSwitchOff)
    }
}

extension TCGmeError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, LimitExceeded.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCGmeError: Equatable {
    public static func == (lhs: TCGmeError, rhs: TCGmeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGmeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGmeError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
