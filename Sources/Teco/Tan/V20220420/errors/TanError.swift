public struct TCTanError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_GroupNameExisted = "InvalidParameter.GroupNameExisted"
        case invalidParameter_RecordExceedsLimit = "InvalidParameter.RecordExceedsLimit"
        case invalidParameter_RecordParameterCheckFail = "InvalidParameter.RecordParameterCheckFail"
        case invalidParameter_RecordParameterParseFail = "InvalidParameter.RecordParameterParseFail"
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
    public static var authFailure: TCTanError {
        TCTanError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCTanError {
        TCTanError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTanError {
        TCTanError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCTanError {
        TCTanError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTanError {
        TCTanError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTanError {
        TCTanError(.invalidParameterValue)
    }
    
    /// 分组名称已存在。
    public static var invalidParameter_GroupNameExisted: TCTanError {
        TCTanError(.invalidParameter_GroupNameExisted)
    }
    
    /// 记录超出限制。
    public static var invalidParameter_RecordExceedsLimit: TCTanError {
        TCTanError(.invalidParameter_RecordExceedsLimit)
    }
    
    /// 记录参数验证不通过。
    public static var invalidParameter_RecordParameterCheckFail: TCTanError {
        TCTanError(.invalidParameter_RecordParameterCheckFail)
    }
    
    /// 记录参数解析不通过。
    public static var invalidParameter_RecordParameterParseFail: TCTanError {
        TCTanError(.invalidParameter_RecordParameterParseFail)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTanError {
        TCTanError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTanError {
        TCTanError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTanError {
        TCTanError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCTanError {
        TCTanError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTanError {
        TCTanError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTanError {
        TCTanError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTanError {
        TCTanError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTanError {
        TCTanError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCTanError {
        TCTanError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTanError {
        TCTanError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTanError {
        TCTanError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTanError {
        TCTanError(.unsupportedOperation)
    }
}

extension TCTanError {
    public static var domains: [TCErrorType.Type] {
        return [InvalidParameter.self]
    }
}

extension TCTanError: Equatable {
    public static func == (lhs: TCTanError, rhs: TCTanError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTanError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTanError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
