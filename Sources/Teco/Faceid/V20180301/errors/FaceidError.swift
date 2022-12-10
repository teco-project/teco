public struct TCFaceidError: TCErrorType {
    enum Code: String {
        case failedOperation_ActionCloseEye = "FailedOperation.ActionCloseEye"
        case failedOperation_ActionFaceClose = "FailedOperation.ActionFaceClose"
        case failedOperation_ActionFaceFar = "FailedOperation.ActionFaceFar"
        case failedOperation_ActionFaceLeft = "FailedOperation.ActionFaceLeft"
        case failedOperation_ActionFaceRight = "FailedOperation.ActionFaceRight"
        case failedOperation_ActionFirstAction = "FailedOperation.ActionFirstAction"
        case failedOperation_ActionLightDark = "FailedOperation.ActionLightDark"
        case failedOperation_ActionLightStrong = "FailedOperation.ActionLightStrong"
        case failedOperation_ActionNodetectFace = "FailedOperation.ActionNodetectFace"
        case failedOperation_ActionOpenMouth = "FailedOperation.ActionOpenMouth"
        case failedOperation_CompareFail = "FailedOperation.CompareFail"
        case failedOperation_CompareLowSimilarity = "FailedOperation.CompareLowSimilarity"
        case failedOperation_CompareSystemError = "FailedOperation.CompareSystemError"
        case failedOperation_DbError = "FailedOperation.DbError"
        case failedOperation_DecryptSystemError = "FailedOperation.DecryptSystemError"
        case failedOperation_DownLoadError = "FailedOperation.DownLoadError"
        case failedOperation_DownLoadTimeoutError = "FailedOperation.DownLoadTimeoutError"
        case failedOperation_EmptyImageError = "FailedOperation.EmptyImageError"
        case failedOperation_EncryptSystemError = "FailedOperation.EncryptSystemError"
        case failedOperation_FileSaveError = "FailedOperation.FileSaveError"
        case failedOperation_IdFormatError = "FailedOperation.IdFormatError"
        case failedOperation_IdNameMisMatch = "FailedOperation.IdNameMisMatch"
        case failedOperation_IdNoExistSystem = "FailedOperation.IdNoExistSystem"
        case failedOperation_IdPhotoNoExist = "FailedOperation.IdPhotoNoExist"
        case failedOperation_IdPhotoPoorQuality = "FailedOperation.IdPhotoPoorQuality"
        case failedOperation_IdPhotoSystemNoanswer = "FailedOperation.IdPhotoSystemNoanswer"
        case failedOperation_ImageBlur = "FailedOperation.ImageBlur"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageNoIdCard = "FailedOperation.ImageNoIdCard"
        case failedOperation_ImageSizeTooLarge = "FailedOperation.ImageSizeTooLarge"
        case failedOperation_LifePhotoDetectFaces = "FailedOperation.LifePhotoDetectFaces"
        case failedOperation_LifePhotoDetectFake = "FailedOperation.LifePhotoDetectFake"
        case failedOperation_LifePhotoDetectNoFaces = "FailedOperation.LifePhotoDetectNoFaces"
        case failedOperation_LifePhotoPoorQuality = "FailedOperation.LifePhotoPoorQuality"
        case failedOperation_LifePhotoSizeError = "FailedOperation.LifePhotoSizeError"
        case failedOperation_LipFaceIncomplete = "FailedOperation.LipFaceIncomplete"
        case failedOperation_LipMoveSmall = "FailedOperation.LipMoveSmall"
        case failedOperation_LipNetFailed = "FailedOperation.LipNetFailed"
        case failedOperation_LipSizeError = "FailedOperation.LipSizeError"
        case failedOperation_LipVideoInvalid = "FailedOperation.LipVideoInvalid"
        case failedOperation_LipVideoQuaility = "FailedOperation.LipVideoQuaility"
        case failedOperation_LipVoiceDetect = "FailedOperation.LipVoiceDetect"
        case failedOperation_LipVoiceLow = "FailedOperation.LipVoiceLow"
        case failedOperation_LipVoiceRecognize = "FailedOperation.LipVoiceRecognize"
        case failedOperation_LivessBestFrameError = "FailedOperation.LivessBestFrameError"
        case failedOperation_LivessDetectFail = "FailedOperation.LivessDetectFail"
        case failedOperation_LivessDetectFake = "FailedOperation.LivessDetectFake"
        case failedOperation_LivessSystemError = "FailedOperation.LivessSystemError"
        case failedOperation_LivessUnknownError = "FailedOperation.LivessUnknownError"
        case failedOperation_NameFormatError = "FailedOperation.NameFormatError"
        case failedOperation_OcrFailed = "FailedOperation.OcrFailed"
        case failedOperation_RequestLimitExceeded = "FailedOperation.RequestLimitExceeded"
        case failedOperation_SilentDetectFail = "FailedOperation.SilentDetectFail"
        case failedOperation_SilentEyeLiveFail = "FailedOperation.SilentEyeLiveFail"
        case failedOperation_SilentFaceDetectFail = "FailedOperation.SilentFaceDetectFail"
        case failedOperation_SilentFaceQualityFail = "FailedOperation.SilentFaceQualityFail"
        case failedOperation_SilentFaceWithMaskFail = "FailedOperation.SilentFaceWithMaskFail"
        case failedOperation_SilentMouthLiveFail = "FailedOperation.SilentMouthLiveFail"
        case failedOperation_SilentMultiFaceFail = "FailedOperation.SilentMultiFaceFail"
        case failedOperation_SilentPictureLiveFail = "FailedOperation.SilentPictureLiveFail"
        case failedOperation_SilentThreshold = "FailedOperation.SilentThreshold"
        case failedOperation_SilentTooShort = "FailedOperation.SilentTooShort"
        case failedOperation_StsUnAuthErrError = "FailedOperation.StsUnAuthErrError"
        case failedOperation_UnKnown = "FailedOperation.UnKnown"
        case failedOperation_UnregisteredEid = "FailedOperation.UnregisteredEid"
        case failedOperation_VerificationFail = "FailedOperation.VerificationFail"
        case internalError = "InternalError"
        case internalError_ActionLightDark = "InternalError.ActionLightDark"
        case internalError_ActionLightStrong = "InternalError.ActionLightStrong"
        case internalError_ActionNodetectFace = "InternalError.ActionNodetectFace"
        case internalError_CompareLowSimilarity = "InternalError.CompareLowSimilarity"
        case internalError_EncryptSystemError = "InternalError.EncryptSystemError"
        case internalError_LifePhotoPoorQuality = "InternalError.LifePhotoPoorQuality"
        case internalError_LifePhotoSizeError = "InternalError.LifePhotoSizeError"
        case internalError_UnKnown = "InternalError.UnKnown"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BizTokenExpired = "InvalidParameterValue.BizTokenExpired"
        case invalidParameterValue_BizTokenIllegal = "InvalidParameterValue.BizTokenIllegal"
        case invalidParameterValue_RuleIdDisabled = "InvalidParameterValue.RuleIdDisabled"
        case invalidParameterValue_RuleIdNotExist = "InvalidParameterValue.RuleIdNotExist"
        case invalidParameter_RuleId = "InvalidParameter.RuleId"
        case invalidParameter_UnsupportEncryptField = "InvalidParameter.UnsupportEncryptField"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_ActivateError = "UnauthorizedOperation.ActivateError"
        case unauthorizedOperation_Activating = "UnauthorizedOperation.Activating"
        case unauthorizedOperation_Arrears = "UnauthorizedOperation.Arrears"
        case unauthorizedOperation_ChargeStatusException = "UnauthorizedOperation.ChargeStatusException"
        case unauthorizedOperation_NonAuthorize = "UnauthorizedOperation.NonAuthorize"
        case unauthorizedOperation_Nonactivated = "UnauthorizedOperation.Nonactivated"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// 未检测到闭眼动作。
    public static var failedOperation_ActionCloseEye: TCFaceidError {
        TCFaceidError(.failedOperation_ActionCloseEye)
    }
    
    /// 脸离屏幕太近。
    public static var failedOperation_ActionFaceClose: TCFaceidError {
        TCFaceidError(.failedOperation_ActionFaceClose)
    }
    
    /// 脸离屏幕太远。
    public static var failedOperation_ActionFaceFar: TCFaceidError {
        TCFaceidError(.failedOperation_ActionFaceFar)
    }
    
    /// 脸离屏幕太左。
    public static var failedOperation_ActionFaceLeft: TCFaceidError {
        TCFaceidError(.failedOperation_ActionFaceLeft)
    }
    
    /// 脸离屏幕太右。
    public static var failedOperation_ActionFaceRight: TCFaceidError {
        TCFaceidError(.failedOperation_ActionFaceRight)
    }
    
    /// 未检测到动作配合。
    public static var failedOperation_ActionFirstAction: TCFaceidError {
        TCFaceidError(.failedOperation_ActionFirstAction)
    }
    
    /// 光线太暗。
    public static var failedOperation_ActionLightDark: TCFaceidError {
        TCFaceidError(.failedOperation_ActionLightDark)
    }
    
    /// 光线太强。
    public static var failedOperation_ActionLightStrong: TCFaceidError {
        TCFaceidError(.failedOperation_ActionLightStrong)
    }
    
    /// 未能检测到完整人脸。
    public static var failedOperation_ActionNodetectFace: TCFaceidError {
        TCFaceidError(.failedOperation_ActionNodetectFace)
    }
    
    /// 未检测到张嘴动作。
    public static var failedOperation_ActionOpenMouth: TCFaceidError {
        TCFaceidError(.failedOperation_ActionOpenMouth)
    }
    
    /// 比对失败。
    public static var failedOperation_CompareFail: TCFaceidError {
        TCFaceidError(.failedOperation_CompareFail)
    }
    
    /// 比对相似度未达到通过标准。
    public static var failedOperation_CompareLowSimilarity: TCFaceidError {
        TCFaceidError(.failedOperation_CompareLowSimilarity)
    }
    
    /// 调用比对引擎接口出错。
    public static var failedOperation_CompareSystemError: TCFaceidError {
        TCFaceidError(.failedOperation_CompareSystemError)
    }
    
    /// 数据库异常。
    public static var failedOperation_DbError: TCFaceidError {
        TCFaceidError(.failedOperation_DbError)
    }
    
    /// 解密失败。
    public static var failedOperation_DecryptSystemError: TCFaceidError {
        TCFaceidError(.failedOperation_DecryptSystemError)
    }
    
    /// 文件下载失败。
    public static var failedOperation_DownLoadError: TCFaceidError {
        TCFaceidError(.failedOperation_DownLoadError)
    }
    
    /// 文件下载超时。
    public static var failedOperation_DownLoadTimeoutError: TCFaceidError {
        TCFaceidError(.failedOperation_DownLoadTimeoutError)
    }
    
    /// 图片内容为空。
    public static var failedOperation_EmptyImageError: TCFaceidError {
        TCFaceidError(.failedOperation_EmptyImageError)
    }
    
    /// 加密失败。
    public static var failedOperation_EncryptSystemError: TCFaceidError {
        TCFaceidError(.failedOperation_EncryptSystemError)
    }
    
    /// 文件存储失败，请稍后重试。
    public static var failedOperation_FileSaveError: TCFaceidError {
        TCFaceidError(.failedOperation_FileSaveError)
    }
    
    /// 输入的身份证号有误。
    public static var failedOperation_IdFormatError: TCFaceidError {
        TCFaceidError(.failedOperation_IdFormatError)
    }
    
    /// 姓名和身份证号不一致，请核实后重试。
    public static var failedOperation_IdNameMisMatch: TCFaceidError {
        TCFaceidError(.failedOperation_IdNameMisMatch)
    }
    
    /// 库中无此号，请到户籍所在地进行核实。
    public static var failedOperation_IdNoExistSystem: TCFaceidError {
        TCFaceidError(.failedOperation_IdNoExistSystem)
    }
    
    /// 库中无此号照片，请到户籍所在地进行核实。
    public static var failedOperation_IdPhotoNoExist: TCFaceidError {
        TCFaceidError(.failedOperation_IdPhotoNoExist)
    }
    
    /// 证件图片分辨率太低，请重新上传。
    public static var failedOperation_IdPhotoPoorQuality: TCFaceidError {
        TCFaceidError(.failedOperation_IdPhotoPoorQuality)
    }
    
    /// 客户库自建库或认证中心返照失败，请稍后再试。
    public static var failedOperation_IdPhotoSystemNoanswer: TCFaceidError {
        TCFaceidError(.failedOperation_IdPhotoSystemNoanswer)
    }
    
    /// 图片模糊。
    public static var failedOperation_ImageBlur: TCFaceidError {
        TCFaceidError(.failedOperation_ImageBlur)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCFaceidError {
        TCFaceidError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片中未检测到身份证。
    public static var failedOperation_ImageNoIdCard: TCFaceidError {
        TCFaceidError(.failedOperation_ImageNoIdCard)
    }
    
    /// 图片尺寸过大。
    public static var failedOperation_ImageSizeTooLarge: TCFaceidError {
        TCFaceidError(.failedOperation_ImageSizeTooLarge)
    }
    
    /// 检测到多张人脸。
    public static var failedOperation_LifePhotoDetectFaces: TCFaceidError {
        TCFaceidError(.failedOperation_LifePhotoDetectFaces)
    }
    
    /// 实人比对没通过。
    public static var failedOperation_LifePhotoDetectFake: TCFaceidError {
        TCFaceidError(.failedOperation_LifePhotoDetectFake)
    }
    
    /// 未能检测到完整人脸。
    public static var failedOperation_LifePhotoDetectNoFaces: TCFaceidError {
        TCFaceidError(.failedOperation_LifePhotoDetectNoFaces)
    }
    
    /// 传入图片分辨率太低，请重新上传。
    public static var failedOperation_LifePhotoPoorQuality: TCFaceidError {
        TCFaceidError(.failedOperation_LifePhotoPoorQuality)
    }
    
    /// 传入图片过大或过小。
    public static var failedOperation_LifePhotoSizeError: TCFaceidError {
        TCFaceidError(.failedOperation_LifePhotoSizeError)
    }
    
    /// 脸部未完整露出。
    public static var failedOperation_LipFaceIncomplete: TCFaceidError {
        TCFaceidError(.failedOperation_LipFaceIncomplete)
    }
    
    /// 嘴唇动作幅度过小。
    public static var failedOperation_LipMoveSmall: TCFaceidError {
        TCFaceidError(.failedOperation_LipMoveSmall)
    }
    
    /// 视频拉取失败，请重试。
    public static var failedOperation_LipNetFailed: TCFaceidError {
        TCFaceidError(.failedOperation_LipNetFailed)
    }
    
    /// 视频为空，或大小不合适，请控制录制时长在6s左右。
    public static var failedOperation_LipSizeError: TCFaceidError {
        TCFaceidError(.failedOperation_LipSizeError)
    }
    
    /// 视频格式有误。
    public static var failedOperation_LipVideoInvalid: TCFaceidError {
        TCFaceidError(.failedOperation_LipVideoInvalid)
    }
    
    /// 视频像素太低。
    public static var failedOperation_LipVideoQuaility: TCFaceidError {
        TCFaceidError(.failedOperation_LipVideoQuaility)
    }
    
    /// 未检测到声音。
    public static var failedOperation_LipVoiceDetect: TCFaceidError {
        TCFaceidError(.failedOperation_LipVoiceDetect)
    }
    
    /// 视频声音太小。
    public static var failedOperation_LipVoiceLow: TCFaceidError {
        TCFaceidError(.failedOperation_LipVoiceLow)
    }
    
    /// 声音识别失败。
    public static var failedOperation_LipVoiceRecognize: TCFaceidError {
        TCFaceidError(.failedOperation_LipVoiceRecognize)
    }
    
    /// 人脸检测失败，无法提取比对照。
    public static var failedOperation_LivessBestFrameError: TCFaceidError {
        TCFaceidError(.failedOperation_LivessBestFrameError)
    }
    
    /// 活体检测没通过。
    public static var failedOperation_LivessDetectFail: TCFaceidError {
        TCFaceidError(.failedOperation_LivessDetectFail)
    }
    
    /// 疑似非真人录制。
    public static var failedOperation_LivessDetectFake: TCFaceidError {
        TCFaceidError(.failedOperation_LivessDetectFake)
    }
    
    /// 调用活体引擎接口出错。
    public static var failedOperation_LivessSystemError: TCFaceidError {
        TCFaceidError(.failedOperation_LivessSystemError)
    }
    
    /// 视频实人检测没通过。
    public static var failedOperation_LivessUnknownError: TCFaceidError {
        TCFaceidError(.failedOperation_LivessUnknownError)
    }
    
    /// 输入的姓名有误。
    public static var failedOperation_NameFormatError: TCFaceidError {
        TCFaceidError(.failedOperation_NameFormatError)
    }
    
    /// Ocr识别失败。
    public static var failedOperation_OcrFailed: TCFaceidError {
        TCFaceidError(.failedOperation_OcrFailed)
    }
    
    /// 调用次数超出限制。
    public static var failedOperation_RequestLimitExceeded: TCFaceidError {
        TCFaceidError(.failedOperation_RequestLimitExceeded)
    }
    
    /// 实人检测失败。
    public static var failedOperation_SilentDetectFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentDetectFail)
    }
    
    /// 眼睛检测失败。
    public static var failedOperation_SilentEyeLiveFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentEyeLiveFail)
    }
    
    /// 视频未检测到人脸。
    public static var failedOperation_SilentFaceDetectFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentFaceDetectFail)
    }
    
    /// 视频中人脸质量低。
    public static var failedOperation_SilentFaceQualityFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentFaceQualityFail)
    }
    
    /// 检测到带口罩。
    public static var failedOperation_SilentFaceWithMaskFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentFaceWithMaskFail)
    }
    
    /// 嘴巴检测失败。
    public static var failedOperation_SilentMouthLiveFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentMouthLiveFail)
    }
    
    /// 视频检测中有多个人脸。
    public static var failedOperation_SilentMultiFaceFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentMultiFaceFail)
    }
    
    /// 疑似翻拍。
    public static var failedOperation_SilentPictureLiveFail: TCFaceidError {
        TCFaceidError(.failedOperation_SilentPictureLiveFail)
    }
    
    /// 实人检测未达到通过标准。
    public static var failedOperation_SilentThreshold: TCFaceidError {
        TCFaceidError(.failedOperation_SilentThreshold)
    }
    
    /// 视频录制时间过短，请录制2秒以上的视频。
    public static var failedOperation_SilentTooShort: TCFaceidError {
        TCFaceidError(.failedOperation_SilentTooShort)
    }
    
    /// STS未授权。
    public static var failedOperation_StsUnAuthErrError: TCFaceidError {
        TCFaceidError(.failedOperation_StsUnAuthErrError)
    }
    
    /// 内部未知错误。
    public static var failedOperation_UnKnown: TCFaceidError {
        TCFaceidError(.failedOperation_UnKnown)
    }
    
    /// 该用户未注册E证通，请先注册并跟权威库核验。
    public static var failedOperation_UnregisteredEid: TCFaceidError {
        TCFaceidError(.failedOperation_UnregisteredEid)
    }
    
    /// 认证不通过。
    public static var failedOperation_VerificationFail: TCFaceidError {
        TCFaceidError(.failedOperation_VerificationFail)
    }
    
    /// 内部错误。
    public static var internalError: TCFaceidError {
        TCFaceidError(.internalError)
    }
    
    /// 光线太暗。
    public static var internalError_ActionLightDark: TCFaceidError {
        TCFaceidError(.internalError_ActionLightDark)
    }
    
    /// 光线太强。
    public static var internalError_ActionLightStrong: TCFaceidError {
        TCFaceidError(.internalError_ActionLightStrong)
    }
    
    /// 未能检测到完整人脸。
    public static var internalError_ActionNodetectFace: TCFaceidError {
        TCFaceidError(.internalError_ActionNodetectFace)
    }
    
    /// 比对相似度未达到通过标准。
    public static var internalError_CompareLowSimilarity: TCFaceidError {
        TCFaceidError(.internalError_CompareLowSimilarity)
    }
    
    /// 加密失败。
    public static var internalError_EncryptSystemError: TCFaceidError {
        TCFaceidError(.internalError_EncryptSystemError)
    }
    
    /// 传入图片分辨率太低，请重新上传。
    public static var internalError_LifePhotoPoorQuality: TCFaceidError {
        TCFaceidError(.internalError_LifePhotoPoorQuality)
    }
    
    /// 传入图片过大或过小。
    public static var internalError_LifePhotoSizeError: TCFaceidError {
        TCFaceidError(.internalError_LifePhotoSizeError)
    }
    
    /// 内部未知错误。
    public static var internalError_UnKnown: TCFaceidError {
        TCFaceidError(.internalError_UnKnown)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCFaceidError {
        TCFaceidError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCFaceidError {
        TCFaceidError(.invalidParameterValue)
    }
    
    /// BizToken过期。
    public static var invalidParameterValue_BizTokenExpired: TCFaceidError {
        TCFaceidError(.invalidParameterValue_BizTokenExpired)
    }
    
    /// BizToken不合法。
    ///
    /// 输入正确的BizToken。
    public static var invalidParameterValue_BizTokenIllegal: TCFaceidError {
        TCFaceidError(.invalidParameterValue_BizTokenIllegal)
    }
    
    /// 该ruleid已被您停用，请确认后重试。
    public static var invalidParameterValue_RuleIdDisabled: TCFaceidError {
        TCFaceidError(.invalidParameterValue_RuleIdDisabled)
    }
    
    /// RuleId不存在，请到人脸核身控制台申请。
    public static var invalidParameterValue_RuleIdNotExist: TCFaceidError {
        TCFaceidError(.invalidParameterValue_RuleIdNotExist)
    }
    
    /// RuleId不存在。
    public static var invalidParameter_RuleId: TCFaceidError {
        TCFaceidError(.invalidParameter_RuleId)
    }
    
    /// 存在不加密的字段，请参考文档修改。
    public static var invalidParameter_UnsupportEncryptField: TCFaceidError {
        TCFaceidError(.invalidParameter_UnsupportEncryptField)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCFaceidError {
        TCFaceidError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCFaceidError {
        TCFaceidError(.requestLimitExceeded)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCFaceidError {
        TCFaceidError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCFaceidError {
        TCFaceidError(.unauthorizedOperation)
    }
    
    /// 服务开通异常。
    public static var unauthorizedOperation_ActivateError: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_ActivateError)
    }
    
    /// 服务开通中。
    public static var unauthorizedOperation_Activating: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_Activating)
    }
    
    /// 帐号已欠费。
    public static var unauthorizedOperation_Arrears: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_Arrears)
    }
    
    /// 计费状态异常。
    public static var unauthorizedOperation_ChargeStatusException: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_ChargeStatusException)
    }
    
    /// 账号未实名。
    public static var unauthorizedOperation_NonAuthorize: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_NonAuthorize)
    }
    
    /// 未开通服务。
    public static var unauthorizedOperation_Nonactivated: TCFaceidError {
        TCFaceidError(.unauthorizedOperation_Nonactivated)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCFaceidError {
        TCFaceidError(.unsupportedOperation)
    }
}

extension TCFaceidError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, UnauthorizedOperation.self]
    }
}

extension TCFaceidError: Equatable {
    public static func == (lhs: TCFaceidError, rhs: TCFaceidError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCFaceidError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCFaceidError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
