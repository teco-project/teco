public struct TCLowcodeError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case resourceNotFound = "ResourceNotFound"
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
    public static var failedOperation: TCLowcodeError {
        TCLowcodeError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCLowcodeError {
        TCLowcodeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCLowcodeError {
        TCLowcodeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCLowcodeError {
        TCLowcodeError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCLowcodeError {
        TCLowcodeError(.resourceNotFound)
    }
}

extension TCLowcodeError: Equatable {
    public static func == (lhs: TCLowcodeError, rhs: TCLowcodeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLowcodeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLowcodeError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
