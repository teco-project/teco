public struct TCIotError: TCErrorType {
    enum Code: String {
        case internalError_IotActionSystemError = "InternalError.IotActionSystemError"
        case internalError_IotDbError = "InternalError.IotDbError"
        case internalError_IotLogSystemError = "InternalError.IotLogSystemError"
        case internalError_IotShadowSystemError = "InternalError.IotShadowSystemError"
        case internalError_IotSystemError = "InternalError.IotSystemError"
        case internalError_MqiotSystemError = "InternalError.MqiotSystemError"
        case internalError_MqruleSystemError = "InternalError.MqruleSystemError"
        case invalidParameter_IotApplicationInvalidPassword = "InvalidParameter.IotApplicationInvalidPassword"
        case invalidParameter_IotApplicationInvalidUserPassword = "InvalidParameter.IotApplicationInvalidUserPassword"
        case invalidParameter_IotExpiredAccessToken = "InvalidParameter.IotExpiredAccessToken"
        case invalidParameter_IotExpiredSignature = "InvalidParameter.IotExpiredSignature"
        case invalidParameter_IotInvalidAccessToken = "InvalidParameter.IotInvalidAccessToken"
        case invalidParameter_IotInvalidSignature = "InvalidParameter.IotInvalidSignature"
        case invalidParameter_IotParamError = "InvalidParameter.IotParamError"
        case invalidParameter_IotProductEmptyDataTemplate = "InvalidParameter.IotProductEmptyDataTemplate"
        case invalidParameter_IotProductInvalidAuthType = "InvalidParameter.IotProductInvalidAuthType"
        case invalidParameter_IotProductInvalidDataProtocol = "InvalidParameter.IotProductInvalidDataProtocol"
        case invalidParameter_IotProductInvalidDataTemplate = "InvalidParameter.IotProductInvalidDataTemplate"
        case invalidParameter_IotProductInvalidDataTemplateRange = "InvalidParameter.IotProductInvalidDataTemplateRange"
        case invalidParameter_IotProductInvalidGatewayProductId = "InvalidParameter.IotProductInvalidGatewayProductId"
        case invalidParameter_IotProductInvalidSubDeviceProductId = "InvalidParameter.IotProductInvalidSubDeviceProductId"
        case invalidParameter_IotStatInvalidDate = "InvalidParameter.IotStatInvalidDate"
        case limitExceeded_IotBatchTooMany = "LimitExceeded.IotBatchTooMany"
        case limitExceeded_IotDeviceOpTooOften = "LimitExceeded.IotDeviceOpTooOften"
        case limitExceeded_IotProductOpTooOften = "LimitExceeded.IotProductOpTooOften"
        case limitExceeded_IotProductTooManyTopics = "LimitExceeded.IotProductTooManyTopics"
        case limitExceeded_IotRuleOpTooMany = "LimitExceeded.IotRuleOpTooMany"
        case limitExceeded_IotRuleOpTooOften = "LimitExceeded.IotRuleOpTooOften"
        case limitExceeded_IotTopicOpTooOften = "LimitExceeded.IotTopicOpTooOften"
        case limitExceeded_IotUserTooManyProducts = "LimitExceeded.IotUserTooManyProducts"
        case resourceInUse_IotApplicationDeviceExists = "ResourceInUse.IotApplicationDeviceExists"
        case resourceInUse_IotApplicationUserExists = "ResourceInUse.IotApplicationUserExists"
        case resourceInUse_IotDeviceExists = "ResourceInUse.IotDeviceExists"
        case resourceInUse_IotOpInProgress = "ResourceInUse.IotOpInProgress"
        case resourceInUse_IotProductExists = "ResourceInUse.IotProductExists"
        case resourceInUse_IotRuleExists = "ResourceInUse.IotRuleExists"
        case resourceInUse_IotTopicExists = "ResourceInUse.IotTopicExists"
        case resourceInUse_MqiotResourceExists = "ResourceInUse.MqiotResourceExists"
        case resourceNotFound_IotApplicationDeviceNotExists = "ResourceNotFound.IotApplicationDeviceNotExists"
        case resourceNotFound_IotApplicationNotExists = "ResourceNotFound.IotApplicationNotExists"
        case resourceNotFound_IotApplicationUserNotExists = "ResourceNotFound.IotApplicationUserNotExists"
        case resourceNotFound_IotDeviceNotExists = "ResourceNotFound.IotDeviceNotExists"
        case resourceNotFound_IotProductNotExists = "ResourceNotFound.IotProductNotExists"
        case resourceNotFound_IotRuleNotExists = "ResourceNotFound.IotRuleNotExists"
        case resourceNotFound_IotSubAccountNotExists = "ResourceNotFound.IotSubAccountNotExists"
        case resourceNotFound_IotTopicNotExists = "ResourceNotFound.IotTopicNotExists"
        case resourceNotFound_IotUserNotExists = "ResourceNotFound.IotUserNotExists"
        case resourceNotFound_MqruleRuleIdNotExists = "ResourceNotFound.MqruleRuleIdNotExists"
        case resourceUnavailable_IotRuleIsActive = "ResourceUnavailable.IotRuleIsActive"
        case resourceUnavailable_IotRuleNoAction = "ResourceUnavailable.IotRuleNoAction"
        case resourceUnavailable_IotRuleNoQuery = "ResourceUnavailable.IotRuleNoQuery"
        case resourceUnavailable_MqiotResourceNotExists = "ResourceUnavailable.MqiotResourceNotExists"
        case unauthorizedOperation_IotUserIsSuspended = "UnauthorizedOperation.IotUserIsSuspended"
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
    
    /// action系统错误。
    public static var internalError_IotActionSystemError: TCIotError {
        TCIotError(.internalError_IotActionSystemError)
    }
    
    /// DB错误。
    public static var internalError_IotDbError: TCIotError {
        TCIotError(.internalError_IotDbError)
    }
    
    /// 日志系统错误。
    public static var internalError_IotLogSystemError: TCIotError {
        TCIotError(.internalError_IotLogSystemError)
    }
    
    /// shadow系统错误。
    public static var internalError_IotShadowSystemError: TCIotError {
        TCIotError(.internalError_IotShadowSystemError)
    }
    
    /// 系统错误。
    public static var internalError_IotSystemError: TCIotError {
        TCIotError(.internalError_IotSystemError)
    }
    
    /// Mqiot系统错误。
    public static var internalError_MqiotSystemError: TCIotError {
        TCIotError(.internalError_MqiotSystemError)
    }
    
    /// rule系统错误。
    public static var internalError_MqruleSystemError: TCIotError {
        TCIotError(.internalError_MqruleSystemError)
    }
    
    /// 非法密码。
    public static var invalidParameter_IotApplicationInvalidPassword: TCIotError {
        TCIotError(.invalidParameter_IotApplicationInvalidPassword)
    }
    
    /// 用户名或密码错误。
    public static var invalidParameter_IotApplicationInvalidUserPassword: TCIotError {
        TCIotError(.invalidParameter_IotApplicationInvalidUserPassword)
    }
    
    /// 过期访问Token。
    public static var invalidParameter_IotExpiredAccessToken: TCIotError {
        TCIotError(.invalidParameter_IotExpiredAccessToken)
    }
    
    /// 过期签名。
    public static var invalidParameter_IotExpiredSignature: TCIotError {
        TCIotError(.invalidParameter_IotExpiredSignature)
    }
    
    /// 非法访问Token。
    public static var invalidParameter_IotInvalidAccessToken: TCIotError {
        TCIotError(.invalidParameter_IotInvalidAccessToken)
    }
    
    /// 非法签名。
    public static var invalidParameter_IotInvalidSignature: TCIotError {
        TCIotError(.invalidParameter_IotInvalidSignature)
    }
    
    /// 非法参数。
    public static var invalidParameter_IotParamError: TCIotError {
        TCIotError(.invalidParameter_IotParamError)
    }
    
    /// 空数据模版。
    public static var invalidParameter_IotProductEmptyDataTemplate: TCIotError {
        TCIotError(.invalidParameter_IotProductEmptyDataTemplate)
    }
    
    /// 非法产品鉴权类型。
    public static var invalidParameter_IotProductInvalidAuthType: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidAuthType)
    }
    
    /// 产品数据协议错误。
    public static var invalidParameter_IotProductInvalidDataProtocol: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidDataProtocol)
    }
    
    /// 非法数据模版。
    public static var invalidParameter_IotProductInvalidDataTemplate: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidDataTemplate)
    }
    
    /// 非法数据模版取值范围。
    public static var invalidParameter_IotProductInvalidDataTemplateRange: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidDataTemplateRange)
    }
    
    /// 网关设备产品Id错误。
    public static var invalidParameter_IotProductInvalidGatewayProductId: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidGatewayProductId)
    }
    
    /// 子设备产品Id错误。
    public static var invalidParameter_IotProductInvalidSubDeviceProductId: TCIotError {
        TCIotError(.invalidParameter_IotProductInvalidSubDeviceProductId)
    }
    
    /// 查询日期错误。
    public static var invalidParameter_IotStatInvalidDate: TCIotError {
        TCIotError(.invalidParameter_IotStatInvalidDate)
    }
    
    /// 批量操作超限。
    public static var limitExceeded_IotBatchTooMany: TCIotError {
        TCIotError(.limitExceeded_IotBatchTooMany)
    }
    
    /// 设备操作太频繁。
    public static var limitExceeded_IotDeviceOpTooOften: TCIotError {
        TCIotError(.limitExceeded_IotDeviceOpTooOften)
    }
    
    /// 产品操作太频繁。
    public static var limitExceeded_IotProductOpTooOften: TCIotError {
        TCIotError(.limitExceeded_IotProductOpTooOften)
    }
    
    /// 产品的Topics数量超限。
    public static var limitExceeded_IotProductTooManyTopics: TCIotError {
        TCIotError(.limitExceeded_IotProductTooManyTopics)
    }
    
    /// 规则批量操作超限。
    public static var limitExceeded_IotRuleOpTooMany: TCIotError {
        TCIotError(.limitExceeded_IotRuleOpTooMany)
    }
    
    /// 规则操作太频繁。
    public static var limitExceeded_IotRuleOpTooOften: TCIotError {
        TCIotError(.limitExceeded_IotRuleOpTooOften)
    }
    
    /// Topic操作太频繁。
    public static var limitExceeded_IotTopicOpTooOften: TCIotError {
        TCIotError(.limitExceeded_IotTopicOpTooOften)
    }
    
    /// 用户的产品数超限。
    public static var limitExceeded_IotUserTooManyProducts: TCIotError {
        TCIotError(.limitExceeded_IotUserTooManyProducts)
    }
    
    /// 设备已绑定。
    public static var resourceInUse_IotApplicationDeviceExists: TCIotError {
        TCIotError(.resourceInUse_IotApplicationDeviceExists)
    }
    
    /// 应用用户已存在。
    public static var resourceInUse_IotApplicationUserExists: TCIotError {
        TCIotError(.resourceInUse_IotApplicationUserExists)
    }
    
    /// 设备已存在。
    public static var resourceInUse_IotDeviceExists: TCIotError {
        TCIotError(.resourceInUse_IotDeviceExists)
    }
    
    /// 正在处理上一个操作。
    public static var resourceInUse_IotOpInProgress: TCIotError {
        TCIotError(.resourceInUse_IotOpInProgress)
    }
    
    /// 产品已存在。
    public static var resourceInUse_IotProductExists: TCIotError {
        TCIotError(.resourceInUse_IotProductExists)
    }
    
    /// 规则已存在。
    public static var resourceInUse_IotRuleExists: TCIotError {
        TCIotError(.resourceInUse_IotRuleExists)
    }
    
    /// Topic已存在。
    public static var resourceInUse_IotTopicExists: TCIotError {
        TCIotError(.resourceInUse_IotTopicExists)
    }
    
    /// 资源已存在。
    public static var resourceInUse_MqiotResourceExists: TCIotError {
        TCIotError(.resourceInUse_MqiotResourceExists)
    }
    
    /// 设备未绑定。
    public static var resourceNotFound_IotApplicationDeviceNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotApplicationDeviceNotExists)
    }
    
    /// 应用不存在。
    public static var resourceNotFound_IotApplicationNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotApplicationNotExists)
    }
    
    /// 应用用户不存在。
    public static var resourceNotFound_IotApplicationUserNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotApplicationUserNotExists)
    }
    
    /// 设备不存在。
    public static var resourceNotFound_IotDeviceNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotDeviceNotExists)
    }
    
    /// 产品不存在。
    public static var resourceNotFound_IotProductNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotProductNotExists)
    }
    
    /// 规则不存在。
    public static var resourceNotFound_IotRuleNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotRuleNotExists)
    }
    
    /// 授权子账号不存在。
    public static var resourceNotFound_IotSubAccountNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotSubAccountNotExists)
    }
    
    /// Topic不存在。
    public static var resourceNotFound_IotTopicNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotTopicNotExists)
    }
    
    /// 用户不存在。
    public static var resourceNotFound_IotUserNotExists: TCIotError {
        TCIotError(.resourceNotFound_IotUserNotExists)
    }
    
    /// 规则config id不存在。
    public static var resourceNotFound_MqruleRuleIdNotExists: TCIotError {
        TCIotError(.resourceNotFound_MqruleRuleIdNotExists)
    }
    
    /// 规则已启用。
    public static var resourceUnavailable_IotRuleIsActive: TCIotError {
        TCIotError(.resourceUnavailable_IotRuleIsActive)
    }
    
    /// 规则缺少动作。
    public static var resourceUnavailable_IotRuleNoAction: TCIotError {
        TCIotError(.resourceUnavailable_IotRuleNoAction)
    }
    
    /// 规则缺少查询。
    public static var resourceUnavailable_IotRuleNoQuery: TCIotError {
        TCIotError(.resourceUnavailable_IotRuleNoQuery)
    }
    
    /// 资源不存在。
    public static var resourceUnavailable_MqiotResourceNotExists: TCIotError {
        TCIotError(.resourceUnavailable_MqiotResourceNotExists)
    }
    
    /// 用户被封禁。
    public static var unauthorizedOperation_IotUserIsSuspended: TCIotError {
        TCIotError(.unauthorizedOperation_IotUserIsSuspended)
    }
}

extension TCIotError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCIotError: Equatable {
    public static func == (lhs: TCIotError, rhs: TCIotError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
