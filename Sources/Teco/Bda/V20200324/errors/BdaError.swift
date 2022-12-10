public struct TCBdaError: TCErrorType {
    enum Code: String {
        case failedOperation_AudioDecodeFailed = "FailedOperation.AudioDecodeFailed"
        case failedOperation_AudioEncodeFailed = "FailedOperation.AudioEncodeFailed"
        case failedOperation_BodyFeatureFail = "FailedOperation.BodyFeatureFail"
        case failedOperation_BodyJointsFail = "FailedOperation.BodyJointsFail"
        case failedOperation_BodyQualityNotQualified = "FailedOperation.BodyQualityNotQualified"
        case failedOperation_BodyRectIllegal = "FailedOperation.BodyRectIllegal"
        case failedOperation_BodyRectNumIllegal = "FailedOperation.BodyRectNumIllegal"
        case failedOperation_CreateTraceFailed = "FailedOperation.CreateTraceFailed"
        case failedOperation_DownloadError = "FailedOperation.DownloadError"
        case failedOperation_GroupEmpty = "FailedOperation.GroupEmpty"
        case failedOperation_ImageBodyDetectFailed = "FailedOperation.ImageBodyDetectFailed"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageFacedetectFailed = "FailedOperation.ImageFacedetectFailed"
        case failedOperation_ImageNotForeground = "FailedOperation.ImageNotForeground"
        case failedOperation_ImageNotSupported = "FailedOperation.ImageNotSupported"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageResolutionInsufficient = "FailedOperation.ImageResolutionInsufficient"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_JobConflict = "FailedOperation.JobConflict"
        case failedOperation_JobQueueFull = "FailedOperation.JobQueueFull"
        case failedOperation_NoBodyInPhoto = "FailedOperation.NoBodyInPhoto"
        case failedOperation_ProfileNumExceed = "FailedOperation.ProfileNumExceed"
        case failedOperation_RequestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
        case failedOperation_RequestLimitExceeded = "FailedOperation.RequestLimitExceeded"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_SegmentFailed = "FailedOperation.SegmentFailed"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_TaskLimitExceeded = "FailedOperation.TaskLimitExceeded"
        case failedOperation_TaskNotExist = "FailedOperation.TaskNotExist"
        case failedOperation_TerminateTaskFailed = "FailedOperation.TerminateTaskFailed"
        case failedOperation_TooLargeFileError = "FailedOperation.TooLargeFileError"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case failedOperation_VideoDecodeFailed = "FailedOperation.VideoDecodeFailed"
        case invalidParameterValue_AccountTraceNumExceed = "InvalidParameterValue.AccountTraceNumExceed"
        case invalidParameterValue_BodyModelVersionIllegal = "InvalidParameterValue.BodyModelVersionIllegal"
        case invalidParameterValue_BodyRectsExceed = "InvalidParameterValue.BodyRectsExceed"
        case invalidParameterValue_GroupIdAlreadyExist = "InvalidParameterValue.GroupIdAlreadyExist"
        case invalidParameterValue_GroupIdIllegal = "InvalidParameterValue.GroupIdIllegal"
        case invalidParameterValue_GroupIdNotExist = "InvalidParameterValue.GroupIdNotExist"
        case invalidParameterValue_GroupIdTooLong = "InvalidParameterValue.GroupIdTooLong"
        case invalidParameterValue_GroupNameAlreadyExist = "InvalidParameterValue.GroupNameAlreadyExist"
        case invalidParameterValue_GroupNameTooLong = "InvalidParameterValue.GroupNameTooLong"
        case invalidParameterValue_GroupNumExceed = "InvalidParameterValue.GroupNumExceed"
        case invalidParameterValue_GroupTagTooLong = "InvalidParameterValue.GroupTagTooLong"
        case invalidParameterValue_GroupTraceNumExceed = "InvalidParameterValue.GroupTraceNumExceed"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_LimitExceed = "InvalidParameterValue.LimitExceed"
        case invalidParameterValue_NoFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
        case invalidParameterValue_OffsetExceed = "InvalidParameterValue.OffsetExceed"
        case invalidParameterValue_PersonIdAlreadyExist = "InvalidParameterValue.PersonIdAlreadyExist"
        case invalidParameterValue_PersonIdIllegal = "InvalidParameterValue.PersonIdIllegal"
        case invalidParameterValue_PersonIdNotExist = "InvalidParameterValue.PersonIdNotExist"
        case invalidParameterValue_PersonIdTooLong = "InvalidParameterValue.PersonIdTooLong"
        case invalidParameterValue_PersonNameIllegal = "InvalidParameterValue.PersonNameIllegal"
        case invalidParameterValue_PersonNameTooLong = "InvalidParameterValue.PersonNameTooLong"
        case invalidParameterValue_PersonTraceNumExceed = "InvalidParameterValue.PersonTraceNumExceed"
        case invalidParameterValue_SearchPersonsExceed = "InvalidParameterValue.SearchPersonsExceed"
        case invalidParameterValue_TraceBodyNumExceed = "InvalidParameterValue.TraceBodyNumExceed"
        case invalidParameterValue_TraceMatchThresholdIllegal = "InvalidParameterValue.TraceMatchThresholdIllegal"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case limitExceeded_TooLargeFileError = "LimitExceeded.TooLargeFileError"
        case missingParameter_ErrorParameterEmpty = "MissingParameter.ErrorParameterEmpty"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourceUnavailable_NotReady = "ResourceUnavailable.NotReady"
        case unsupportedOperation_UnknowMethod = "UnsupportedOperation.UnknowMethod"
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
    
    /// 音频解码失败。
    public static var failedOperation_AudioDecodeFailed: TCBdaError {
        TCBdaError(.failedOperation_AudioDecodeFailed)
    }
    
    /// 音频编码失败。
    public static var failedOperation_AudioEncodeFailed: TCBdaError {
        TCBdaError(.failedOperation_AudioEncodeFailed)
    }
    
    /// 人体特征检测失败。
    public static var failedOperation_BodyFeatureFail: TCBdaError {
        TCBdaError(.failedOperation_BodyFeatureFail)
    }
    
    /// 人体关键点检测失败。
    public static var failedOperation_BodyJointsFail: TCBdaError {
        TCBdaError(.failedOperation_BodyJointsFail)
    }
    
    /// 人体质量分过低。
    public static var failedOperation_BodyQualityNotQualified: TCBdaError {
        TCBdaError(.failedOperation_BodyQualityNotQualified)
    }
    
    /// 输入的人体框不合法。
    public static var failedOperation_BodyRectIllegal: TCBdaError {
        TCBdaError(.failedOperation_BodyRectIllegal)
    }
    
    /// 输入的人体框数量不合法。
    public static var failedOperation_BodyRectNumIllegal: TCBdaError {
        TCBdaError(.failedOperation_BodyRectNumIllegal)
    }
    
    /// 创建动作轨迹失败，请选择符合要求的人体图片。
    public static var failedOperation_CreateTraceFailed: TCBdaError {
        TCBdaError(.failedOperation_CreateTraceFailed)
    }
    
    /// 文件下载失败。
    public static var failedOperation_DownloadError: TCBdaError {
        TCBdaError(.failedOperation_DownloadError)
    }
    
    /// 搜索的人体库为空。
    public static var failedOperation_GroupEmpty: TCBdaError {
        TCBdaError(.failedOperation_GroupEmpty)
    }
    
    /// 人体检测失败。
    public static var failedOperation_ImageBodyDetectFailed: TCBdaError {
        TCBdaError(.failedOperation_ImageBodyDetectFailed)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCBdaError {
        TCBdaError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片下载错误。
    public static var failedOperation_ImageDownloadError: TCBdaError {
        TCBdaError(.failedOperation_ImageDownloadError)
    }
    
    /// 人脸检测失败。
    public static var failedOperation_ImageFacedetectFailed: TCBdaError {
        TCBdaError(.failedOperation_ImageFacedetectFailed)
    }
    
    public static var failedOperation_ImageNotForeground: TCBdaError {
        TCBdaError(.failedOperation_ImageNotForeground)
    }
    
    /// 不支持的图片文件。
    public static var failedOperation_ImageNotSupported: TCBdaError {
        TCBdaError(.failedOperation_ImageNotSupported)
    }
    
    /// 图片分辨率过大。
    public static var failedOperation_ImageResolutionExceed: TCBdaError {
        TCBdaError(.failedOperation_ImageResolutionExceed)
    }
    
    /// 图片分辨率过小。
    public static var failedOperation_ImageResolutionInsufficient: TCBdaError {
        TCBdaError(.failedOperation_ImageResolutionInsufficient)
    }
    
    /// base64编码后的图片数据过大。
    public static var failedOperation_ImageSizeExceed: TCBdaError {
        TCBdaError(.failedOperation_ImageSizeExceed)
    }
    
    /// 服务内部错误，请重试。
    public static var failedOperation_InnerError: TCBdaError {
        TCBdaError(.failedOperation_InnerError)
    }
    
    /// 任务冲突。
    public static var failedOperation_JobConflict: TCBdaError {
        TCBdaError(.failedOperation_JobConflict)
    }
    
    /// 任务队列已满。
    public static var failedOperation_JobQueueFull: TCBdaError {
        TCBdaError(.failedOperation_JobQueueFull)
    }
    
    /// 图片中没有人体。
    public static var failedOperation_NoBodyInPhoto: TCBdaError {
        TCBdaError(.failedOperation_NoBodyInPhoto)
    }
    
    /// 人像数过多。
    public static var failedOperation_ProfileNumExceed: TCBdaError {
        TCBdaError(.failedOperation_ProfileNumExceed)
    }
    
    /// 整个请求体太大（通常主要是图片）。
    public static var failedOperation_RequestEntityTooLarge: TCBdaError {
        TCBdaError(.failedOperation_RequestEntityTooLarge)
    }
    
    /// 请求的次数超过了频率限制。
    public static var failedOperation_RequestLimitExceeded: TCBdaError {
        TCBdaError(.failedOperation_RequestLimitExceeded)
    }
    
    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCBdaError {
        TCBdaError(.failedOperation_RequestTimeout)
    }
    
    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCBdaError {
        TCBdaError(.failedOperation_RpcFail)
    }
    
    /// 人像分割失败。
    public static var failedOperation_SegmentFailed: TCBdaError {
        TCBdaError(.failedOperation_SegmentFailed)
    }
    
    /// 算法服务异常，请重试。
    public static var failedOperation_ServerError: TCBdaError {
        TCBdaError(.failedOperation_ServerError)
    }
    
    /// 任务超过上限。
    public static var failedOperation_TaskLimitExceeded: TCBdaError {
        TCBdaError(.failedOperation_TaskLimitExceeded)
    }
    
    /// 任务不存在。
    public static var failedOperation_TaskNotExist: TCBdaError {
        TCBdaError(.failedOperation_TaskNotExist)
    }
    
    /// 任务取消失败。
    public static var failedOperation_TerminateTaskFailed: TCBdaError {
        TCBdaError(.failedOperation_TerminateTaskFailed)
    }
    
    /// 文件太大。
    public static var failedOperation_TooLargeFileError: TCBdaError {
        TCBdaError(.failedOperation_TooLargeFileError)
    }
    
    /// 内部错误。
    public static var failedOperation_UnKnowError: TCBdaError {
        TCBdaError(.failedOperation_UnKnowError)
    }
    
    /// 未知错误。
    public static var failedOperation_Unknown: TCBdaError {
        TCBdaError(.failedOperation_Unknown)
    }
    
    /// 视频解码失败。
    public static var failedOperation_VideoDecodeFailed: TCBdaError {
        TCBdaError(.failedOperation_VideoDecodeFailed)
    }
    
    /// 账号人体动作轨迹数量超出限制。
    public static var invalidParameterValue_AccountTraceNumExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_AccountTraceNumExceed)
    }
    
    /// 算法模型版本不合法。
    public static var invalidParameterValue_BodyModelVersionIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_BodyModelVersionIllegal)
    }
    
    /// 传入的人体框过多。
    public static var invalidParameterValue_BodyRectsExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_BodyRectsExceed)
    }
    
    /// 人体库ID已经存在。人体库ID不可重复。
    public static var invalidParameterValue_GroupIdAlreadyExist: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupIdAlreadyExist)
    }
    
    /// 人体库ID包含非法字符。人体库ID只支持英文、数字、-%@#&amp;_。
    public static var invalidParameterValue_GroupIdIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupIdIllegal)
    }
    
    /// 人体库ID不存在。
    public static var invalidParameterValue_GroupIdNotExist: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupIdNotExist)
    }
    
    /// 人体库ID超出长度限制。
    public static var invalidParameterValue_GroupIdTooLong: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupIdTooLong)
    }
    
    /// 人体库名称已经存在。人体库名称不可重复。
    public static var invalidParameterValue_GroupNameAlreadyExist: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupNameAlreadyExist)
    }
    
    /// 人体库名称超出长度限制。
    public static var invalidParameterValue_GroupNameTooLong: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupNameTooLong)
    }
    
    /// 人体库数量超出限制。
    public static var invalidParameterValue_GroupNumExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupNumExceed)
    }
    
    /// 人体库备注超出长度限制。
    public static var invalidParameterValue_GroupTagTooLong: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupTagTooLong)
    }
    
    /// 人体库人体动作轨迹数量超出限制。
    public static var invalidParameterValue_GroupTraceNumExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_GroupTraceNumExceed)
    }
    
    /// 图片为空。
    public static var invalidParameterValue_ImageEmpty: TCBdaError {
        TCBdaError(.invalidParameterValue_ImageEmpty)
    }
    
    /// 返回数量不在合法范围内。
    public static var invalidParameterValue_LimitExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_LimitExceed)
    }
    
    /// 图片中没有人脸。
    public static var invalidParameterValue_NoFaceInPhoto: TCBdaError {
        TCBdaError(.invalidParameterValue_NoFaceInPhoto)
    }
    
    /// 起始序号过大。请检查需要请求的数组长度。
    public static var invalidParameterValue_OffsetExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_OffsetExceed)
    }
    
    /// 人员ID已经存在。人员ID不可重复。
    public static var invalidParameterValue_PersonIdAlreadyExist: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonIdAlreadyExist)
    }
    
    /// 人员ID包含非法字符。人员ID只支持英文、数字、-%@#&amp;_。
    public static var invalidParameterValue_PersonIdIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonIdIllegal)
    }
    
    /// 人员ID不存在。
    public static var invalidParameterValue_PersonIdNotExist: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonIdNotExist)
    }
    
    /// 人员ID超出长度限制。
    public static var invalidParameterValue_PersonIdTooLong: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonIdTooLong)
    }
    
    /// 人员名称包含非法字符。
    public static var invalidParameterValue_PersonNameIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonNameIllegal)
    }
    
    /// 人员名称超出长度限制。
    public static var invalidParameterValue_PersonNameTooLong: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonNameTooLong)
    }
    
    /// 人员人体动作轨迹数量超出限制。
    public static var invalidParameterValue_PersonTraceNumExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_PersonTraceNumExceed)
    }
    
    /// 搜索的人员数目超过限制。
    public static var invalidParameterValue_SearchPersonsExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_SearchPersonsExceed)
    }
    
    /// 创建人体动作轨迹的人体图片数量超出限制。
    public static var invalidParameterValue_TraceBodyNumExceed: TCBdaError {
        TCBdaError(.invalidParameterValue_TraceBodyNumExceed)
    }
    
    /// TraceMatchThreshold参数不合法。
    public static var invalidParameterValue_TraceMatchThresholdIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_TraceMatchThresholdIllegal)
    }
    
    /// URL格式不合法。
    public static var invalidParameterValue_UrlIllegal: TCBdaError {
        TCBdaError(.invalidParameterValue_UrlIllegal)
    }
    
    /// 参数不合法。
    public static var invalidParameter_InvalidParameter: TCBdaError {
        TCBdaError(.invalidParameter_InvalidParameter)
    }
    
    /// 文件太大。
    public static var limitExceeded_TooLargeFileError: TCBdaError {
        TCBdaError(.limitExceeded_TooLargeFileError)
    }
    
    /// 必选参数为空。
    public static var missingParameter_ErrorParameterEmpty: TCBdaError {
        TCBdaError(.missingParameter_ErrorParameterEmpty)
    }
    
    /// 账号已欠费。
    public static var resourceUnavailable_InArrears: TCBdaError {
        TCBdaError(.resourceUnavailable_InArrears)
    }
    
    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCBdaError {
        TCBdaError(.resourceUnavailable_NotExist)
    }
    
    /// 服务未开通。
    public static var resourceUnavailable_NotReady: TCBdaError {
        TCBdaError(.resourceUnavailable_NotReady)
    }
    
    /// 未知方法名。
    public static var unsupportedOperation_UnknowMethod: TCBdaError {
        TCBdaError(.unsupportedOperation_UnknowMethod)
    }
}

extension TCBdaError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCBdaError: Equatable {
    public static func == (lhs: TCBdaError, rhs: TCBdaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBdaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}