public struct TCTbpError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_ErrorMms = "InternalError.ErrorMms"
        case internalError_ErrorNlu = "InternalError.ErrorNlu"
        case internalError_ErrorRpc = "InternalError.ErrorRpc"
        case internalError_ErrorWebHook = "InternalError.ErrorWebHook"
        case internalError_NoAppPrivilege = "InternalError.NoAppPrivilege"
        case invalidParameter = "InvalidParameter"
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
    public static var internalError: TCTbpError {
        TCTbpError(.internalError)
    }
    
    /// 查询数据库失败，没有对应数据。
    public static var internalError_ErrorMms: TCTbpError {
        TCTbpError(.internalError_ErrorMms)
    }
    
    /// nlu处理失败。
    public static var internalError_ErrorNlu: TCTbpError {
        TCTbpError(.internalError_ErrorNlu)
    }
    
    /// rpc调用失败。
    public static var internalError_ErrorRpc: TCTbpError {
        TCTbpError(.internalError_ErrorRpc)
    }
    
    /// webHook处理失败。
    public static var internalError_ErrorWebHook: TCTbpError {
        TCTbpError(.internalError_ErrorWebHook)
    }
    
    /// 未开通相关应用访问权限。
    public static var internalError_NoAppPrivilege: TCTbpError {
        TCTbpError(.internalError_NoAppPrivilege)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTbpError {
        TCTbpError(.invalidParameter)
    }
}

extension TCTbpError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self]
    }
}

extension TCTbpError: Equatable {
    public static func == (lhs: TCTbpError, rhs: TCTbpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTbpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTbpError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
