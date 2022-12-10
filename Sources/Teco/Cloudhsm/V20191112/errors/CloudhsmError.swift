public struct TCCloudhsmError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case resourceNotFound = "ResourceNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var authFailure: TCCloudhsmError {
        TCCloudhsmError(.authFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCCloudhsmError {
        TCCloudhsmError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCloudhsmError {
        TCCloudhsmError(.invalidParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCloudhsmError {
        TCCloudhsmError(.resourceNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCloudhsmError {
        TCCloudhsmError(.unauthorizedOperation)
    }
}

extension TCCloudhsmError: Equatable {
    public static func == (lhs: TCCloudhsmError, rhs: TCCloudhsmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCloudhsmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCloudhsmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
