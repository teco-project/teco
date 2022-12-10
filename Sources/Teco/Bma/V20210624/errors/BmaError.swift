public struct TCBmaError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidAction = "InvalidAction"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case noSuchVersion = "NoSuchVersion"
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
    public static var authFailure: TCBmaError {
        TCBmaError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCBmaError {
        TCBmaError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCBmaError {
        TCBmaError(.internalError)
    }
    
    /// 接口不存在。
    public static var invalidAction: TCBmaError {
        TCBmaError(.invalidAction)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBmaError {
        TCBmaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBmaError {
        TCBmaError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCBmaError {
        TCBmaError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCBmaError {
        TCBmaError(.missingParameter)
    }
    
    /// 接口版本不存在。
    public static var noSuchVersion: TCBmaError {
        TCBmaError(.noSuchVersion)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCBmaError {
        TCBmaError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCBmaError {
        TCBmaError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCBmaError {
        TCBmaError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCBmaError {
        TCBmaError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBmaError {
        TCBmaError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCBmaError {
        TCBmaError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCBmaError {
        TCBmaError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCBmaError {
        TCBmaError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCBmaError {
        TCBmaError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBmaError {
        TCBmaError(.unsupportedOperation)
    }
}

extension TCBmaError: Equatable {
    public static func == (lhs: TCBmaError, rhs: TCBmaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBmaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBmaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
