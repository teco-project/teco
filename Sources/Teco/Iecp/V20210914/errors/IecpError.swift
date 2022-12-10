public struct TCIecpError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DuplicateName = "InvalidParameterValue.DuplicateName"
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
    public static var authFailure: TCIecpError {
        TCIecpError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCIecpError {
        TCIecpError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCIecpError {
        TCIecpError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCIecpError {
        TCIecpError(.internalError)
    }
    
    /// 数据库异常。
    public static var internalError_DBError: TCIecpError {
        TCIecpError(.internalError_DBError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIecpError {
        TCIecpError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIecpError {
        TCIecpError(.invalidParameterValue)
    }
    
    /// 名字冲突。
    public static var invalidParameterValue_DuplicateName: TCIecpError {
        TCIecpError(.invalidParameterValue_DuplicateName)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCIecpError {
        TCIecpError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCIecpError {
        TCIecpError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCIecpError {
        TCIecpError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCIecpError {
        TCIecpError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCIecpError {
        TCIecpError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCIecpError {
        TCIecpError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCIecpError {
        TCIecpError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCIecpError {
        TCIecpError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCIecpError {
        TCIecpError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCIecpError {
        TCIecpError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCIecpError {
        TCIecpError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCIecpError {
        TCIecpError(.unsupportedOperation)
    }
}

extension TCIecpError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameterValue.self]
    }
}

extension TCIecpError: Equatable {
    public static func == (lhs: TCIecpError, rhs: TCIecpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIecpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}