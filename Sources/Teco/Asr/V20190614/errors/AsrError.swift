public struct TCAsrError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CheckResourceResponseCodeError = "AuthFailure.CheckResourceResponseCodeError"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ErrorDownFile = "FailedOperation.ErrorDownFile"
        case failedOperation_ErrorRecognize = "FailedOperation.ErrorRecognize"
        case failedOperation_NoSuchTask = "FailedOperation.NoSuchTask"
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
        case internalError_FailAccessDatabase = "InternalError.FailAccessDatabase"
        case internalError_FailAccessRedis = "InternalError.FailAccessRedis"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ErrorInvalidAppid = "InvalidParameterValue.ErrorInvalidAppid"
        case invalidParameterValue_ErrorInvalidClientip = "InvalidParameterValue.ErrorInvalidClientip"
        case invalidParameterValue_ErrorInvalidEngservice = "InvalidParameterValue.ErrorInvalidEngservice"
        case invalidParameterValue_ErrorInvalidProjectid = "InvalidParameterValue.ErrorInvalidProjectid"
        case invalidParameterValue_ErrorInvalidRequestid = "InvalidParameterValue.ErrorInvalidRequestid"
        case invalidParameterValue_ErrorInvalidSourcetype = "InvalidParameterValue.ErrorInvalidSourcetype"
        case invalidParameterValue_ErrorInvalidSubservicetype = "InvalidParameterValue.ErrorInvalidSubservicetype"
        case invalidParameterValue_ErrorInvalidUrl = "InvalidParameterValue.ErrorInvalidUrl"
        case invalidParameterValue_ErrorInvalidUseraudiokey = "InvalidParameterValue.ErrorInvalidUseraudiokey"
        case invalidParameterValue_ErrorInvalidVoiceFormat = "InvalidParameterValue.ErrorInvalidVoiceFormat"
        case invalidParameterValue_ErrorInvalidVoicedata = "InvalidParameterValue.ErrorInvalidVoicedata"
        case invalidParameterValue_ErrorVoicedataTooLong = "InvalidParameterValue.ErrorVoicedataTooLong"
        case invalidParameterValue_InvalidParameterLength = "InvalidParameterValue.InvalidParameterLength"
        case invalidParameterValue_InvalidVocabId = "InvalidParameterValue.InvalidVocabId"
        case invalidParameterValue_InvalidVocabState = "InvalidParameterValue.InvalidVocabState"
        case invalidParameterValue_InvalidWordWeight = "InvalidParameterValue.InvalidWordWeight"
        case invalidParameterValue_InvalidWordWeightStr = "InvalidParameterValue.InvalidWordWeightStr"
        case invalidParameterValue_ModelId = "InvalidParameterValue.ModelId"
        case invalidParameterValue_ToState = "InvalidParameterValue.ToState"
        case invalidParameter_ErrorContentlength = "InvalidParameter.ErrorContentlength"
        case invalidParameter_ErrorParamsMissing = "InvalidParameter.ErrorParamsMissing"
        case invalidParameter_ErrorParsequest = "InvalidParameter.ErrorParsequest"
        case invalidParameter_FileEncode = "InvalidParameter.FileEncode"
        case invalidParameter_InvalidVocabState = "InvalidParameter.InvalidVocabState"
        case invalidParameter_ModelState = "InvalidParameter.ModelState"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_CustomizationFull = "LimitExceeded.CustomizationFull"
        case limitExceeded_OnlineFull = "LimitExceeded.OnlineFull"
        case limitExceeded_VocabFull = "LimitExceeded.VocabFull"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCAsrError {
        TCAsrError(.authFailure)
    }
    
    /// 用户没有权限进行此查询操作。
    public static var authFailure_CheckResourceResponseCodeError: TCAsrError {
        TCAsrError(.authFailure_CheckResourceResponseCodeError)
    }
    
    /// 未授权操作。
    public static var authFailure_UnauthorizedOperation: TCAsrError {
        TCAsrError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAsrError {
        TCAsrError(.failedOperation)
    }
    
    /// 下载音频文件失败。
    public static var failedOperation_ErrorDownFile: TCAsrError {
        TCAsrError(.failedOperation_ErrorDownFile)
    }
    
    /// 识别失败。
    public static var failedOperation_ErrorRecognize: TCAsrError {
        TCAsrError(.failedOperation_ErrorRecognize)
    }
    
    /// 错误的TaskId。
    public static var failedOperation_NoSuchTask: TCAsrError {
        TCAsrError(.failedOperation_NoSuchTask)
    }
    
    /// 账号因为欠费停止服务，请在腾讯云账户充值。
    public static var failedOperation_ServiceIsolate: TCAsrError {
        TCAsrError(.failedOperation_ServiceIsolate)
    }
    
    /// 账号本月免费额度已用完。
    public static var failedOperation_UserHasNoFreeAmount: TCAsrError {
        TCAsrError(.failedOperation_UserHasNoFreeAmount)
    }
    
    /// 服务未开通，请在腾讯云官网语音识别控制台开通服务。
    public static var failedOperation_UserNotRegistered: TCAsrError {
        TCAsrError(.failedOperation_UserNotRegistered)
    }
    
    /// 内部错误。
    public static var internalError: TCAsrError {
        TCAsrError(.internalError)
    }
    
    /// 初始化配置失败。
    public static var internalError_ErrorConfigure: TCAsrError {
        TCAsrError(.internalError_ErrorConfigure)
    }
    
    /// 创建日志失败。
    public static var internalError_ErrorCreateLog: TCAsrError {
        TCAsrError(.internalError_ErrorCreateLog)
    }
    
    /// 下载音频文件失败。
    public static var internalError_ErrorDownFile: TCAsrError {
        TCAsrError(.internalError_ErrorDownFile)
    }
    
    /// 新建数组失败。
    public static var internalError_ErrorFailNewprequest: TCAsrError {
        TCAsrError(.internalError_ErrorFailNewprequest)
    }
    
    /// 写入数据库失败。
    public static var internalError_ErrorFailWritetodb: TCAsrError {
        TCAsrError(.internalError_ErrorFailWritetodb)
    }
    
    /// 文件无法打开。
    public static var internalError_ErrorFileCannotopen: TCAsrError {
        TCAsrError(.internalError_ErrorFileCannotopen)
    }
    
    /// 获取路由失败。
    public static var internalError_ErrorGetRoute: TCAsrError {
        TCAsrError(.internalError_ErrorGetRoute)
    }
    
    /// 创建日志路径失败。
    public static var internalError_ErrorMakeLogpath: TCAsrError {
        TCAsrError(.internalError_ErrorMakeLogpath)
    }
    
    /// 识别失败。
    public static var internalError_ErrorRecognize: TCAsrError {
        TCAsrError(.internalError_ErrorRecognize)
    }
    
    /// 访问数据库失败。
    public static var internalError_FailAccessDatabase: TCAsrError {
        TCAsrError(.internalError_FailAccessDatabase)
    }
    
    /// 访问Redis失败。
    public static var internalError_FailAccessRedis: TCAsrError {
        TCAsrError(.internalError_FailAccessRedis)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAsrError {
        TCAsrError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAsrError {
        TCAsrError(.invalidParameterValue)
    }
    
    /// AppId无效。
    public static var invalidParameterValue_ErrorInvalidAppid: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidAppid)
    }
    
    /// ClientIp无效。
    public static var invalidParameterValue_ErrorInvalidClientip: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidClientip)
    }
    
    /// EngSerViceType无效。
    public static var invalidParameterValue_ErrorInvalidEngservice: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidEngservice)
    }
    
    /// ProjectId无效。
    public static var invalidParameterValue_ErrorInvalidProjectid: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidProjectid)
    }
    
    /// RequestId无效。
    public static var invalidParameterValue_ErrorInvalidRequestid: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidRequestid)
    }
    
    /// SourceType无效。
    public static var invalidParameterValue_ErrorInvalidSourcetype: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidSourcetype)
    }
    
    /// SubserviceType无效。
    public static var invalidParameterValue_ErrorInvalidSubservicetype: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidSubservicetype)
    }
    
    /// Url无效。
    public static var invalidParameterValue_ErrorInvalidUrl: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidUrl)
    }
    
    /// UsrAudioKey无效。
    public static var invalidParameterValue_ErrorInvalidUseraudiokey: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidUseraudiokey)
    }
    
    /// 音频编码格式不支持。
    public static var invalidParameterValue_ErrorInvalidVoiceFormat: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidVoiceFormat)
    }
    
    /// 音频数据无效。
    public static var invalidParameterValue_ErrorInvalidVoicedata: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorInvalidVoicedata)
    }
    
    /// 音频时长超过限制。
    public static var invalidParameterValue_ErrorVoicedataTooLong: TCAsrError {
        TCAsrError(.invalidParameterValue_ErrorVoicedataTooLong)
    }
    
    /// 非法的参数长度。
    public static var invalidParameterValue_InvalidParameterLength: TCAsrError {
        TCAsrError(.invalidParameterValue_InvalidParameterLength)
    }
    
    /// 非法的VocabId。
    public static var invalidParameterValue_InvalidVocabId: TCAsrError {
        TCAsrError(.invalidParameterValue_InvalidVocabId)
    }
    
    /// 非法的词表状态。
    public static var invalidParameterValue_InvalidVocabState: TCAsrError {
        TCAsrError(.invalidParameterValue_InvalidVocabState)
    }
    
    /// 词权重不合法。
    public static var invalidParameterValue_InvalidWordWeight: TCAsrError {
        TCAsrError(.invalidParameterValue_InvalidWordWeight)
    }
    
    /// 非法的WordWeightStr。
    public static var invalidParameterValue_InvalidWordWeightStr: TCAsrError {
        TCAsrError(.invalidParameterValue_InvalidWordWeightStr)
    }
    
    /// 模型不存在。
    public static var invalidParameterValue_ModelId: TCAsrError {
        TCAsrError(.invalidParameterValue_ModelId)
    }
    
    /// 非法的模型状态。
    public static var invalidParameterValue_ToState: TCAsrError {
        TCAsrError(.invalidParameterValue_ToState)
    }
    
    /// 请求数据长度无效。
    public static var invalidParameter_ErrorContentlength: TCAsrError {
        TCAsrError(.invalidParameter_ErrorContentlength)
    }
    
    /// 参数不全。
    public static var invalidParameter_ErrorParamsMissing: TCAsrError {
        TCAsrError(.invalidParameter_ErrorParamsMissing)
    }
    
    /// 解析请求数据失败。
    public static var invalidParameter_ErrorParsequest: TCAsrError {
        TCAsrError(.invalidParameter_ErrorParsequest)
    }
    
    /// 文件编码错误。
    public static var invalidParameter_FileEncode: TCAsrError {
        TCAsrError(.invalidParameter_FileEncode)
    }
    
    /// 非法的词表状态。
    public static var invalidParameter_InvalidVocabState: TCAsrError {
        TCAsrError(.invalidParameter_InvalidVocabState)
    }
    
    /// 该模型状态不允许删除。
    public static var invalidParameter_ModelState: TCAsrError {
        TCAsrError(.invalidParameter_ModelState)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAsrError {
        TCAsrError(.limitExceeded)
    }
    
    /// 自学习模型创建个数已到限制。
    public static var limitExceeded_CustomizationFull: TCAsrError {
        TCAsrError(.limitExceeded_CustomizationFull)
    }
    
    /// 上线模型个数已到限制。
    public static var limitExceeded_OnlineFull: TCAsrError {
        TCAsrError(.limitExceeded_OnlineFull)
    }
    
    /// 热词表数量已到账号限制。
    public static var limitExceeded_VocabFull: TCAsrError {
        TCAsrError(.limitExceeded_VocabFull)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAsrError {
        TCAsrError(.missingParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAsrError {
        TCAsrError(.requestLimitExceeded)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCAsrError {
        TCAsrError(.unknownParameter)
    }
}

extension TCAsrError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self]
    }
}

extension TCAsrError: Equatable {
    public static func == (lhs: TCAsrError, rhs: TCAsrError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAsrError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAsrError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
