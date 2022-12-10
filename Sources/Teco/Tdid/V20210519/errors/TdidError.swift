public struct TCTdidError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_InvalidAuth = "FailedOperation.InvalidAuth"
        case failedOperation_OperationException = "FailedOperation.OperationException"
        case internalError = "InternalError"
        case internalError_ServerException = "InternalError.ServerException"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_ServicePanic = "InternalError.ServicePanic"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_IllegalValue = "InvalidParameterValue.IllegalValue"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    public static var authFailure: TCTdidError {
        TCTdidError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTdidError {
        TCTdidError(.failedOperation)
    }
    
    /// 无访问权限。
    public static var failedOperation_InvalidAuth: TCTdidError {
        TCTdidError(.failedOperation_InvalidAuth)
    }
    
    /// 操作失败。
    public static var failedOperation_OperationException: TCTdidError {
        TCTdidError(.failedOperation_OperationException)
    }
    
    /// 内部错误。
    public static var internalError: TCTdidError {
        TCTdidError(.internalError)
    }
    
    /// 服务器异常。
    public static var internalError_ServerException: TCTdidError {
        TCTdidError(.internalError_ServerException)
    }
    
    /// 服务内部错误。
    public static var internalError_ServiceError: TCTdidError {
        TCTdidError(.internalError_ServiceError)
    }
    
    /// 服务异常。
    public static var internalError_ServicePanic: TCTdidError {
        TCTdidError(.internalError_ServicePanic)
    }
    
    /// 未知错误。
    public static var internalError_UnknownError: TCTdidError {
        TCTdidError(.internalError_UnknownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTdidError {
        TCTdidError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTdidError {
        TCTdidError(.invalidParameterValue)
    }
    
    /// 参数错误。
    public static var invalidParameterValue_IllegalValue: TCTdidError {
        TCTdidError(.invalidParameterValue_IllegalValue)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTdidError {
        TCTdidError(.missingParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTdidError {
        TCTdidError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTdidError {
        TCTdidError(.resourceUnavailable)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTdidError {
        TCTdidError(.unsupportedOperation)
    }
}

extension TCTdidError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self]
    }
}

extension TCTdidError: Equatable {
    public static func == (lhs: TCTdidError, rhs: TCTdidError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdidError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTdidError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
