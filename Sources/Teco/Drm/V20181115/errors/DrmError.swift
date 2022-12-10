public struct TCDrmError: TCErrorType {
    enum Code: String {
        case failedOperation_PemIdNotExist = "FailedOperation.PemIdNotExist"
        case failedOperation_PemNumTooMuch = "FailedOperation.PemNumTooMuch"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case unknownParameter = "UnknownParameter"
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
    
    /// pem id 不存在。
    public static var failedOperation_PemIdNotExist: TCDrmError {
        TCDrmError(.failedOperation_PemIdNotExist)
    }
    
    /// 系统中存在的私钥数超过两个。
    public static var failedOperation_PemNumTooMuch: TCDrmError {
        TCDrmError(.failedOperation_PemNumTooMuch)
    }
    
    /// 内部错误。
    public static var internalError: TCDrmError {
        TCDrmError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDrmError {
        TCDrmError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDrmError {
        TCDrmError(.invalidParameterValue)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDrmError {
        TCDrmError(.unknownParameter)
    }
}

extension TCDrmError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self]
    }
}

extension TCDrmError: Equatable {
    public static func == (lhs: TCDrmError, rhs: TCDrmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDrmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDrmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
