public struct TCAswError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
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
    public static var authFailure: TCAswError {
        TCAswError(.authFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCAswError {
        TCAswError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAswError {
        TCAswError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAswError {
        TCAswError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAswError {
        TCAswError(.resourceNotFound)
    }
}

extension TCAswError: Equatable {
    public static func == (lhs: TCAswError, rhs: TCAswError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAswError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}