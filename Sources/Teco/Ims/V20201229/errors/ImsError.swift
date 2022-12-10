public struct TCImsError: TCErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_EmptyImageContent = "InvalidParameterValue.EmptyImageContent"
        case invalidParameterValue_ImageSizeTooSmall = "InvalidParameterValue.ImageSizeTooSmall"
        case invalidParameterValue_InvalidContent = "InvalidParameterValue.InvalidContent"
        case invalidParameterValue_InvalidDataId = "InvalidParameterValue.InvalidDataId"
        case invalidParameterValue_InvalidFileContentSize = "InvalidParameterValue.InvalidFileContentSize"
        case invalidParameterValue_InvalidImageContent = "InvalidParameterValue.InvalidImageContent"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case invalidParameter_ImageSizeTooSmall = "InvalidParameter.ImageSizeTooSmall"
        case invalidParameter_InvalidImageContent = "InvalidParameter.InvalidImageContent"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_ImageDownloadError = "ResourceUnavailable.ImageDownloadError"
        case resourceUnavailable_InvalidImageContent = "ResourceUnavailable.InvalidImageContent"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_Unauthorized = "UnauthorizedOperation.Unauthorized"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCImsError {
        TCImsError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCImsError {
        TCImsError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCImsError {
        TCImsError(.internalError)
    }
    
    /// 内部错误。
    public static var internalError_InternalError: TCImsError {
        TCImsError(.internalError_InternalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCImsError {
        TCImsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCImsError {
        TCImsError(.invalidParameterValue)
    }
    
    /// 图片内容参数为空。
    public static var invalidParameterValue_EmptyImageContent: TCImsError {
        TCImsError(.invalidParameterValue_EmptyImageContent)
    }
    
    /// 图片分辨率太低。
    public static var invalidParameterValue_ImageSizeTooSmall: TCImsError {
        TCImsError(.invalidParameterValue_ImageSizeTooSmall)
    }
    
    /// FileContent和FileUrl为空。
    public static var invalidParameterValue_InvalidContent: TCImsError {
        TCImsError(.invalidParameterValue_InvalidContent)
    }
    
    /// DataId格式错误。
    public static var invalidParameterValue_InvalidDataId: TCImsError {
        TCImsError(.invalidParameterValue_InvalidDataId)
    }
    
    /// 图片文件内容大小异常。
    public static var invalidParameterValue_InvalidFileContentSize: TCImsError {
        TCImsError(.invalidParameterValue_InvalidFileContentSize)
    }
    
    /// 图片内容错误。
    public static var invalidParameterValue_InvalidImageContent: TCImsError {
        TCImsError(.invalidParameterValue_InvalidImageContent)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameter: TCImsError {
        TCImsError(.invalidParameterValue_InvalidParameter)
    }
    
    /// 图片分辨率过低。
    public static var invalidParameter_ImageSizeTooSmall: TCImsError {
        TCImsError(.invalidParameter_ImageSizeTooSmall)
    }
    
    /// 图片内容错误。
    public static var invalidParameter_InvalidImageContent: TCImsError {
        TCImsError(.invalidParameter_InvalidImageContent)
    }
    
    /// 参数不合法。
    public static var invalidParameter_InvalidParameter: TCImsError {
        TCImsError(.invalidParameter_InvalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCImsError {
        TCImsError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCImsError {
        TCImsError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCImsError {
        TCImsError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCImsError {
        TCImsError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCImsError {
        TCImsError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCImsError {
        TCImsError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCImsError {
        TCImsError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCImsError {
        TCImsError(.resourceUnavailable)
    }
    
    /// 图片文件下载失败。
    public static var resourceUnavailable_ImageDownloadError: TCImsError {
        TCImsError(.resourceUnavailable_ImageDownloadError)
    }
    
    /// 图片资源错误。
    public static var resourceUnavailable_InvalidImageContent: TCImsError {
        TCImsError(.resourceUnavailable_InvalidImageContent)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCImsError {
        TCImsError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCImsError {
        TCImsError(.unauthorizedOperation)
    }
    
    public static var unauthorizedOperation_Unauthorized: TCImsError {
        TCImsError(.unauthorizedOperation_Unauthorized)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCImsError {
        TCImsError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCImsError {
        TCImsError(.unsupportedOperation)
    }
}

extension TCImsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCImsError: Equatable {
    public static func == (lhs: TCImsError, rhs: TCImsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCImsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}