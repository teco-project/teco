public struct TCIeError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_CosStorageError = "FailedOperation.CosStorageError"
        case failedOperation_EditError = "FailedOperation.EditError"
        case failedOperation_EncodeFormatError = "FailedOperation.EncodeFormatError"
        case failedOperation_RunningTaskExceed = "FailedOperation.RunningTaskExceed"
        case failedOperation_SegmentError = "FailedOperation.SegmentError"
        case failedOperation_ServerBusy = "FailedOperation.ServerBusy"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_TaskResubmit = "FailedOperation.TaskResubmit"
        case failedOperation_TranscodeError = "FailedOperation.TranscodeError"
        case failedOperation_UnknowError = "FailedOperation.UnknowError"
        case failedOperation_VideoDownloadError = "FailedOperation.VideoDownloadError"
        case failedOperation_VideoParseError = "FailedOperation.VideoParseError"
        case failedOperation_VideoSizeExceed = "FailedOperation.VideoSizeExceed"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ActionNotSupport = "InvalidParameterValue.ActionNotSupport"
        case invalidParameterValue_CallbackUrlError = "InvalidParameterValue.CallbackUrlError"
        case invalidParameterValue_CallbackUrlNotExist = "InvalidParameterValue.CallbackUrlNotExist"
        case invalidParameterValue_CosAuthModeError = "InvalidParameterValue.CosAuthModeError"
        case invalidParameterValue_CosHostedIdNotExist = "InvalidParameterValue.CosHostedIdNotExist"
        case invalidParameterValue_DownInfoFormatWrong = "InvalidParameterValue.DownInfoFormatWrong"
        case invalidParameterValue_DownInfoTypeWrong = "InvalidParameterValue.DownInfoTypeWrong"
        case invalidParameterValue_LiveSourceNotSupport = "InvalidParameterValue.LiveSourceNotSupport"
        case invalidParameterValue_SaveInfoNotExist = "InvalidParameterValue.SaveInfoNotExist"
        case invalidParameterValue_TaskAlreadyDone = "InvalidParameterValue.TaskAlreadyDone"
        case invalidParameterValue_TaskDeleted = "InvalidParameterValue.TaskDeleted"
        case invalidParameterValue_TaskIdNotExist = "InvalidParameterValue.TaskIdNotExist"
        case invalidParameterValue_UriError = "InvalidParameterValue.UriError"
        case invalidParameterValue_UrlInfoUrlError = "InvalidParameterValue.UrlInfoUrlError"
        case invalidParameterValue_VideoFormatError = "InvalidParameterValue.VideoFormatError"
        case invalidParameter_LiveStreamNotSupport = "InvalidParameter.LiveStreamNotSupport"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var authFailure: TCIeError {
        TCIeError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCIeError {
        TCIeError(.failedOperation)
    }
    
    /// Cos存储结果错误。
    public static var failedOperation_CosStorageError: TCIeError {
        TCIeError(.failedOperation_CosStorageError)
    }
    
    /// 转码时截取失败。
    public static var failedOperation_EditError: TCIeError {
        TCIeError(.failedOperation_EditError)
    }
    
    /// 编码格式或参数不支持。
    public static var failedOperation_EncodeFormatError: TCIeError {
        TCIeError(.failedOperation_EncodeFormatError)
    }
    
    /// 运行中的任务达到上限，如需要增加任务上限，请提交工单。
    public static var failedOperation_RunningTaskExceed: TCIeError {
        TCIeError(.failedOperation_RunningTaskExceed)
    }
    
    /// 转码后切片失败。
    public static var failedOperation_SegmentError: TCIeError {
        TCIeError(.failedOperation_SegmentError)
    }
    
    /// 系统繁忙，请稍后重试。
    public static var failedOperation_ServerBusy: TCIeError {
        TCIeError(.failedOperation_ServerBusy)
    }
    
    /// 内部服务错误。
    public static var failedOperation_ServerError: TCIeError {
        TCIeError(.failedOperation_ServerError)
    }
    
    public static var failedOperation_TaskResubmit: TCIeError {
        TCIeError(.failedOperation_TaskResubmit)
    }
    
    /// 转码服务异常。
    public static var failedOperation_TranscodeError: TCIeError {
        TCIeError(.failedOperation_TranscodeError)
    }
    
    /// 转码服务未知错误。
    public static var failedOperation_UnknowError: TCIeError {
        TCIeError(.failedOperation_UnknowError)
    }
    
    /// 视频源下载失败或超时。
    public static var failedOperation_VideoDownloadError: TCIeError {
        TCIeError(.failedOperation_VideoDownloadError)
    }
    
    /// 视频源解析出错。
    public static var failedOperation_VideoParseError: TCIeError {
        TCIeError(.failedOperation_VideoParseError)
    }
    
    /// 视频大小超过限制。
    public static var failedOperation_VideoSizeExceed: TCIeError {
        TCIeError(.failedOperation_VideoSizeExceed)
    }
    
    /// 内部错误。
    public static var internalError: TCIeError {
        TCIeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIeError {
        TCIeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIeError {
        TCIeError(.invalidParameterValue)
    }
    
    /// 任务不支持该操作。
    public static var invalidParameterValue_ActionNotSupport: TCIeError {
        TCIeError(.invalidParameterValue_ActionNotSupport)
    }
    
    /// CallbackUrl 不安全。
    public static var invalidParameterValue_CallbackUrlError: TCIeError {
        TCIeError(.invalidParameterValue_CallbackUrlError)
    }
    
    /// 直播场景回调地址必选。
    public static var invalidParameterValue_CallbackUrlNotExist: TCIeError {
        TCIeError(.invalidParameterValue_CallbackUrlNotExist)
    }
    
    /// Cos授权信息错误。
    public static var invalidParameterValue_CosAuthModeError: TCIeError {
        TCIeError(.invalidParameterValue_CosAuthModeError)
    }
    
    /// Cos托管ID不存在。
    public static var invalidParameterValue_CosHostedIdNotExist: TCIeError {
        TCIeError(.invalidParameterValue_CosHostedIdNotExist)
    }
    
    /// 视频源地址格式错误。
    public static var invalidParameterValue_DownInfoFormatWrong: TCIeError {
        TCIeError(.invalidParameterValue_DownInfoFormatWrong)
    }
    
    /// 视频源下载类型错误。
    public static var invalidParameterValue_DownInfoTypeWrong: TCIeError {
        TCIeError(.invalidParameterValue_DownInfoTypeWrong)
    }
    
    /// 该任务不支持直播流。
    public static var invalidParameterValue_LiveSourceNotSupport: TCIeError {
        TCIeError(.invalidParameterValue_LiveSourceNotSupport)
    }
    
    /// 请确认准确填写存储信息。
    public static var invalidParameterValue_SaveInfoNotExist: TCIeError {
        TCIeError(.invalidParameterValue_SaveInfoNotExist)
    }
    
    /// 任务已经结束。
    public static var invalidParameterValue_TaskAlreadyDone: TCIeError {
        TCIeError(.invalidParameterValue_TaskAlreadyDone)
    }
    
    /// 任务已经删除。
    public static var invalidParameterValue_TaskDeleted: TCIeError {
        TCIeError(.invalidParameterValue_TaskDeleted)
    }
    
    /// 任务ID不存在。
    public static var invalidParameterValue_TaskIdNotExist: TCIeError {
        TCIeError(.invalidParameterValue_TaskIdNotExist)
    }
    
    /// 请求uri错误。
    public static var invalidParameterValue_UriError: TCIeError {
        TCIeError(.invalidParameterValue_UriError)
    }
    
    /// URL 不安全。
    public static var invalidParameterValue_UrlInfoUrlError: TCIeError {
        TCIeError(.invalidParameterValue_UrlInfoUrlError)
    }
    
    /// 视频格式不支持。
    public static var invalidParameterValue_VideoFormatError: TCIeError {
        TCIeError(.invalidParameterValue_VideoFormatError)
    }
    
    public static var invalidParameter_LiveStreamNotSupport: TCIeError {
        TCIeError(.invalidParameter_LiveStreamNotSupport)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCIeError {
        TCIeError(.requestLimitExceeded)
    }
    
    /// 帐号已欠费。
    public static var resourceUnavailable_InArrears: TCIeError {
        TCIeError(.resourceUnavailable_InArrears)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCIeError {
        TCIeError(.unauthorizedOperation)
    }
}

extension TCIeError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, ResourceUnavailable.self]
    }
}

extension TCIeError: Equatable {
    public static func == (lhs: TCIeError, rhs: TCIeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIeError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
