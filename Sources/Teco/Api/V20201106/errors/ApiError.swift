public struct TCApiError: TCErrorType {
    enum Code: String {
        case invalidParameter = "InvalidParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
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
    
    /// 参数错误。
    public static var invalidParameter: TCApiError {
        TCApiError(.invalidParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCApiError {
        TCApiError(.requestLimitExceeded)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCApiError {
        TCApiError(.unsupportedOperation)
    }
}

extension TCApiError: Equatable {
    public static func == (lhs: TCApiError, rhs: TCApiError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCApiError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCApiError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
