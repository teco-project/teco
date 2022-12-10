public struct TCBmlbError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
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
    public static var failedOperation: TCBmlbError {
        TCBmlbError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCBmlbError {
        TCBmlbError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBmlbError {
        TCBmlbError(.invalidParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCBmlbError {
        TCBmlbError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBmlbError {
        TCBmlbError(.resourceNotFound)
    }
}

extension TCBmlbError: Equatable {
    public static func == (lhs: TCBmlbError, rhs: TCBmlbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBmlbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}