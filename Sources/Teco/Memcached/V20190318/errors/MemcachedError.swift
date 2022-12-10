public struct TCMemcachedError: TCErrorType {
    enum Code: String {
        case failedOperation_DbOperationFailed = "FailedOperation.DbOperationFailed"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case missingParameter_EmptyParam = "MissingParameter.EmptyParam"
        case resourceNotFound_AccountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
        case unauthorizedOperation_NoCAMAuthed = "UnauthorizedOperation.NoCAMAuthed"
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
    
    /// 数据库操作异常
    public static var failedOperation_DbOperationFailed: TCMemcachedError {
        TCMemcachedError(.failedOperation_DbOperationFailed)
    }
    
    /// 系统内部错误
    public static var failedOperation_SystemError: TCMemcachedError {
        TCMemcachedError(.failedOperation_SystemError)
    }
    
    /// 内部错误
    public static var internalError_InternalError: TCMemcachedError {
        TCMemcachedError(.internalError_InternalError)
    }
    
    /// 业务参数错误
    public static var invalidParameter_InvalidParameter: TCMemcachedError {
        TCMemcachedError(.invalidParameter_InvalidParameter)
    }
    
    /// 参数为空
    public static var missingParameter_EmptyParam: TCMemcachedError {
        TCMemcachedError(.missingParameter_EmptyParam)
    }
    
    /// 未提供有效的账号
    public static var resourceNotFound_AccountDoesNotExists: TCMemcachedError {
        TCMemcachedError(.resourceNotFound_AccountDoesNotExists)
    }
    
    /// Cam鉴权失败
    public static var unauthorizedOperation_NoCAMAuthed: TCMemcachedError {
        TCMemcachedError(.unauthorizedOperation_NoCAMAuthed)
    }
}

extension TCMemcachedError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, MissingParameter.self, ResourceNotFound.self, UnauthorizedOperation.self]
    }
}

extension TCMemcachedError: Equatable {
    public static func == (lhs: TCMemcachedError, rhs: TCMemcachedError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMemcachedError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}