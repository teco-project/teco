public struct TCCfgError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCCfgError {
        TCCfgError(.authFailure)
    }
    
    /// cam未授权操作。
    public static var authFailure_UnauthorizedOperation: TCCfgError {
        TCCfgError(.authFailure_UnauthorizedOperation)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCCfgError {
        TCCfgError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCfgError {
        TCCfgError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCCfgError {
        TCCfgError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCfgError {
        TCCfgError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCfgError {
        TCCfgError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCfgError {
        TCCfgError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCfgError {
        TCCfgError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCfgError {
        TCCfgError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCCfgError {
        TCCfgError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCfgError {
        TCCfgError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCCfgError {
        TCCfgError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCfgError {
        TCCfgError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCfgError {
        TCCfgError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCCfgError {
        TCCfgError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCfgError {
        TCCfgError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCfgError {
        TCCfgError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCfgError {
        TCCfgError(.unsupportedOperation)
    }
}

extension TCCfgError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self]
    }
}

extension TCCfgError: Equatable {
    public static func == (lhs: TCCfgError, rhs: TCCfgError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCfgError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}