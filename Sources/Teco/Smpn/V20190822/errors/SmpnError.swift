public struct TCSmpnError: TCErrorType {
    enum Code: String {
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter_Name = "InvalidParameter.Name"
        case invalidParameter_PhoneNumber = "InvalidParameter.PhoneNumber"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    
    /// 内部请求超时。
    public static var internalError_Timeout: TCSmpnError {
        TCSmpnError(.internalError_Timeout)
    }
    
    /// 错误的名称。
    public static var invalidParameter_Name: TCSmpnError {
        TCSmpnError(.invalidParameter_Name)
    }
    
    /// 号码格式错误。
    public static var invalidParameter_PhoneNumber: TCSmpnError {
        TCSmpnError(.invalidParameter_PhoneNumber)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCSmpnError {
        TCSmpnError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCSmpnError {
        TCSmpnError(.resourceUnavailable)
    }
}

extension TCSmpnError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self]
    }
}

extension TCSmpnError: Equatable {
    public static func == (lhs: TCSmpnError, rhs: TCSmpnError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSmpnError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSmpnError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
