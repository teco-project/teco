public struct TCMmpsError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case unsupportedOperation = "UnsupportedOperation"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
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
    public static var failedOperation: TCMmpsError {
        TCMmpsError(.failedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCMmpsError {
        TCMmpsError(.unsupportedOperation)
    }
}

extension TCMmpsError: Equatable {
    public static func == (lhs: TCMmpsError, rhs: TCMmpsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMmpsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}