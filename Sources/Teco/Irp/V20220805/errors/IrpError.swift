public struct TCIrpError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case operationDenied = "OperationDenied"
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
    
    /// 内部错误。
    public static var internalError: TCIrpError {
        TCIrpError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIrpError {
        TCIrpError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIrpError {
        TCIrpError(.invalidParameterValue)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCIrpError {
        TCIrpError(.operationDenied)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCIrpError {
        TCIrpError(.unauthorizedOperation)
    }
}

extension TCIrpError: Equatable {
    public static func == (lhs: TCIrpError, rhs: TCIrpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIrpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIrpError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
