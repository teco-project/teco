public struct TCAcpError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCAcpError {
        TCAcpError(.failedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAcpError {
        TCAcpError(.unsupportedOperation)
    }
}

extension TCAcpError: Equatable {
    public static func == (lhs: TCAcpError, rhs: TCAcpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAcpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAcpError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
