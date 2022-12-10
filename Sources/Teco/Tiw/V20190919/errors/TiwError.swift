public struct TCTiwError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_FileDownloadFail = "FailedOperation.FileDownloadFail"
        case failedOperation_FileFormatError = "FailedOperation.FileFormatError"
        case failedOperation_FileOpenFail = "FailedOperation.FileOpenFail"
        case failedOperation_FileUploadFail = "FailedOperation.FileUploadFail"
        case failedOperation_Record = "FailedOperation.Record"
        case failedOperation_Transcode = "FailedOperation.Transcode"
        case failedOperation_TranscodeServerError = "FailedOperation.TranscodeServerError"
        case failedOperation_WhiteboardPush = "FailedOperation.WhiteboardPush"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_BodyParameterTypeUnmatched = "InvalidParameter.BodyParameterTypeUnmatched"
        case invalidParameter_CallbackAddressFormatError = "InvalidParameter.CallbackAddressFormatError"
        case invalidParameter_FileFormatUnsupported = "InvalidParameter.FileFormatUnsupported"
        case invalidParameter_InvalidExtra = "InvalidParameter.InvalidExtra"
        case invalidParameter_RecordParameter = "InvalidParameter.RecordParameter"
        case invalidParameter_SdkAppIdNotFound = "InvalidParameter.SdkAppIdNotFound"
        case invalidParameter_TaskNotFound = "InvalidParameter.TaskNotFound"
        case invalidParameter_TranscodeParameter = "InvalidParameter.TranscodeParameter"
        case invalidParameter_UrlFormatError = "InvalidParameter.UrlFormatError"
        case limitExceeded_TaskConcurrency = "LimitExceeded.TaskConcurrency"
        case limitExceeded_TranscodePagesLimitation = "LimitExceeded.TranscodePagesLimitation"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse_RecordUserId = "ResourceInUse.RecordUserId"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotRegistered = "ResourceUnavailable.NotRegistered"
        case resourceUnavailable_ServiceExpired = "ResourceUnavailable.ServiceExpired"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_SdkAppId = "UnauthorizedOperation.SdkAppId"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_InvalidTaskStatus = "UnsupportedOperation.InvalidTaskStatus"
        case unsupportedOperation_TaskHasAlreadyStopped = "UnsupportedOperation.TaskHasAlreadyStopped"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCTiwError {
        TCTiwError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTiwError {
        TCTiwError(.failedOperation)
    }
    
    /// 文档下载失败，请检查请求参数中URL是否正确，或者如果您使用其他的文件存储服务，请检查文件存储服务的上传带宽，文档转码服务仅提供1分钟的下载时间，如果下载不成功本次的转码请求将以失败终止。
    public static var failedOperation_FileDownloadFail: TCTiwError {
        TCTiwError(.failedOperation_FileDownloadFail)
    }
    
    /// 文档格式错误，不支持转换只读文档或者已加密的文档。
    public static var failedOperation_FileFormatError: TCTiwError {
        TCTiwError(.failedOperation_FileFormatError)
    }
    
    /// 文档打开失败，请检查提交转码的文档是否加密或有其他格式问题。
    public static var failedOperation_FileOpenFail: TCTiwError {
        TCTiwError(.failedOperation_FileOpenFail)
    }
    
    /// 转码后上传结果失败，请稍候重试。
    public static var failedOperation_FileUploadFail: TCTiwError {
        TCTiwError(.failedOperation_FileUploadFail)
    }
    
    /// 录制失败，具体请参考错误描述。
    public static var failedOperation_Record: TCTiwError {
        TCTiwError(.failedOperation_Record)
    }
    
    /// 转码失败，具体请参考错误描述或联系客服人员。
    public static var failedOperation_Transcode: TCTiwError {
        TCTiwError(.failedOperation_Transcode)
    }
    
    /// 转码服务出现内部错误，请稍候重试或联系客户人员。
    public static var failedOperation_TranscodeServerError: TCTiwError {
        TCTiwError(.failedOperation_TranscodeServerError)
    }
    
    /// 白板推流失败，具体请参考错误描述。
    public static var failedOperation_WhiteboardPush: TCTiwError {
        TCTiwError(.failedOperation_WhiteboardPush)
    }
    
    /// 内部错误。
    public static var internalError: TCTiwError {
        TCTiwError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTiwError {
        TCTiwError(.invalidParameter)
    }
    
    /// 参数类型不匹配。
    public static var invalidParameter_BodyParameterTypeUnmatched: TCTiwError {
        TCTiwError(.invalidParameter_BodyParameterTypeUnmatched)
    }
    
    /// 回调地址格式错误。
    public static var invalidParameter_CallbackAddressFormatError: TCTiwError {
        TCTiwError(.invalidParameter_CallbackAddressFormatError)
    }
    
    /// 文档后缀名对应的格式不支持。
    public static var invalidParameter_FileFormatUnsupported: TCTiwError {
        TCTiwError(.invalidParameter_FileFormatUnsupported)
    }
    
    /// 额外指定的特殊功能不存在。
    public static var invalidParameter_InvalidExtra: TCTiwError {
        TCTiwError(.invalidParameter_InvalidExtra)
    }
    
    /// 实时录制参数格式不正确。
    public static var invalidParameter_RecordParameter: TCTiwError {
        TCTiwError(.invalidParameter_RecordParameter)
    }
    
    /// SdkAppId不存在或格式错误。
    public static var invalidParameter_SdkAppIdNotFound: TCTiwError {
        TCTiwError(.invalidParameter_SdkAppIdNotFound)
    }
    
    /// 需要查询的任务不存在。
    public static var invalidParameter_TaskNotFound: TCTiwError {
        TCTiwError(.invalidParameter_TaskNotFound)
    }
    
    /// 文档转码参数格式不正确。
    public static var invalidParameter_TranscodeParameter: TCTiwError {
        TCTiwError(.invalidParameter_TranscodeParameter)
    }
    
    /// 文档下载Url格式错误，请检查请求参数里的Url。
    public static var invalidParameter_UrlFormatError: TCTiwError {
        TCTiwError(.invalidParameter_UrlFormatError)
    }
    
    /// 转码或录制任务并发数量超过限制，请参考错误描述或稍后重试。
    public static var limitExceeded_TaskConcurrency: TCTiwError {
        TCTiwError(.limitExceeded_TaskConcurrency)
    }
    
    /// 超过文档最大页数限制，目前不支持超过500页的文件转码，如有特殊需求，请联系客服人员。
    public static var limitExceeded_TranscodePagesLimitation: TCTiwError {
        TCTiwError(.limitExceeded_TranscodePagesLimitation)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCTiwError {
        TCTiwError(.requestLimitExceeded)
    }
    
    /// 实时录制任务录制用户已被其他录制任务使用。
    public static var resourceInUse_RecordUserId: TCTiwError {
        TCTiwError(.resourceInUse_RecordUserId)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTiwError {
        TCTiwError(.resourceUnavailable)
    }
    
    /// 未开通互动白板。
    public static var resourceUnavailable_NotRegistered: TCTiwError {
        TCTiwError(.resourceUnavailable_NotRegistered)
    }
    
    /// 账户欠费或者互动白板服务已过期。
    public static var resourceUnavailable_ServiceExpired: TCTiwError {
        TCTiwError(.resourceUnavailable_ServiceExpired)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTiwError {
        TCTiwError(.unauthorizedOperation)
    }
    
    /// SdkAppId不存在或者SdkAppId与当前腾讯云账号不对应。
    public static var unauthorizedOperation_SdkAppId: TCTiwError {
        TCTiwError(.unauthorizedOperation_SdkAppId)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTiwError {
        TCTiwError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTiwError {
        TCTiwError(.unsupportedOperation)
    }
    
    /// 当前未完成的任务不能此状态下执行指定操作，例如对正在录制的任务执行恢复录制等。
    public static var unsupportedOperation_InvalidTaskStatus: TCTiwError {
        TCTiwError(.unsupportedOperation_InvalidTaskStatus)
    }
    
    /// 任务结束，不能执行指定操作。
    public static var unsupportedOperation_TaskHasAlreadyStopped: TCTiwError {
        TCTiwError(.unsupportedOperation_TaskHasAlreadyStopped)
    }
}

extension TCTiwError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, LimitExceeded.self, ResourceInUse.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTiwError: Equatable {
    public static func == (lhs: TCTiwError, rhs: TCTiwError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTiwError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}