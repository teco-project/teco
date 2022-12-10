public struct TCSmhError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_SendSms = "InternalError.SendSms"
        case invalidParameterValue_BucketNameInvalid = "InvalidParameterValue.BucketNameInvalid"
        case invalidParameterValue_BucketNameNotBelongYou = "InvalidParameterValue.BucketNameNotBelongYou"
        case invalidParameterValue_BucketNotFound = "InvalidParameterValue.BucketNotFound"
        case invalidParameterValue_BucketRegionInvalid = "InvalidParameterValue.BucketRegionInvalid"
        case invalidParameterValue_CosStorageClass = "InvalidParameterValue.CosStorageClass"
        case invalidParameterValue_CosStorageClassIntelligentTiering = "InvalidParameterValue.CosStorageClassIntelligentTiering"
        case invalidParameterValue_CountryCode = "InvalidParameterValue.CountryCode"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_NotModified = "InvalidParameterValue.NotModified"
        case invalidParameterValue_NotSuperAdmin = "InvalidParameterValue.NotSuperAdmin"
        case invalidParameterValue_PhoneNumber = "InvalidParameterValue.PhoneNumber"
        case limitExceeded_UserLimit = "LimitExceeded.UserLimit"
        case requestLimitExceeded_SendSms = "RequestLimitExceeded.SendSms"
        case resourceInUse_MultiSpace = "ResourceInUse.MultiSpace"
        case resourceNotFound_Library = "ResourceNotFound.Library"
        case resourceNotFound_OfficialInstance = "ResourceNotFound.OfficialInstance"
        case unauthorizedOperation_CreateMediaBucket = "UnauthorizedOperation.CreateMediaBucket"
        case unauthorizedOperation_PassRole = "UnauthorizedOperation.PassRole"
        case unauthorizedOperation_ServiceLinkedRole = "UnauthorizedOperation.ServiceLinkedRole"
        case unauthorizedOperation_SmsCode = "UnauthorizedOperation.SmsCode"
        case unauthorizedOperation_SmsCodeExceeded = "UnauthorizedOperation.SmsCodeExceeded"
        case unsupportedOperation_Purpose = "UnsupportedOperation.Purpose"
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
    public static var internalError: TCSmhError {
        TCSmhError(.internalError)
    }
    
    /// 发送短信验证码时发生错误。
    public static var internalError_SendSms: TCSmhError {
        TCSmhError(.internalError_SendSms)
    }
    
    /// 存储桶名称无效。
    public static var invalidParameterValue_BucketNameInvalid: TCSmhError {
        TCSmhError(.invalidParameterValue_BucketNameInvalid)
    }
    
    /// 存储桶名称不属于当前主账号。
    public static var invalidParameterValue_BucketNameNotBelongYou: TCSmhError {
        TCSmhError(.invalidParameterValue_BucketNameNotBelongYou)
    }
    
    /// 存储桶不存在或不在指定地域。
    public static var invalidParameterValue_BucketNotFound: TCSmhError {
        TCSmhError(.invalidParameterValue_BucketNotFound)
    }
    
    /// 存储桶所在地域无效。
    public static var invalidParameterValue_BucketRegionInvalid: TCSmhError {
        TCSmhError(.invalidParameterValue_BucketRegionInvalid)
    }
    
    /// 指定的存储类型无效。
    public static var invalidParameterValue_CosStorageClass: TCSmhError {
        TCSmhError(.invalidParameterValue_CosStorageClass)
    }
    
    /// 指定的存储桶未开启智能分层存储，请先开通存储桶的智能分层存储功能。
    public static var invalidParameterValue_CosStorageClassIntelligentTiering: TCSmhError {
        TCSmhError(.invalidParameterValue_CosStorageClassIntelligentTiering)
    }
    
    /// 指定的国家代码无效。
    public static var invalidParameterValue_CountryCode: TCSmhError {
        TCSmhError(.invalidParameterValue_CountryCode)
    }
    
    /// 参数值数量或字符数超过限制。
    public static var invalidParameterValue_LimitExceeded: TCSmhError {
        TCSmhError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 指定的手机号码与当前的相同。
    public static var invalidParameterValue_NotModified: TCSmhError {
        TCSmhError(.invalidParameterValue_NotModified)
    }
    
    public static var invalidParameterValue_NotSuperAdmin: TCSmhError {
        TCSmhError(.invalidParameterValue_NotSuperAdmin)
    }
    
    /// 指定的手机号码无效。
    public static var invalidParameterValue_PhoneNumber: TCSmhError {
        TCSmhError(.invalidParameterValue_PhoneNumber)
    }
    
    /// 已达到用户数量限制，请先升级产品规格。
    public static var limitExceeded_UserLimit: TCSmhError {
        TCSmhError(.limitExceeded_UserLimit)
    }
    
    /// 发送至指定手机号码的短信验证码已达到频率限制。
    public static var requestLimitExceeded_SendSms: TCSmhError {
        TCSmhError(.requestLimitExceeded_SendSms)
    }
    
    /// 多租户空间媒体库中存在正在使用的租户空间。
    public static var resourceInUse_MultiSpace: TCSmhError {
        TCSmhError(.resourceInUse_MultiSpace)
    }
    
    /// 媒体库不存在或不属于当前账号。
    public static var resourceNotFound_Library: TCSmhError {
        TCSmhError(.resourceNotFound_Library)
    }
    
    /// 官方云盘实例不存在或不属于当前账号。
    public static var resourceNotFound_OfficialInstance: TCSmhError {
        TCSmhError(.resourceNotFound_OfficialInstance)
    }
    
    public static var unauthorizedOperation_CreateMediaBucket: TCSmhError {
        TCSmhError(.unauthorizedOperation_CreateMediaBucket)
    }
    
    /// 未授予 cam:PassRole 权限。
    public static var unauthorizedOperation_PassRole: TCSmhError {
        TCSmhError(.unauthorizedOperation_PassRole)
    }
    
    /// 未授予 SMH 服务相关角色。
    public static var unauthorizedOperation_ServiceLinkedRole: TCSmhError {
        TCSmhError(.unauthorizedOperation_ServiceLinkedRole)
    }
    
    /// 短信验证码错误或已过期。
    public static var unauthorizedOperation_SmsCode: TCSmhError {
        TCSmhError(.unauthorizedOperation_SmsCode)
    }
    
    /// 短信验证码验证次数超限，请重新发送短信验证码。
    public static var unauthorizedOperation_SmsCodeExceeded: TCSmhError {
        TCSmhError(.unauthorizedOperation_SmsCodeExceeded)
    }
    
    /// 指定的目的不受支持。
    public static var unsupportedOperation_Purpose: TCSmhError {
        TCSmhError(.unsupportedOperation_Purpose)
    }
}

extension TCSmhError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameterValue.self, LimitExceeded.self, RequestLimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCSmhError: Equatable {
    public static func == (lhs: TCSmhError, rhs: TCSmhError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSmhError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}