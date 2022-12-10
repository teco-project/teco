public struct TCTmsError: TCErrorType {
    enum Code: String {
        case internalError_ErrTextTimeOut = "InternalError.ErrTextTimeOut"
        case invalidParameterValue_ErrFileContent = "InvalidParameterValue.ErrFileContent"
        case invalidParameterValue_ErrTextContentLen = "InvalidParameterValue.ErrTextContentLen"
        case invalidParameterValue_ErrTextContentType = "InvalidParameterValue.ErrTextContentType"
        case invalidParameter_ErrAction = "InvalidParameter.ErrAction"
        case invalidParameter_ErrTextContentLen = "InvalidParameter.ErrTextContentLen"
        case invalidParameter_ErrTextContentType = "InvalidParameter.ErrTextContentType"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
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
    
    /// 请求超时。
    public static var internalError_ErrTextTimeOut: TCTmsError {
        TCTmsError(.internalError_ErrTextTimeOut)
    }
    
    /// FileContent不可用，传入的Base64编码无法转换成标准utf8内容。
    public static var invalidParameterValue_ErrFileContent: TCTmsError {
        TCTmsError(.invalidParameterValue_ErrFileContent)
    }
    
    /// 请求的文本长度超过限制。
    public static var invalidParameterValue_ErrTextContentLen: TCTmsError {
        TCTmsError(.invalidParameterValue_ErrTextContentLen)
    }
    
    /// 请求的文本格式错误（需要base64编码格式的文本）。
    public static var invalidParameterValue_ErrTextContentType: TCTmsError {
        TCTmsError(.invalidParameterValue_ErrTextContentType)
    }
    
    /// 错误的action。
    public static var invalidParameter_ErrAction: TCTmsError {
        TCTmsError(.invalidParameter_ErrAction)
    }
    
    /// 请求的文本长度过长。
    public static var invalidParameter_ErrTextContentLen: TCTmsError {
        TCTmsError(.invalidParameter_ErrTextContentLen)
    }
    
    /// 文本类型错误，需要base64的文本。
    public static var invalidParameter_ErrTextContentType: TCTmsError {
        TCTmsError(.invalidParameter_ErrTextContentType)
    }
    
    /// InvalidParameter.ParameterError
    public static var invalidParameter_ParameterError: TCTmsError {
        TCTmsError(.invalidParameter_ParameterError)
    }
    
    /// 未获取到接口授权。
    public static var unauthorizedOperation_Unauthorized: TCTmsError {
        TCTmsError(.unauthorizedOperation_Unauthorized)
    }
}

extension TCTmsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, UnauthorizedOperation.self]
    }
}

extension TCTmsError: Equatable {
    public static func == (lhs: TCTmsError, rhs: TCTmsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTmsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}