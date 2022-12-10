public struct TCCmqError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_TryLater = "FailedOperation.TryLater"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_NoTaskId = "InvalidParameterValue.NoTaskId"
        case limitExceeded = "LimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var failedOperation: TCCmqError {
        TCCmqError(.failedOperation)
    }
    
    /// 操作进行中，请稍后重试。
    public static var failedOperation_TryLater: TCCmqError {
        TCCmqError(.failedOperation_TryLater)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCmqError {
        TCCmqError(.invalidParameter)
    }
    
    /// 任务Id不存在。
    public static var invalidParameterValue_NoTaskId: TCCmqError {
        TCCmqError(.invalidParameterValue_NoTaskId)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCmqError {
        TCCmqError(.limitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCmqError {
        TCCmqError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCmqError {
        TCCmqError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCmqError {
        TCCmqError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCCmqError {
        TCCmqError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCmqError {
        TCCmqError(.unauthorizedOperation)
    }
}

extension TCCmqError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self]
    }
}

extension TCCmqError: Equatable {
    public static func == (lhs: TCCmqError, rhs: TCCmqError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCmqError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCmqError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
