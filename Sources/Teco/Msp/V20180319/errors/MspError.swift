public struct TCMspError: TCErrorType {
    enum Code: String {
        case invalidParameterValue = "InvalidParameterValue"
        case resourceUnavailable = "ResourceUnavailable"
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
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCMspError {
        TCMspError(.invalidParameterValue)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCMspError {
        TCMspError(.resourceUnavailable)
    }
}

extension TCMspError: Equatable {
    public static func == (lhs: TCMspError, rhs: TCMspError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMspError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}