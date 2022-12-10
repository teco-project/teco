public struct TCAdvisorError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_DependsDb = "InternalError.DependsDb"
        case internalError_System = "InternalError.System"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
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
    
    /// 内部错误。
    public static var internalError: TCAdvisorError {
        TCAdvisorError(.internalError)
    }
    
    /// 依赖的db出错。
    public static var internalError_DependsDb: TCAdvisorError {
        TCAdvisorError(.internalError_DependsDb)
    }
    
    /// 系统错误。
    public static var internalError_System: TCAdvisorError {
        TCAdvisorError(.internalError_System)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAdvisorError {
        TCAdvisorError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAdvisorError {
        TCAdvisorError(.invalidParameterValue)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCAdvisorError {
        TCAdvisorError(.invalidParameter_ParamError)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAdvisorError {
        TCAdvisorError(.resourceNotFound)
    }
}

extension TCAdvisorError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self]
    }
}

extension TCAdvisorError: Equatable {
    public static func == (lhs: TCAdvisorError, rhs: TCAdvisorError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAdvisorError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAdvisorError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
