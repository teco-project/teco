public struct TCApeError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_OrderExpiredError = "LimitExceeded.OrderExpiredError"
        case limitExceeded_OrderLimitError = "LimitExceeded.OrderLimitError"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_SensitiveImage = "ResourceNotFound.SensitiveImage"
        case resourceNotFound_SensitiveSearch = "ResourceNotFound.SensitiveSearch"
        case resourceUnavailable = "ResourceUnavailable"
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
    public static var authFailure: TCApeError {
        TCApeError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCApeError {
        TCApeError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCApeError {
        TCApeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCApeError {
        TCApeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCApeError {
        TCApeError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCApeError {
        TCApeError(.limitExceeded)
    }
    
    /// 图片使用期限已过期。
    public static var limitExceeded_OrderExpiredError: TCApeError {
        TCApeError(.limitExceeded_OrderExpiredError)
    }
    
    /// 下单频率超过限制。
    public static var limitExceeded_OrderLimitError: TCApeError {
        TCApeError(.limitExceeded_OrderLimitError)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCApeError {
        TCApeError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCApeError {
        TCApeError(.resourceNotFound)
    }
    
    /// 图片涉嫌违禁内容
    public static var resourceNotFound_SensitiveImage: TCApeError {
        TCApeError(.resourceNotFound_SensitiveImage)
    }
    
    /// 包含敏感词汇。
    public static var resourceNotFound_SensitiveSearch: TCApeError {
        TCApeError(.resourceNotFound_SensitiveSearch)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCApeError {
        TCApeError(.resourceUnavailable)
    }
}

extension TCApeError {
    public static var domains: [TCErrorType.Type] {
        return [LimitExceeded.self, ResourceNotFound.self]
    }
}

extension TCApeError: Equatable {
    public static func == (lhs: TCApeError, rhs: TCApeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCApeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}