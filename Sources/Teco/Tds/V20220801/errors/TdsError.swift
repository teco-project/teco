public struct TCTdsError: TCErrorType {
    enum Code: String {
        case resourceInsufficient = "ResourceInsufficient"
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
    
    public static var resourceInsufficient: TCTdsError {
        TCTdsError(.resourceInsufficient)
    }
}

extension TCTdsError: Equatable {
    public static func == (lhs: TCTdsError, rhs: TCTdsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}