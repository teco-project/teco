public struct TCDasbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_DataNotFound = "FailedOperation.DataNotFound"
        case failedOperation_DuplicateData = "FailedOperation.DuplicateData"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_ResourceId = "InvalidParameter.ResourceId"
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
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
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
    public static var authFailure: TCDasbError {
        TCDasbError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDasbError {
        TCDasbError(.failedOperation)
    }
    
    /// 目标数据不存在。
    public static var failedOperation_DataNotFound: TCDasbError {
        TCDasbError(.failedOperation_DataNotFound)
    }
    
    /// 重复数据。
    public static var failedOperation_DuplicateData: TCDasbError {
        TCDasbError(.failedOperation_DuplicateData)
    }
    
    /// 内部错误。
    public static var internalError: TCDasbError {
        TCDasbError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDasbError {
        TCDasbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDasbError {
        TCDasbError(.invalidParameterValue)
    }
    
    /// 无效的资源ID，用于资源不存在或已过期。
    public static var invalidParameter_ResourceId: TCDasbError {
        TCDasbError(.invalidParameter_ResourceId)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCDasbError {
        TCDasbError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDasbError {
        TCDasbError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCDasbError {
        TCDasbError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCDasbError {
        TCDasbError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCDasbError {
        TCDasbError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCDasbError {
        TCDasbError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDasbError {
        TCDasbError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCDasbError {
        TCDasbError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCDasbError {
        TCDasbError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCDasbError {
        TCDasbError(.unauthorizedOperation)
    }
    
    /// 无操作权限。
    public static var unauthorizedOperation_NoPermission: TCDasbError {
        TCDasbError(.unauthorizedOperation_NoPermission)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDasbError {
        TCDasbError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDasbError {
        TCDasbError(.unsupportedOperation)
    }
}

extension TCDasbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, UnauthorizedOperation.self]
    }
}

extension TCDasbError: Equatable {
    public static func == (lhs: TCDasbError, rhs: TCDasbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDasbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}