public struct TCAaiError: TCErrorType {
    enum Code: String {
        case failedOperation_ErrorRecognize = "FailedOperation.ErrorRecognize"
        case failedOperation_ServiceIsolate = "FailedOperation.ServiceIsolate"
        case failedOperation_UserHasNoFreeAmount = "FailedOperation.UserHasNoFreeAmount"
        case failedOperation_UserNotRegistered = "FailedOperation.UserNotRegistered"
        case internalError = "InternalError"
        case internalError_ErrorConfigure = "InternalError.ErrorConfigure"
        case internalError_ErrorCreateLog = "InternalError.ErrorCreateLog"
        case internalError_ErrorDownFile = "InternalError.ErrorDownFile"
        case internalError_ErrorFailNewprequest = "InternalError.ErrorFailNewprequest"
        case internalError_ErrorFailWritetodb = "InternalError.ErrorFailWritetodb"
        case internalError_ErrorFileCannotopen = "InternalError.ErrorFileCannotopen"
        case internalError_ErrorGetRoute = "InternalError.ErrorGetRoute"
        case internalError_ErrorMakeLogpath = "InternalError.ErrorMakeLogpath"
        case internalError_ErrorRecognize = "InternalError.ErrorRecognize"
        case internalError_ErrorTranslate = "InternalError.ErrorTranslate"
        case internalError_ExceedMaxLimit = "InternalError.ExceedMaxLimit"
        case internalError_TextConvertFailed = "InternalError.TextConvertFailed"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AppIdNotRegistered = "InvalidParameterValue.AppIdNotRegistered"
        case invalidParameterValue_ErrorInvalidAppid = "InvalidParameterValue.ErrorInvalidAppid"
        case invalidParameterValue_ErrorInvalidClientip = "InvalidParameterValue.ErrorInvalidClientip"
        case invalidParameterValue_ErrorInvalidEngservice = "InvalidParameterValue.ErrorInvalidEngservice"
        case invalidParameterValue_ErrorInvalidOpenTranslate = "InvalidParameterValue.ErrorInvalidOpenTranslate"
        case invalidParameterValue_ErrorInvalidProjectid = "InvalidParameterValue.ErrorInvalidProjectid"
        case invalidParameterValue_ErrorInvalidRequestid = "InvalidParameterValue.ErrorInvalidRequestid"
        case invalidParameterValue_ErrorInvalidSourceLanguage = "InvalidParameterValue.ErrorInvalidSourceLanguage"
        case invalidParameterValue_ErrorInvalidSourcetype = "InvalidParameterValue.ErrorInvalidSourcetype"
        case invalidParameterValue_ErrorInvalidSubservicetype = "InvalidParameterValue.ErrorInvalidSubservicetype"
        case invalidParameterValue_ErrorInvalidTargetLanguage = "InvalidParameterValue.ErrorInvalidTargetLanguage"
        case invalidParameterValue_ErrorInvalidUrl = "InvalidParameterValue.ErrorInvalidUrl"
        case invalidParameterValue_ErrorInvalidUseraudiokey = "InvalidParameterValue.ErrorInvalidUseraudiokey"
        case invalidParameterValue_ErrorInvalidVoiceFormat = "InvalidParameterValue.ErrorInvalidVoiceFormat"
        case invalidParameterValue_ErrorInvalidVoicedata = "InvalidParameterValue.ErrorInvalidVoicedata"
        case invalidParameterValue_ErrorVoicedataTooLong = "InvalidParameterValue.ErrorVoicedataTooLong"
        case invalidParameterValue_PrimaryLanguage = "InvalidParameterValue.PrimaryLanguage"
        case invalidParameterValue_SampleRate = "InvalidParameterValue.SampleRate"
        case invalidParameterValue_Speed = "InvalidParameterValue.Speed"
        case invalidParameterValue_VoiceType = "InvalidParameterValue.VoiceType"
        case invalidParameterValue_Volume = "InvalidParameterValue.Volume"
        case invalidParameter_ErrorChatText = "InvalidParameter.ErrorChatText"
        case invalidParameter_ErrorChatUser = "InvalidParameter.ErrorChatUser"
        case invalidParameter_ErrorContentlength = "InvalidParameter.ErrorContentlength"
        case invalidParameter_ErrorNoBodydata = "InvalidParameter.ErrorNoBodydata"
        case invalidParameter_ErrorParamsMissing = "InvalidParameter.ErrorParamsMissing"
        case invalidParameter_ErrorParsequest = "InvalidParameter.ErrorParsequest"
        case invalidParameter_InvalidText = "InvalidParameter.InvalidText"
        case limitExceeded_AccessLimit = "LimitExceeded.AccessLimit"
        case unsupportedOperation_AccountArrears = "UnsupportedOperation.AccountArrears"
        case unsupportedOperation_NoFreeAccount = "UnsupportedOperation.NoFreeAccount"
        case unsupportedOperation_ServerNotOpen = "UnsupportedOperation.ServerNotOpen"
        case unsupportedOperation_ServerStopped = "UnsupportedOperation.ServerStopped"
        case unsupportedOperation_TextTooLong = "UnsupportedOperation.TextTooLong"
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
    
    /// 识别错误。
    public static var failedOperation_ErrorRecognize: TCAaiError {
        TCAaiError(.failedOperation_ErrorRecognize)
    }
    
    /// 账号因为欠费停止服务，请在腾讯云账户充值。
    public static var failedOperation_ServiceIsolate: TCAaiError {
        TCAaiError(.failedOperation_ServiceIsolate)
    }
    
    /// 账号本月免费额度已用完。
    public static var failedOperation_UserHasNoFreeAmount: TCAaiError {
        TCAaiError(.failedOperation_UserHasNoFreeAmount)
    }
    
    /// 服务未开通，请在腾讯云官网语音识别控制台开通服务。
    public static var failedOperation_UserNotRegistered: TCAaiError {
        TCAaiError(.failedOperation_UserNotRegistered)
    }
    
    /// 内部错误。
    public static var internalError: TCAaiError {
        TCAaiError(.internalError)
    }
    
    /// 初始化配置失败。
    public static var internalError_ErrorConfigure: TCAaiError {
        TCAaiError(.internalError_ErrorConfigure)
    }
    
    /// 创建日志失败。
    public static var internalError_ErrorCreateLog: TCAaiError {
        TCAaiError(.internalError_ErrorCreateLog)
    }
    
    /// 下载音频文件失败。
    public static var internalError_ErrorDownFile: TCAaiError {
        TCAaiError(.internalError_ErrorDownFile)
    }
    
    /// 新建数组失败。
    public static var internalError_ErrorFailNewprequest: TCAaiError {
        TCAaiError(.internalError_ErrorFailNewprequest)
    }
    
    /// 写入数据库失败。
    public static var internalError_ErrorFailWritetodb: TCAaiError {
        TCAaiError(.internalError_ErrorFailWritetodb)
    }
    
    /// 文件无法打开。
    public static var internalError_ErrorFileCannotopen: TCAaiError {
        TCAaiError(.internalError_ErrorFileCannotopen)
    }
    
    /// 获取路由失败。
    public static var internalError_ErrorGetRoute: TCAaiError {
        TCAaiError(.internalError_ErrorGetRoute)
    }
    
    /// 创建日志路径失败。
    public static var internalError_ErrorMakeLogpath: TCAaiError {
        TCAaiError(.internalError_ErrorMakeLogpath)
    }
    
    /// 识别失败。
    public static var internalError_ErrorRecognize: TCAaiError {
        TCAaiError(.internalError_ErrorRecognize)
    }
    
    /// 机器翻译失败。
    public static var internalError_ErrorTranslate: TCAaiError {
        TCAaiError(.internalError_ErrorTranslate)
    }
    
    /// 超过最大限流。
    public static var internalError_ExceedMaxLimit: TCAaiError {
        TCAaiError(.internalError_ExceedMaxLimit)
    }
    
    /// 文本转换失败，请检查文本格式。
    public static var internalError_TextConvertFailed: TCAaiError {
        TCAaiError(.internalError_TextConvertFailed)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAaiError {
        TCAaiError(.invalidParameterValue)
    }
    
    /// appid未注册。
    public static var invalidParameterValue_AppIdNotRegistered: TCAaiError {
        TCAaiError(.invalidParameterValue_AppIdNotRegistered)
    }
    
    /// AppId无效。
    public static var invalidParameterValue_ErrorInvalidAppid: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidAppid)
    }
    
    /// ClientIp无效。
    public static var invalidParameterValue_ErrorInvalidClientip: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidClientip)
    }
    
    /// EngSerViceType无效。
    public static var invalidParameterValue_ErrorInvalidEngservice: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidEngservice)
    }
    
    /// 是否进行翻译。
    public static var invalidParameterValue_ErrorInvalidOpenTranslate: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidOpenTranslate)
    }
    
    /// ProjectId无效。
    public static var invalidParameterValue_ErrorInvalidProjectid: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidProjectid)
    }
    
    /// RequestId无效。
    public static var invalidParameterValue_ErrorInvalidRequestid: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidRequestid)
    }
    
    /// 翻译的源语言类型不支持。
    public static var invalidParameterValue_ErrorInvalidSourceLanguage: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidSourceLanguage)
    }
    
    /// SourceType无效。
    public static var invalidParameterValue_ErrorInvalidSourcetype: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidSourcetype)
    }
    
    /// SubserviceType无效。
    public static var invalidParameterValue_ErrorInvalidSubservicetype: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidSubservicetype)
    }
    
    /// 翻译的目标语言类型不支持。
    public static var invalidParameterValue_ErrorInvalidTargetLanguage: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidTargetLanguage)
    }
    
    /// Url无效。
    public static var invalidParameterValue_ErrorInvalidUrl: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidUrl)
    }
    
    /// UsrAudioKey无效。
    public static var invalidParameterValue_ErrorInvalidUseraudiokey: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidUseraudiokey)
    }
    
    /// 音频编码格式不支持。
    public static var invalidParameterValue_ErrorInvalidVoiceFormat: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidVoiceFormat)
    }
    
    /// 音频数据无效。
    public static var invalidParameterValue_ErrorInvalidVoicedata: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorInvalidVoicedata)
    }
    
    /// 数据过长。
    public static var invalidParameterValue_ErrorVoicedataTooLong: TCAaiError {
        TCAaiError(.invalidParameterValue_ErrorVoicedataTooLong)
    }
    
    /// PrimaryLanguage非法。
    public static var invalidParameterValue_PrimaryLanguage: TCAaiError {
        TCAaiError(.invalidParameterValue_PrimaryLanguage)
    }
    
    public static var invalidParameterValue_SampleRate: TCAaiError {
        TCAaiError(.invalidParameterValue_SampleRate)
    }
    
    /// Speed参数非法。
    public static var invalidParameterValue_Speed: TCAaiError {
        TCAaiError(.invalidParameterValue_Speed)
    }
    
    /// 声音类型错误。
    public static var invalidParameterValue_VoiceType: TCAaiError {
        TCAaiError(.invalidParameterValue_VoiceType)
    }
    
    /// Volume参数非法。
    public static var invalidParameterValue_Volume: TCAaiError {
        TCAaiError(.invalidParameterValue_Volume)
    }
    
    /// 错误的聊天输入文本。
    public static var invalidParameter_ErrorChatText: TCAaiError {
        TCAaiError(.invalidParameter_ErrorChatText)
    }
    
    /// 错误的User参数。
    public static var invalidParameter_ErrorChatUser: TCAaiError {
        TCAaiError(.invalidParameter_ErrorChatUser)
    }
    
    /// 请求数据长度无效。
    public static var invalidParameter_ErrorContentlength: TCAaiError {
        TCAaiError(.invalidParameter_ErrorContentlength)
    }
    
    /// 没有body数据。
    public static var invalidParameter_ErrorNoBodydata: TCAaiError {
        TCAaiError(.invalidParameter_ErrorNoBodydata)
    }
    
    /// 参数不全。
    public static var invalidParameter_ErrorParamsMissing: TCAaiError {
        TCAaiError(.invalidParameter_ErrorParamsMissing)
    }
    
    /// 解析请求数据失败。
    public static var invalidParameter_ErrorParsequest: TCAaiError {
        TCAaiError(.invalidParameter_ErrorParsequest)
    }
    
    /// 非法文本。
    public static var invalidParameter_InvalidText: TCAaiError {
        TCAaiError(.invalidParameter_InvalidText)
    }
    
    /// 访问限流。
    public static var limitExceeded_AccessLimit: TCAaiError {
        TCAaiError(.limitExceeded_AccessLimit)
    }
    
    /// 账号欠费。
    public static var unsupportedOperation_AccountArrears: TCAaiError {
        TCAaiError(.unsupportedOperation_AccountArrears)
    }
    
    /// 免费用量耗尽。
    public static var unsupportedOperation_NoFreeAccount: TCAaiError {
        TCAaiError(.unsupportedOperation_NoFreeAccount)
    }
    
    /// 服务未开通。
    public static var unsupportedOperation_ServerNotOpen: TCAaiError {
        TCAaiError(.unsupportedOperation_ServerNotOpen)
    }
    
    public static var unsupportedOperation_ServerStopped: TCAaiError {
        TCAaiError(.unsupportedOperation_ServerStopped)
    }
    
    /// 文本过长，请参考请求参数Text的说明。
    public static var unsupportedOperation_TextTooLong: TCAaiError {
        TCAaiError(.unsupportedOperation_TextTooLong)
    }
}

extension TCAaiError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, UnsupportedOperation.self]
    }
}

extension TCAaiError: Equatable {
    public static func == (lhs: TCAaiError, rhs: TCAaiError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAaiError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}