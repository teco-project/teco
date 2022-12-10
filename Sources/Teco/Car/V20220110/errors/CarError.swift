public struct TCCarError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_LockTimeout = "FailedOperation.LockTimeout"
        case failedOperation_ProcessTimeout = "FailedOperation.ProcessTimeout"
        case failedOperation_SlowDown = "FailedOperation.SlowDown"
        case internalError = "InternalError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_JsonParseError = "InvalidParameter.JsonParseError"
        case operationDenied = "OperationDenied"
        case resourceNotFound_NoIdle = "ResourceNotFound.NoIdle"
        case resourceNotFound_SessionNotFound = "ResourceNotFound.SessionNotFound"
        case resourceUnavailable_AccessFailed = "ResourceUnavailable.AccessFailed"
        case resourceUnavailable_Initialization = "ResourceUnavailable.Initialization"
        case unsupportedOperation_Stopping = "UnsupportedOperation.Stopping"
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
    
    /// 操作失败。
    public static var failedOperation: TCCarError {
        TCCarError(.failedOperation)
    }
    
    /// 未申请并发或申请后超时。
    public static var failedOperation_LockTimeout: TCCarError {
        TCCarError(.failedOperation_LockTimeout)
    }
    
    /// 处理超时。
    public static var failedOperation_ProcessTimeout: TCCarError {
        TCCarError(.failedOperation_ProcessTimeout)
    }
    
    /// 请降低访问频率。
    public static var failedOperation_SlowDown: TCCarError {
        TCCarError(.failedOperation_SlowDown)
    }
    
    /// 内部错误。
    public static var internalError: TCCarError {
        TCCarError(.internalError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCarError {
        TCCarError(.invalidParameterValue)
    }
    
    /// Json 解析失败。
    public static var invalidParameter_JsonParseError: TCCarError {
        TCCarError(.invalidParameter_JsonParseError)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCarError {
        TCCarError(.operationDenied)
    }
    
    /// 没有空闲并发。
    public static var resourceNotFound_NoIdle: TCCarError {
        TCCarError(.resourceNotFound_NoIdle)
    }
    
    /// 未找到会话。
    public static var resourceNotFound_SessionNotFound: TCCarError {
        TCCarError(.resourceNotFound_SessionNotFound)
    }
    
    /// 访问并发实例失败。
    public static var resourceUnavailable_AccessFailed: TCCarError {
        TCCarError(.resourceUnavailable_AccessFailed)
    }
    
    /// 初始化中。
    public static var resourceUnavailable_Initialization: TCCarError {
        TCCarError(.resourceUnavailable_Initialization)
    }
    
    /// 销毁会话中。
    public static var unsupportedOperation_Stopping: TCCarError {
        TCCarError(.unsupportedOperation_Stopping)
    }
}

extension TCCarError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCCarError: Equatable {
    public static func == (lhs: TCCarError, rhs: TCCarError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCarError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCarError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
