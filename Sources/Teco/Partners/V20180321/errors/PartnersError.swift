public struct TCPartnersError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCPartnersError {
        TCPartnersError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCPartnersError {
        TCPartnersError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCPartnersError {
        TCPartnersError(.invalidParameter)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCPartnersError {
        TCPartnersError(.unauthorizedOperation)
    }
}

extension TCPartnersError: Equatable {
    public static func == (lhs: TCPartnersError, rhs: TCPartnersError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPartnersError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}