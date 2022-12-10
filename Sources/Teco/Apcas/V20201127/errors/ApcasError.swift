public struct TCApcasError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_InternalInvokeFailure = "InternalError.InternalInvokeFailure"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
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
    public static var authFailure: TCApcasError {
        TCApcasError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCApcasError {
        TCApcasError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCApcasError {
        TCApcasError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCApcasError {
        TCApcasError(.internalError)
    }
    
    /// 调用内部服务发生错误。
    public static var internalError_InternalInvokeFailure: TCApcasError {
        TCApcasError(.internalError_InternalInvokeFailure)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCApcasError {
        TCApcasError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCApcasError {
        TCApcasError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCApcasError {
        TCApcasError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCApcasError {
        TCApcasError(.missingParameter)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCApcasError {
        TCApcasError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCApcasError {
        TCApcasError(.unsupportedOperation)
    }
}

extension TCApcasError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self]
    }
}

extension TCApcasError: Equatable {
    public static func == (lhs: TCApcasError, rhs: TCApcasError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCApcasError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}