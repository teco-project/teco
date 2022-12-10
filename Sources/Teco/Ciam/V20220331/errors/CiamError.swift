public struct TCCiamError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccountAlreadyBeLinked = "FailedOperation.AccountAlreadyBeLinked"
        case failedOperation_AttributeFormatError = "FailedOperation.AttributeFormatError"
        case failedOperation_DataFlowTooManyRequests = "FailedOperation.DataFlowTooManyRequests"
        case failedOperation_EmailAlreadyExists = "FailedOperation.EmailAlreadyExists"
        case failedOperation_EmailIsNull = "FailedOperation.EmailIsNull"
        case failedOperation_ImportUserIsEmpty = "FailedOperation.ImportUserIsEmpty"
        case failedOperation_IndexedAttributeTooLong = "FailedOperation.IndexedAttributeTooLong"
        case failedOperation_InvalidTenant = "FailedOperation.InvalidTenant"
        case failedOperation_InvalidUserStatusEnum = "FailedOperation.InvalidUserStatusEnum"
        case failedOperation_InvalidUserStore = "FailedOperation.InvalidUserStore"
        case failedOperation_PasswordIsNull = "FailedOperation.PasswordIsNull"
        case failedOperation_PhoneNumberAlreadyExists = "FailedOperation.PhoneNumberAlreadyExists"
        case failedOperation_PhoneNumberIsNull = "FailedOperation.PhoneNumberIsNull"
        case failedOperation_PrimaryUserNotFound = "FailedOperation.PrimaryUserNotFound"
        case failedOperation_QueryUsersParameterMustInWhitelist = "FailedOperation.QueryUsersParameterMustInWhitelist"
        case failedOperation_QueryUsersParameterRepeat = "FailedOperation.QueryUsersParameterRepeat"
        case failedOperation_QueryUsersSortParameterMustInWhitelist = "FailedOperation.QueryUsersSortParameterMustInWhitelist"
        case failedOperation_QuotaLimitExceeded = "FailedOperation.QuotaLimitExceeded"
        case failedOperation_SecondaryUserNotFound = "FailedOperation.SecondaryUserNotFound"
        case failedOperation_UserGroupNotFound = "FailedOperation.UserGroupNotFound"
        case failedOperation_UserIsFreeze = "FailedOperation.UserIsFreeze"
        case failedOperation_UserNameAlreadyExists = "FailedOperation.UserNameAlreadyExists"
        case failedOperation_UserNameIsNull = "FailedOperation.UserNameIsNull"
        case failedOperation_UserNotFound = "FailedOperation.UserNotFound"
        case failedOperation_UserStatusRequired = "FailedOperation.UserStatusRequired"
        case internalError = "InternalError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_ParameterIllegal = "InvalidParameter.ParameterIllegal"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case requestLimitExceeded_FrequentRequest = "RequestLimitExceeded.FrequentRequest"
        case requestLimitExceeded_RepeatRequest = "RequestLimitExceeded.RepeatRequest"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_TenantNotActivated = "UnauthorizedOperation.TenantNotActivated"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCCiamError {
        TCCiamError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCCiamError {
        TCCiamError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCiamError {
        TCCiamError(.failedOperation)
    }
    
    /// 从账号已经被融合过，不允许再次融合。
    public static var failedOperation_AccountAlreadyBeLinked: TCCiamError {
        TCCiamError(.failedOperation_AccountAlreadyBeLinked)
    }
    
    /// 用户属性格式异常。
    public static var failedOperation_AttributeFormatError: TCCiamError {
        TCCiamError(.failedOperation_AttributeFormatError)
    }
    
    /// 已存在2个有效的任务，请等待其中一部分完成后重试。
    public static var failedOperation_DataFlowTooManyRequests: TCCiamError {
        TCCiamError(.failedOperation_DataFlowTooManyRequests)
    }
    
    /// 该邮箱已被用户绑定。
    public static var failedOperation_EmailAlreadyExists: TCCiamError {
        TCCiamError(.failedOperation_EmailAlreadyExists)
    }
    
    /// 邮箱地址不能为空。
    public static var failedOperation_EmailIsNull: TCCiamError {
        TCCiamError(.failedOperation_EmailIsNull)
    }
    
    public static var failedOperation_ImportUserIsEmpty: TCCiamError {
        TCCiamError(.failedOperation_ImportUserIsEmpty)
    }
    
    public static var failedOperation_IndexedAttributeTooLong: TCCiamError {
        TCCiamError(.failedOperation_IndexedAttributeTooLong)
    }
    
    /// 无效租户。
    public static var failedOperation_InvalidTenant: TCCiamError {
        TCCiamError(.failedOperation_InvalidTenant)
    }
    
    /// 状态枚举值错误，请参考接口文档。
    public static var failedOperation_InvalidUserStatusEnum: TCCiamError {
        TCCiamError(.failedOperation_InvalidUserStatusEnum)
    }
    
    /// 无效用户池。
    public static var failedOperation_InvalidUserStore: TCCiamError {
        TCCiamError(.failedOperation_InvalidUserStore)
    }
    
    /// 密码不能为空。
    public static var failedOperation_PasswordIsNull: TCCiamError {
        TCCiamError(.failedOperation_PasswordIsNull)
    }
    
    /// 该手机号已被用户绑定。
    public static var failedOperation_PhoneNumberAlreadyExists: TCCiamError {
        TCCiamError(.failedOperation_PhoneNumberAlreadyExists)
    }
    
    /// 电话号码不能为空。
    public static var failedOperation_PhoneNumberIsNull: TCCiamError {
        TCCiamError(.failedOperation_PhoneNumberIsNull)
    }
    
    /// 主用户不存在。
    public static var failedOperation_PrimaryUserNotFound: TCCiamError {
        TCCiamError(.failedOperation_PrimaryUserNotFound)
    }
    
    public static var failedOperation_QueryUsersParameterMustInWhitelist: TCCiamError {
        TCCiamError(.failedOperation_QueryUsersParameterMustInWhitelist)
    }
    
    public static var failedOperation_QueryUsersParameterRepeat: TCCiamError {
        TCCiamError(.failedOperation_QueryUsersParameterRepeat)
    }
    
    public static var failedOperation_QueryUsersSortParameterMustInWhitelist: TCCiamError {
        TCCiamError(.failedOperation_QueryUsersSortParameterMustInWhitelist)
    }
    
    /// 配额超限，如有需求请联系客服人员。
    public static var failedOperation_QuotaLimitExceeded: TCCiamError {
        TCCiamError(.failedOperation_QuotaLimitExceeded)
    }
    
    /// 从用户不存在。
    public static var failedOperation_SecondaryUserNotFound: TCCiamError {
        TCCiamError(.failedOperation_SecondaryUserNotFound)
    }
    
    /// 用户组不存在。
    public static var failedOperation_UserGroupNotFound: TCCiamError {
        TCCiamError(.failedOperation_UserGroupNotFound)
    }
    
    /// 用户已被冻结。
    public static var failedOperation_UserIsFreeze: TCCiamError {
        TCCiamError(.failedOperation_UserIsFreeze)
    }
    
    /// 用户名称已存在。
    public static var failedOperation_UserNameAlreadyExists: TCCiamError {
        TCCiamError(.failedOperation_UserNameAlreadyExists)
    }
    
    /// 用户名不能为空。
    public static var failedOperation_UserNameIsNull: TCCiamError {
        TCCiamError(.failedOperation_UserNameIsNull)
    }
    
    /// 用户不存在。
    public static var failedOperation_UserNotFound: TCCiamError {
        TCCiamError(.failedOperation_UserNotFound)
    }
    
    /// 更新状态必传。
    public static var failedOperation_UserStatusRequired: TCCiamError {
        TCCiamError(.failedOperation_UserStatusRequired)
    }
    
    /// 内部错误。
    public static var internalError: TCCiamError {
        TCCiamError(.internalError)
    }
    
    /// 未知错误。
    public static var internalError_UnknownError: TCCiamError {
        TCCiamError(.internalError_UnknownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCiamError {
        TCCiamError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCiamError {
        TCCiamError(.invalidParameterValue)
    }
    
    /// 请求参数不合法。
    public static var invalidParameter_ParameterIllegal: TCCiamError {
        TCCiamError(.invalidParameter_ParameterIllegal)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCiamError {
        TCCiamError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCiamError {
        TCCiamError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCiamError {
        TCCiamError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCCiamError {
        TCCiamError(.requestLimitExceeded)
    }
    
    /// 请求过于频繁，请稍后再试。
    public static var requestLimitExceeded_FrequentRequest: TCCiamError {
        TCCiamError(.requestLimitExceeded_FrequentRequest)
    }
    
    /// 请求重复，请稍后再试。
    public static var requestLimitExceeded_RepeatRequest: TCCiamError {
        TCCiamError(.requestLimitExceeded_RepeatRequest)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCiamError {
        TCCiamError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCCiamError {
        TCCiamError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCiamError {
        TCCiamError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCiamError {
        TCCiamError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCCiamError {
        TCCiamError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCiamError {
        TCCiamError(.unauthorizedOperation)
    }
    
    /// 服务未开通。
    public static var unauthorizedOperation_TenantNotActivated: TCCiamError {
        TCCiamError(.unauthorizedOperation_TenantNotActivated)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCiamError {
        TCCiamError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCiamError {
        TCCiamError(.unsupportedOperation)
    }
}

extension TCCiamError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, RequestLimitExceeded.self, UnauthorizedOperation.self]
    }
}

extension TCCiamError: Equatable {
    public static func == (lhs: TCCiamError, rhs: TCCiamError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCiamError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}