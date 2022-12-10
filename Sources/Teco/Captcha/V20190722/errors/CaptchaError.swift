public struct TCCaptchaError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case missingParameter = "MissingParameter"
        case unauthorizedOperation_ErrAuth = "UnauthorizedOperation.ErrAuth"
        case unauthorizedOperation_Unauthorized = "UnauthorizedOperation.Unauthorized"
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
    public static var internalError: TCCaptchaError {
        TCCaptchaError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCaptchaError {
        TCCaptchaError(.invalidParameter)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCaptchaError {
        TCCaptchaError(.missingParameter)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_ErrAuth: TCCaptchaError {
        TCCaptchaError(.unauthorizedOperation_ErrAuth)
    }
    
    /// 未开通权限。
    public static var unauthorizedOperation_Unauthorized: TCCaptchaError {
        TCCaptchaError(.unauthorizedOperation_Unauthorized)
    }
}

extension TCCaptchaError {
    public static var domains: [TCErrorType.Type] {
        return [UnauthorizedOperation.self]
    }
}

extension TCCaptchaError: Equatable {
    public static func == (lhs: TCCaptchaError, rhs: TCCaptchaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCaptchaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}