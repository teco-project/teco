public struct TCTcssError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AgentOffline = "FailedOperation.AgentOffline"
        case failedOperation_AuthorizedNotEnough = "FailedOperation.AuthorizedNotEnough"
        case failedOperation_DataValueNotCorrect = "FailedOperation.DataValueNotCorrect"
        case failedOperation_ErrAlreadyScanning = "FailedOperation.ErrAlreadyScanning"
        case failedOperation_ErrRuleNotFind = "FailedOperation.ErrRuleNotFind"
        case failedOperation_NotifyPolicyChangeFailed = "FailedOperation.NotifyPolicyChangeFailed"
        case failedOperation_RuleConfigTooMany = "FailedOperation.RuleConfigTooMany"
        case failedOperation_RuleInfoRepeat = "FailedOperation.RuleInfoRepeat"
        case failedOperation_RuleNameRepeat = "FailedOperation.RuleNameRepeat"
        case failedOperation_RuleNotFind = "FailedOperation.RuleNotFind"
        case failedOperation_RuleSelectImageOutRange = "FailedOperation.RuleSelectImageOutRange"
        case internalError = "InternalError"
        case internalError_ErrRoleNotExist = "InternalError.ErrRoleNotExist"
        case internalError_MainDBFail = "InternalError.MainDBFail"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DataNotFound = "InvalidParameterValue.DataNotFound"
        case invalidParameterValue_DataRange = "InvalidParameterValue.DataRange"
        case invalidParameterValue_LengthLimit = "InvalidParameterValue.LengthLimit"
        case invalidParameter_ErrIpNoValid = "InvalidParameter.ErrIpNoValid"
        case invalidParameter_InvalidFormat = "InvalidParameter.InvalidFormat"
        case invalidParameter_MissingParameter = "InvalidParameter.MissingParameter"
        case invalidParameter_ParsingError = "InvalidParameter.ParsingError"
        case invalidParameter_PortNoValid = "InvalidParameter.PortNoValid"
        case invalidParameter_ReverShellKeyFieldAllEmpty = "InvalidParameter.ReverShellKeyFieldAllEmpty"
        case invalidParameter_RuleInfoInValid = "InvalidParameter.RuleInfoInValid"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
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
    public static var authFailure: TCTcssError {
        TCTcssError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTcssError {
        TCTcssError(.failedOperation)
    }
    
    /// 客户端已离线。
    public static var failedOperation_AgentOffline: TCTcssError {
        TCTcssError(.failedOperation_AgentOffline)
    }
    
    /// 授权数不足。
    public static var failedOperation_AuthorizedNotEnough: TCTcssError {
        TCTcssError(.failedOperation_AuthorizedNotEnough)
    }
    
    /// 响应数据值不正确。
    public static var failedOperation_DataValueNotCorrect: TCTcssError {
        TCTcssError(.failedOperation_DataValueNotCorrect)
    }
    
    /// 在扫描中或无扫描权限建议授权后扫描。
    public static var failedOperation_ErrAlreadyScanning: TCTcssError {
        TCTcssError(.failedOperation_ErrAlreadyScanning)
    }
    
    /// 当前规则信息未找到。
    public static var failedOperation_ErrRuleNotFind: TCTcssError {
        TCTcssError(.failedOperation_ErrRuleNotFind)
    }
    
    /// 通知策略变更失败。
    public static var failedOperation_NotifyPolicyChangeFailed: TCTcssError {
        TCTcssError(.failedOperation_NotifyPolicyChangeFailed)
    }
    
    /// 子规则配置过多。
    public static var failedOperation_RuleConfigTooMany: TCTcssError {
        TCTcssError(.failedOperation_RuleConfigTooMany)
    }
    
    /// 规则信息存在重复。
    public static var failedOperation_RuleInfoRepeat: TCTcssError {
        TCTcssError(.failedOperation_RuleInfoRepeat)
    }
    
    /// 规则名字存在重复。
    public static var failedOperation_RuleNameRepeat: TCTcssError {
        TCTcssError(.failedOperation_RuleNameRepeat)
    }
    
    /// 当前规则信息未找到。
    public static var failedOperation_RuleNotFind: TCTcssError {
        TCTcssError(.failedOperation_RuleNotFind)
    }
    
    /// 选择镜像数量过多。
    public static var failedOperation_RuleSelectImageOutRange: TCTcssError {
        TCTcssError(.failedOperation_RuleSelectImageOutRange)
    }
    
    /// 内部错误。
    public static var internalError: TCTcssError {
        TCTcssError(.internalError)
    }
    
    /// 用户未授权。
    public static var internalError_ErrRoleNotExist: TCTcssError {
        TCTcssError(.internalError_ErrRoleNotExist)
    }
    
    /// 操作数据库失败。
    public static var internalError_MainDBFail: TCTcssError {
        TCTcssError(.internalError_MainDBFail)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcssError {
        TCTcssError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTcssError {
        TCTcssError(.invalidParameterValue)
    }
    
    /// 当前数据未能查询到。
    public static var invalidParameterValue_DataNotFound: TCTcssError {
        TCTcssError(.invalidParameterValue_DataNotFound)
    }
    
    /// 当前数据区间错误。
    public static var invalidParameterValue_DataRange: TCTcssError {
        TCTcssError(.invalidParameterValue_DataRange)
    }
    
    /// 参数长度受限。
    public static var invalidParameterValue_LengthLimit: TCTcssError {
        TCTcssError(.invalidParameterValue_LengthLimit)
    }
    
    /// IP格式不合法。
    public static var invalidParameter_ErrIpNoValid: TCTcssError {
        TCTcssError(.invalidParameter_ErrIpNoValid)
    }
    
    /// 参数格式错误。
    ///
    /// 修正参数格式。
    public static var invalidParameter_InvalidFormat: TCTcssError {
        TCTcssError(.invalidParameter_InvalidFormat)
    }
    
    /// 缺少必须参数。
    ///
    /// 修正输入
    public static var invalidParameter_MissingParameter: TCTcssError {
        TCTcssError(.invalidParameter_MissingParameter)
    }
    
    /// 参数解析错误。
    ///
    /// 修正输入参数
    public static var invalidParameter_ParsingError: TCTcssError {
        TCTcssError(.invalidParameter_ParsingError)
    }
    
    /// 端口格式不合法。
    public static var invalidParameter_PortNoValid: TCTcssError {
        TCTcssError(.invalidParameter_PortNoValid)
    }
    
    /// 进程名/目标IP/目标端口，不能同时为空。
    public static var invalidParameter_ReverShellKeyFieldAllEmpty: TCTcssError {
        TCTcssError(.invalidParameter_ReverShellKeyFieldAllEmpty)
    }
    
    /// 前规则信息参数非法。
    public static var invalidParameter_RuleInfoInValid: TCTcssError {
        TCTcssError(.invalidParameter_RuleInfoInValid)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTcssError {
        TCTcssError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTcssError {
        TCTcssError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTcssError {
        TCTcssError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCTcssError {
        TCTcssError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTcssError {
        TCTcssError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTcssError {
        TCTcssError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcssError {
        TCTcssError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTcssError {
        TCTcssError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTcssError {
        TCTcssError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTcssError {
        TCTcssError(.unknownParameter)
    }
}

extension TCTcssError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self]
    }
}

extension TCTcssError: Equatable {
    public static func == (lhs: TCTcssError, rhs: TCTcssError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcssError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcssError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
