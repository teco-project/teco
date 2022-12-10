public struct TCCiiError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
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
    public static var authFailure: TCCiiError {
        TCCiiError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCiiError {
        TCCiiError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCCiiError {
        TCCiiError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCiiError {
        TCCiiError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCiiError {
        TCCiiError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCiiError {
        TCCiiError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCiiError {
        TCCiiError(.missingParameter)
    }
}

extension TCCiiError: Equatable {
    public static func == (lhs: TCCiiError, rhs: TCCiiError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCiiError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCiiError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
