public struct TCTiiaError: TCErrorType {
    enum Code: String {
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_DownLoadError = "FailedOperation.DownLoadError"
        case failedOperation_DownloadError = "FailedOperation.DownloadError"
        case failedOperation_EmptyImageError = "FailedOperation.EmptyImageError"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDeleteFailed = "FailedOperation.ImageDeleteFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageEntityCountExceed = "FailedOperation.ImageEntityCountExceed"
        case failedOperation_ImageGroupEmpty = "FailedOperation.ImageGroupEmpty"
        case failedOperation_ImageNotFoundInfo = "FailedOperation.ImageNotFoundInfo"
        case failedOperation_ImageNotSupported = "FailedOperation.ImageNotSupported"
        case failedOperation_ImageNumExceed = "FailedOperation.ImageNumExceed"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageSearchInvalid = "FailedOperation.ImageSearchInvalid"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_ImageUnQualified = "FailedOperation.ImageUnQualified"
        case failedOperation_ImageUrlInvalid = "FailedOperation.ImageUrlInvalid"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_InvokeChargeError = "FailedOperation.InvokeChargeError"
        case failedOperation_NoBodyInPhoto = "FailedOperation.NoBodyInPhoto"
        case failedOperation_NoObjectDetected = "FailedOperation.NoObjectDetected"
        case failedOperation_ParameterEmpty = "FailedOperation.ParameterEmpty"
        case failedOperation_RecognizeFailded = "FailedOperation.RecognizeFailded"
        case failedOperation_RequestError = "FailedOperation.RequestError"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_TooLargeFileError = "FailedOperation.TooLargeFileError"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_UnOpenError = "FailedOperation.UnOpenError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case invalidParameterValue_BriefTooLong = "InvalidParameterValue.BriefTooLong"
        case invalidParameterValue_CustomContentTooLong = "InvalidParameterValue.CustomContentTooLong"
        case invalidParameterValue_EntityIdEmpty = "InvalidParameterValue.EntityIdEmpty"
        case invalidParameterValue_EntityIdTooLong = "InvalidParameterValue.EntityIdTooLong"
        case invalidParameterValue_FilterInvalid = "InvalidParameterValue.FilterInvalid"
        case invalidParameterValue_FilterSizeExceed = "InvalidParameterValue.FilterSizeExceed"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_ImageGroupIdAlreadyExist = "InvalidParameterValue.ImageGroupIdAlreadyExist"
        case invalidParameterValue_ImageGroupIdIllegal = "InvalidParameterValue.ImageGroupIdIllegal"
        case invalidParameterValue_ImageGroupIdNotExist = "InvalidParameterValue.ImageGroupIdNotExist"
        case invalidParameterValue_ImageGroupIdTooLong = "InvalidParameterValue.ImageGroupIdTooLong"
        case invalidParameterValue_ImageGroupNameEmpty = "InvalidParameterValue.ImageGroupNameEmpty"
        case invalidParameterValue_ImageGroupNameTooLong = "InvalidParameterValue.ImageGroupNameTooLong"
        case invalidParameterValue_InvalidParameterValueLimit = "InvalidParameterValue.InvalidParameterValueLimit"
        case invalidParameterValue_LimitExceed = "InvalidParameterValue.LimitExceed"
        case invalidParameterValue_PicNameAlreadyExist = "InvalidParameterValue.PicNameAlreadyExist"
        case invalidParameterValue_PicNameEmpty = "InvalidParameterValue.PicNameEmpty"
        case invalidParameterValue_PicNameTooLong = "InvalidParameterValue.PicNameTooLong"
        case invalidParameterValue_TagsKeysExceed = "InvalidParameterValue.TagsKeysExceed"
        case invalidParameterValue_TagsValueIllegal = "InvalidParameterValue.TagsValueIllegal"
        case invalidParameterValue_TagsValueSizeExceed = "InvalidParameterValue.TagsValueSizeExceed"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case invalidParameter_ImageFormatNotSupport = "InvalidParameter.ImageFormatNotSupport"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case limitExceeded_TooLargeFileError = "LimitExceeded.TooLargeFileError"
        case missingParameter_ErrorParameterEmpty = "MissingParameter.ErrorParameterEmpty"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_IsOpening = "ResourceUnavailable.IsOpening"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
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
    public static var authFailure_InvalidAuthorization: TCTiiaError {
        TCTiiaError(.authFailure_InvalidAuthorization)
    }
    
    /// 余额不足，开通失败，请充值后再开通。
    public static var failedOperation_BalanceInsufficient: TCTiiaError {
        TCTiiaError(.failedOperation_BalanceInsufficient)
    }
    
    /// 文件下载失败。
    public static var failedOperation_DownLoadError: TCTiiaError {
        TCTiiaError(.failedOperation_DownLoadError)
    }
    
    /// 文件下载错误。
    public static var failedOperation_DownloadError: TCTiiaError {
        TCTiiaError(.failedOperation_DownloadError)
    }
    
    /// 图片内容为空。
    public static var failedOperation_EmptyImageError: TCTiiaError {
        TCTiiaError(.failedOperation_EmptyImageError)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片删除失败。
    public static var failedOperation_ImageDeleteFailed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDeleteFailed)
    }
    
    /// 图片下载错误。
    public static var failedOperation_ImageDownloadError: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDownloadError)
    }
    
    /// 超出Entity数量限制。
    public static var failedOperation_ImageEntityCountExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageEntityCountExceed)
    }
    
    /// 图库为空。
    public static var failedOperation_ImageGroupEmpty: TCTiiaError {
        TCTiiaError(.failedOperation_ImageGroupEmpty)
    }
    
    /// 未找到图片信息。
    public static var failedOperation_ImageNotFoundInfo: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNotFoundInfo)
    }
    
    /// 不支持的图片文件。
    public static var failedOperation_ImageNotSupported: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNotSupported)
    }
    
    /// 超出图库限制。
    public static var failedOperation_ImageNumExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNumExceed)
    }
    
    /// 图片分辨率过大。
    public static var failedOperation_ImageResolutionExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageResolutionExceed)
    }
    
    /// 未查询到结果。
    public static var failedOperation_ImageSearchInvalid: TCTiiaError {
        TCTiiaError(.failedOperation_ImageSearchInvalid)
    }
    
    /// base64编码后的图片数据过大。
    public static var failedOperation_ImageSizeExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageSizeExceed)
    }
    
    /// 图片不满足检测要求。
    public static var failedOperation_ImageUnQualified: TCTiiaError {
        TCTiiaError(.failedOperation_ImageUnQualified)
    }
    
    /// url地址不合法，无法下载。
    public static var failedOperation_ImageUrlInvalid: TCTiiaError {
        TCTiiaError(.failedOperation_ImageUrlInvalid)
    }
    
    /// 内部错误。
    public static var failedOperation_InnerError: TCTiiaError {
        TCTiiaError(.failedOperation_InnerError)
    }
    
    /// 调用计费返回失败。
    public static var failedOperation_InvokeChargeError: TCTiiaError {
        TCTiiaError(.failedOperation_InvokeChargeError)
    }
    
    public static var failedOperation_NoBodyInPhoto: TCTiiaError {
        TCTiiaError(.failedOperation_NoBodyInPhoto)
    }
    
    /// 未检测到目标。
    public static var failedOperation_NoObjectDetected: TCTiiaError {
        TCTiiaError(.failedOperation_NoObjectDetected)
    }
    
    /// 参数为空。
    public static var failedOperation_ParameterEmpty: TCTiiaError {
        TCTiiaError(.failedOperation_ParameterEmpty)
    }
    
    /// 车辆识别失败。
    public static var failedOperation_RecognizeFailded: TCTiiaError {
        TCTiiaError(.failedOperation_RecognizeFailded)
    }
    
    /// 后端服务请求失败。
    public static var failedOperation_RequestError: TCTiiaError {
        TCTiiaError(.failedOperation_RequestError)
    }
    
    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCTiiaError {
        TCTiiaError(.failedOperation_RequestTimeout)
    }
    
    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCTiiaError {
        TCTiiaError(.failedOperation_RpcFail)
    }
    
    /// 算法服务异常，请重试。
    public static var failedOperation_ServerError: TCTiiaError {
        TCTiiaError(.failedOperation_ServerError)
    }
    
    /// 文件太大。
    public static var failedOperation_TooLargeFileError: TCTiiaError {
        TCTiiaError(.failedOperation_TooLargeFileError)
    }
    
    /// 内部错误。
    public static var failedOperation_UnKnowError: TCTiiaError {
        TCTiiaError(.failedOperation_UnKnowError)
    }
    
    /// 服务未开通。
    public static var failedOperation_UnOpenError: TCTiiaError {
        TCTiiaError(.failedOperation_UnOpenError)
    }
    
    /// 未知错误。
    public static var failedOperation_Unknown: TCTiiaError {
        TCTiiaError(.failedOperation_Unknown)
    }
    
    /// 图库简介过长。
    public static var invalidParameterValue_BriefTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_BriefTooLong)
    }
    
    /// 自定义内容过长。
    public static var invalidParameterValue_CustomContentTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_CustomContentTooLong)
    }
    
    /// 物品ID为空。
    public static var invalidParameterValue_EntityIdEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_EntityIdEmpty)
    }
    
    /// 物品ID超出长度限制。
    public static var invalidParameterValue_EntityIdTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_EntityIdTooLong)
    }
    
    /// Filter参数不合法。
    public static var invalidParameterValue_FilterInvalid: TCTiiaError {
        TCTiiaError(.invalidParameterValue_FilterInvalid)
    }
    
    /// Filter参数过长。
    public static var invalidParameterValue_FilterSizeExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_FilterSizeExceed)
    }
    
    /// 图片为空。
    public static var invalidParameterValue_ImageEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageEmpty)
    }
    
    /// 图库ID已存在。
    public static var invalidParameterValue_ImageGroupIdAlreadyExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdAlreadyExist)
    }
    
    /// 图库ID不合法。
    public static var invalidParameterValue_ImageGroupIdIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdIllegal)
    }
    
    /// 图库ID不存在。
    public static var invalidParameterValue_ImageGroupIdNotExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdNotExist)
    }
    
    /// 图库ID超出长度限制。
    public static var invalidParameterValue_ImageGroupIdTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdTooLong)
    }
    
    /// 图库名称为空。
    public static var invalidParameterValue_ImageGroupNameEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupNameEmpty)
    }
    
    /// 图库名称超出长度限制。
    public static var invalidParameterValue_ImageGroupNameTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupNameTooLong)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameterValueLimit: TCTiiaError {
        TCTiiaError(.invalidParameterValue_InvalidParameterValueLimit)
    }
    
    /// 返回数量不在合法范围内。
    public static var invalidParameterValue_LimitExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_LimitExceed)
    }
    
    /// 图片已经存在。
    public static var invalidParameterValue_PicNameAlreadyExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameAlreadyExist)
    }
    
    /// 图片名称为空。
    public static var invalidParameterValue_PicNameEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameEmpty)
    }
    
    /// 图片名称超出长度限制。
    public static var invalidParameterValue_PicNameTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameTooLong)
    }
    
    /// 标签数量过多。
    public static var invalidParameterValue_TagsKeysExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsKeysExceed)
    }
    
    /// 标签值类型不合法。
    public static var invalidParameterValue_TagsValueIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsValueIllegal)
    }
    
    /// 标签值长度过长。
    public static var invalidParameterValue_TagsValueSizeExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsValueSizeExceed)
    }
    
    /// URL格式不合法。
    public static var invalidParameterValue_UrlIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_UrlIllegal)
    }
    
    public static var invalidParameter_ImageFormatNotSupport: TCTiiaError {
        TCTiiaError(.invalidParameter_ImageFormatNotSupport)
    }
    
    /// 参数取值错误。
    public static var invalidParameter_InvalidParameter: TCTiiaError {
        TCTiiaError(.invalidParameter_InvalidParameter)
    }
    
    /// 文件太大。
    public static var limitExceeded_TooLargeFileError: TCTiiaError {
        TCTiiaError(.limitExceeded_TooLargeFileError)
    }
    
    /// 必选参数为空。
    public static var missingParameter_ErrorParameterEmpty: TCTiiaError {
        TCTiiaError(.missingParameter_ErrorParameterEmpty)
    }
    
    /// 账号已欠费。
    public static var resourceUnavailable_InArrears: TCTiiaError {
        TCTiiaError(.resourceUnavailable_InArrears)
    }
    
    /// 服务正在开通中，请稍等。
    public static var resourceUnavailable_IsOpening: TCTiiaError {
        TCTiiaError(.resourceUnavailable_IsOpening)
    }
    
    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCTiiaError {
        TCTiiaError(.resourceUnavailable_NotExist)
    }
    
    /// 计费状态异常。
    public static var resourcesSoldOut_ChargeStatusException: TCTiiaError {
        TCTiiaError(.resourcesSoldOut_ChargeStatusException)
    }
}

extension TCTiiaError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceUnavailable.self, ResourcesSoldOut.self]
    }
}

extension TCTiiaError: Equatable {
    public static func == (lhs: TCTiiaError, rhs: TCTiiaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTiiaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTiiaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
