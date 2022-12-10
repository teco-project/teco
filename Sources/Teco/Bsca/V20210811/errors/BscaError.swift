public struct TCBscaError: TCErrorType {
    enum Code: String {
        case failedOperation_AccountNotEnough = "FailedOperation.AccountNotEnough"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
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
    
    /// 账户流量余额不足。
    ///
    /// 请购买流量包。
    public static var failedOperation_AccountNotEnough: TCBscaError {
        TCBscaError(.failedOperation_AccountNotEnough)
    }
    
    /// 内部错误。
    public static var internalError: TCBscaError {
        TCBscaError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBscaError {
        TCBscaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBscaError {
        TCBscaError(.invalidParameterValue)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCBscaError {
        TCBscaError(.missingParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBscaError {
        TCBscaError(.resourceNotFound)
    }
}

extension TCBscaError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self]
    }
}

extension TCBscaError: Equatable {
    public static func == (lhs: TCBscaError, rhs: TCBscaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBscaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBscaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
