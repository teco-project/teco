public struct TCAmsError: TCErrorType {
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
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
    public static var dryRunOperation: TCAmsError {
        TCAmsError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAmsError {
        TCAmsError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCAmsError {
        TCAmsError(.internalError)
    }
    
    /// InternalError.InternalError
    public static var internalError_InternalError: TCAmsError {
        TCAmsError(.internalError_InternalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAmsError {
        TCAmsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAmsError {
        TCAmsError(.invalidParameterValue)
    }
    
    /// InvalidParameterValue.EmptyImageContent
    public static var invalidParameterValue_EmptyImageContent: TCAmsError {
        TCAmsError(.invalidParameterValue_EmptyImageContent)
    }
    
    /// InvalidParameterValue.ImageSizeTooSmall
    public static var invalidParameterValue_ImageSizeTooSmall: TCAmsError {
        TCAmsError(.invalidParameterValue_ImageSizeTooSmall)
    }
    
    /// InvalidParameterValue.InvalidContent
    public static var invalidParameterValue_InvalidContent: TCAmsError {
        TCAmsError(.invalidParameterValue_InvalidContent)
    }
    
    /// InvalidParameterValue.InvalidDataId
    public static var invalidParameterValue_InvalidDataId: TCAmsError {
        TCAmsError(.invalidParameterValue_InvalidDataId)
    }
    
    /// InvalidParameterValue.InvalidFileContentSize
    public static var invalidParameterValue_InvalidFileContentSize: TCAmsError {
        TCAmsError(.invalidParameterValue_InvalidFileContentSize)
    }
    
    /// InvalidParameterValue.InvalidImageContent
    public static var invalidParameterValue_InvalidImageContent: TCAmsError {
        TCAmsError(.invalidParameterValue_InvalidImageContent)
    }
    
    /// InvalidParameterValue.InvalidParameter
    public static var invalidParameterValue_InvalidParameter: TCAmsError {
        TCAmsError(.invalidParameterValue_InvalidParameter)
    }
    
    /// InvalidParameter.ImageSizeTooSmall
    public static var invalidParameter_ImageSizeTooSmall: TCAmsError {
        TCAmsError(.invalidParameter_ImageSizeTooSmall)
    }
    
    /// InvalidParameter.InvalidImageContent
    public static var invalidParameter_InvalidImageContent: TCAmsError {
        TCAmsError(.invalidParameter_InvalidImageContent)
    }
    
    /// InvalidParameter.ParameterError
    public static var invalidParameter_ParameterError: TCAmsError {
        TCAmsError(.invalidParameter_ParameterError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAmsError {
        TCAmsError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    ///
    /// 缺少参数错误，必传参数没填
    public static var missingParameter: TCAmsError {
        TCAmsError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCAmsError {
        TCAmsError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAmsError {
        TCAmsError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCAmsError {
        TCAmsError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCAmsError {
        TCAmsError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAmsError {
        TCAmsError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCAmsError {
        TCAmsError(.resourceUnavailable)
    }
    
    /// ResourceUnavailable.InvalidImageContent
    public static var resourceUnavailable_InvalidImageContent: TCAmsError {
        TCAmsError(.resourceUnavailable_InvalidImageContent)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCAmsError {
        TCAmsError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    ///
    /// 未授权操作
    public static var unauthorizedOperation: TCAmsError {
        TCAmsError(.unauthorizedOperation)
    }
    
    public static var unauthorizedOperation_Unauthorized: TCAmsError {
        TCAmsError(.unauthorizedOperation_Unauthorized)
    }
    
    /// 未知参数错误。
    ///
    /// 未知参数错误，用户多传未定义的参数会导致错误
    public static var unknownParameter: TCAmsError {
        TCAmsError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAmsError {
        TCAmsError(.unsupportedOperation)
    }
}

extension TCAmsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCAmsError: Equatable {
    public static func == (lhs: TCAmsError, rhs: TCAmsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAmsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAmsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
