public struct TCTicsError: TCErrorType {
    enum Code: String {
        case internalError_CacheErr = "InternalError.CacheErr"
        case internalError_LocalErr = "InternalError.LocalErr"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case limitExceeded = "LimitExceeded"
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
    
    /// 内部系统错误，组件异常。
    public static var internalError_CacheErr: TCTicsError {
        TCTicsError(.internalError_CacheErr)
    }
    
    /// 内部系统错误，逻辑错误。
    public static var internalError_LocalErr: TCTicsError {
        TCTicsError(.internalError_LocalErr)
    }
    
    /// 内部系统错误，超时等异常。
    public static var internalError_Timeout: TCTicsError {
        TCTicsError(.internalError_Timeout)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTicsError {
        TCTicsError(.invalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTicsError {
        TCTicsError(.limitExceeded)
    }
}

extension TCTicsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self]
    }
}

extension TCTicsError: Equatable {
    public static func == (lhs: TCTicsError, rhs: TCTicsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTicsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTicsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
