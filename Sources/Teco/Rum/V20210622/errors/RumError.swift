public struct TCRumError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ChargeNoBalance = "FailedOperation.ChargeNoBalance"
        case failedOperation_ChargeNoPayRight = "FailedOperation.ChargeNoPayRight"
        case failedOperation_ChargeParamInvalid = "FailedOperation.ChargeParamInvalid"
        case failedOperation_ClsCallFail = "FailedOperation.ClsCallFail"
        case failedOperation_DataBaseException = "FailedOperation.DataBaseException"
        case failedOperation_InfrastructureError = "FailedOperation.InfrastructureError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NoInstance = "ResourceNotFound.NoInstance"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var authFailure: TCRumError {
        TCRumError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCRumError {
        TCRumError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCRumError {
        TCRumError(.failedOperation)
    }
    
    /// 购买资源时账户余额不足，请先充值再进行购买。
    public static var failedOperation_ChargeNoBalance: TCRumError {
        TCRumError(.failedOperation_ChargeNoBalance)
    }
    
    /// 该账号没有付费权限，请联系对应账号管理员。
    public static var failedOperation_ChargeNoPayRight: TCRumError {
        TCRumError(.failedOperation_ChargeNoPayRight)
    }
    
    /// 请联系腾讯云助手与产品开发
    public static var failedOperation_ChargeParamInvalid: TCRumError {
        TCRumError(.failedOperation_ChargeParamInvalid)
    }
    
    /// CLS调用失败
    public static var failedOperation_ClsCallFail: TCRumError {
        TCRumError(.failedOperation_ClsCallFail)
    }
    
    /// 数据操作异常
    public static var failedOperation_DataBaseException: TCRumError {
        TCRumError(.failedOperation_DataBaseException)
    }
    
    /// 第三方依赖异常。
    public static var failedOperation_InfrastructureError: TCRumError {
        TCRumError(.failedOperation_InfrastructureError)
    }
    
    /// 内部错误。
    public static var internalError: TCRumError {
        TCRumError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCRumError {
        TCRumError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCRumError {
        TCRumError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCRumError {
        TCRumError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCRumError {
        TCRumError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCRumError {
        TCRumError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCRumError {
        TCRumError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCRumError {
        TCRumError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCRumError {
        TCRumError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCRumError {
        TCRumError(.resourceNotFound)
    }
    
    /// 实例不存在
    public static var resourceNotFound_NoInstance: TCRumError {
        TCRumError(.resourceNotFound_NoInstance)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCRumError {
        TCRumError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCRumError {
        TCRumError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCRumError {
        TCRumError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCRumError {
        TCRumError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCRumError {
        TCRumError(.unsupportedOperation)
    }
}

extension TCRumError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, ResourceNotFound.self]
    }
}

extension TCRumError: Equatable {
    public static func == (lhs: TCRumError, rhs: TCRumError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRumError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRumError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
