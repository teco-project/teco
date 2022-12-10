public struct TCPdsError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_ServiceTimeout = "InternalError.ServiceTimeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
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
    
    /// 内部错误。
    public static var internalError: TCPdsError {
        TCPdsError(.internalError)
    }
    
    /// 服务超时。
    public static var internalError_ServiceTimeout: TCPdsError {
        TCPdsError(.internalError_ServiceTimeout)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCPdsError {
        TCPdsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCPdsError {
        TCPdsError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCPdsError {
        TCPdsError(.limitExceeded)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCPdsError {
        TCPdsError(.limitExceeded_ReplayAttack)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCPdsError {
        TCPdsError(.missingParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCPdsError {
        TCPdsError(.requestLimitExceeded)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCPdsError {
        TCPdsError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCPdsError {
        TCPdsError(.resourceNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCPdsError {
        TCPdsError(.unauthorizedOperation)
    }
}

extension TCPdsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, LimitExceeded.self]
    }
}

extension TCPdsError: Equatable {
    public static func == (lhs: TCPdsError, rhs: TCPdsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPdsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}