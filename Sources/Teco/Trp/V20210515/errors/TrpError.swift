public struct TCTrpError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CorpEmpty = "AuthFailure.CorpEmpty"
        case authFailure_CorpExpired = "AuthFailure.CorpExpired"
        case failedOperation = "FailedOperation"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCTrpError {
        TCTrpError(.authFailure)
    }
    
    /// 当前没有创建任何企业。
    ///
    /// 当前没有创建任何企业，请先创建企业以进行后续操作。
    public static var authFailure_CorpEmpty: TCTrpError {
        TCTrpError(.authFailure_CorpEmpty)
    }
    
    /// 企业服务时间已到期。
    ///
    /// 您购买的服务时间已到期，为不影响您的使用，请您联系商务，续费服务。
    public static var authFailure_CorpExpired: TCTrpError {
        TCTrpError(.authFailure_CorpExpired)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTrpError {
        TCTrpError(.failedOperation)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTrpError {
        TCTrpError(.invalidParameter)
    }
}

extension TCTrpError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self]
    }
}

extension TCTrpError: Equatable {
    public static func == (lhs: TCTrpError, rhs: TCTrpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTrpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTrpError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
