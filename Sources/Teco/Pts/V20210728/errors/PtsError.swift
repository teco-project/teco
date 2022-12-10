public struct TCPtsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessTagFail = "FailedOperation.AccessTagFail"
        case failedOperation_DbQueryFailed = "FailedOperation.DbQueryFailed"
        case failedOperation_DbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
        case failedOperation_DbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
        case failedOperation_JobStatusNotRunning = "FailedOperation.JobStatusNotRunning"
        case failedOperation_NoTasksInJob = "FailedOperation.NoTasksInJob"
        case failedOperation_NotSupportedInEnv = "FailedOperation.NotSupportedInEnv"
        case failedOperation_ResourceNotFound = "FailedOperation.ResourceNotFound"
        case failedOperation_SendRequest = "FailedOperation.SendRequest"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case resourceNotFound = "ResourceNotFound"
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
    public static var authFailure: TCPtsError {
        TCPtsError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCPtsError {
        TCPtsError(.failedOperation)
    }
    
    public static var failedOperation_AccessTagFail: TCPtsError {
        TCPtsError(.failedOperation_AccessTagFail)
    }
    
    /// 数据库查询失败。
    public static var failedOperation_DbQueryFailed: TCPtsError {
        TCPtsError(.failedOperation_DbQueryFailed)
    }
    
    /// 数据库创建记录失败。
    public static var failedOperation_DbRecordCreateFailed: TCPtsError {
        TCPtsError(.failedOperation_DbRecordCreateFailed)
    }
    
    /// 数据库记录更新失败。
    public static var failedOperation_DbRecordUpdateFailed: TCPtsError {
        TCPtsError(.failedOperation_DbRecordUpdateFailed)
    }
    
    /// 任务状态不是运行中。
    public static var failedOperation_JobStatusNotRunning: TCPtsError {
        TCPtsError(.failedOperation_JobStatusNotRunning)
    }
    
    /// 任务中没有task。
    public static var failedOperation_NoTasksInJob: TCPtsError {
        TCPtsError(.failedOperation_NoTasksInJob)
    }
    
    /// 当前环境不支持。
    public static var failedOperation_NotSupportedInEnv: TCPtsError {
        TCPtsError(.failedOperation_NotSupportedInEnv)
    }
    
    /// 资源不存在。
    public static var failedOperation_ResourceNotFound: TCPtsError {
        TCPtsError(.failedOperation_ResourceNotFound)
    }
    
    /// 请求发送失败。
    ///
    /// 可能的原因：标签服务鉴权失败，等等。
    public static var failedOperation_SendRequest: TCPtsError {
        TCPtsError(.failedOperation_SendRequest)
    }
    
    /// 内部错误。
    public static var internalError: TCPtsError {
        TCPtsError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCPtsError {
        TCPtsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCPtsError {
        TCPtsError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCPtsError {
        TCPtsError(.resourceNotFound)
    }
}

extension TCPtsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self]
    }
}

extension TCPtsError: Equatable {
    public static func == (lhs: TCPtsError, rhs: TCPtsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPtsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCPtsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
