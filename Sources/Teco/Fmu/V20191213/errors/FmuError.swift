public struct TCFmuError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_BeautifyFailed = "FailedOperation.BeautifyFailed"
        case failedOperation_CancelJobFailure = "FailedOperation.CancelJobFailure"
        case failedOperation_DetectNoFace = "FailedOperation.DetectNoFace"
        case failedOperation_EffectFreqCtrl = "FailedOperation.EffectFreqCtrl"
        case failedOperation_EffectInnerError = "FailedOperation.EffectInnerError"
        case failedOperation_FaceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
        case failedOperation_FreqCtrl = "FailedOperation.FreqCtrl"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageGrayNotSupport = "FailedOperation.ImageGrayNotSupport"
        case failedOperation_ImageNotSupported = "FailedOperation.ImageNotSupported"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_ImageUploadFailed = "FailedOperation.ImageUploadFailed"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_InternalError = "FailedOperation.InternalError"
        case failedOperation_JobConflict = "FailedOperation.JobConflict"
        case failedOperation_JobHasBeenCanceled = "FailedOperation.JobHasBeenCanceled"
        case failedOperation_JobStopProcessing = "FailedOperation.JobStopProcessing"
        case failedOperation_ModelValueExceed = "FailedOperation.ModelValueExceed"
        case failedOperation_ParameterValueError = "FailedOperation.ParameterValueError"
        case failedOperation_RequestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_EyeEnlargingIllegal = "InvalidParameterValue.EyeEnlargingIllegal"
        case invalidParameterValue_FaceLiftingIllegal = "InvalidParameterValue.FaceLiftingIllegal"
        case invalidParameterValue_FaceRectInvalid = "InvalidParameterValue.FaceRectInvalid"
        case invalidParameterValue_FaceRectInvalidFirst = "InvalidParameterValue.FaceRectInvalidFirst"
        case invalidParameterValue_FaceRectInvalidSecond = "InvalidParameterValue.FaceRectInvalidSecond"
        case invalidParameterValue_FaceRectInvalidThrid = "InvalidParameterValue.FaceRectInvalidThrid"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_ImageInvalid = "InvalidParameterValue.ImageInvalid"
        case invalidParameterValue_ImageSizeExceed = "InvalidParameterValue.ImageSizeExceed"
        case invalidParameterValue_LutImageInvalid = "InvalidParameterValue.LutImageInvalid"
        case invalidParameterValue_LutImageSizeInvalid = "InvalidParameterValue.LutImageSizeInvalid"
        case invalidParameterValue_ModelIdNotFound = "InvalidParameterValue.ModelIdNotFound"
        case invalidParameterValue_NoFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
        case invalidParameterValue_ParameterValueError = "InvalidParameterValue.ParameterValueError"
        case invalidParameterValue_SmoothingIllegal = "InvalidParameterValue.SmoothingIllegal"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case invalidParameterValue_WhiteningIllegal = "InvalidParameterValue.WhiteningIllegal"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_NoFaceInPhoto = "InvalidParameter.NoFaceInPhoto"
        case resourceUnavailable_Delivering = "ResourceUnavailable.Delivering"
        case resourceUnavailable_Freeze = "ResourceUnavailable.Freeze"
        case resourceUnavailable_GetAuthInfoError = "ResourceUnavailable.GetAuthInfoError"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_LowBalance = "ResourceUnavailable.LowBalance"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourceUnavailable_NotReady = "ResourceUnavailable.NotReady"
        case resourceUnavailable_Recover = "ResourceUnavailable.Recover"
        case resourceUnavailable_StopUsing = "ResourceUnavailable.StopUsing"
        case resourceUnavailable_UnknownStatus = "ResourceUnavailable.UnknownStatus"
        case resourcesSoldOut_ChargeStatusException = "ResourcesSoldOut.ChargeStatusException"
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
    public static var failedOperation: TCFmuError {
        TCFmuError(.failedOperation)
    }
    
    /// 图片美颜失败，请更换图片。
    public static var failedOperation_BeautifyFailed: TCFmuError {
        TCFmuError(.failedOperation_BeautifyFailed)
    }
    
    /// 撤销任务无法被成功执行, 请重试。
    public static var failedOperation_CancelJobFailure: TCFmuError {
        TCFmuError(.failedOperation_CancelJobFailure)
    }
    
    /// 未检测到人脸。
    public static var failedOperation_DetectNoFace: TCFmuError {
        TCFmuError(.failedOperation_DetectNoFace)
    }
    
    /// 操作太频繁，触发频控。
    public static var failedOperation_EffectFreqCtrl: TCFmuError {
        TCFmuError(.failedOperation_EffectFreqCtrl)
    }
    
    /// 特效服务内部错误。
    public static var failedOperation_EffectInnerError: TCFmuError {
        TCFmuError(.failedOperation_EffectInnerError)
    }
    
    /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
    public static var failedOperation_FaceSizeTooSmall: TCFmuError {
        TCFmuError(.failedOperation_FaceSizeTooSmall)
    }
    
    /// 操作太频繁，触发频控，请稍后重试。
    public static var failedOperation_FreqCtrl: TCFmuError {
        TCFmuError(.failedOperation_FreqCtrl)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCFmuError {
        TCFmuError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片下载失败。
    public static var failedOperation_ImageDownloadError: TCFmuError {
        TCFmuError(.failedOperation_ImageDownloadError)
    }
    
    /// 不支持灰色图。
    public static var failedOperation_ImageGrayNotSupport: TCFmuError {
        TCFmuError(.failedOperation_ImageGrayNotSupport)
    }
    
    /// 不支持的图片文件。
    public static var failedOperation_ImageNotSupported: TCFmuError {
        TCFmuError(.failedOperation_ImageNotSupported)
    }
    
    /// 图片分辨率过大。
    public static var failedOperation_ImageResolutionExceed: TCFmuError {
        TCFmuError(.failedOperation_ImageResolutionExceed)
    }
    
    /// 图片短边分辨率小于64。
    public static var failedOperation_ImageResolutionTooSmall: TCFmuError {
        TCFmuError(.failedOperation_ImageResolutionTooSmall)
    }
    
    /// 图片数据太大。
    public static var failedOperation_ImageSizeExceed: TCFmuError {
        TCFmuError(.failedOperation_ImageSizeExceed)
    }
    
    /// 图片上传失败。
    public static var failedOperation_ImageUploadFailed: TCFmuError {
        TCFmuError(.failedOperation_ImageUploadFailed)
    }
    
    /// 服务内部错误，请重试。
    public static var failedOperation_InnerError: TCFmuError {
        TCFmuError(.failedOperation_InnerError)
    }
    
    /// 内部错误。
    public static var failedOperation_InternalError: TCFmuError {
        TCFmuError(.failedOperation_InternalError)
    }
    
    /// 任务冲突。
    public static var failedOperation_JobConflict: TCFmuError {
        TCFmuError(.failedOperation_JobConflict)
    }
    
    /// 任务已撤销，请重新提交任务。
    public static var failedOperation_JobHasBeenCanceled: TCFmuError {
        TCFmuError(.failedOperation_JobHasBeenCanceled)
    }
    
    /// 任务已停止处理，请重新提交任务。
    public static var failedOperation_JobStopProcessing: TCFmuError {
        TCFmuError(.failedOperation_JobStopProcessing)
    }
    
    /// 素材超过数量限制。
    public static var failedOperation_ModelValueExceed: TCFmuError {
        TCFmuError(.failedOperation_ModelValueExceed)
    }
    
    /// 参数错误。
    public static var failedOperation_ParameterValueError: TCFmuError {
        TCFmuError(.failedOperation_ParameterValueError)
    }
    
    /// 请求包体太大，建议在6M内（通常是参数中包括大的图片）。
    public static var failedOperation_RequestEntityTooLarge: TCFmuError {
        TCFmuError(.failedOperation_RequestEntityTooLarge)
    }
    
    /// 后端服务超时，请重试。
    public static var failedOperation_RequestTimeout: TCFmuError {
        TCFmuError(.failedOperation_RequestTimeout)
    }
    
    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCFmuError {
        TCFmuError(.failedOperation_RpcFail)
    }
    
    /// 系统内部错误。
    public static var failedOperation_ServerError: TCFmuError {
        TCFmuError(.failedOperation_ServerError)
    }
    
    /// 未知错误。
    public static var failedOperation_Unknown: TCFmuError {
        TCFmuError(.failedOperation_Unknown)
    }
    
    /// 内部错误。
    public static var internalError: TCFmuError {
        TCFmuError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCFmuError {
        TCFmuError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCFmuError {
        TCFmuError(.invalidParameterValue)
    }
    
    /// 大眼参数不合法。
    public static var invalidParameterValue_EyeEnlargingIllegal: TCFmuError {
        TCFmuError(.invalidParameterValue_EyeEnlargingIllegal)
    }
    
    /// 瘦脸参数不合法。
    public static var invalidParameterValue_FaceLiftingIllegal: TCFmuError {
        TCFmuError(.invalidParameterValue_FaceLiftingIllegal)
    }
    
    /// 人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalid: TCFmuError {
        TCFmuError(.invalidParameterValue_FaceRectInvalid)
    }
    
    /// 第1个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidFirst: TCFmuError {
        TCFmuError(.invalidParameterValue_FaceRectInvalidFirst)
    }
    
    /// 第2个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidSecond: TCFmuError {
        TCFmuError(.invalidParameterValue_FaceRectInvalidSecond)
    }
    
    /// 第3个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidThrid: TCFmuError {
        TCFmuError(.invalidParameterValue_FaceRectInvalidThrid)
    }
    
    /// 缺少参数，请检查图片参数是否为空。
    public static var invalidParameterValue_ImageEmpty: TCFmuError {
        TCFmuError(.invalidParameterValue_ImageEmpty)
    }
    
    /// 图片不合法。
    public static var invalidParameterValue_ImageInvalid: TCFmuError {
        TCFmuError(.invalidParameterValue_ImageInvalid)
    }
    
    /// 图片数据太大。
    public static var invalidParameterValue_ImageSizeExceed: TCFmuError {
        TCFmuError(.invalidParameterValue_ImageSizeExceed)
    }
    
    /// 素材图片不合法, 必须是512*512的PNG图片。
    public static var invalidParameterValue_LutImageInvalid: TCFmuError {
        TCFmuError(.invalidParameterValue_LutImageInvalid)
    }
    
    /// 素材图片尺寸不合法，必须是512*512的PNG图片。
    public static var invalidParameterValue_LutImageSizeInvalid: TCFmuError {
        TCFmuError(.invalidParameterValue_LutImageSizeInvalid)
    }
    
    /// 素材不存在。
    public static var invalidParameterValue_ModelIdNotFound: TCFmuError {
        TCFmuError(.invalidParameterValue_ModelIdNotFound)
    }
    
    /// 图片中没有人脸。
    public static var invalidParameterValue_NoFaceInPhoto: TCFmuError {
        TCFmuError(.invalidParameterValue_NoFaceInPhoto)
    }
    
    /// 参数错误。
    public static var invalidParameterValue_ParameterValueError: TCFmuError {
        TCFmuError(.invalidParameterValue_ParameterValueError)
    }
    
    /// 磨皮参数不合法。
    public static var invalidParameterValue_SmoothingIllegal: TCFmuError {
        TCFmuError(.invalidParameterValue_SmoothingIllegal)
    }
    
    /// URL格式不合法。
    public static var invalidParameterValue_UrlIllegal: TCFmuError {
        TCFmuError(.invalidParameterValue_UrlIllegal)
    }
    
    /// 美白参数不合法。
    public static var invalidParameterValue_WhiteningIllegal: TCFmuError {
        TCFmuError(.invalidParameterValue_WhiteningIllegal)
    }
    
    /// 参数不合法。
    public static var invalidParameter_InvalidParameter: TCFmuError {
        TCFmuError(.invalidParameter_InvalidParameter)
    }
    
    /// 图片中没有人脸。
    public static var invalidParameter_NoFaceInPhoto: TCFmuError {
        TCFmuError(.invalidParameter_NoFaceInPhoto)
    }
    
    /// 资源正在发货中。
    public static var resourceUnavailable_Delivering: TCFmuError {
        TCFmuError(.resourceUnavailable_Delivering)
    }
    
    /// 帐号已被冻结。
    public static var resourceUnavailable_Freeze: TCFmuError {
        TCFmuError(.resourceUnavailable_Freeze)
    }
    
    /// 获取认证信息失败。
    public static var resourceUnavailable_GetAuthInfoError: TCFmuError {
        TCFmuError(.resourceUnavailable_GetAuthInfoError)
    }
    
    /// 帐号已欠费。
    public static var resourceUnavailable_InArrears: TCFmuError {
        TCFmuError(.resourceUnavailable_InArrears)
    }
    
    /// 余额不足。
    public static var resourceUnavailable_LowBalance: TCFmuError {
        TCFmuError(.resourceUnavailable_LowBalance)
    }
    
    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCFmuError {
        TCFmuError(.resourceUnavailable_NotExist)
    }
    
    /// 服务未开通。
    public static var resourceUnavailable_NotReady: TCFmuError {
        TCFmuError(.resourceUnavailable_NotReady)
    }
    
    /// 资源已被回收。
    public static var resourceUnavailable_Recover: TCFmuError {
        TCFmuError(.resourceUnavailable_Recover)
    }
    
    /// 帐号已停服。
    public static var resourceUnavailable_StopUsing: TCFmuError {
        TCFmuError(.resourceUnavailable_StopUsing)
    }
    
    /// 计费状态未知。
    public static var resourceUnavailable_UnknownStatus: TCFmuError {
        TCFmuError(.resourceUnavailable_UnknownStatus)
    }
    
    /// 帐号已欠费。
    public static var resourcesSoldOut_ChargeStatusException: TCFmuError {
        TCFmuError(.resourcesSoldOut_ChargeStatusException)
    }
}

extension TCFmuError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, ResourceUnavailable.self, ResourcesSoldOut.self]
    }
}

extension TCFmuError: Equatable {
    public static func == (lhs: TCFmuError, rhs: TCFmuError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCFmuError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCFmuError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
