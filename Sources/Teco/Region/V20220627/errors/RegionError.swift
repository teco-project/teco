public struct TCRegionError: TCErrorType {
    enum Code: String {
        case invalidParameter = "InvalidParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
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
    
    public static var invalidParameter: TCRegionError {
        TCRegionError(.invalidParameter)
    }
    
    public static var requestLimitExceeded: TCRegionError {
        TCRegionError(.requestLimitExceeded)
    }
    
    public static var unsupportedOperation: TCRegionError {
        TCRegionError(.unsupportedOperation)
    }
}

extension TCRegionError: Equatable {
    public static func == (lhs: TCRegionError, rhs: TCRegionError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRegionError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}