public struct TCMarketError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    
    /// 操作失败。
    public static var failedOperation: TCMarketError {
        TCMarketError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCMarketError {
        TCMarketError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMarketError {
        TCMarketError(.invalidParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCMarketError {
        TCMarketError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCMarketError {
        TCMarketError(.resourceUnavailable)
    }
}

extension TCMarketError: Equatable {
    public static func == (lhs: TCMarketError, rhs: TCMarketError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMarketError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMarketError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
