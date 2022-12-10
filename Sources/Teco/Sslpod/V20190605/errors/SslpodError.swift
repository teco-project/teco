public struct TCSslpodError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_RepetitionAdd = "FailedOperation.RepetitionAdd"
        case failedOperation_ResolveDomainFailed = "FailedOperation.ResolveDomainFailed"
        case internalError = "InternalError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidNoticeType = "InvalidParameterValue.InvalidNoticeType"
        case invalidParameterValue_InvalidSearchType = "InvalidParameterValue.InvalidSearchType"
        case invalidParameter_InvalidDomain = "InvalidParameter.InvalidDomain"
        case invalidParameter_InvalidIP = "InvalidParameter.InvalidIP"
        case invalidParameter_InvalidPort = "InvalidParameter.InvalidPort"
        case invalidParameter_InvalidServerType = "InvalidParameter.InvalidServerType"
        case invalidParameter_InvalidTagName = "InvalidParameter.InvalidTagName"
        case invalidParameter_TooManyTag = "InvalidParameter.TooManyTag"
        case limitExceeded_AddExceeded = "LimitExceeded.AddExceeded"
        case limitExceeded_MonitorExceeded = "LimitExceeded.MonitorExceeded"
        case resourceNotFound_Product = "ResourceNotFound.Product"
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
    public static var authFailure: TCSslpodError {
        TCSslpodError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCSslpodError {
        TCSslpodError(.failedOperation)
    }
    
    /// 重复添加。
    public static var failedOperation_RepetitionAdd: TCSslpodError {
        TCSslpodError(.failedOperation_RepetitionAdd)
    }
    
    /// 解析域名失败。
    public static var failedOperation_ResolveDomainFailed: TCSslpodError {
        TCSslpodError(.failedOperation_ResolveDomainFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCSslpodError {
        TCSslpodError(.internalError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSslpodError {
        TCSslpodError(.invalidParameterValue)
    }
    
    /// 无效的通知类型。
    public static var invalidParameterValue_InvalidNoticeType: TCSslpodError {
        TCSslpodError(.invalidParameterValue_InvalidNoticeType)
    }
    
    /// 无效的搜索类型。
    public static var invalidParameterValue_InvalidSearchType: TCSslpodError {
        TCSslpodError(.invalidParameterValue_InvalidSearchType)
    }
    
    /// 无效的域名。
    public static var invalidParameter_InvalidDomain: TCSslpodError {
        TCSslpodError(.invalidParameter_InvalidDomain)
    }
    
    /// 无效的IP。
    public static var invalidParameter_InvalidIP: TCSslpodError {
        TCSslpodError(.invalidParameter_InvalidIP)
    }
    
    /// 无效的端口。
    public static var invalidParameter_InvalidPort: TCSslpodError {
        TCSslpodError(.invalidParameter_InvalidPort)
    }
    
    /// 无效的监控类型。
    public static var invalidParameter_InvalidServerType: TCSslpodError {
        TCSslpodError(.invalidParameter_InvalidServerType)
    }
    
    /// 标签不合规。
    public static var invalidParameter_InvalidTagName: TCSslpodError {
        TCSslpodError(.invalidParameter_InvalidTagName)
    }
    
    /// 添加标签过多。
    public static var invalidParameter_TooManyTag: TCSslpodError {
        TCSslpodError(.invalidParameter_TooManyTag)
    }
    
    /// 套餐管理额度已满。
    public static var limitExceeded_AddExceeded: TCSslpodError {
        TCSslpodError(.limitExceeded_AddExceeded)
    }
    
    /// 套餐监控额度已满。
    public static var limitExceeded_MonitorExceeded: TCSslpodError {
        TCSslpodError(.limitExceeded_MonitorExceeded)
    }
    
    /// 产品不存在。
    public static var resourceNotFound_Product: TCSslpodError {
        TCSslpodError(.resourceNotFound_Product)
    }
}

extension TCSslpodError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self]
    }
}

extension TCSslpodError: Equatable {
    public static func == (lhs: TCSslpodError, rhs: TCSslpodError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSslpodError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSslpodError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
