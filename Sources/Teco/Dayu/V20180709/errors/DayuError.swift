public struct TCDayuError: TCErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCDayuError {
        TCDayuError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDayuError {
        TCDayuError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCDayuError {
        TCDayuError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDayuError {
        TCDayuError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDayuError {
        TCDayuError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCDayuError {
        TCDayuError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDayuError {
        TCDayuError(.missingParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCDayuError {
        TCDayuError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDayuError {
        TCDayuError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCDayuError {
        TCDayuError(.resourceUnavailable)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDayuError {
        TCDayuError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDayuError {
        TCDayuError(.unsupportedOperation)
    }
}

extension TCDayuError: Equatable {
    public static func == (lhs: TCDayuError, rhs: TCDayuError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDayuError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}