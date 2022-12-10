public struct TCIcError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AppNotFound = "ResourceNotFound.AppNotFound"
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
    public static var failedOperation: TCIcError {
        TCIcError(.failedOperation)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIcError {
        TCIcError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIcError {
        TCIcError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCIcError {
        TCIcError(.resourceNotFound)
    }
    
    /// 应用id不存在。
    public static var resourceNotFound_AppNotFound: TCIcError {
        TCIcError(.resourceNotFound_AppNotFound)
    }
}

extension TCIcError {
    public static var domains: [TCErrorType.Type] {
        return [ResourceNotFound.self]
    }
}

extension TCIcError: Equatable {
    public static func == (lhs: TCIcError, rhs: TCIcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}