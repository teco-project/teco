public struct TCSsaError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_AuthModuleFailed = "AuthFailure.AuthModuleFailed"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_ParamError = "InternalError.ParamError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
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
        case unauthorizedOperation_SubAccountUnauthorized = "UnauthorizedOperation.SubAccountUnauthorized"
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
    public static var authFailure: TCSsaError {
        TCSsaError(.authFailure)
    }
    
    /// 云上资产、安全配置、合规风险配置、互联网攻击面测绘模块未授权。
    ///
    /// 引导客户进行模块授权
    public static var authFailure_AuthModuleFailed: TCSsaError {
        TCSsaError(.authFailure_AuthModuleFailed)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCSsaError {
        TCSsaError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCSsaError {
        TCSsaError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCSsaError {
        TCSsaError(.internalError)
    }
    
    /// DB错误。
    public static var internalError_DBError: TCSsaError {
        TCSsaError(.internalError_DBError)
    }
    
    /// 参数校验失败。
    public static var internalError_ParamError: TCSsaError {
        TCSsaError(.internalError_ParamError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSsaError {
        TCSsaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSsaError {
        TCSsaError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCSsaError {
        TCSsaError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCSsaError {
        TCSsaError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCSsaError {
        TCSsaError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCSsaError {
        TCSsaError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCSsaError {
        TCSsaError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCSsaError {
        TCSsaError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCSsaError {
        TCSsaError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCSsaError {
        TCSsaError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCSsaError {
        TCSsaError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCSsaError {
        TCSsaError(.unauthorizedOperation)
    }
    
    /// 子账号没有权限操作。
    public static var unauthorizedOperation_SubAccountUnauthorized: TCSsaError {
        TCSsaError(.unauthorizedOperation_SubAccountUnauthorized)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCSsaError {
        TCSsaError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCSsaError {
        TCSsaError(.unsupportedOperation)
    }
}

extension TCSsaError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, UnauthorizedOperation.self]
    }
}

extension TCSsaError: Equatable {
    public static func == (lhs: TCSsaError, rhs: TCSsaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSsaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSsaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
