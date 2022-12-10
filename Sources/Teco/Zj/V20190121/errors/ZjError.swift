public struct TCZjError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_SmsSignCreate = "FailedOperation.SmsSignCreate"
        case failedOperation_SmsTemplateExists = "FailedOperation.SmsTemplateExists"
        case failedOperation_TemplateAmountIsOverLimit = "FailedOperation.TemplateAmountIsOverLimit"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidInstance = "InvalidParameterValue.InvalidInstance"
        case invalidParameterValue_InvalidMmsContents = "InvalidParameterValue.InvalidMmsContents"
        case invalidParameterValue_InvalidSign = "InvalidParameterValue.InvalidSign"
        case invalidParameter_AccountNotFound = "InvalidParameter.AccountNotFound"
        case invalidParameter_LicenseMultipleSmsAccount = "InvalidParameter.LicenseMultipleSmsAccount"
        case invalidParameter_LicenseNotEmpty = "InvalidParameter.LicenseNotEmpty"
        case invalidParameter_LicenseSmsAccountNotFound = "InvalidParameter.LicenseSmsAccountNotFound"
        case invalidParameter_SmsPostLinkActionTimeNotNull = "InvalidParameter.SmsPostLinkActionTimeNotNull"
        case invalidParameter_SmsPostLinkActionType = "InvalidParameter.SmsPostLinkActionType"
        case invalidParameter_SmsPostLinkActionTypeNotEmpty = "InvalidParameter.SmsPostLinkActionTypeNotEmpty"
        case invalidParameter_SmsPostLinkActionValueExceedLimit = "InvalidParameter.SmsPostLinkActionValueExceedLimit"
        case invalidParameter_SmsPostLinkParamsExceedLimit = "InvalidParameter.SmsPostLinkParamsExceedLimit"
        case invalidParameter_SmsPostLinkTypeKey = "InvalidParameter.SmsPostLinkTypeKey"
        case invalidParameter_SmsPostLinkTypeKeyNotEmpty = "InvalidParameter.SmsPostLinkTypeKeyNotEmpty"
        case invalidParameter_SmsPostLinkTypeValueExceedLimit = "InvalidParameter.SmsPostLinkTypeValueExceedLimit"
        case invalidParameter_SmsPostLinkTypeValueNotEmpty = "InvalidParameter.SmsPostLinkTypeValueNotEmpty"
        case invalidParameter_SmsSignCheckingInSmsAccount = "InvalidParameter.SmsSignCheckingInSmsAccount"
        case invalidParameter_SmsSignExistsInSmsAccount = "InvalidParameter.SmsSignExistsInSmsAccount"
        case invalidParameter_SmsSignPic = "InvalidParameter.SmsSignPic"
        case invalidParameter_UinNotEmpty = "InvalidParameter.UinNotEmpty"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_ExpiredLicense = "UnauthorizedOperation.ExpiredLicense"
        case unauthorizedOperation_InvalidLicense = "UnauthorizedOperation.InvalidLicense"
        case unauthorizedOperation_RoleFailure = "UnauthorizedOperation.RoleFailure"
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
    public static var authFailure: TCZjError {
        TCZjError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCZjError {
        TCZjError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCZjError {
        TCZjError(.failedOperation)
    }
    
    /// 签名创建失败。
    public static var failedOperation_SmsSignCreate: TCZjError {
        TCZjError(.failedOperation_SmsSignCreate)
    }
    
    /// 短信模板已存在,请勿重复创建。
    public static var failedOperation_SmsTemplateExists: TCZjError {
        TCZjError(.failedOperation_SmsTemplateExists)
    }
    
    /// 模板创建上限提醒。
    public static var failedOperation_TemplateAmountIsOverLimit: TCZjError {
        TCZjError(.failedOperation_TemplateAmountIsOverLimit)
    }
    
    /// 内部错误。
    public static var internalError: TCZjError {
        TCZjError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCZjError {
        TCZjError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCZjError {
        TCZjError(.invalidParameterValue)
    }
    
    /// 素材审核未通过。
    public static var invalidParameterValue_InvalidInstance: TCZjError {
        TCZjError(.invalidParameterValue_InvalidInstance)
    }
    
    /// 素材内容不合法。
    public static var invalidParameterValue_InvalidMmsContents: TCZjError {
        TCZjError(.invalidParameterValue_InvalidMmsContents)
    }
    
    public static var invalidParameterValue_InvalidSign: TCZjError {
        TCZjError(.invalidParameterValue_InvalidSign)
    }
    
    /// 找不到该账号。
    public static var invalidParameter_AccountNotFound: TCZjError {
        TCZjError(.invalidParameter_AccountNotFound)
    }
    
    /// license找到多个对应的短信子账号。
    public static var invalidParameter_LicenseMultipleSmsAccount: TCZjError {
        TCZjError(.invalidParameter_LicenseMultipleSmsAccount)
    }
    
    /// license不能为空。
    public static var invalidParameter_LicenseNotEmpty: TCZjError {
        TCZjError(.invalidParameter_LicenseNotEmpty)
    }
    
    /// license没有对应的短信子账号。
    public static var invalidParameter_LicenseSmsAccountNotFound: TCZjError {
        TCZjError(.invalidParameter_LicenseSmsAccountNotFound)
    }
    
    /// 行为时间不能为空。
    public static var invalidParameter_SmsPostLinkActionTimeNotNull: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkActionTimeNotNull)
    }
    
    /// 行为类型不合法。
    public static var invalidParameter_SmsPostLinkActionType: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkActionType)
    }
    
    /// 行为类型不能为空。
    public static var invalidParameter_SmsPostLinkActionTypeNotEmpty: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkActionTypeNotEmpty)
    }
    
    /// 行为值长度超出限制。
    public static var invalidParameter_SmsPostLinkActionValueExceedLimit: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkActionValueExceedLimit)
    }
    
    /// 附加参数数量超出限制。
    public static var invalidParameter_SmsPostLinkParamsExceedLimit: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkParamsExceedLimit)
    }
    
    /// 设备标识类型不合法。
    public static var invalidParameter_SmsPostLinkTypeKey: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkTypeKey)
    }
    
    /// 设备标识类型不能为空。
    public static var invalidParameter_SmsPostLinkTypeKeyNotEmpty: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkTypeKeyNotEmpty)
    }
    
    /// 设备标识值长度超出限制。
    public static var invalidParameter_SmsPostLinkTypeValueExceedLimit: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkTypeValueExceedLimit)
    }
    
    /// 设备标识值不能为空。
    public static var invalidParameter_SmsPostLinkTypeValueNotEmpty: TCZjError {
        TCZjError(.invalidParameter_SmsPostLinkTypeValueNotEmpty)
    }
    
    /// 签名审核中，请等待审核，无需重复创建。
    public static var invalidParameter_SmsSignCheckingInSmsAccount: TCZjError {
        TCZjError(.invalidParameter_SmsSignCheckingInSmsAccount)
    }
    
    /// 当前子账号下已存在该签名。
    public static var invalidParameter_SmsSignExistsInSmsAccount: TCZjError {
        TCZjError(.invalidParameter_SmsSignExistsInSmsAccount)
    }
    
    /// 证明图片不合法。
    public static var invalidParameter_SmsSignPic: TCZjError {
        TCZjError(.invalidParameter_SmsSignPic)
    }
    
    /// Uin不能为空。
    public static var invalidParameter_UinNotEmpty: TCZjError {
        TCZjError(.invalidParameter_UinNotEmpty)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCZjError {
        TCZjError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCZjError {
        TCZjError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCZjError {
        TCZjError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCZjError {
        TCZjError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCZjError {
        TCZjError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCZjError {
        TCZjError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCZjError {
        TCZjError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCZjError {
        TCZjError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCZjError {
        TCZjError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCZjError {
        TCZjError(.unauthorizedOperation)
    }
    
    /// license已过期。
    public static var unauthorizedOperation_ExpiredLicense: TCZjError {
        TCZjError(.unauthorizedOperation_ExpiredLicense)
    }
    
    /// license无权限。
    public static var unauthorizedOperation_InvalidLicense: TCZjError {
        TCZjError(.unauthorizedOperation_InvalidLicense)
    }
    
    /// 用户角色错误。
    public static var unauthorizedOperation_RoleFailure: TCZjError {
        TCZjError(.unauthorizedOperation_RoleFailure)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCZjError {
        TCZjError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCZjError {
        TCZjError(.unsupportedOperation)
    }
}

extension TCZjError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, UnauthorizedOperation.self]
    }
}

extension TCZjError: Equatable {
    public static func == (lhs: TCZjError, rhs: TCZjError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCZjError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCZjError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
