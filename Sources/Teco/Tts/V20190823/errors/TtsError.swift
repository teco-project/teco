public struct TCTtsError: TCErrorType {
    enum Code: String {
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case failedOperation_NoSuchTask = "FailedOperation.NoSuchTask"
        case internalError_ErrorGetRoute = "InternalError.ErrorGetRoute"
        case internalError_ExceedMaxLimit = "InternalError.ExceedMaxLimit"
        case internalError_FailAccessDatabase = "InternalError.FailAccessDatabase"
        case internalError_FailAccessRedis = "InternalError.FailAccessRedis"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameterValue_AppId = "InvalidParameterValue.AppId"
        case invalidParameterValue_AppIdNotRegistered = "InvalidParameterValue.AppIdNotRegistered"
        case invalidParameterValue_CallbackUrl = "InvalidParameterValue.CallbackUrl"
        case invalidParameterValue_Codec = "InvalidParameterValue.Codec"
        case invalidParameterValue_ErrorCardinalFormat = "InvalidParameterValue.ErrorCardinalFormat"
        case invalidParameterValue_InvalidText = "InvalidParameterValue.InvalidText"
        case invalidParameterValue_MissParameters = "InvalidParameterValue.MissParameters"
        case invalidParameterValue_ModelType = "InvalidParameterValue.ModelType"
        case invalidParameterValue_ParticipleError = "InvalidParameterValue.ParticipleError"
        case invalidParameterValue_PrimaryLanguage = "InvalidParameterValue.PrimaryLanguage"
        case invalidParameterValue_SSMLInvalid = "InvalidParameterValue.SSMLInvalid"
        case invalidParameterValue_SampleRate = "InvalidParameterValue.SampleRate"
        case invalidParameterValue_SessionId = "InvalidParameterValue.SessionId"
        case invalidParameterValue_Speed = "InvalidParameterValue.Speed"
        case invalidParameterValue_Text = "InvalidParameterValue.Text"
        case invalidParameterValue_TextEmpty = "InvalidParameterValue.TextEmpty"
        case invalidParameterValue_TextNotUtf8 = "InvalidParameterValue.TextNotUtf8"
        case invalidParameterValue_TextSsmlParseError = "InvalidParameterValue.TextSsmlParseError"
        case invalidParameterValue_TextTooLong = "InvalidParameterValue.TextTooLong"
        case invalidParameterValue_Type = "InvalidParameterValue.Type"
        case invalidParameterValue_VoiceType = "InvalidParameterValue.VoiceType"
        case invalidParameterValue_Volume = "InvalidParameterValue.Volume"
        case invalidParameter_InvalidText = "InvalidParameter.InvalidText"
        case invalidParameter_Status = "InvalidParameter.Status"
        case limitExceeded_AccessLimit = "LimitExceeded.AccessLimit"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AccountArrears = "UnsupportedOperation.AccountArrears"
        case unsupportedOperation_AuthorizationExpired = "UnsupportedOperation.AuthorizationExpired"
        case unsupportedOperation_AuthorizationFailed = "UnsupportedOperation.AuthorizationFailed"
        case unsupportedOperation_ForbiddenUse = "UnsupportedOperation.ForbiddenUse"
        case unsupportedOperation_NoBanlance = "UnsupportedOperation.NoBanlance"
        case unsupportedOperation_NoFreeAccount = "UnsupportedOperation.NoFreeAccount"
        case unsupportedOperation_PkgExhausted = "UnsupportedOperation.PkgExhausted"
        case unsupportedOperation_ServerAlreadyOpen = "UnsupportedOperation.ServerAlreadyOpen"
        case unsupportedOperation_ServerDestoryed = "UnsupportedOperation.ServerDestoryed"
        case unsupportedOperation_ServerNotOpen = "UnsupportedOperation.ServerNotOpen"
        case unsupportedOperation_ServerStopped = "UnsupportedOperation.ServerStopped"
        case unsupportedOperation_TextTooLong = "UnsupportedOperation.TextTooLong"
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
    
    /// 授权无效。
    public static var authFailure_InvalidAuthorization: TCTtsError {
        TCTtsError(.authFailure_InvalidAuthorization)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTtsError {
        TCTtsError(.failedOperation)
    }
    
    /// 任务不存在。
    public static var failedOperation_NoSuchTask: TCTtsError {
        TCTtsError(.failedOperation_NoSuchTask)
    }
    
    /// 路由错误。
    public static var internalError_ErrorGetRoute: TCTtsError {
        TCTtsError(.internalError_ErrorGetRoute)
    }
    
    /// 负载限流。
    public static var internalError_ExceedMaxLimit: TCTtsError {
        TCTtsError(.internalError_ExceedMaxLimit)
    }
    
    /// 数据库存取失败。
    public static var internalError_FailAccessDatabase: TCTtsError {
        TCTtsError(.internalError_FailAccessDatabase)
    }
    
    /// Redis存储失败。
    public static var internalError_FailAccessRedis: TCTtsError {
        TCTtsError(.internalError_FailAccessRedis)
    }
    
    /// 内部错误。
    public static var internalError_InternalError: TCTtsError {
        TCTtsError(.internalError_InternalError)
    }
    
    /// AppId非法，请参考AppId参数说明。
    public static var invalidParameterValue_AppId: TCTtsError {
        TCTtsError(.invalidParameterValue_AppId)
    }
    
    /// APPID未注册，请在语音合成主页   https://console.cloud.tencent.com/tts  开通使用。
    public static var invalidParameterValue_AppIdNotRegistered: TCTtsError {
        TCTtsError(.invalidParameterValue_AppIdNotRegistered)
    }
    
    /// CallbackUrl非法或不可访问。
    public static var invalidParameterValue_CallbackUrl: TCTtsError {
        TCTtsError(.invalidParameterValue_CallbackUrl)
    }
    
    /// Codec非法，请参考Codec参数说明。
    public static var invalidParameterValue_Codec: TCTtsError {
        TCTtsError(.invalidParameterValue_Codec)
    }
    
    /// ssml的say-as标签属性为cardinal、currency、address时，数字部分非有效常数，仅允许包含数字、“,”、“.”和空格。
    public static var invalidParameterValue_ErrorCardinalFormat: TCTtsError {
        TCTtsError(.invalidParameterValue_ErrorCardinalFormat)
    }
    
    /// 请求文本含有非法字符，或请求文本没有有效字符。
    public static var invalidParameterValue_InvalidText: TCTtsError {
        TCTtsError(.invalidParameterValue_InvalidText)
    }
    
    /// 缺少参数。
    public static var invalidParameterValue_MissParameters: TCTtsError {
        TCTtsError(.invalidParameterValue_MissParameters)
    }
    
    /// ModelType非法。
    public static var invalidParameterValue_ModelType: TCTtsError {
        TCTtsError(.invalidParameterValue_ModelType)
    }
    
    /// 文本无效，请检查文本信息。
    public static var invalidParameterValue_ParticipleError: TCTtsError {
        TCTtsError(.invalidParameterValue_ParticipleError)
    }
    
    /// PrimaryLanguage非法，请参考PrimaryLanguage参数说明。
    public static var invalidParameterValue_PrimaryLanguage: TCTtsError {
        TCTtsError(.invalidParameterValue_PrimaryLanguage)
    }
    
    /// 请检查SSML标签，修改文本内容。
    public static var invalidParameterValue_SSMLInvalid: TCTtsError {
        TCTtsError(.invalidParameterValue_SSMLInvalid)
    }
    
    /// SampleRate非法，请参考SampleRate参数说明。
    public static var invalidParameterValue_SampleRate: TCTtsError {
        TCTtsError(.invalidParameterValue_SampleRate)
    }
    
    /// SessionId非法，请参考Volume参数说明。
    public static var invalidParameterValue_SessionId: TCTtsError {
        TCTtsError(.invalidParameterValue_SessionId)
    }
    
    /// Speed非法，请参考Speed参数说明。
    public static var invalidParameterValue_Speed: TCTtsError {
        TCTtsError(.invalidParameterValue_Speed)
    }
    
    /// 文本缺失。
    public static var invalidParameterValue_Text: TCTtsError {
        TCTtsError(.invalidParameterValue_Text)
    }
    
    /// Text为空。
    public static var invalidParameterValue_TextEmpty: TCTtsError {
        TCTtsError(.invalidParameterValue_TextEmpty)
    }
    
    /// 文本不是 UTF8 格式。
    public static var invalidParameterValue_TextNotUtf8: TCTtsError {
        TCTtsError(.invalidParameterValue_TextNotUtf8)
    }
    
    /// Text参数SSML语法错误，请参考SSML文档说明。
    public static var invalidParameterValue_TextSsmlParseError: TCTtsError {
        TCTtsError(.invalidParameterValue_TextSsmlParseError)
    }
    
    /// 合成文本字符过长。
    public static var invalidParameterValue_TextTooLong: TCTtsError {
        TCTtsError(.invalidParameterValue_TextTooLong)
    }
    
    /// Type 类型非法。
    public static var invalidParameterValue_Type: TCTtsError {
        TCTtsError(.invalidParameterValue_Type)
    }
    
    /// VoiceType非法，请参考VoiceType参数说明。
    public static var invalidParameterValue_VoiceType: TCTtsError {
        TCTtsError(.invalidParameterValue_VoiceType)
    }
    
    /// Volume非法，请参考Volume参数说明。
    public static var invalidParameterValue_Volume: TCTtsError {
        TCTtsError(.invalidParameterValue_Volume)
    }
    
    /// 请求文本含有非法字符。
    public static var invalidParameter_InvalidText: TCTtsError {
        TCTtsError(.invalidParameter_InvalidText)
    }
    
    /// status 不合法。
    public static var invalidParameter_Status: TCTtsError {
        TCTtsError(.invalidParameter_Status)
    }
    
    /// 请求超过限制频率。
    public static var limitExceeded_AccessLimit: TCTtsError {
        TCTtsError(.limitExceeded_AccessLimit)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTtsError {
        TCTtsError(.unsupportedOperation)
    }
    
    /// 欠费。
    public static var unsupportedOperation_AccountArrears: TCTtsError {
        TCTtsError(.unsupportedOperation_AccountArrears)
    }
    
    /// 鉴权已过期。
    public static var unsupportedOperation_AuthorizationExpired: TCTtsError {
        TCTtsError(.unsupportedOperation_AuthorizationExpired)
    }
    
    /// 鉴权失败。
    public static var unsupportedOperation_AuthorizationFailed: TCTtsError {
        TCTtsError(.unsupportedOperation_AuthorizationFailed)
    }
    
    /// 服务禁止使用。
    public static var unsupportedOperation_ForbiddenUse: TCTtsError {
        TCTtsError(.unsupportedOperation_ForbiddenUse)
    }
    
    /// 没有余额。
    public static var unsupportedOperation_NoBanlance: TCTtsError {
        TCTtsError(.unsupportedOperation_NoBanlance)
    }
    
    /// 客户免费额度已用完。
    public static var unsupportedOperation_NoFreeAccount: TCTtsError {
        TCTtsError(.unsupportedOperation_NoFreeAccount)
    }
    
    /// 请检查资源包余量。
    public static var unsupportedOperation_PkgExhausted: TCTtsError {
        TCTtsError(.unsupportedOperation_PkgExhausted)
    }
    
    /// 服务器已打开。
    public static var unsupportedOperation_ServerAlreadyOpen: TCTtsError {
        TCTtsError(.unsupportedOperation_ServerAlreadyOpen)
    }
    
    /// 服务已销毁。
    public static var unsupportedOperation_ServerDestoryed: TCTtsError {
        TCTtsError(.unsupportedOperation_ServerDestoryed)
    }
    
    /// 服务未开通使用。
    public static var unsupportedOperation_ServerNotOpen: TCTtsError {
        TCTtsError(.unsupportedOperation_ServerNotOpen)
    }
    
    /// 服务已停止使用。
    public static var unsupportedOperation_ServerStopped: TCTtsError {
        TCTtsError(.unsupportedOperation_ServerStopped)
    }
    
    /// 文本过长，请参考请求参数Text的说明。
    public static var unsupportedOperation_TextTooLong: TCTtsError {
        TCTtsError(.unsupportedOperation_TextTooLong)
    }
}

extension TCTtsError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, UnsupportedOperation.self]
    }
}

extension TCTtsError: Equatable {
    public static func == (lhs: TCTtsError, rhs: TCTtsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTtsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTtsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
