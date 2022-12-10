public struct TCBizliveError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case resourceNotFound_ClientNotExist = "ResourceNotFound.ClientNotExist"
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
    public static var failedOperation: TCBizliveError {
        TCBizliveError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCBizliveError {
        TCBizliveError(.internalError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBizliveError {
        TCBizliveError(.invalidParameterValue)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCBizliveError {
        TCBizliveError(.missingParameter)
    }
    
    /// 商业直播客户不存在
    public static var resourceNotFound_ClientNotExist: TCBizliveError {
        TCBizliveError(.resourceNotFound_ClientNotExist)
    }
}

extension TCBizliveError {
    public static var domains: [TCErrorType.Type] {
        return [ResourceNotFound.self]
    }
}

extension TCBizliveError: Equatable {
    public static func == (lhs: TCBizliveError, rhs: TCBizliveError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBizliveError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}