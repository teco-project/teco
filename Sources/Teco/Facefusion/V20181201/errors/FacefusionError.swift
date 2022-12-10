public struct TCFacefusionError: TCErrorType {
    enum Code: String {
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case failedOperation_ActivityStatusInvalid = "FailedOperation.ActivityStatusInvalid"
        case failedOperation_FaceBorderCheckFailed = "FailedOperation.FaceBorderCheckFailed"
        case failedOperation_FaceDetectFailed = "FailedOperation.FaceDetectFailed"
        case failedOperation_FaceExceedBorder = "FailedOperation.FaceExceedBorder"
        case failedOperation_FaceFeatureFailed = "FailedOperation.FaceFeatureFailed"
        case failedOperation_FaceFusionError = "FailedOperation.FaceFusionError"
        case failedOperation_FacePoseFailed = "FailedOperation.FacePoseFailed"
        case failedOperation_FaceRectInvalid = "FailedOperation.FaceRectInvalid"
        case failedOperation_FaceShapeInvalid = "FailedOperation.FaceShapeInvalid"
        case failedOperation_FaceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
        case failedOperation_FuseBackendServerFault = "FailedOperation.FuseBackendServerFault"
        case failedOperation_FuseDetectNoFace = "FailedOperation.FuseDetectNoFace"
        case failedOperation_FuseFreqCtrl = "FailedOperation.FuseFreqCtrl"
        case failedOperation_FuseImageError = "FailedOperation.FuseImageError"
        case failedOperation_FuseInnerError = "FailedOperation.FuseInnerError"
        case failedOperation_FuseMaterialNotAuth = "FailedOperation.FuseMaterialNotAuth"
        case failedOperation_FuseMaterialNotExist = "FailedOperation.FuseMaterialNotExist"
        case failedOperation_FuseSavePhotoFail = "FailedOperation.FuseSavePhotoFail"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImagePixelExceed = "FailedOperation.ImagePixelExceed"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_ImageSizeExceedFiveHundredKB = "FailedOperation.ImageSizeExceedFiveHundredKB"
        case failedOperation_ImageSizeInvalid = "FailedOperation.ImageSizeInvalid"
        case failedOperation_ImageUploadFailed = "FailedOperation.ImageUploadFailed"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_MaterialValueExceed = "FailedOperation.MaterialValueExceed"
        case failedOperation_NoFaceDetected = "FailedOperation.NoFaceDetected"
        case failedOperation_ParameterValueError = "FailedOperation.ParameterValueError"
        case failedOperation_ProjectNotAuth = "FailedOperation.ProjectNotAuth"
        case failedOperation_RequestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_TemplateFaceIDNotExist = "FailedOperation.TemplateFaceIDNotExist"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case invalidParameterValue_ActivityIdNotFound = "InvalidParameterValue.ActivityIdNotFound"
        case invalidParameterValue_EngineValueError = "InvalidParameterValue.EngineValueError"
        case invalidParameterValue_FaceRectParameterValueError = "InvalidParameterValue.FaceRectParameterValueError"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_MaterialIdNotFound = "InvalidParameterValue.MaterialIdNotFound"
        case invalidParameterValue_NoFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
        case invalidParameterValue_ParameterValueError = "InvalidParameterValue.ParameterValueError"
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
    
    /// 认证失败。
    public static var authFailure_InvalidAuthorization: TCFacefusionError {
        TCFacefusionError(.authFailure_InvalidAuthorization)
    }
    
    /// 操作失败。
    public static var failedOperation: TCFacefusionError {
        TCFacefusionError(.failedOperation)
    }
    
    /// 活动状态错误。
    public static var failedOperation_ActivityStatusInvalid: TCFacefusionError {
        TCFacefusionError(.failedOperation_ActivityStatusInvalid)
    }
    
    /// 人脸配准点出框错误码。
    public static var failedOperation_FaceBorderCheckFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceBorderCheckFailed)
    }
    
    /// 人脸检测失败。
    public static var failedOperation_FaceDetectFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceDetectFailed)
    }
    
    /// 人脸出框，无法使用。
    public static var failedOperation_FaceExceedBorder: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceExceedBorder)
    }
    
    /// 人脸提特征失败。
    public static var failedOperation_FaceFeatureFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceFeatureFailed)
    }
    
    /// 人脸融合失败，请更换图片后重试。
    public static var failedOperation_FaceFusionError: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceFusionError)
    }
    
    /// 人脸姿态检测失败。
    public static var failedOperation_FacePoseFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_FacePoseFailed)
    }
    
    /// 人脸框不合法。
    public static var failedOperation_FaceRectInvalid: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceRectInvalid)
    }
    
    /// 人脸配准点不合法。
    public static var failedOperation_FaceShapeInvalid: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceShapeInvalid)
    }
    
    /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
    public static var failedOperation_FaceSizeTooSmall: TCFacefusionError {
        TCFacefusionError(.failedOperation_FaceSizeTooSmall)
    }
    
    /// 人脸融合后端服务异常。
    public static var failedOperation_FuseBackendServerFault: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseBackendServerFault)
    }
    
    /// 未检测到人脸。
    public static var failedOperation_FuseDetectNoFace: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseDetectNoFace)
    }
    
    /// 操作太频繁，触发频控。
    public static var failedOperation_FuseFreqCtrl: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseFreqCtrl)
    }
    
    /// 图像处理出错。
    public static var failedOperation_FuseImageError: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseImageError)
    }
    
    /// 服务内部错误，请重试。
    public static var failedOperation_FuseInnerError: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseInnerError)
    }
    
    /// 素材未经过审核。
    public static var failedOperation_FuseMaterialNotAuth: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseMaterialNotAuth)
    }
    
    /// 素材不存在。
    public static var failedOperation_FuseMaterialNotExist: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseMaterialNotExist)
    }
    
    /// 保存结果图片出错。
    public static var failedOperation_FuseSavePhotoFail: TCFacefusionError {
        TCFacefusionError(.failedOperation_FuseSavePhotoFail)
    }
    
    /// 人脸检测-图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片下载失败。
    public static var failedOperation_ImageDownloadError: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageDownloadError)
    }
    
    /// 素材尺寸超过1080*1080像素。
    public static var failedOperation_ImagePixelExceed: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImagePixelExceed)
    }
    
    /// 图片分辨率过大。建议您resize压缩到3k*3k以内。
    public static var failedOperation_ImageResolutionExceed: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageResolutionExceed)
    }
    
    /// 图片短边分辨率小于64。
    public static var failedOperation_ImageResolutionTooSmall: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageResolutionTooSmall)
    }
    
    /// 输入图片base64数据大小超过5M。
    public static var failedOperation_ImageSizeExceed: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageSizeExceed)
    }
    
    /// base64编码后的图片数据大小不超500k。
    public static var failedOperation_ImageSizeExceedFiveHundredKB: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageSizeExceedFiveHundredKB)
    }
    
    /// 图片尺寸过大或者过小；不满足算法要求。
    public static var failedOperation_ImageSizeInvalid: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageSizeInvalid)
    }
    
    /// 图片上传失败。
    public static var failedOperation_ImageUploadFailed: TCFacefusionError {
        TCFacefusionError(.failedOperation_ImageUploadFailed)
    }
    
    /// 服务内部错误。
    public static var failedOperation_InnerError: TCFacefusionError {
        TCFacefusionError(.failedOperation_InnerError)
    }
    
    /// 素材条数超过上限。
    public static var failedOperation_MaterialValueExceed: TCFacefusionError {
        TCFacefusionError(.failedOperation_MaterialValueExceed)
    }
    
    /// 无法检测出人脸, 人脸框配准分低于阈值。
    public static var failedOperation_NoFaceDetected: TCFacefusionError {
        TCFacefusionError(.failedOperation_NoFaceDetected)
    }
    
    /// 参数字段或者值有误。
    public static var failedOperation_ParameterValueError: TCFacefusionError {
        TCFacefusionError(.failedOperation_ParameterValueError)
    }
    
    /// 活动未支付授权费或已停用。
    public static var failedOperation_ProjectNotAuth: TCFacefusionError {
        TCFacefusionError(.failedOperation_ProjectNotAuth)
    }
    
    /// 请求实体太大。
    public static var failedOperation_RequestEntityTooLarge: TCFacefusionError {
        TCFacefusionError(.failedOperation_RequestEntityTooLarge)
    }
    
    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCFacefusionError {
        TCFacefusionError(.failedOperation_RequestTimeout)
    }
    
    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCFacefusionError {
        TCFacefusionError(.failedOperation_RpcFail)
    }
    
    /// 系统内部错误。
    public static var failedOperation_ServerError: TCFacefusionError {
        TCFacefusionError(.failedOperation_ServerError)
    }
    
    /// 素材人脸ID不存在。
    public static var failedOperation_TemplateFaceIDNotExist: TCFacefusionError {
        TCFacefusionError(.failedOperation_TemplateFaceIDNotExist)
    }
    
    /// 未知错误。
    public static var failedOperation_Unknown: TCFacefusionError {
        TCFacefusionError(.failedOperation_Unknown)
    }
    
    /// 未查找到活动id。
    public static var invalidParameterValue_ActivityIdNotFound: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_ActivityIdNotFound)
    }
    
    /// 活动算法版本值错误。
    public static var invalidParameterValue_EngineValueError: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_EngineValueError)
    }
    
    /// 人脸框参数有误或者人脸框太小。
    public static var invalidParameterValue_FaceRectParameterValueError: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_FaceRectParameterValueError)
    }
    
    /// 人脸检测-图片为空。
    public static var invalidParameterValue_ImageEmpty: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_ImageEmpty)
    }
    
    /// 未查找到素材Id。
    public static var invalidParameterValue_MaterialIdNotFound: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_MaterialIdNotFound)
    }
    
    /// 人脸检测-图片没有人脸。
    public static var invalidParameterValue_NoFaceInPhoto: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_NoFaceInPhoto)
    }
    
    /// 参数字段或者值有误。
    public static var invalidParameterValue_ParameterValueError: TCFacefusionError {
        TCFacefusionError(.invalidParameterValue_ParameterValueError)
    }
    
    /// 资源正在发货中。
    public static var resourceUnavailable_Delivering: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_Delivering)
    }
    
    /// 帐号已被冻结。
    public static var resourceUnavailable_Freeze: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_Freeze)
    }
    
    /// 获取认证信息失败。
    public static var resourceUnavailable_GetAuthInfoError: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_GetAuthInfoError)
    }
    
    /// 帐号已欠费。
    public static var resourceUnavailable_InArrears: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_InArrears)
    }
    
    /// 余额不足。
    public static var resourceUnavailable_LowBalance: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_LowBalance)
    }
    
    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_NotExist)
    }
    
    /// 服务未开通。
    public static var resourceUnavailable_NotReady: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_NotReady)
    }
    
    /// 资源已被回收。
    public static var resourceUnavailable_Recover: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_Recover)
    }
    
    /// 帐号已停服。
    public static var resourceUnavailable_StopUsing: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_StopUsing)
    }
    
    /// 计费状态未知。
    public static var resourceUnavailable_UnknownStatus: TCFacefusionError {
        TCFacefusionError(.resourceUnavailable_UnknownStatus)
    }
    
    /// 帐号已欠费。
    public static var resourcesSoldOut_ChargeStatusException: TCFacefusionError {
        TCFacefusionError(.resourcesSoldOut_ChargeStatusException)
    }
}

extension TCFacefusionError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameterValue.self, ResourceUnavailable.self, ResourcesSoldOut.self]
    }
}

extension TCFacefusionError: Equatable {
    public static func == (lhs: TCFacefusionError, rhs: TCFacefusionError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCFacefusionError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCFacefusionError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
