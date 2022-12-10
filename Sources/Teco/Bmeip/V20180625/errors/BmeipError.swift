public struct TCBmeipError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
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
    
    /// 内部错误。
    public static var internalError: TCBmeipError {
        TCBmeipError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBmeipError {
        TCBmeipError(.invalidParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBmeipError {
        TCBmeipError(.resourceNotFound)
    }
}

extension TCBmeipError: Equatable {
    public static func == (lhs: TCBmeipError, rhs: TCBmeipError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBmeipError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}