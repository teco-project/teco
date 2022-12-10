public struct TCKmsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_CmkUsedByCloudProduct = "FailedOperation.CmkUsedByCloudProduct"
        case failedOperation_DecryptError = "FailedOperation.DecryptError"
        case failedOperation_EncryptionError = "FailedOperation.EncryptionError"
        case failedOperation_TaggingError = "FailedOperation.TaggingError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AliasAlreadyExists = "InvalidParameterValue.AliasAlreadyExists"
        case invalidParameterValue_DuplicatedKeyId = "InvalidParameterValue.DuplicatedKeyId"
        case invalidParameterValue_InvalidAlias = "InvalidParameterValue.InvalidAlias"
        case invalidParameterValue_InvalidCiphertext = "InvalidParameterValue.InvalidCiphertext"
        case invalidParameterValue_InvalidHsmClusterId = "InvalidParameterValue.InvalidHsmClusterId"
        case invalidParameterValue_InvalidKeyId = "InvalidParameterValue.InvalidKeyId"
        case invalidParameterValue_InvalidKeyUsage = "InvalidParameterValue.InvalidKeyUsage"
        case invalidParameterValue_InvalidPlaintext = "InvalidParameterValue.InvalidPlaintext"
        case invalidParameterValue_InvalidType = "InvalidParameterValue.InvalidType"
        case invalidParameterValue_MaterialNotMatch = "InvalidParameterValue.MaterialNotMatch"
        case invalidParameterValue_TagKeysDuplicated = "InvalidParameterValue.TagKeysDuplicated"
        case invalidParameterValue_TagsNotExisted = "InvalidParameterValue.TagsNotExisted"
        case invalidParameter_DecryptMaterialError = "InvalidParameter.DecryptMaterialError"
        case invalidParameter_InvalidPendingWindowInDays = "InvalidParameter.InvalidPendingWindowInDays"
        case limitExceeded_CmkLimitExceeded = "LimitExceeded.CmkLimitExceeded"
        case limitExceeded_FingerprintsLimitExceeded = "LimitExceeded.FingerprintsLimitExceeded"
        case limitExceeded_KeyLimitExceeded = "LimitExceeded.KeyLimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable_CloudResourceBindingNotFound = "ResourceUnavailable.CloudResourceBindingNotFound"
        case resourceUnavailable_CmkArchived = "ResourceUnavailable.CmkArchived"
        case resourceUnavailable_CmkDisabled = "ResourceUnavailable.CmkDisabled"
        case resourceUnavailable_CmkNotFound = "ResourceUnavailable.CmkNotFound"
        case resourceUnavailable_CmkNotPendingDelete = "ResourceUnavailable.CmkNotPendingDelete"
        case resourceUnavailable_CmkShouldBeDisabled = "ResourceUnavailable.CmkShouldBeDisabled"
        case resourceUnavailable_CmkStateNotSupport = "ResourceUnavailable.CmkStateNotSupport"
        case resourceUnavailable_KeyDisabled = "ResourceUnavailable.KeyDisabled"
        case resourceUnavailable_KeyPendingDelete = "ResourceUnavailable.KeyPendingDelete"
        case resourceUnavailable_NotPurchased = "ResourceUnavailable.NotPurchased"
        case resourceUnavailable_TokenExpired = "ResourceUnavailable.TokenExpired"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation_ExternalCmkCanNotRotate = "UnsupportedOperation.ExternalCmkCanNotRotate"
        case unsupportedOperation_NotExternalCmk = "UnsupportedOperation.NotExternalCmk"
        case unsupportedOperation_NotUserCreatedCmk = "UnsupportedOperation.NotUserCreatedCmk"
        case unsupportedOperation_ServiceTemporaryUnavailable = "UnsupportedOperation.ServiceTemporaryUnavailable"
        case unsupportedOperation_UnsupportedKeyUsageInCurrentRegion = "UnsupportedOperation.UnsupportedKeyUsageInCurrentRegion"
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
    public static var authFailure: TCKmsError {
        TCKmsError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCKmsError {
        TCKmsError(.failedOperation)
    }
    
    /// CMK正在被云产品使用。
    public static var failedOperation_CmkUsedByCloudProduct: TCKmsError {
        TCKmsError(.failedOperation_CmkUsedByCloudProduct)
    }
    
    /// 解密失败。
    public static var failedOperation_DecryptError: TCKmsError {
        TCKmsError(.failedOperation_DecryptError)
    }
    
    /// 加密操作失败。
    public static var failedOperation_EncryptionError: TCKmsError {
        TCKmsError(.failedOperation_EncryptionError)
    }
    
    public static var failedOperation_TaggingError: TCKmsError {
        TCKmsError(.failedOperation_TaggingError)
    }
    
    /// 内部错误。
    public static var internalError: TCKmsError {
        TCKmsError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCKmsError {
        TCKmsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCKmsError {
        TCKmsError(.invalidParameterValue)
    }
    
    /// 别名已经存在。
    public static var invalidParameterValue_AliasAlreadyExists: TCKmsError {
        TCKmsError(.invalidParameterValue_AliasAlreadyExists)
    }
    
    /// KeyId重复。
    public static var invalidParameterValue_DuplicatedKeyId: TCKmsError {
        TCKmsError(.invalidParameterValue_DuplicatedKeyId)
    }
    
    /// 别名格式错误。
    public static var invalidParameterValue_InvalidAlias: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidAlias)
    }
    
    /// 密文格式错误。
    public static var invalidParameterValue_InvalidCiphertext: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidCiphertext)
    }
    
    /// 无效的 HSM 集群 ID。
    public static var invalidParameterValue_InvalidHsmClusterId: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidHsmClusterId)
    }
    
    /// KeyId不合法。
    public static var invalidParameterValue_InvalidKeyId: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidKeyId)
    }
    
    /// KeyUsage参数错误。
    public static var invalidParameterValue_InvalidKeyUsage: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidKeyUsage)
    }
    
    /// Plaintext不合法。
    public static var invalidParameterValue_InvalidPlaintext: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidPlaintext)
    }
    
    /// Type参数错误。
    public static var invalidParameterValue_InvalidType: TCKmsError {
        TCKmsError(.invalidParameterValue_InvalidType)
    }
    
    /// 导入的密钥材料和历史导入不同。
    public static var invalidParameterValue_MaterialNotMatch: TCKmsError {
        TCKmsError(.invalidParameterValue_MaterialNotMatch)
    }
    
    /// 标签键重复。
    public static var invalidParameterValue_TagKeysDuplicated: TCKmsError {
        TCKmsError(.invalidParameterValue_TagKeysDuplicated)
    }
    
    /// 标签键或标签值不存在。
    public static var invalidParameterValue_TagsNotExisted: TCKmsError {
        TCKmsError(.invalidParameterValue_TagsNotExisted)
    }
    
    /// 解密EncryptedKeyMaterial失败。
    public static var invalidParameter_DecryptMaterialError: TCKmsError {
        TCKmsError(.invalidParameter_DecryptMaterialError)
    }
    
    /// 计划删除时间参数非法。
    public static var invalidParameter_InvalidPendingWindowInDays: TCKmsError {
        TCKmsError(.invalidParameter_InvalidPendingWindowInDays)
    }
    
    /// CMK数量已达上限。
    public static var limitExceeded_CmkLimitExceeded: TCKmsError {
        TCKmsError(.limitExceeded_CmkLimitExceeded)
    }
    
    /// 设备指纹个数超过限制。
    public static var limitExceeded_FingerprintsLimitExceeded: TCKmsError {
        TCKmsError(.limitExceeded_FingerprintsLimitExceeded)
    }
    
    /// 创建的密钥个数超过限制。
    public static var limitExceeded_KeyLimitExceeded: TCKmsError {
        TCKmsError(.limitExceeded_KeyLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCKmsError {
        TCKmsError(.missingParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCKmsError {
        TCKmsError(.resourceNotFound)
    }
    
    /// cmk和云资源的绑定关系不存在。
    public static var resourceUnavailable_CloudResourceBindingNotFound: TCKmsError {
        TCKmsError(.resourceUnavailable_CloudResourceBindingNotFound)
    }
    
    /// CMK已存档。
    public static var resourceUnavailable_CmkArchived: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkArchived)
    }
    
    /// CMK已被禁用。
    public static var resourceUnavailable_CmkDisabled: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkDisabled)
    }
    
    /// CMK不存在。
    public static var resourceUnavailable_CmkNotFound: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkNotFound)
    }
    
    /// CMK不是计划删除状态不能被执行取消计划删除。
    public static var resourceUnavailable_CmkNotPendingDelete: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkNotPendingDelete)
    }
    
    /// 未被禁用的CMK不能被计划删除。
    public static var resourceUnavailable_CmkShouldBeDisabled: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkShouldBeDisabled)
    }
    
    /// CMK 状态不支持该操作。
    public static var resourceUnavailable_CmkStateNotSupport: TCKmsError {
        TCKmsError(.resourceUnavailable_CmkStateNotSupport)
    }
    
    /// 密钥已被禁用。
    public static var resourceUnavailable_KeyDisabled: TCKmsError {
        TCKmsError(.resourceUnavailable_KeyDisabled)
    }
    
    /// 不可用密钥：密钥待删除。
    public static var resourceUnavailable_KeyPendingDelete: TCKmsError {
        TCKmsError(.resourceUnavailable_KeyPendingDelete)
    }
    
    /// 白盒密钥服务尚未开通。
    public static var resourceUnavailable_NotPurchased: TCKmsError {
        TCKmsError(.resourceUnavailable_NotPurchased)
    }
    
    /// Token已过期。
    public static var resourceUnavailable_TokenExpired: TCKmsError {
        TCKmsError(.resourceUnavailable_TokenExpired)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCKmsError {
        TCKmsError(.unauthorizedOperation)
    }
    
    /// 用户导入类型的CMK禁止轮换。
    public static var unsupportedOperation_ExternalCmkCanNotRotate: TCKmsError {
        TCKmsError(.unsupportedOperation_ExternalCmkCanNotRotate)
    }
    
    /// CMK类型错误，仅支持External CMK。
    public static var unsupportedOperation_NotExternalCmk: TCKmsError {
        TCKmsError(.unsupportedOperation_NotExternalCmk)
    }
    
    /// 仅支持对用户自己创建的CMK做更新。
    public static var unsupportedOperation_NotUserCreatedCmk: TCKmsError {
        TCKmsError(.unsupportedOperation_NotUserCreatedCmk)
    }
    
    /// 服务暂时不可用。
    public static var unsupportedOperation_ServiceTemporaryUnavailable: TCKmsError {
        TCKmsError(.unsupportedOperation_ServiceTemporaryUnavailable)
    }
    
    /// 加密方式在当前region不支持。
    public static var unsupportedOperation_UnsupportedKeyUsageInCurrentRegion: TCKmsError {
        TCKmsError(.unsupportedOperation_UnsupportedKeyUsageInCurrentRegion)
    }
}

extension TCKmsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCKmsError: Equatable {
    public static func == (lhs: TCKmsError, rhs: TCKmsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCKmsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}