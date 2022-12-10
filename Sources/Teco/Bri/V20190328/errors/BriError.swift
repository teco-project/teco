public struct TCBriError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_CertMd5 = "InvalidParameter.CertMd5"
        case invalidParameter_FileMd5 = "InvalidParameter.FileMd5"
        case invalidParameter_FileSize = "InvalidParameter.FileSize"
        case invalidParameter_Imei = "InvalidParameter.Imei"
        case invalidParameter_InvalidAction = "InvalidParameter.InvalidAction"
        case invalidParameter_Ip = "InvalidParameter.Ip"
        case invalidParameter_PackageName = "InvalidParameter.PackageName"
        case invalidParameter_PhoneNumber = "InvalidParameter.PhoneNumber"
        case invalidParameter_QQ = "InvalidParameter.QQ"
        case invalidParameter_Service = "InvalidParameter.Service"
        case invalidParameter_Url = "InvalidParameter.Url"
        case invalidParameter_Wechat = "InvalidParameter.Wechat"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unknownParameter = "UnknownParameter"
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
    public static var internalError: TCBriError {
        TCBriError(.internalError)
    }
    
    /// 查询超时
    public static var internalError_Timeout: TCBriError {
        TCBriError(.internalError_Timeout)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBriError {
        TCBriError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBriError {
        TCBriError(.invalidParameterValue)
    }
    
    /// CertMd5参数错误
    public static var invalidParameter_CertMd5: TCBriError {
        TCBriError(.invalidParameter_CertMd5)
    }
    
    /// FileMd5参数错误
    public static var invalidParameter_FileMd5: TCBriError {
        TCBriError(.invalidParameter_FileMd5)
    }
    
    /// FileSize参数错误
    public static var invalidParameter_FileSize: TCBriError {
        TCBriError(.invalidParameter_FileSize)
    }
    
    /// Imei参数错误
    public static var invalidParameter_Imei: TCBriError {
        TCBriError(.invalidParameter_Imei)
    }
    
    /// 接口不存在
    public static var invalidParameter_InvalidAction: TCBriError {
        TCBriError(.invalidParameter_InvalidAction)
    }
    
    /// IP参数错误
    public static var invalidParameter_Ip: TCBriError {
        TCBriError(.invalidParameter_Ip)
    }
    
    /// 包名填写错误
    public static var invalidParameter_PackageName: TCBriError {
        TCBriError(.invalidParameter_PackageName)
    }
    
    /// PhoneNumber参数错误
    public static var invalidParameter_PhoneNumber: TCBriError {
        TCBriError(.invalidParameter_PhoneNumber)
    }
    
    /// QQ参数错误
    public static var invalidParameter_QQ: TCBriError {
        TCBriError(.invalidParameter_QQ)
    }
    
    /// Service参数错误
    public static var invalidParameter_Service: TCBriError {
        TCBriError(.invalidParameter_Service)
    }
    
    /// Url参数错误
    public static var invalidParameter_Url: TCBriError {
        TCBriError(.invalidParameter_Url)
    }
    
    /// Wechat参数错误
    public static var invalidParameter_Wechat: TCBriError {
        TCBriError(.invalidParameter_Wechat)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCBriError {
        TCBriError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCBriError {
        TCBriError(.missingParameter)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCBriError {
        TCBriError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBriError {
        TCBriError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCBriError {
        TCBriError(.resourceUnavailable)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCBriError {
        TCBriError(.unknownParameter)
    }
}

extension TCBriError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self]
    }
}

extension TCBriError: Equatable {
    public static func == (lhs: TCBriError, rhs: TCBriError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBriError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBriError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
