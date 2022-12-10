public struct TCBpaasError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_SendToCkafka = "FailedOperation.SendToCkafka"
        case internalError_CauthError = "InternalError.CauthError"
        case internalError_DbError = "InternalError.DbError"
        case invalidParameter_HasBeenApproved = "InvalidParameter.HasBeenApproved"
        case invalidParameter_IdNotExist = "InvalidParameter.IdNotExist"
        case invalidParameter_IllegalNode = "InvalidParameter.IllegalNode"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
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
    public static var failedOperation: TCBpaasError {
        TCBpaasError(.failedOperation)
    }
    
    public static var failedOperation_SendToCkafka: TCBpaasError {
        TCBpaasError(.failedOperation_SendToCkafka)
    }
    
    /// 鉴权失败。
    public static var internalError_CauthError: TCBpaasError {
        TCBpaasError(.internalError_CauthError)
    }
    
    /// 插入db失败。
    public static var internalError_DbError: TCBpaasError {
        TCBpaasError(.internalError_DbError)
    }
    
    /// 已经审批。
    public static var invalidParameter_HasBeenApproved: TCBpaasError {
        TCBpaasError(.invalidParameter_HasBeenApproved)
    }
    
    /// id不存在。
    public static var invalidParameter_IdNotExist: TCBpaasError {
        TCBpaasError(.invalidParameter_IdNotExist)
    }
    
    /// 非法流程节点。
    public static var invalidParameter_IllegalNode: TCBpaasError {
        TCBpaasError(.invalidParameter_IllegalNode)
    }
    
    /// 没有权限审批。
    public static var unauthorizedOperation_PermissionDenied: TCBpaasError {
        TCBpaasError(.unauthorizedOperation_PermissionDenied)
    }
}

extension TCBpaasError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, UnauthorizedOperation.self]
    }
}

extension TCBpaasError: Equatable {
    public static func == (lhs: TCBpaasError, rhs: TCBpaasError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBpaasError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}