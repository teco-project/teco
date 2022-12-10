public struct TCNlpError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_IllegalTextError = "FailedOperation.IllegalTextError"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_TextEmbeddingFailed = "FailedOperation.TextEmbeddingFailed"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case failedOperation_WordNotFound = "FailedOperation.WordNotFound"
        case internalError = "InternalError"
        case internalError_ResourceRequestError = "InternalError.ResourceRequestError"
        case internalError_ServiceCallError = "InternalError.ServiceCallError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_EmptyValueError = "InvalidParameterValue.EmptyValueError"
        case invalidParameterValue_TextEncodeError = "InvalidParameterValue.TextEncodeError"
        case invalidParameterValue_TextFormatError = "InvalidParameterValue.TextFormatError"
        case invalidParameterValue_TextNumTooMuch = "InvalidParameterValue.TextNumTooMuch"
        case invalidParameterValue_TextTooLong = "InvalidParameterValue.TextTooLong"
        case invalidParameterValue_ValueRangeError = "InvalidParameterValue.ValueRangeError"
        case limitExceeded_ResourceReachedLimit = "LimitExceeded.ResourceReachedLimit"
        case resourceInUse_NameExists = "ResourceInUse.NameExists"
        case resourceInUse_ResourceOperating = "ResourceInUse.ResourceOperating"
        case resourceInsufficient_QuotaRunOut = "ResourceInsufficient.QuotaRunOut"
        case resourceNotFound_DataNotFound = "ResourceNotFound.DataNotFound"
        case resourceNotFound_FileNotFound = "ResourceNotFound.FileNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_FileUnavailable = "ResourceUnavailable.FileUnavailable"
        case resourceUnavailable_ServiceNotOpenedError = "ResourceUnavailable.ServiceNotOpenedError"
        case unauthorizedOperation_AuthenticateFailed = "UnauthorizedOperation.AuthenticateFailed"
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
    public static var failedOperation: TCNlpError {
        TCNlpError(.failedOperation)
    }
    
    /// 非法文本输入导致返回异常
    public static var failedOperation_IllegalTextError: TCNlpError {
        TCNlpError(.failedOperation_IllegalTextError)
    }
    
    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCNlpError {
        TCNlpError(.failedOperation_RequestTimeout)
    }
    
    public static var failedOperation_RpcFail: TCNlpError {
        TCNlpError(.failedOperation_RpcFail)
    }
    
    /// 文本向量化失败
    public static var failedOperation_TextEmbeddingFailed: TCNlpError {
        TCNlpError(.failedOperation_TextEmbeddingFailed)
    }
    
    public static var failedOperation_Unknown: TCNlpError {
        TCNlpError(.failedOperation_Unknown)
    }
    
    /// 查找不到词语
    public static var failedOperation_WordNotFound: TCNlpError {
        TCNlpError(.failedOperation_WordNotFound)
    }
    
    /// 内部错误。
    public static var internalError: TCNlpError {
        TCNlpError(.internalError)
    }
    
    /// 资源请求错误
    public static var internalError_ResourceRequestError: TCNlpError {
        TCNlpError(.internalError_ResourceRequestError)
    }
    
    /// 服务调用错误
    public static var internalError_ServiceCallError: TCNlpError {
        TCNlpError(.internalError_ServiceCallError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCNlpError {
        TCNlpError(.invalidParameter)
    }
    
    /// 参数空值错误
    public static var invalidParameterValue_EmptyValueError: TCNlpError {
        TCNlpError(.invalidParameterValue_EmptyValueError)
    }
    
    /// 文本编码错误，不符合utf-8
    public static var invalidParameterValue_TextEncodeError: TCNlpError {
        TCNlpError(.invalidParameterValue_TextEncodeError)
    }
    
    /// 文本输入格式错误
    public static var invalidParameterValue_TextFormatError: TCNlpError {
        TCNlpError(.invalidParameterValue_TextFormatError)
    }
    
    /// 输入文本超出数量限制
    public static var invalidParameterValue_TextNumTooMuch: TCNlpError {
        TCNlpError(.invalidParameterValue_TextNumTooMuch)
    }
    
    /// 输入文本超出长度限制
    public static var invalidParameterValue_TextTooLong: TCNlpError {
        TCNlpError(.invalidParameterValue_TextTooLong)
    }
    
    /// 参数取值范围错误
    public static var invalidParameterValue_ValueRangeError: TCNlpError {
        TCNlpError(.invalidParameterValue_ValueRangeError)
    }
    
    /// 资源用量达到上限
    public static var limitExceeded_ResourceReachedLimit: TCNlpError {
        TCNlpError(.limitExceeded_ResourceReachedLimit)
    }
    
    /// 名称已存在
    public static var resourceInUse_NameExists: TCNlpError {
        TCNlpError(.resourceInUse_NameExists)
    }
    
    /// 资源正在操作中
    public static var resourceInUse_ResourceOperating: TCNlpError {
        TCNlpError(.resourceInUse_ResourceOperating)
    }
    
    /// 额度用尽，请充值后重试
    public static var resourceInsufficient_QuotaRunOut: TCNlpError {
        TCNlpError(.resourceInsufficient_QuotaRunOut)
    }
    
    /// 数据资源不存在
    public static var resourceNotFound_DataNotFound: TCNlpError {
        TCNlpError(.resourceNotFound_DataNotFound)
    }
    
    /// 文件资源不存在
    public static var resourceNotFound_FileNotFound: TCNlpError {
        TCNlpError(.resourceNotFound_FileNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCNlpError {
        TCNlpError(.resourceUnavailable)
    }
    
    /// 文件资源不可用
    public static var resourceUnavailable_FileUnavailable: TCNlpError {
        TCNlpError(.resourceUnavailable_FileUnavailable)
    }
    
    /// 您的账号尚未开通NLP服务，请登录腾讯云NLP控制台进行服务开通后再使用
    public static var resourceUnavailable_ServiceNotOpenedError: TCNlpError {
        TCNlpError(.resourceUnavailable_ServiceNotOpenedError)
    }
    
    /// 实名认证失败
    public static var unauthorizedOperation_AuthenticateFailed: TCNlpError {
        TCNlpError(.unauthorizedOperation_AuthenticateFailed)
    }
}

extension TCNlpError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCNlpError: Equatable {
    public static func == (lhs: TCNlpError, rhs: TCNlpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCNlpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}