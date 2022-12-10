public struct TCBiError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_Internal = "InternalError.Internal"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_Embed = "InvalidParameter.Embed"
        case missingParameter = "MissingParameter"
        case missingParameter_MissingParam = "MissingParameter.MissingParam"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_Authorize = "UnauthorizedOperation.Authorize"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BIError = "UnsupportedOperation.BIError"
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
    public static var authFailure: TCBiError {
        TCBiError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCBiError {
        TCBiError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCBiError {
        TCBiError(.internalError)
    }
    
    /// 内部错误。
    public static var internalError_Internal: TCBiError {
        TCBiError(.internalError_Internal)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBiError {
        TCBiError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBiError {
        TCBiError(.invalidParameterValue)
    }
    
    /// 报表嵌出类错误。
    public static var invalidParameter_Embed: TCBiError {
        TCBiError(.invalidParameter_Embed)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCBiError {
        TCBiError(.missingParameter)
    }
    
    /// 必填参数缺失。
    public static var missingParameter_MissingParam: TCBiError {
        TCBiError(.missingParameter_MissingParam)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCBiError {
        TCBiError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCBiError {
        TCBiError(.requestLimitExceeded)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCBiError {
        TCBiError(.unauthorizedOperation)
    }
    
    /// 权限错误。
    public static var unauthorizedOperation_Authorize: TCBiError {
        TCBiError(.unauthorizedOperation_Authorize)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCBiError {
        TCBiError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBiError {
        TCBiError(.unsupportedOperation)
    }
    
    /// 默认业务异常。
    public static var unsupportedOperation_BIError: TCBiError {
        TCBiError(.unsupportedOperation_BIError)
    }
}

extension TCBiError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, MissingParameter.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCBiError: Equatable {
    public static func == (lhs: TCBiError, rhs: TCBiError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBiError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}