public struct TCVmsError: TCErrorType {
    enum Code: String {
        case failedOperation_AccessUpstreamTimeout = "FailedOperation.AccessUpstreamTimeout"
        case failedOperation_ContainSensitiveWord = "FailedOperation.ContainSensitiveWord"
        case failedOperation_FailResolvePacket = "FailedOperation.FailResolvePacket"
        case failedOperation_InsufficientBalanceInVoicePackage = "FailedOperation.InsufficientBalanceInVoicePackage"
        case failedOperation_InvalidJsonParameters = "FailedOperation.InvalidJsonParameters"
        case failedOperation_InvalidParameters = "FailedOperation.InvalidParameters"
        case failedOperation_JsonParseFail = "FailedOperation.JsonParseFail"
        case failedOperation_ParametersOtherError = "FailedOperation.ParametersOtherError"
        case failedOperation_PhonenumberUnappliedOrExpired = "FailedOperation.PhonenumberUnappliedOrExpired"
        case failedOperation_TemplateIncorrectOrUnapproved = "FailedOperation.TemplateIncorrectOrUnapproved"
        case internalError_AccessUpstreamTimeout = "InternalError.AccessUpstreamTimeout"
        case internalError_RequestTimeException = "InternalError.RequestTimeException"
        case internalError_RestApiInterfaceNotExist = "InternalError.RestApiInterfaceNotExist"
        case internalError_SigVerificationFail = "InternalError.SigVerificationFail"
        case internalError_SsoSendRecvFail = "InternalError.SsoSendRecvFail"
        case internalError_UpstreamError = "InternalError.UpstreamError"
        case invalidParameterValue_CalledNumberVerifyFail = "InvalidParameterValue.CalledNumberVerifyFail"
        case invalidParameterValue_ContentLengthLimit = "InvalidParameterValue.ContentLengthLimit"
        case invalidParameterValue_SdkAppidNotExist = "InvalidParameterValue.SdkAppidNotExist"
        case limitExceeded_DeliveryFrequencyLimit = "LimitExceeded.DeliveryFrequencyLimit"
        case unauthorizedOperation_SdkAppidIsDisabled = "UnauthorizedOperation.SdkAppidIsDisabled"
        case unauthorizedOperation_ServiceSuspendDueToArrears = "UnauthorizedOperation.ServiceSuspendDueToArrears"
        case unauthorizedOperation_VoiceSdkAppidVerifyFail = "UnauthorizedOperation.VoiceSdkAppidVerifyFail"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// 访问上下游模块超时。
    public static var failedOperation_AccessUpstreamTimeout: TCVmsError {
        TCVmsError(.failedOperation_AccessUpstreamTimeout)
    }
    
    /// 语音内容中含有敏感词，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>沟通解决。
    public static var failedOperation_ContainSensitiveWord: TCVmsError {
        TCVmsError(.failedOperation_ContainSensitiveWord)
    }
    
    /// 后端请求包解析失败，通常由于没有遵守 API 接口说明规范导致的，请参见<a href="https://cloud.tencent.com/document/product/1128/38004#Q7">1004错误详解</a>。
    public static var failedOperation_FailResolvePacket: TCVmsError {
        TCVmsError(.failedOperation_FailResolvePacket)
    }
    
    /// 套餐包余量不足，请及时<a href="https://cloud.tencent.com/document/product/1128#buyPackage">购买语音套餐包</a>。
    public static var failedOperation_InsufficientBalanceInVoicePackage: TCVmsError {
        TCVmsError(.failedOperation_InsufficientBalanceInVoicePackage)
    }
    
    /// 无效 JSON，请核查发送的请求是否为标准的 JSON 格式。
    public static var failedOperation_InvalidJsonParameters: TCVmsError {
        TCVmsError(.failedOperation_InvalidJsonParameters)
    }
    
    /// 无效参数，请核查发送的请求参数是否为对应 API 所需参数。
    public static var failedOperation_InvalidParameters: TCVmsError {
        TCVmsError(.failedOperation_InvalidParameters)
    }
    
    /// 解析请求包体时候失败。
    public static var failedOperation_JsonParseFail: TCVmsError {
        TCVmsError(.failedOperation_JsonParseFail)
    }
    
    /// 语音未知错误，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>沟通解决。
    public static var failedOperation_ParametersOtherError: TCVmsError {
        TCVmsError(.failedOperation_ParametersOtherError)
    }
    
    /// 未申请号码或申请的号码资源已过期，请及时支付月功能费用和信息服务费用，具体操作请参见<a href="https://cloud.tencent.com/document/product/1128">购买指南</a>。
    public static var failedOperation_PhonenumberUnappliedOrExpired: TCVmsError {
        TCVmsError(.failedOperation_PhonenumberUnappliedOrExpired)
    }
    
    /// 模板未审核或请求的内容与审核通过的模板内容不匹配，请参见[1014错误详解](https://cloud.tencent.com/document/product/1128/38004
    public static var failedOperation_TemplateIncorrectOrUnapproved: TCVmsError {
        TCVmsError(.failedOperation_TemplateIncorrectOrUnapproved)
    }
    
    /// 访问上游超时网络，请稍后重试。
    public static var internalError_AccessUpstreamTimeout: TCVmsError {
        TCVmsError(.internalError_AccessUpstreamTimeout)
    }
    
    /// 请求发起时间不正常，通常由您的服务器与腾讯云服务器之间的时间差超过10分钟引起。
    public static var internalError_RequestTimeException: TCVmsError {
        TCVmsError(.internalError_RequestTimeException)
    }
    
    /// 后端不存在该 REST API 接口，请核查 REST API 接口说明。
    public static var internalError_RestApiInterfaceNotExist: TCVmsError {
        TCVmsError(.internalError_RestApiInterfaceNotExist)
    }
    
    /// 后端 Sig 校验失败。
    public static var internalError_SigVerificationFail: TCVmsError {
        TCVmsError(.internalError_SigVerificationFail)
    }
    
    /// 内部sso通道超时。
    public static var internalError_SsoSendRecvFail: TCVmsError {
        TCVmsError(.internalError_SsoSendRecvFail)
    }
    
    /// 语音上游错误，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>沟通解决。
    public static var internalError_UpstreamError: TCVmsError {
        TCVmsError(.internalError_UpstreamError)
    }
    
    /// 被叫手机号码格式校验失败。
    public static var invalidParameterValue_CalledNumberVerifyFail: TCVmsError {
        TCVmsError(.invalidParameterValue_CalledNumberVerifyFail)
    }
    
    /// 语音模板中单个变量长度超过限制，如需调整限制，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>。
    public static var invalidParameterValue_ContentLengthLimit: TCVmsError {
        TCVmsError(.invalidParameterValue_ContentLengthLimit)
    }
    
    /// SDK AppID 不存在。
    public static var invalidParameterValue_SdkAppidNotExist: TCVmsError {
        TCVmsError(.invalidParameterValue_SdkAppidNotExist)
    }
    
    /// 下发语音消息时命中频率限制策略，如需申请不受频率限制的测试号码或更改限制策略，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>。
    public static var limitExceeded_DeliveryFrequencyLimit: TCVmsError {
        TCVmsError(.limitExceeded_DeliveryFrequencyLimit)
    }
    
    /// SDK AppID 禁用发送语音消息，如有需要请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>。
    public static var unauthorizedOperation_SdkAppidIsDisabled: TCVmsError {
        TCVmsError(.unauthorizedOperation_SdkAppidIsDisabled)
    }
    
    /// 因腾讯云账号欠费被停止服务，请及时为您的腾讯云账号<a href="https://cloud.tencent.com/document/product/555/7425">充值</a>缴清欠款。
    public static var unauthorizedOperation_ServiceSuspendDueToArrears: TCVmsError {
        TCVmsError(.unauthorizedOperation_ServiceSuspendDueToArrears)
    }
    
    /// VoiceSdkAppid 校验失败。
    public static var unauthorizedOperation_VoiceSdkAppidVerifyFail: TCVmsError {
        TCVmsError(.unauthorizedOperation_VoiceSdkAppidVerifyFail)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCVmsError {
        TCVmsError(.unsupportedOperation)
    }
}

extension TCVmsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self, LimitExceeded.self, UnauthorizedOperation.self]
    }
}

extension TCVmsError: Equatable {
    public static func == (lhs: TCVmsError, rhs: TCVmsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVmsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}