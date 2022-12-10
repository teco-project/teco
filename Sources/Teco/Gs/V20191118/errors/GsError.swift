public struct TCGsError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_LockTimeout = "FailedOperation.LockTimeout"
        case failedOperation_ProcessTimeout = "FailedOperation.ProcessTimeout"
        case failedOperation_SlowDown = "FailedOperation.SlowDown"
        case failedOperation_Timeout = "FailedOperation.Timeout"
        case failedOperation_TooFrequently = "FailedOperation.TooFrequently"
        case internalError = "InternalError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_JsonParseError = "InvalidParameter.JsonParseError"
        case limitExceeded_Role = "LimitExceeded.Role"
        case operationDenied = "OperationDenied"
        case resourceNotFound_NoIdle = "ResourceNotFound.NoIdle"
        case resourceNotFound_SessionNotFound = "ResourceNotFound.SessionNotFound"
        case resourceUnavailable_AccessFailed = "ResourceUnavailable.AccessFailed"
        case resourceUnavailable_Initialization = "ResourceUnavailable.Initialization"
        case unsupportedOperation_NotRunning = "UnsupportedOperation.NotRunning"
        case unsupportedOperation_Stopping = "UnsupportedOperation.Stopping"
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
    
    /// 操作失败。
    public static var failedOperation: TCGsError {
        TCGsError(.failedOperation)
    }
    
    /// 锁定机器超时或未调用TrylockWorker。
    public static var failedOperation_LockTimeout: TCGsError {
        TCGsError(.failedOperation_LockTimeout)
    }
    
    /// 处理超时。
    public static var failedOperation_ProcessTimeout: TCGsError {
        TCGsError(.failedOperation_ProcessTimeout)
    }
    
    /// 请降低访问频率。
    public static var failedOperation_SlowDown: TCGsError {
        TCGsError(.failedOperation_SlowDown)
    }
    
    /// 操作超时。
    public static var failedOperation_Timeout: TCGsError {
        TCGsError(.failedOperation_Timeout)
    }
    
    /// 请求太频繁。
    public static var failedOperation_TooFrequently: TCGsError {
        TCGsError(.failedOperation_TooFrequently)
    }
    
    /// 内部错误。
    public static var internalError: TCGsError {
        TCGsError(.internalError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCGsError {
        TCGsError(.invalidParameterValue)
    }
    
    /// Json解析失败。
    public static var invalidParameter_JsonParseError: TCGsError {
        TCGsError(.invalidParameter_JsonParseError)
    }
    
    /// 【多人游戏】对应的角色人数超过限制。
    public static var limitExceeded_Role: TCGsError {
        TCGsError(.limitExceeded_Role)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCGsError {
        TCGsError(.operationDenied)
    }
    
    /// 没有空闲机器。
    public static var resourceNotFound_NoIdle: TCGsError {
        TCGsError(.resourceNotFound_NoIdle)
    }
    
    /// 会话未找到。
    public static var resourceNotFound_SessionNotFound: TCGsError {
        TCGsError(.resourceNotFound_SessionNotFound)
    }
    
    /// 访问并发实例失败。
    public static var resourceUnavailable_AccessFailed: TCGsError {
        TCGsError(.resourceUnavailable_AccessFailed)
    }
    
    /// 机器还在初始化中。
    public static var resourceUnavailable_Initialization: TCGsError {
        TCGsError(.resourceUnavailable_Initialization)
    }
    
    /// 机器未运行。
    public static var unsupportedOperation_NotRunning: TCGsError {
        TCGsError(.unsupportedOperation_NotRunning)
    }
    
    /// 退出游戏中。
    public static var unsupportedOperation_Stopping: TCGsError {
        TCGsError(.unsupportedOperation_Stopping)
    }
}

extension TCGsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCGsError: Equatable {
    public static func == (lhs: TCGsError, rhs: TCGsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}