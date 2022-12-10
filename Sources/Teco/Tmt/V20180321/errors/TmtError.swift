public struct TCTmtError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_InsertErr = "FailedOperation.InsertErr"
        case failedOperation_NoFreeAmount = "FailedOperation.NoFreeAmount"
        case failedOperation_RequestAiLabErr = "FailedOperation.RequestAiLabErr"
        case failedOperation_ServiceIsolate = "FailedOperation.ServiceIsolate"
        case failedOperation_UserNotRegistered = "FailedOperation.UserNotRegistered"
        case internalError = "InternalError"
        case internalError_BackendTimeout = "InternalError.BackendTimeout"
        case internalError_ErrorUnknown = "InternalError.ErrorUnknown"
        case internalError_RequestFailed = "InternalError.RequestFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_DuplicatedSessionIdAndSeq = "InvalidParameter.DuplicatedSessionIdAndSeq"
        case invalidParameter_MissingParameter = "InvalidParameter.MissingParameter"
        case invalidParameter_SeqIntervalTooLarge = "InvalidParameter.SeqIntervalTooLarge"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_LimitedAccessFrequency = "LimitExceeded.LimitedAccessFrequency"
        case missingParameter = "MissingParameter"
        case unauthorizedOperation_ActionNotFound = "UnauthorizedOperation.ActionNotFound"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AudioDurationExceed = "UnsupportedOperation.AudioDurationExceed"
        case unsupportedOperation_TextTooLong = "UnsupportedOperation.TextTooLong"
        case unsupportedOperation_UnSupportedTargetLanguage = "UnsupportedOperation.UnSupportedTargetLanguage"
        case unsupportedOperation_UnsupportedLanguage = "UnsupportedOperation.UnsupportedLanguage"
        case unsupportedOperation_UnsupportedSourceLanguage = "UnsupportedOperation.UnsupportedSourceLanguage"
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
    public static var failedOperation: TCTmtError {
        TCTmtError(.failedOperation)
    }
    
    public static var failedOperation_InsertErr: TCTmtError {
        TCTmtError(.failedOperation_InsertErr)
    }
    
    /// 本月免费额度已用完，如需继续使用您可以在机器翻译控制台升级为付费使用。
    public static var failedOperation_NoFreeAmount: TCTmtError {
        TCTmtError(.failedOperation_NoFreeAmount)
    }
    
    public static var failedOperation_RequestAiLabErr: TCTmtError {
        TCTmtError(.failedOperation_RequestAiLabErr)
    }
    
    /// 账号因为欠费停止服务，请在腾讯云账户充值。
    public static var failedOperation_ServiceIsolate: TCTmtError {
        TCTmtError(.failedOperation_ServiceIsolate)
    }
    
    /// 服务未开通，请在腾讯云官网机器翻译控制台开通服务。
    public static var failedOperation_UserNotRegistered: TCTmtError {
        TCTmtError(.failedOperation_UserNotRegistered)
    }
    
    /// 内部错误。
    public static var internalError: TCTmtError {
        TCTmtError(.internalError)
    }
    
    /// 后台服务超时，请稍后重试。
    public static var internalError_BackendTimeout: TCTmtError {
        TCTmtError(.internalError_BackendTimeout)
    }
    
    /// 未知错误。
    public static var internalError_ErrorUnknown: TCTmtError {
        TCTmtError(.internalError_ErrorUnknown)
    }
    
    /// 请求失败。
    public static var internalError_RequestFailed: TCTmtError {
        TCTmtError(.internalError_RequestFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTmtError {
        TCTmtError(.invalidParameter)
    }
    
    /// 重复的SessionUuid和Seq组合。
    public static var invalidParameter_DuplicatedSessionIdAndSeq: TCTmtError {
        TCTmtError(.invalidParameter_DuplicatedSessionIdAndSeq)
    }
    
    /// 参数错误。
    public static var invalidParameter_MissingParameter: TCTmtError {
        TCTmtError(.invalidParameter_MissingParameter)
    }
    
    /// Seq之间的间隙请不要大于2000。
    public static var invalidParameter_SeqIntervalTooLarge: TCTmtError {
        TCTmtError(.invalidParameter_SeqIntervalTooLarge)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTmtError {
        TCTmtError(.limitExceeded)
    }
    
    /// 超出请求频率。
    public static var limitExceeded_LimitedAccessFrequency: TCTmtError {
        TCTmtError(.limitExceeded_LimitedAccessFrequency)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTmtError {
        TCTmtError(.missingParameter)
    }
    
    /// 请填写正确的Action字段名称。
    public static var unauthorizedOperation_ActionNotFound: TCTmtError {
        TCTmtError(.unauthorizedOperation_ActionNotFound)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTmtError {
        TCTmtError(.unsupportedOperation)
    }
    
    /// 音频分片长度超过限制，请保证分片长度小于8s。
    public static var unsupportedOperation_AudioDurationExceed: TCTmtError {
        TCTmtError(.unsupportedOperation_AudioDurationExceed)
    }
    
    /// 单次请求text超过长度限制，请保证单次请求⻓度低于2000。
    public static var unsupportedOperation_TextTooLong: TCTmtError {
        TCTmtError(.unsupportedOperation_TextTooLong)
    }
    
    /// 不支持的目标语言，请参照语言列表。
    public static var unsupportedOperation_UnSupportedTargetLanguage: TCTmtError {
        TCTmtError(.unsupportedOperation_UnSupportedTargetLanguage)
    }
    
    /// 不支持的语言，请参照语言列表。
    public static var unsupportedOperation_UnsupportedLanguage: TCTmtError {
        TCTmtError(.unsupportedOperation_UnsupportedLanguage)
    }
    
    /// 不支持的源语言，请参照语言列表。
    public static var unsupportedOperation_UnsupportedSourceLanguage: TCTmtError {
        TCTmtError(.unsupportedOperation_UnsupportedSourceLanguage)
    }
}

extension TCTmtError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTmtError: Equatable {
    public static func == (lhs: TCTmtError, rhs: TCTmtError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTmtError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTmtError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
