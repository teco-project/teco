public struct TCCdsError: TCErrorType {
    enum Code: String {
        case invalidParameter_ResourceId = "InvalidParameter.ResourceId"
        case invalidParameter_ResourceIdError = "InvalidParameter.ResourceIdError"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
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
    
    /// 无效的资源ID，用于资源不存在或已过期。
    public static var invalidParameter_ResourceId: TCCdsError {
        TCCdsError(.invalidParameter_ResourceId)
    }
    
    /// 审计资源ID 错误。
    public static var invalidParameter_ResourceIdError: TCCdsError {
        TCCdsError(.invalidParameter_ResourceIdError)
    }
    
    /// 无操作权限。
    public static var unauthorizedOperation_NoPermission: TCCdsError {
        TCCdsError(.unauthorizedOperation_NoPermission)
    }
}

extension TCCdsError {
    public static var domains: [TCErrorType.Type] {
        return [InvalidParameter.self, UnauthorizedOperation.self]
    }
}

extension TCCdsError: Equatable {
    public static func == (lhs: TCCdsError, rhs: TCCdsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}