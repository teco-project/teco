public struct TCSsmError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessKmsError = "FailedOperation.AccessKmsError"
        case failedOperation_RotationForbidden = "FailedOperation.RotationForbidden"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_TagKeysDuplicated = "InvalidParameterValue.TagKeysDuplicated"
        case invalidParameterValue_TagsNotExisted = "InvalidParameterValue.TagsNotExisted"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_AccessKeyOverLimit = "OperationDenied.AccessKeyOverLimit"
        case operationDenied_AutoRotatedResource = "OperationDenied.AutoRotatedResource"
        case operationDenied_RoleNotExist = "OperationDenied.RoleNotExist"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_SecretExists = "ResourceInUse.SecretExists"
        case resourceInUse_VersionIdExists = "ResourceInUse.VersionIdExists"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_SecretNotExist = "ResourceNotFound.SecretNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotPurchased = "ResourceUnavailable.NotPurchased"
        case resourceUnavailable_ResourceDisabled = "ResourceUnavailable.ResourceDisabled"
        case resourceUnavailable_ResourcePendingDeleted = "ResourceUnavailable.ResourcePendingDeleted"
        case resourceUnavailable_ResourceUninitialized = "ResourceUnavailable.ResourceUninitialized"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AccessKmsError = "UnauthorizedOperation.AccessKmsError"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCSsmError {
        TCSsmError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCSsmError {
        TCSsmError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCSsmError {
        TCSsmError(.failedOperation)
    }
    
    /// KMS操作失败。
    public static var failedOperation_AccessKmsError: TCSsmError {
        TCSsmError(.failedOperation_AccessKmsError)
    }
    
    /// 凭据被禁止轮转。
    public static var failedOperation_RotationForbidden: TCSsmError {
        TCSsmError(.failedOperation_RotationForbidden)
    }
    
    /// 内部错误。
    public static var internalError: TCSsmError {
        TCSsmError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSsmError {
        TCSsmError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSsmError {
        TCSsmError(.invalidParameterValue)
    }
    
    /// 标签键重复。
    public static var invalidParameterValue_TagKeysDuplicated: TCSsmError {
        TCSsmError(.invalidParameterValue_TagKeysDuplicated)
    }
    
    /// 标签键或标签值不存在。
    public static var invalidParameterValue_TagsNotExisted: TCSsmError {
        TCSsmError(.invalidParameterValue_TagsNotExisted)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCSsmError {
        TCSsmError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCSsmError {
        TCSsmError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCSsmError {
        TCSsmError(.operationDenied)
    }
    
    /// AccessKey已经达到上限。
    public static var operationDenied_AccessKeyOverLimit: TCSsmError {
        TCSsmError(.operationDenied_AccessKeyOverLimit)
    }
    
    /// 不允许手动更新具有自动轮换功能的凭据。
    public static var operationDenied_AutoRotatedResource: TCSsmError {
        TCSsmError(.operationDenied_AutoRotatedResource)
    }
    
    /// 角色不存在。
    ///
    /// 检查调用方账号中是否已定义该接口所需的角色。
    public static var operationDenied_RoleNotExist: TCSsmError {
        TCSsmError(.operationDenied_RoleNotExist)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCSsmError {
        TCSsmError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCSsmError {
        TCSsmError(.resourceInUse)
    }
    
    /// 凭据名已存在。
    public static var resourceInUse_SecretExists: TCSsmError {
        TCSsmError(.resourceInUse_SecretExists)
    }
    
    /// 版本号已存在。
    public static var resourceInUse_VersionIdExists: TCSsmError {
        TCSsmError(.resourceInUse_VersionIdExists)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCSsmError {
        TCSsmError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCSsmError {
        TCSsmError(.resourceNotFound)
    }
    
    /// 凭据不存在。
    public static var resourceNotFound_SecretNotExist: TCSsmError {
        TCSsmError(.resourceNotFound_SecretNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCSsmError {
        TCSsmError(.resourceUnavailable)
    }
    
    /// 服务未购买。
    public static var resourceUnavailable_NotPurchased: TCSsmError {
        TCSsmError(.resourceUnavailable_NotPurchased)
    }
    
    /// 凭据被禁用。
    public static var resourceUnavailable_ResourceDisabled: TCSsmError {
        TCSsmError(.resourceUnavailable_ResourceDisabled)
    }
    
    /// 凭据处于计划删除状态。
    public static var resourceUnavailable_ResourcePendingDeleted: TCSsmError {
        TCSsmError(.resourceUnavailable_ResourcePendingDeleted)
    }
    
    /// 凭据未完成初始化。
    public static var resourceUnavailable_ResourceUninitialized: TCSsmError {
        TCSsmError(.resourceUnavailable_ResourceUninitialized)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCSsmError {
        TCSsmError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCSsmError {
        TCSsmError(.unauthorizedOperation)
    }
    
    /// 访问KMS失败。
    public static var unauthorizedOperation_AccessKmsError: TCSsmError {
        TCSsmError(.unauthorizedOperation_AccessKmsError)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCSsmError {
        TCSsmError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCSsmError {
        TCSsmError(.unsupportedOperation)
    }
}

extension TCSsmError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self, OperationDenied.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCSsmError: Equatable {
    public static func == (lhs: TCSsmError, rhs: TCSsmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSsmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSsmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
