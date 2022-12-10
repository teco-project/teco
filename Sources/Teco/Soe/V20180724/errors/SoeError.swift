public struct TCSoeError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_AccountUnavailable = "AuthFailure.AccountUnavailable"
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case failedOperation_ErrorGetSession = "FailedOperation.ErrorGetSession"
        case failedOperation_ErrorGetUser = "FailedOperation.ErrorGetUser"
        case failedOperation_EvaluateTimeout = "FailedOperation.EvaluateTimeout"
        case failedOperation_EvaluateUnknownError = "FailedOperation.EvaluateUnknownError"
        case failedOperation_FailedGetEngineIP = "FailedOperation.FailedGetEngineIP"
        case failedOperation_FailedGetResult = "FailedOperation.FailedGetResult"
        case failedOperation_FailedGetSession = "FailedOperation.FailedGetSession"
        case failedOperation_FailedGetSessionSeqID = "FailedOperation.FailedGetSessionSeqID"
        case failedOperation_FailedGetUser = "FailedOperation.FailedGetUser"
        case failedOperation_FailedInit = "FailedOperation.FailedInit"
        case failedOperation_FailedSetResult = "FailedOperation.FailedSetResult"
        case failedOperation_FailedSetSession = "FailedOperation.FailedSetSession"
        case failedOperation_FailedSetSessionSeqID = "FailedOperation.FailedSetSessionSeqID"
        case failedOperation_FailedSetUser = "FailedOperation.FailedSetUser"
        case failedOperation_InternalServerError = "FailedOperation.InternalServerError"
        case failedOperation_InvalidParameterValue = "FailedOperation.InvalidParameterValue"
        case failedOperation_JsonCodecError = "FailedOperation.JsonCodecError"
        case failedOperation_NeedInitBeforeEvaluation = "FailedOperation.NeedInitBeforeEvaluation"
        case failedOperation_PastSeqIdLose = "FailedOperation.PastSeqIdLose"
        case failedOperation_ResultExpired = "FailedOperation.ResultExpired"
        case failedOperation_SeqIdExpired = "FailedOperation.SeqIdExpired"
        case failedOperation_ServerOverload = "FailedOperation.ServerOverload"
        case failedOperation_ServiceTimeout = "FailedOperation.ServiceTimeout"
        case failedOperation_SessionExpired = "FailedOperation.SessionExpired"
        case failedOperation_WaitPastSeqIdTimeout = "FailedOperation.WaitPastSeqIdTimeout"
        case internalError = "InternalError"
        case internalError_AudioProcessingFailed = "InternalError.AudioProcessingFailed"
        case internalError_AuthorizeError = "InternalError.AuthorizeError"
        case internalError_BASE64DecodeFailed = "InternalError.BASE64DecodeFailed"
        case internalError_CannotFindSession = "InternalError.CannotFindSession"
        case internalError_FailToDecodeVoice = "InternalError.FailToDecodeVoice"
        case internalError_IlegalServerResponse = "InternalError.IlegalServerResponse"
        case internalError_InitStreamNotSupport = "InternalError.InitStreamNotSupport"
        case internalError_InitStreamUnfinished = "InternalError.InitStreamUnfinished"
        case internalError_InitialParameterError = "InternalError.InitialParameterError"
        case internalError_InvalidSeqId = "InternalError.InvalidSeqId"
        case internalError_InvalidWAVHeader = "InternalError.InvalidWAVHeader"
        case internalError_LastSeqUnfinished = "InternalError.LastSeqUnfinished"
        case internalError_MP3DecodeFailed = "InternalError.MP3DecodeFailed"
        case internalError_NeedToInit = "InternalError.NeedToInit"
        case internalError_NoConversationFound = "InternalError.NoConversationFound"
        case internalError_NoDocInList = "InternalError.NoDocInList"
        case internalError_NoError = "InternalError.NoError"
        case internalError_NoInitBeforeEvaluation = "InternalError.NoInitBeforeEvaluation"
        case internalError_RefTxtEmpty = "InternalError.RefTxtEmpty"
        case internalError_RefTxtOov = "InternalError.RefTxtOov"
        case internalError_RefTxtTooLang = "InternalError.RefTxtTooLang"
        case internalError_ServerInternalError = "InternalError.ServerInternalError"
        case internalError_ServerOverload = "InternalError.ServerOverload"
        case internalError_ServiceTimeout = "InternalError.ServiceTimeout"
        case internalError_ShardNoStartWithOne = "InternalError.ShardNoStartWithOne"
        case internalError_StreamProcessFail = "InternalError.StreamProcessFail"
        case internalError_StreamProcessTimeOut = "InternalError.StreamProcessTimeOut"
        case internalError_StreamingvoicepkgTimeout = "InternalError.StreamingvoicepkgTimeout"
        case internalError_TimeOut = "InternalError.TimeOut"
        case internalError_TooLongPackage = "InternalError.TooLongPackage"
        case internalError_VadNotDetectedSpeak = "InternalError.VadNotDetectedSpeak"
        case internalError_VoiceMsgOversized = "InternalError.VoiceMsgOversized"
        case internalError_VoiceMsgTooShort = "InternalError.VoiceMsgTooShort"
        case internalError_WordLengthTooLong = "InternalError.WordLengthTooLong"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AudioDataSizeLimitExceeded = "InvalidParameterValue.AudioDataSizeLimitExceeded"
        case invalidParameterValue_AudioDecodeFailed = "InvalidParameterValue.AudioDecodeFailed"
        case invalidParameterValue_AudioLimitExceeded = "InvalidParameterValue.AudioLimitExceeded"
        case invalidParameterValue_AudioSizeMustBeEven = "InvalidParameterValue.AudioSizeMustBeEven"
        case invalidParameterValue_BASEDecodeFailed = "InvalidParameterValue.BASEDecodeFailed"
        case invalidParameterValue_InvalidSeqId = "InvalidParameterValue.InvalidSeqId"
        case invalidParameterValue_InvalidWAVHeader = "InvalidParameterValue.InvalidWAVHeader"
        case invalidParameterValue_NoDocInList = "InvalidParameterValue.NoDocInList"
        case invalidParameterValue_ParameterInvalid = "InvalidParameterValue.ParameterInvalid"
        case invalidParameterValue_RefTextEmpty = "InvalidParameterValue.RefTextEmpty"
        case invalidParameterValue_RefTextGrammarError = "InvalidParameterValue.RefTextGrammarError"
        case invalidParameterValue_RefTextLimitExceeded = "InvalidParameterValue.RefTextLimitExceeded"
        case invalidParameterValue_RefTextOOV = "InvalidParameterValue.RefTextOOV"
        case invalidParameterValue_RefTextPolyphonicLimitExceeded = "InvalidParameterValue.RefTextPolyphonicLimitExceeded"
        case invalidParameterValue_RefTxtEmpty = "InvalidParameterValue.RefTxtEmpty"
        case invalidParameterValue_RefTxtTooLang = "InvalidParameterValue.RefTxtTooLang"
        case invalidParameterValue_SensitiveWords = "InvalidParameterValue.SensitiveWords"
        case invalidParameterValue_SessionIdInUse = "InvalidParameterValue.SessionIdInUse"
        case invalidParameterValue_ShardNoStartWithOne = "InvalidParameterValue.ShardNoStartWithOne"
        case invalidParameterValue_StreamingvoicepkgTimeout = "InvalidParameterValue.StreamingvoicepkgTimeout"
        case invalidParameterValue_VadNotDetectedSpeak = "InvalidParameterValue.VadNotDetectedSpeak"
        case invalidParameterValue_VoiceFileTypeNotFound = "InvalidParameterValue.VoiceFileTypeNotFound"
        case invalidParameterValue_VoiceLengthTooLong = "InvalidParameterValue.VoiceLengthTooLong"
        case invalidParameterValue_WAVHeaderDecodeFailed = "InvalidParameterValue.WAVHeaderDecodeFailed"
        case invalidParameterValue_WordLengthTooLong = "InvalidParameterValue.WordLengthTooLong"
        case invalidParameter_AuthorizeError = "InvalidParameter.AuthorizeError"
        case invalidParameter_ErrorPhoneme = "InvalidParameter.ErrorPhoneme"
        case invalidParameter_InitialParameterError = "InvalidParameter.InitialParameterError"
        case invalidParameter_InvalidAction = "InvalidParameter.InvalidAction"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_SeqIdLimitExceeded = "InvalidParameter.SeqIdLimitExceeded"
        case invalidParameter_VoiceMsgOversized = "InvalidParameter.VoiceMsgOversized"
        case invalidParameter_WithoutRealName = "InvalidParameter.WithoutRealName"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ConcurrencyLimitExceeded = "LimitExceeded.ConcurrencyLimitExceeded"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient_ServerTimeout = "ResourceInsufficient.ServerTimeout"
        case resourceNotFound_AppidNotFount = "ResourceNotFound.AppidNotFount"
        case resourceNotFound_InterfaceNotFount = "ResourceNotFound.InterfaceNotFount"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_AuthorizeError = "ResourceUnavailable.AuthorizeError"
        case resourceUnavailable_CannotFindSession = "ResourceUnavailable.CannotFindSession"
        case resourceUnavailable_ConcurrencyLimit = "ResourceUnavailable.ConcurrencyLimit"
        case resourceUnavailable_InitStreamNotSupport = "ResourceUnavailable.InitStreamNotSupport"
        case resourceUnavailable_InitStreamUnfinished = "ResourceUnavailable.InitStreamUnfinished"
        case resourceUnavailable_LastSeqUnfinished = "ResourceUnavailable.LastSeqUnfinished"
        case resourceUnavailable_NoConversationFound = "ResourceUnavailable.NoConversationFound"
        case resourceUnavailable_NoInitBeforeEvaluation = "ResourceUnavailable.NoInitBeforeEvaluation"
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
    public static var authFailure: TCSoeError {
        TCSoeError(.authFailure)
    }
    
    /// 账号未开通口语评测服务或账号已欠费隔离，请开通服务或检查账号状态。
    ///
    /// 开通服务或检查账号状态。
    public static var authFailure_AccountUnavailable: TCSoeError {
        TCSoeError(.authFailure_AccountUnavailable)
    }
    
    /// 鉴权失败。
    public static var authFailure_InvalidAuthorization: TCSoeError {
        TCSoeError(.authFailure_InvalidAuthorization)
    }
    
    /// 操作失败。
    public static var failedOperation: TCSoeError {
        TCSoeError(.failedOperation)
    }
    
    /// 会话缓存保存失败，请重新初始化。
    public static var failedOperation_ErrorGetSession: TCSoeError {
        TCSoeError(.failedOperation_ErrorGetSession)
    }
    
    /// 获取用户信息失败。
    ///
    /// 获取用户信息失败，请重新初始化后请求。
    public static var failedOperation_ErrorGetUser: TCSoeError {
        TCSoeError(.failedOperation_ErrorGetUser)
    }
    
    /// 评测时间超出限制，请检查音频时间是否过长后重试。
    ///
    /// 请参考API文档检查音频时间是否过长后重试。https://cloud.tencent.com/document/product/884/19310
    public static var failedOperation_EvaluateTimeout: TCSoeError {
        TCSoeError(.failedOperation_EvaluateTimeout)
    }
    
    /// 引擎未知错误，请检查一下RefText是否正常后重试。
    ///
    /// 请参考API文档检查参数RefText是否正确后重试。https://cloud.tencent.com/document/product/884/19310
    public static var failedOperation_EvaluateUnknownError: TCSoeError {
        TCSoeError(.failedOperation_EvaluateUnknownError)
    }
    
    /// 获取评测引擎IP失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedGetEngineIP: TCSoeError {
        TCSoeError(.failedOperation_FailedGetEngineIP)
    }
    
    /// 结果缓存获取失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedGetResult: TCSoeError {
        TCSoeError(.failedOperation_FailedGetResult)
    }
    
    /// 会话缓存获取失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedGetSession: TCSoeError {
        TCSoeError(.failedOperation_FailedGetSession)
    }
    
    /// 会话分片序号缓存获取失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedGetSessionSeqID: TCSoeError {
        TCSoeError(.failedOperation_FailedGetSessionSeqID)
    }
    
    /// 用户信息缓存获取失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedGetUser: TCSoeError {
        TCSoeError(.failedOperation_FailedGetUser)
    }
    
    /// 请求初始化失败，请检查参数后重新初始化。
    ///
    /// 检查参数后重新初始化。https://cloud.tencent.com/document/product/884/19310
    public static var failedOperation_FailedInit: TCSoeError {
        TCSoeError(.failedOperation_FailedInit)
    }
    
    /// 结果缓存保存失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedSetResult: TCSoeError {
        TCSoeError(.failedOperation_FailedSetResult)
    }
    
    /// 会话缓存保存失败，请重新初始化。
    ///
    /// 请重新初始化。
    public static var failedOperation_FailedSetSession: TCSoeError {
        TCSoeError(.failedOperation_FailedSetSession)
    }
    
    /// 会话分片序号缓存保存失败，请重新初始化。
    ///
    /// 请重新初始化。
    public static var failedOperation_FailedSetSessionSeqID: TCSoeError {
        TCSoeError(.failedOperation_FailedSetSessionSeqID)
    }
    
    /// 用户信息缓存保存失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_FailedSetUser: TCSoeError {
        TCSoeError(.failedOperation_FailedSetUser)
    }
    
    /// 服务内部错误，请稍后重试或联系我们。
    public static var failedOperation_InternalServerError: TCSoeError {
        TCSoeError(.failedOperation_InternalServerError)
    }
    
    /// 引擎参数错误，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_InvalidParameterValue: TCSoeError {
        TCSoeError(.failedOperation_InvalidParameterValue)
    }
    
    /// Json编解码失败，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_JsonCodecError: TCSoeError {
        TCSoeError(.failedOperation_JsonCodecError)
    }
    
    /// 引擎评估之前没有初始化，请重新初始化成功之后重新传输数据。
    ///
    /// 请重新初始化成功之后重新传输数据。
    public static var failedOperation_NeedInitBeforeEvaluation: TCSoeError {
        TCSoeError(.failedOperation_NeedInitBeforeEvaluation)
    }
    
    /// 前序分片缺失，请重新补发前序分片。
    ///
    /// 请重发前序分片。
    public static var failedOperation_PastSeqIdLose: TCSoeError {
        TCSoeError(.failedOperation_PastSeqIdLose)
    }
    
    /// 结果缓存已过期，请重新初始化成功之后重新传输数据。
    ///
    /// 请重新初始化成功之后重新传输数据。
    public static var failedOperation_ResultExpired: TCSoeError {
        TCSoeError(.failedOperation_ResultExpired)
    }
    
    /// 分片序号缓存已过期，请重新初始化成功之后重新传输数据。
    ///
    /// 请重新初始化成功之后重新传输数据。
    public static var failedOperation_SeqIdExpired: TCSoeError {
        TCSoeError(.failedOperation_SeqIdExpired)
    }
    
    /// 引擎服务器过载，请稍后重试。
    ///
    /// 请重试当前请求。
    public static var failedOperation_ServerOverload: TCSoeError {
        TCSoeError(.failedOperation_ServerOverload)
    }
    
    /// 评测超时，请通过轮询查询评测结果，后续请使用分片传输或减少单次传输音频时长。
    ///
    /// 请通过轮询查询评测结果，后续请使用分片传输或减少单次传输音频时长。
    public static var failedOperation_ServiceTimeout: TCSoeError {
        TCSoeError(.failedOperation_ServiceTimeout)
    }
    
    /// 会话缓存已过期，请重新初始化成功之后重新传输数据。
    ///
    /// 请重新初始化成功之后重新传输数据。
    public static var failedOperation_SessionExpired: TCSoeError {
        TCSoeError(.failedOperation_SessionExpired)
    }
    
    /// 引擎等待前序分片超时，请重新补发前序分片。
    public static var failedOperation_WaitPastSeqIdTimeout: TCSoeError {
        TCSoeError(.failedOperation_WaitPastSeqIdTimeout)
    }
    
    /// 内部错误。
    public static var internalError: TCSoeError {
        TCSoeError(.internalError)
    }
    
    /// 音频处理出错。
    public static var internalError_AudioProcessingFailed: TCSoeError {
        TCSoeError(.internalError_AudioProcessingFailed)
    }
    
    /// 服务未开通或已欠费。
    public static var internalError_AuthorizeError: TCSoeError {
        TCSoeError(.internalError_AuthorizeError)
    }
    
    /// BASE64解码错误。
    public static var internalError_BASE64DecodeFailed: TCSoeError {
        TCSoeError(.internalError_BASE64DecodeFailed)
    }
    
    /// 评估之前没有初始化或已过期。
    public static var internalError_CannotFindSession: TCSoeError {
        TCSoeError(.internalError_CannotFindSession)
    }
    
    /// 语音解码失败。
    public static var internalError_FailToDecodeVoice: TCSoeError {
        TCSoeError(.internalError_FailToDecodeVoice)
    }
    
    /// 服务器应答非法 。
    public static var internalError_IlegalServerResponse: TCSoeError {
        TCSoeError(.internalError_IlegalServerResponse)
    }
    
    /// 该接口不支持init_stream。
    public static var internalError_InitStreamNotSupport: TCSoeError {
        TCSoeError(.internalError_InitStreamNotSupport)
    }
    
    /// 初始化请求未完成，请稍后重试。
    public static var internalError_InitStreamUnfinished: TCSoeError {
        TCSoeError(.internalError_InitStreamUnfinished)
    }
    
    /// 初始化参数错误  。
    public static var internalError_InitialParameterError: TCSoeError {
        TCSoeError(.internalError_InitialParameterError)
    }
    
    /// 分片序号错误。
    public static var internalError_InvalidSeqId: TCSoeError {
        TCSoeError(.internalError_InvalidSeqId)
    }
    
    /// WAV头部格式非法或不在同一分片内。
    public static var internalError_InvalidWAVHeader: TCSoeError {
        TCSoeError(.internalError_InvalidWAVHeader)
    }
    
    /// 前一个分片未处理完，请稍后重试。
    public static var internalError_LastSeqUnfinished: TCSoeError {
        TCSoeError(.internalError_LastSeqUnfinished)
    }
    
    /// MP3转码发生错误。
    public static var internalError_MP3DecodeFailed: TCSoeError {
        TCSoeError(.internalError_MP3DecodeFailed)
    }
    
    /// 进行评估之前没有进行初始化。
    public static var internalError_NeedToInit: TCSoeError {
        TCSoeError(.internalError_NeedToInit)
    }
    
    /// 使用的会话没有找到或已经被释放。
    public static var internalError_NoConversationFound: TCSoeError {
        TCSoeError(.internalError_NoConversationFound)
    }
    
    /// 表单中没有文件。
    public static var internalError_NoDocInList: TCSoeError {
        TCSoeError(.internalError_NoDocInList)
    }
    
    /// 没有错误。
    public static var internalError_NoError: TCSoeError {
        TCSoeError(.internalError_NoError)
    }
    
    /// 评估之前没有初始化。
    public static var internalError_NoInitBeforeEvaluation: TCSoeError {
        TCSoeError(.internalError_NoInitBeforeEvaluation)
    }
    
    /// 检测到不支持的字符在输入文本。
    public static var internalError_RefTxtEmpty: TCSoeError {
        TCSoeError(.internalError_RefTxtEmpty)
    }
    
    /// 检测到不支持的字符在输入文本。
    public static var internalError_RefTxtOov: TCSoeError {
        TCSoeError(.internalError_RefTxtOov)
    }
    
    /// 输入文本太长。
    public static var internalError_RefTxtTooLang: TCSoeError {
        TCSoeError(.internalError_RefTxtTooLang)
    }
    
    /// 服务器内部错误。
    public static var internalError_ServerInternalError: TCSoeError {
        TCSoeError(.internalError_ServerInternalError)
    }
    
    /// 服务器过载。
    public static var internalError_ServerOverload: TCSoeError {
        TCSoeError(.internalError_ServerOverload)
    }
    
    /// 服务超时。
    public static var internalError_ServiceTimeout: TCSoeError {
        TCSoeError(.internalError_ServiceTimeout)
    }
    
    /// 分片序号错误应该从1开始。
    public static var internalError_ShardNoStartWithOne: TCSoeError {
        TCSoeError(.internalError_ShardNoStartWithOne)
    }
    
    /// 流式模式数据包处理过程中间失败。
    public static var internalError_StreamProcessFail: TCSoeError {
        TCSoeError(.internalError_StreamProcessFail)
    }
    
    /// 流式模式数据包处理超时。
    public static var internalError_StreamProcessTimeOut: TCSoeError {
        TCSoeError(.internalError_StreamProcessTimeOut)
    }
    
    /// 流式语音包超时。
    public static var internalError_StreamingvoicepkgTimeout: TCSoeError {
        TCSoeError(.internalError_StreamingvoicepkgTimeout)
    }
    
    /// 获得结果超时。
    public static var internalError_TimeOut: TCSoeError {
        TCSoeError(.internalError_TimeOut)
    }
    
    /// 语音数据包长度超过 1MB。
    public static var internalError_TooLongPackage: TCSoeError {
        TCSoeError(.internalError_TooLongPackage)
    }
    
    /// 没有检测到语音。
    public static var internalError_VadNotDetectedSpeak: TCSoeError {
        TCSoeError(.internalError_VadNotDetectedSpeak)
    }
    
    /// 语音数据大于1MB。
    public static var internalError_VoiceMsgOversized: TCSoeError {
        TCSoeError(.internalError_VoiceMsgOversized)
    }
    
    /// 语音时长太短 。
    public static var internalError_VoiceMsgTooShort: TCSoeError {
        TCSoeError(.internalError_VoiceMsgTooShort)
    }
    
    /// 文本单词超过限制 。
    public static var internalError_WordLengthTooLong: TCSoeError {
        TCSoeError(.internalError_WordLengthTooLong)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSoeError {
        TCSoeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSoeError {
        TCSoeError(.invalidParameterValue)
    }
    
    /// 输入分片音频大小超过最大限制，请调整分片大小后重新传输数据。
    ///
    /// 请调整分片大小后重新传输数据。
    public static var invalidParameterValue_AudioDataSizeLimitExceeded: TCSoeError {
        TCSoeError(.invalidParameterValue_AudioDataSizeLimitExceeded)
    }
    
    /// 音频数据解码失败，请参考API文档中音频要求检查音频数据格式设置是否正确后重新传输数据。
    ///
    /// 请参考API文档中音频要求检查音频数据格式设置是否正确后重新传输数据。
    public static var invalidParameterValue_AudioDecodeFailed: TCSoeError {
        TCSoeError(.invalidParameterValue_AudioDecodeFailed)
    }
    
    /// 输入音频时长超过限制，请结束本次评测，后续请根据评测模式设置音频时长限制。
    ///
    /// 输入音频时长超过限制，请结束本次评测，后续请根据评测模式设置音频时长限制。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameterValue_AudioLimitExceeded: TCSoeError {
        TCSoeError(.invalidParameterValue_AudioLimitExceeded)
    }
    
    /// 输入音频异常，音频数据指针或音频⻓度必须为偶数，请参考API文档检查音频数据是否正确后重新传输数据。
    public static var invalidParameterValue_AudioSizeMustBeEven: TCSoeError {
        TCSoeError(.invalidParameterValue_AudioSizeMustBeEven)
    }
    
    /// BASE64解码错误。
    public static var invalidParameterValue_BASEDecodeFailed: TCSoeError {
        TCSoeError(.invalidParameterValue_BASEDecodeFailed)
    }
    
    /// 分片序号错误。
    public static var invalidParameterValue_InvalidSeqId: TCSoeError {
        TCSoeError(.invalidParameterValue_InvalidSeqId)
    }
    
    /// WAV头部格式非法或不在同一分片内。
    public static var invalidParameterValue_InvalidWAVHeader: TCSoeError {
        TCSoeError(.invalidParameterValue_InvalidWAVHeader)
    }
    
    /// 表单中没有文件。
    public static var invalidParameterValue_NoDocInList: TCSoeError {
        TCSoeError(.invalidParameterValue_NoDocInList)
    }
    
    /// 参数值无效，请检查ScoreCoeff参数输入是否在限制内。
    public static var invalidParameterValue_ParameterInvalid: TCSoeError {
        TCSoeError(.invalidParameterValue_ParameterInvalid)
    }
    
    /// 请求参数RefText无效或参考文本为空，请检查RefText是否为空。
    ///
    /// 请检查RefText是否为空。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameterValue_RefTextEmpty: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTextEmpty)
    }
    
    /// 请求参数RefText语法错误，请参考API文档检查文本格式，尤其是指定发音格式是否正确。
    ///
    /// 请求参数RefText语法错误，请参考API文档检查文本格式确认正确后重试，尤其是指定发音格式是否正确。https://cloud.tencent.com/document/product/884/33698
    public static var invalidParameterValue_RefTextGrammarError: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTextGrammarError)
    }
    
    /// 请求参数RefText的字数超过最大限制，请根据评测模式调整字数后重新初始化。
    ///
    /// 请参考API文档检查参数RefText的字数限制。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameterValue_RefTextLimitExceeded: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTextLimitExceeded)
    }
    
    /// 请求参数RefText包含OOV词汇，请使用指定发音或联系我们处理。
    ///
    /// 请使用指定发音或联系我们处理。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameterValue_RefTextOOV: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTextOOV)
    }
    
    /// 请检查参考文本中是否包含大量多音字，可通过发音描述块指定标准发音解决。
    ///
    /// 可通过发音描述块指定标准发音解决。
    public static var invalidParameterValue_RefTextPolyphonicLimitExceeded: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTextPolyphonicLimitExceeded)
    }
    
    /// 输入文本为空。
    public static var invalidParameterValue_RefTxtEmpty: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTxtEmpty)
    }
    
    /// 输入文本太长。
    public static var invalidParameterValue_RefTxtTooLang: TCSoeError {
        TCSoeError(.invalidParameterValue_RefTxtTooLang)
    }
    
    /// 请求内容包含违禁词汇，请检查后重试。
    public static var invalidParameterValue_SensitiveWords: TCSoeError {
        TCSoeError(.invalidParameterValue_SensitiveWords)
    }
    
    /// SessionId已存在，建议使用uuid作为SessionId重新初始化。
    ///
    /// 建议使用uuid作为SessionId重新初始化。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameterValue_SessionIdInUse: TCSoeError {
        TCSoeError(.invalidParameterValue_SessionIdInUse)
    }
    
    /// 分片序号错误应该从1开始。
    public static var invalidParameterValue_ShardNoStartWithOne: TCSoeError {
        TCSoeError(.invalidParameterValue_ShardNoStartWithOne)
    }
    
    /// 流式语音包超时。
    public static var invalidParameterValue_StreamingvoicepkgTimeout: TCSoeError {
        TCSoeError(.invalidParameterValue_StreamingvoicepkgTimeout)
    }
    
    /// 没有检测到语音。
    public static var invalidParameterValue_VadNotDetectedSpeak: TCSoeError {
        TCSoeError(.invalidParameterValue_VadNotDetectedSpeak)
    }
    
    /// 语音文件格式参数VoiceFileType取值错误，请参考API文档检查语音文件格式VoiceFileType是否正确后重新传输数据。
    ///
    /// 语音文件格式参数VoiceFileType取值错误，请参考API文档检查语音文件格式VoiceFileType是否正确后重新传输数据。
    /// https://cloud.tencent.com/document/product/884/32605
    public static var invalidParameterValue_VoiceFileTypeNotFound: TCSoeError {
        TCSoeError(.invalidParameterValue_VoiceFileTypeNotFound)
    }
    
    /// 音频超过长度限制，要求音频大小不能超过3Mb。
    public static var invalidParameterValue_VoiceLengthTooLong: TCSoeError {
        TCSoeError(.invalidParameterValue_VoiceLengthTooLong)
    }
    
    /// WAV格式的音频数据第一个分片的数据长度小于44，头部数据不合法，请检查后重试。
    public static var invalidParameterValue_WAVHeaderDecodeFailed: TCSoeError {
        TCSoeError(.invalidParameterValue_WAVHeaderDecodeFailed)
    }
    
    /// 文本单词超过限制。
    public static var invalidParameterValue_WordLengthTooLong: TCSoeError {
        TCSoeError(.invalidParameterValue_WordLengthTooLong)
    }
    
    /// 服务未开通或已欠费。
    public static var invalidParameter_AuthorizeError: TCSoeError {
        TCSoeError(.invalidParameter_AuthorizeError)
    }
    
    /// 请求参数RefText的音素Json解码失败，请参考API文档使用标准的Json格式。
    ///
    /// 请参考API文档检查参数RefText的Json格式。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameter_ErrorPhoneme: TCSoeError {
        TCSoeError(.invalidParameter_ErrorPhoneme)
    }
    
    /// 初始化参数错误。
    public static var invalidParameter_InitialParameterError: TCSoeError {
        TCSoeError(.invalidParameter_InitialParameterError)
    }
    
    /// 请求参数Action不合法，请参考API文档检查参数Action的有效性。
    ///
    /// 请参考API文档检查参数Action的有效性。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameter_InvalidAction: TCSoeError {
        TCSoeError(.invalidParameter_InvalidAction)
    }
    
    /// 请求参数不合法，请参考API文档检查参数的有效性。
    ///
    /// 请参考API文档检查参数的有效性。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameter_InvalidParameter: TCSoeError {
        TCSoeError(.invalidParameter_InvalidParameter)
    }
    
    /// 请求参数SeqId超过最大值限制，请参考API文档检查参数SeqId是否小于3000。
    ///
    /// 请参考API文档检查参数SeqId是否小于3000上限。https://cloud.tencent.com/document/product/884/19310
    public static var invalidParameter_SeqIdLimitExceeded: TCSoeError {
        TCSoeError(.invalidParameter_SeqIdLimitExceeded)
    }
    
    /// 语音数据大于1MB。
    public static var invalidParameter_VoiceMsgOversized: TCSoeError {
        TCSoeError(.invalidParameter_VoiceMsgOversized)
    }
    
    /// 用户未实名制认证。
    public static var invalidParameter_WithoutRealName: TCSoeError {
        TCSoeError(.invalidParameter_WithoutRealName)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCSoeError {
        TCSoeError(.limitExceeded)
    }
    
    /// 请求并发数超过配额限制，请减少并发数或联系我们调大并发限额。
    ///
    /// 减少并发数或联系我们调大并发限额。
    public static var limitExceeded_ConcurrencyLimitExceeded: TCSoeError {
        TCSoeError(.limitExceeded_ConcurrencyLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCSoeError {
        TCSoeError(.missingParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCSoeError {
        TCSoeError(.requestLimitExceeded)
    }
    
    /// 评测超时，请检查语音数据大小。
    public static var resourceInsufficient_ServerTimeout: TCSoeError {
        TCSoeError(.resourceInsufficient_ServerTimeout)
    }
    
    /// appid不存在。
    public static var resourceNotFound_AppidNotFount: TCSoeError {
        TCSoeError(.resourceNotFound_AppidNotFount)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFount: TCSoeError {
        TCSoeError(.resourceNotFound_InterfaceNotFount)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCSoeError {
        TCSoeError(.resourceUnavailable)
    }
    
    /// 服务未开通或已欠费。
    public static var resourceUnavailable_AuthorizeError: TCSoeError {
        TCSoeError(.resourceUnavailable_AuthorizeError)
    }
    
    /// 评估之前没有初始化或已过期。
    public static var resourceUnavailable_CannotFindSession: TCSoeError {
        TCSoeError(.resourceUnavailable_CannotFindSession)
    }
    
    /// 使用并发超出限制。
    public static var resourceUnavailable_ConcurrencyLimit: TCSoeError {
        TCSoeError(.resourceUnavailable_ConcurrencyLimit)
    }
    
    /// 该接口不支持init_stream。
    public static var resourceUnavailable_InitStreamNotSupport: TCSoeError {
        TCSoeError(.resourceUnavailable_InitStreamNotSupport)
    }
    
    /// 初始化请求未完成，请稍后重试。
    public static var resourceUnavailable_InitStreamUnfinished: TCSoeError {
        TCSoeError(.resourceUnavailable_InitStreamUnfinished)
    }
    
    /// 前一个分片未处理完，请稍后重试。
    public static var resourceUnavailable_LastSeqUnfinished: TCSoeError {
        TCSoeError(.resourceUnavailable_LastSeqUnfinished)
    }
    
    /// 使用的会话没有找到或已经被释放。
    public static var resourceUnavailable_NoConversationFound: TCSoeError {
        TCSoeError(.resourceUnavailable_NoConversationFound)
    }
    
    /// 评估之前没有初始化。
    public static var resourceUnavailable_NoInitBeforeEvaluation: TCSoeError {
        TCSoeError(.resourceUnavailable_NoInitBeforeEvaluation)
    }
}

extension TCSoeError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self]
    }
}

extension TCSoeError: Equatable {
    public static func == (lhs: TCSoeError, rhs: TCSoeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSoeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSoeError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
