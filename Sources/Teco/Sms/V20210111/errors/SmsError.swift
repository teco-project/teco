public struct TCSmsError: TCErrorType {
    enum Code: String {
        case failedOperation_ContainSensitiveWord = "FailedOperation.ContainSensitiveWord"
        case failedOperation_FailResolvePacket = "FailedOperation.FailResolvePacket"
        case failedOperation_ForbidAddMarketingTemplates = "FailedOperation.ForbidAddMarketingTemplates"
        case failedOperation_InsufficientBalanceInSmsPackage = "FailedOperation.InsufficientBalanceInSmsPackage"
        case failedOperation_JsonParseFail = "FailedOperation.JsonParseFail"
        case failedOperation_MarketingSendTimeConstraint = "FailedOperation.MarketingSendTimeConstraint"
        case failedOperation_MissingSignature = "FailedOperation.MissingSignature"
        case failedOperation_MissingSignatureList = "FailedOperation.MissingSignatureList"
        case failedOperation_MissingSignatureToModify = "FailedOperation.MissingSignatureToModify"
        case failedOperation_MissingTemplateList = "FailedOperation.MissingTemplateList"
        case failedOperation_MissingTemplateToModify = "FailedOperation.MissingTemplateToModify"
        case failedOperation_NotEnterpriseCertification = "FailedOperation.NotEnterpriseCertification"
        case failedOperation_OtherError = "FailedOperation.OtherError"
        case failedOperation_ParametersOtherError = "FailedOperation.ParametersOtherError"
        case failedOperation_PhoneNumberInBlacklist = "FailedOperation.PhoneNumberInBlacklist"
        case failedOperation_PhoneNumberParseFail = "FailedOperation.PhoneNumberParseFail"
        case failedOperation_ProhibitSubAccountUse = "FailedOperation.ProhibitSubAccountUse"
        case failedOperation_SignNumberLimit = "FailedOperation.SignNumberLimit"
        case failedOperation_SignatureIncorrectOrUnapproved = "FailedOperation.SignatureIncorrectOrUnapproved"
        case failedOperation_TemplateAlreadyPassedCheck = "FailedOperation.TemplateAlreadyPassedCheck"
        case failedOperation_TemplateIdNotExist = "FailedOperation.TemplateIdNotExist"
        case failedOperation_TemplateIncorrectOrUnapproved = "FailedOperation.TemplateIncorrectOrUnapproved"
        case failedOperation_TemplateNumberLimit = "FailedOperation.TemplateNumberLimit"
        case failedOperation_TemplateParamSetNotMatchApprovedTemplate = "FailedOperation.TemplateParamSetNotMatchApprovedTemplate"
        case failedOperation_TemplateUnapprovedOrNotExist = "FailedOperation.TemplateUnapprovedOrNotExist"
        case internalError_JsonParseFail = "InternalError.JsonParseFail"
        case internalError_OtherError = "InternalError.OtherError"
        case internalError_ParseBackendResponseFail = "InternalError.ParseBackendResponseFail"
        case internalError_RequestTimeException = "InternalError.RequestTimeException"
        case internalError_RestApiInterfaceNotExist = "InternalError.RestApiInterfaceNotExist"
        case internalError_SendAndRecvFail = "InternalError.SendAndRecvFail"
        case internalError_SigFieldMissing = "InternalError.SigFieldMissing"
        case internalError_SigVerificationFail = "InternalError.SigVerificationFail"
        case internalError_Timeout = "InternalError.Timeout"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_BeginTimeVerifyFail = "InvalidParameterValue.BeginTimeVerifyFail"
        case invalidParameterValue_ContentLengthLimit = "InvalidParameterValue.ContentLengthLimit"
        case invalidParameterValue_EndTimeVerifyFail = "InvalidParameterValue.EndTimeVerifyFail"
        case invalidParameterValue_ImageInvalid = "InvalidParameterValue.ImageInvalid"
        case invalidParameterValue_IncorrectPhoneNumber = "InvalidParameterValue.IncorrectPhoneNumber"
        case invalidParameterValue_InvalidDocumentType = "InvalidParameterValue.InvalidDocumentType"
        case invalidParameterValue_InvalidInternational = "InvalidParameterValue.InvalidInternational"
        case invalidParameterValue_InvalidSignPurpose = "InvalidParameterValue.InvalidSignPurpose"
        case invalidParameterValue_InvalidStartTime = "InvalidParameterValue.InvalidStartTime"
        case invalidParameterValue_InvalidTemplateFormat = "InvalidParameterValue.InvalidTemplateFormat"
        case invalidParameterValue_InvalidUsedMethod = "InvalidParameterValue.InvalidUsedMethod"
        case invalidParameterValue_LimitVerifyFail = "InvalidParameterValue.LimitVerifyFail"
        case invalidParameterValue_OffsetVerifyFail = "InvalidParameterValue.OffsetVerifyFail"
        case invalidParameterValue_ProhibitedUseUrlInTemplateParameter = "InvalidParameterValue.ProhibitedUseUrlInTemplateParameter"
        case invalidParameterValue_SdkAppIdNotExist = "InvalidParameterValue.SdkAppIdNotExist"
        case invalidParameterValue_SignAlreadyPassedCheck = "InvalidParameterValue.SignAlreadyPassedCheck"
        case invalidParameterValue_SignExistAndUnapproved = "InvalidParameterValue.SignExistAndUnapproved"
        case invalidParameterValue_TemplateParameterFormatError = "InvalidParameterValue.TemplateParameterFormatError"
        case invalidParameterValue_TemplateParameterLengthLimit = "InvalidParameterValue.TemplateParameterLengthLimit"
        case invalidParameterValue_TemplateWithDirtyWords = "InvalidParameterValue.TemplateWithDirtyWords"
        case invalidParameter_AppidAndBizId = "InvalidParameter.AppidAndBizId"
        case invalidParameter_DirtyWordFound = "InvalidParameter.DirtyWordFound"
        case invalidParameter_InvalidParameters = "InvalidParameter.InvalidParameters"
        case limitExceeded_AppCountryOrRegionDailyLimit = "LimitExceeded.AppCountryOrRegionDailyLimit"
        case limitExceeded_AppCountryOrRegionInBlacklist = "LimitExceeded.AppCountryOrRegionInBlacklist"
        case limitExceeded_AppDailyLimit = "LimitExceeded.AppDailyLimit"
        case limitExceeded_AppGlobalDailyLimit = "LimitExceeded.AppGlobalDailyLimit"
        case limitExceeded_AppMainlandChinaDailyLimit = "LimitExceeded.AppMainlandChinaDailyLimit"
        case limitExceeded_DailyLimit = "LimitExceeded.DailyLimit"
        case limitExceeded_DeliveryFrequencyLimit = "LimitExceeded.DeliveryFrequencyLimit"
        case limitExceeded_PhoneNumberCountLimit = "LimitExceeded.PhoneNumberCountLimit"
        case limitExceeded_PhoneNumberDailyLimit = "LimitExceeded.PhoneNumberDailyLimit"
        case limitExceeded_PhoneNumberOneHourLimit = "LimitExceeded.PhoneNumberOneHourLimit"
        case limitExceeded_PhoneNumberSameContentDailyLimit = "LimitExceeded.PhoneNumberSameContentDailyLimit"
        case limitExceeded_PhoneNumberThirtySecondLimit = "LimitExceeded.PhoneNumberThirtySecondLimit"
        case missingParameter = "MissingParameter"
        case missingParameter_EmptyPhoneNumberSet = "MissingParameter.EmptyPhoneNumberSet"
        case unauthorizedOperation_IndividualUserMarketingSmsPermissionDeny = "UnauthorizedOperation.IndividualUserMarketingSmsPermissionDeny"
        case unauthorizedOperation_RequestIpNotInWhitelist = "UnauthorizedOperation.RequestIpNotInWhitelist"
        case unauthorizedOperation_RequestPermissionDeny = "UnauthorizedOperation.RequestPermissionDeny"
        case unauthorizedOperation_SdkAppIdIsDisabled = "UnauthorizedOperation.SdkAppIdIsDisabled"
        case unauthorizedOperation_SerivceSuspendDueToArrears = "UnauthorizedOperation.SerivceSuspendDueToArrears"
        case unauthorizedOperation_SmsSdkAppIdVerifyFail = "UnauthorizedOperation.SmsSdkAppIdVerifyFail"
        case unsupportedOperation_ = "UnsupportedOperation."
        case unsupportedOperation_ChineseMainlandTemplateToGlobalPhone = "UnsupportedOperation.ChineseMainlandTemplateToGlobalPhone"
        case unsupportedOperation_ContainDomesticAndInternationalPhoneNumber = "UnsupportedOperation.ContainDomesticAndInternationalPhoneNumber"
        case unsupportedOperation_GlobalTemplateToChineseMainlandPhone = "UnsupportedOperation.GlobalTemplateToChineseMainlandPhone"
        case unsupportedOperation_UnsuportedRegion = "UnsupportedOperation.UnsuportedRegion"
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
    
    /// 短信内容中含有敏感词，请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_ContainSensitiveWord: TCSmsError {
        TCSmsError(.failedOperation_ContainSensitiveWord)
    }
    
    /// 请求包解析失败，通常情况下是由于没有遵守 API 接口说明规范导致的，请参考 <a href="https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1004.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F">请求包体解析1004错误详解</a>。
    public static var failedOperation_FailResolvePacket: TCSmsError {
        TCSmsError(.failedOperation_FailResolvePacket)
    }
    
    /// 个人用户不能申请营销短信。
    public static var failedOperation_ForbidAddMarketingTemplates: TCSmsError {
        TCSmsError(.failedOperation_ForbidAddMarketingTemplates)
    }
    
    /// 套餐包余量不足，请 <a href="https://buy.cloud.tencent.com/sms">购买套餐包</a>。
    public static var failedOperation_InsufficientBalanceInSmsPackage: TCSmsError {
        TCSmsError(.failedOperation_InsufficientBalanceInSmsPackage)
    }
    
    /// 解析请求包体时候失败。
    public static var failedOperation_JsonParseFail: TCSmsError {
        TCSmsError(.failedOperation_JsonParseFail)
    }
    
    /// 营销短信发送时间限制，为避免骚扰用户，营销短信只允许在8点到22点发送。
    public static var failedOperation_MarketingSendTimeConstraint: TCSmsError {
        TCSmsError(.failedOperation_MarketingSendTimeConstraint)
    }
    
    /// 没有申请签名之前，无法申请模板，请根据 <a href="https://cloud.tencent.com/document/product/382/37794#.E5.88.9B.E5.BB.BA.E7.AD.BE.E5.90.8D">创建签名</a> 申请完成之后再次申请。
    public static var failedOperation_MissingSignature: TCSmsError {
        TCSmsError(.failedOperation_MissingSignature)
    }
    
    /// 无法识别签名，请确认是否已有签名通过申请，一般是签名未通过申请，可以查看 <a href="https://cloud.tencent.com/document/product/382/37745">签名审核</a>。
    public static var failedOperation_MissingSignatureList: TCSmsError {
        TCSmsError(.failedOperation_MissingSignatureList)
    }
    
    /// 此签名 ID 未提交申请或不存在，不能进行修改操作，请检查您的 SignId 是否填写正确。
    public static var failedOperation_MissingSignatureToModify: TCSmsError {
        TCSmsError(.failedOperation_MissingSignatureToModify)
    }
    
    /// 无法识别模板，请确认是否已有模板通过申请，一般是模板未通过申请，可以查看 <a href="https://cloud.tencent.com/document/product/382/37745">模板审核</a>。
    public static var failedOperation_MissingTemplateList: TCSmsError {
        TCSmsError(.failedOperation_MissingTemplateList)
    }
    
    /// 此模板 ID 未提交申请或不存在，不能进行修改操作，请检查您的 TemplateId是否填写正确。
    public static var failedOperation_MissingTemplateToModify: TCSmsError {
        TCSmsError(.failedOperation_MissingTemplateToModify)
    }
    
    /// 非企业认证无法使用签名及模板相关接口，您可以<a href="https://cloud.tencent.com/document/product/378/34075"> 变更实名认证模式</a>，变更为企业认证用户后，约1小时左右生效。
    public static var failedOperation_NotEnterpriseCertification: TCSmsError {
        TCSmsError(.failedOperation_NotEnterpriseCertification)
    }
    
    /// 其他错误，一般是由于参数携带不符合要求导致，请参考API接口说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_OtherError: TCSmsError {
        TCSmsError(.failedOperation_OtherError)
    }
    
    /// 未知错误，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_ParametersOtherError: TCSmsError {
        TCSmsError(.failedOperation_ParametersOtherError)
    }
    
    /// 手机号在免打扰名单库中，通常是用户退订或者命中运营商免打扰名单导致的，可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 解决。
    public static var failedOperation_PhoneNumberInBlacklist: TCSmsError {
        TCSmsError(.failedOperation_PhoneNumberInBlacklist)
    }
    
    /// 号码解析失败，请检查号码是否符合 E.164 标准。
    public static var failedOperation_PhoneNumberParseFail: TCSmsError {
        TCSmsError(.failedOperation_PhoneNumberParseFail)
    }
    
    /// 非主账号无法使用拉取模板列表功能。您可以使用主账号下云 API 密钥来调用接口。
    public static var failedOperation_ProhibitSubAccountUse: TCSmsError {
        TCSmsError(.failedOperation_ProhibitSubAccountUse)
    }
    
    /// 签名个数达到最大值。
    public static var failedOperation_SignNumberLimit: TCSmsError {
        TCSmsError(.failedOperation_SignNumberLimit)
    }
    
    /// 签名未审批或格式错误。（1）可登录 <a href="https://console.cloud.tencent.com/smsv2">短信控制台</a>，核查签名是否已审批并且审批通过；（2）核查是否符合格式规范，签名只能由中英文、数字组成，要求2 - 12个字，若存在疑问可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_SignatureIncorrectOrUnapproved: TCSmsError {
        TCSmsError(.failedOperation_SignatureIncorrectOrUnapproved)
    }
    
    /// 此模板已经通过审核，无法再次进行修改。
    public static var failedOperation_TemplateAlreadyPassedCheck: TCSmsError {
        TCSmsError(.failedOperation_TemplateAlreadyPassedCheck)
    }
    
    /// 模板 ID 或签名 ID 不存在。
    public static var failedOperation_TemplateIdNotExist: TCSmsError {
        TCSmsError(.failedOperation_TemplateIdNotExist)
    }
    
    /// 模板未审批或内容不匹配。（1）可登陆 <a href="https://console.cloud.tencent.com/smsv2">短信控制台</a>，核查模板是否已审批并审批通过；（2）核查是否符合 <a href="https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1014.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F">格式规范</a>，若存在疑问可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_TemplateIncorrectOrUnapproved: TCSmsError {
        TCSmsError(.failedOperation_TemplateIncorrectOrUnapproved)
    }
    
    /// 模板个数达到最大值。
    public static var failedOperation_TemplateNumberLimit: TCSmsError {
        TCSmsError(.failedOperation_TemplateNumberLimit)
    }
    
    /// 请求内容与审核通过的模板内容不匹配。请检查请求中模板参数的个数是否与申请的模板一致。若存在疑问可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_TemplateParamSetNotMatchApprovedTemplate: TCSmsError {
        TCSmsError(.failedOperation_TemplateParamSetNotMatchApprovedTemplate)
    }
    
    /// 模板未审批或不存在。可登陆 <a href="https://console.cloud.tencent.com/smsv2">短信控制台</a>，核查模板是否已审批并审批通过。若存在疑问可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var failedOperation_TemplateUnapprovedOrNotExist: TCSmsError {
        TCSmsError(.failedOperation_TemplateUnapprovedOrNotExist)
    }
    
    /// 解析用户参数失败，可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var internalError_JsonParseFail: TCSmsError {
        TCSmsError(.internalError_JsonParseFail)
    }
    
    /// 其他错误，请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 并提供失败手机号。
    public static var internalError_OtherError: TCSmsError {
        TCSmsError(.internalError_OtherError)
    }
    
    /// 解析运营商包体失败，可联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">sms helper</a> 。
    public static var internalError_ParseBackendResponseFail: TCSmsError {
        TCSmsError(.internalError_ParseBackendResponseFail)
    }
    
    /// 请求发起时间不正常，通常是由于您的服务器时间与腾讯云服务器时间差异超过10分钟导致的，请核对服务器时间及 API 接口中的时间字段是否正常。
    public static var internalError_RequestTimeException: TCSmsError {
        TCSmsError(.internalError_RequestTimeException)
    }
    
    /// 不存在该 RESTAPI 接口，请核查 REST API 接口说明。
    public static var internalError_RestApiInterfaceNotExist: TCSmsError {
        TCSmsError(.internalError_RestApiInterfaceNotExist)
    }
    
    /// 接口超时或短信收发包超时，请检查您的网络是否有波动，或联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 解决。
    public static var internalError_SendAndRecvFail: TCSmsError {
        TCSmsError(.internalError_SendAndRecvFail)
    }
    
    /// 后端包体中请求包体没有 Sig 字段或 Sig 为空。
    public static var internalError_SigFieldMissing: TCSmsError {
        TCSmsError(.internalError_SigFieldMissing)
    }
    
    /// 后端校验 Sig 失败。
    public static var internalError_SigVerificationFail: TCSmsError {
        TCSmsError(.internalError_SigVerificationFail)
    }
    
    /// 请求下发短信超时，请参考 <a href="https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E60008.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F">60008错误详解</a>。
    public static var internalError_Timeout: TCSmsError {
        TCSmsError(.internalError_Timeout)
    }
    
    /// 未知错误类型。
    public static var internalError_UnknownError: TCSmsError {
        TCSmsError(.internalError_UnknownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSmsError {
        TCSmsError(.invalidParameter)
    }
    
    /// 参数 BeginTime 校验失败。
    public static var invalidParameterValue_BeginTimeVerifyFail: TCSmsError {
        TCSmsError(.invalidParameterValue_BeginTimeVerifyFail)
    }
    
    /// 请求的短信内容太长，短信长度规则请参考 <a href="https://cloud.tencent.com/document/product/382/18058">国内短信内容长度计算规则</a>。
    public static var invalidParameterValue_ContentLengthLimit: TCSmsError {
        TCSmsError(.invalidParameterValue_ContentLengthLimit)
    }
    
    /// 参数 EndTime 校验失败。
    public static var invalidParameterValue_EndTimeVerifyFail: TCSmsError {
        TCSmsError(.invalidParameterValue_EndTimeVerifyFail)
    }
    
    /// 上传的转码图片格式错误，请参照 API 接口说明中对改字段的说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameterValue_ImageInvalid: TCSmsError {
        TCSmsError(.invalidParameterValue_ImageInvalid)
    }
    
    /// 手机号格式错误，请参考 <a href="https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1016.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F">1016错误详解</a>。
    public static var invalidParameterValue_IncorrectPhoneNumber: TCSmsError {
        TCSmsError(.invalidParameterValue_IncorrectPhoneNumber)
    }
    
    /// DocumentType 字段校验错误，请参照 API 接口说明中对改字段的说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameterValue_InvalidDocumentType: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidDocumentType)
    }
    
    /// International 字段校验错误，请参照 API 接口说明中对改字段的说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameterValue_InvalidInternational: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidInternational)
    }
    
    /// SignPurpose 字段校验错误，请参照 API 接口说明中对改字段的说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameterValue_InvalidSignPurpose: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidSignPurpose)
    }
    
    /// 无效的拉取起始/截止时间，具体原因可能是请求的 SendDateTime 大于 EndDateTime。
    public static var invalidParameterValue_InvalidStartTime: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidStartTime)
    }
    
    /// 模板格式错误，请参考<a href="https://cloud.tencent.com/document/product/382/39023">正文模板审核标准</a>。
    public static var invalidParameterValue_InvalidTemplateFormat: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidTemplateFormat)
    }
    
    /// UsedMethod 字段校验错误，请参照 API 接口说明中对改字段的说明，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameterValue_InvalidUsedMethod: TCSmsError {
        TCSmsError(.invalidParameterValue_InvalidUsedMethod)
    }
    
    /// 参数 Limit 校验失败。
    public static var invalidParameterValue_LimitVerifyFail: TCSmsError {
        TCSmsError(.invalidParameterValue_LimitVerifyFail)
    }
    
    /// 参数 Offset 校验失败。
    public static var invalidParameterValue_OffsetVerifyFail: TCSmsError {
        TCSmsError(.invalidParameterValue_OffsetVerifyFail)
    }
    
    /// 禁止在模板变量中使用 URL。
    public static var invalidParameterValue_ProhibitedUseUrlInTemplateParameter: TCSmsError {
        TCSmsError(.invalidParameterValue_ProhibitedUseUrlInTemplateParameter)
    }
    
    /// SdkAppId 不存在。
    public static var invalidParameterValue_SdkAppIdNotExist: TCSmsError {
        TCSmsError(.invalidParameterValue_SdkAppIdNotExist)
    }
    
    /// 此签名已经通过审核，无法再次进行修改。
    public static var invalidParameterValue_SignAlreadyPassedCheck: TCSmsError {
        TCSmsError(.invalidParameterValue_SignAlreadyPassedCheck)
    }
    
    /// 已存在相同的待审核签名。
    public static var invalidParameterValue_SignExistAndUnapproved: TCSmsError {
        TCSmsError(.invalidParameterValue_SignExistAndUnapproved)
    }
    
    /// 验证码模板参数格式错误，验证码类模板，模板变量只能传入0 - 6位（包括6位）纯数字。
    public static var invalidParameterValue_TemplateParameterFormatError: TCSmsError {
        TCSmsError(.invalidParameterValue_TemplateParameterFormatError)
    }
    
    /// 单个模板变量字符数超过12个，企业认证用户不限制单个变量值字数，您可以 <a href="https://cloud.tencent.com/document/product/378/34075">变更实名认证模式</a>，变更为企业认证用户后，该限制变更约1小时左右生效。
    public static var invalidParameterValue_TemplateParameterLengthLimit: TCSmsError {
        TCSmsError(.invalidParameterValue_TemplateParameterLengthLimit)
    }
    
    /// 模板内容存在敏感词，请参考<a href="https://cloud.tencent.com/document/product/382/39023">正文模板审核标准</a>。
    public static var invalidParameterValue_TemplateWithDirtyWords: TCSmsError {
        TCSmsError(.invalidParameterValue_TemplateWithDirtyWords)
    }
    
    /// 账号与应用id不匹配。
    public static var invalidParameter_AppidAndBizId: TCSmsError {
        TCSmsError(.invalidParameter_AppidAndBizId)
    }
    
    /// 存在敏感词。
    public static var invalidParameter_DirtyWordFound: TCSmsError {
        TCSmsError(.invalidParameter_DirtyWordFound)
    }
    
    /// International 或者 SmsType 参数有误，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var invalidParameter_InvalidParameters: TCSmsError {
        TCSmsError(.invalidParameter_InvalidParameters)
    }
    
    /// 业务短信国家/地区日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整国际港澳台短信发送限制。
    public static var limitExceeded_AppCountryOrRegionDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_AppCountryOrRegionDailyLimit)
    }
    
    /// 业务短信国家/地区不在国际港澳台短信发送限制设置的列表中而禁发，可自行到控制台应用管理&gt;基础配置下调整国际港澳台短信发送限制。
    public static var limitExceeded_AppCountryOrRegionInBlacklist: TCSmsError {
        TCSmsError(.limitExceeded_AppCountryOrRegionInBlacklist)
    }
    
    /// 业务短信日下发条数超过设定的上限 ，可自行到控制台调整短信频率限制策略。
    public static var limitExceeded_AppDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_AppDailyLimit)
    }
    
    /// 业务短信国际/港澳台日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整发送总量阈值。
    public static var limitExceeded_AppGlobalDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_AppGlobalDailyLimit)
    }
    
    /// 业务短信中国大陆日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整发送总量阈值。
    public static var limitExceeded_AppMainlandChinaDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_AppMainlandChinaDailyLimit)
    }
    
    /// 短信日下发条数超过设定的上限 (国际/港澳台)，如需调整限制，可联系 <a href="https://cloud.tencent.com/document/product/382/3773">腾讯云短信小助手</a>。
    public static var limitExceeded_DailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_DailyLimit)
    }
    
    /// 下发短信命中了频率限制策略，可自行到控制台调整短信频率限制策略，如有其他需求请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var limitExceeded_DeliveryFrequencyLimit: TCSmsError {
        TCSmsError(.limitExceeded_DeliveryFrequencyLimit)
    }
    
    /// 调用接口单次提交的手机号个数超过200个，请遵守 API 接口输入参数 PhoneNumberSet 描述。
    public static var limitExceeded_PhoneNumberCountLimit: TCSmsError {
        TCSmsError(.limitExceeded_PhoneNumberCountLimit)
    }
    
    /// 单个手机号日下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
    public static var limitExceeded_PhoneNumberDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_PhoneNumberDailyLimit)
    }
    
    /// 单个手机号1小时内下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
    public static var limitExceeded_PhoneNumberOneHourLimit: TCSmsError {
        TCSmsError(.limitExceeded_PhoneNumberOneHourLimit)
    }
    
    /// 单个手机号下发相同内容超过设定的上限，可自行到控制台调整短信频率限制策略。
    public static var limitExceeded_PhoneNumberSameContentDailyLimit: TCSmsError {
        TCSmsError(.limitExceeded_PhoneNumberSameContentDailyLimit)
    }
    
    /// 单个手机号30秒内下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
    public static var limitExceeded_PhoneNumberThirtySecondLimit: TCSmsError {
        TCSmsError(.limitExceeded_PhoneNumberThirtySecondLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCSmsError {
        TCSmsError(.missingParameter)
    }
    
    /// 传入的号码列表为空，请确认您的参数中是否传入号码。
    public static var missingParameter_EmptyPhoneNumberSet: TCSmsError {
        TCSmsError(.missingParameter_EmptyPhoneNumberSet)
    }
    
    /// 个人用户没有发营销短信的权限，请参考 <a href="https://cloud.tencent.com/document/product/382/13444">权益区别</a>。
    public static var unauthorizedOperation_IndividualUserMarketingSmsPermissionDeny: TCSmsError {
        TCSmsError(.unauthorizedOperation_IndividualUserMarketingSmsPermissionDeny)
    }
    
    /// 请求 IP 不在白名单中，您配置了校验请求来源 IP，但是检测到当前请求 IP 不在配置列表中，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var unauthorizedOperation_RequestIpNotInWhitelist: TCSmsError {
        TCSmsError(.unauthorizedOperation_RequestIpNotInWhitelist)
    }
    
    /// 请求没有权限，请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var unauthorizedOperation_RequestPermissionDeny: TCSmsError {
        TCSmsError(.unauthorizedOperation_RequestPermissionDeny)
    }
    
    /// 此 SdkAppId 禁止提供服务，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
    public static var unauthorizedOperation_SdkAppIdIsDisabled: TCSmsError {
        TCSmsError(.unauthorizedOperation_SdkAppIdIsDisabled)
    }
    
    /// 欠费被停止服务，可自行登录腾讯云充值来缴清欠款。
    public static var unauthorizedOperation_SerivceSuspendDueToArrears: TCSmsError {
        TCSmsError(.unauthorizedOperation_SerivceSuspendDueToArrears)
    }
    
    /// SmsSdkAppId 校验失败，请检查 <a href="https://console.cloud.tencent.com/smsv2/app-manage">SmsSdkAppId</a> 是否属于 <a href="https://console.cloud.tencent.com/cam/capi">云API密钥</a> 的关联账户。
    public static var unauthorizedOperation_SmsSdkAppIdVerifyFail: TCSmsError {
        TCSmsError(.unauthorizedOperation_SmsSdkAppIdVerifyFail)
    }
    
    /// 不支持该请求。
    public static var unsupportedOperation_: TCSmsError {
        TCSmsError(.unsupportedOperation_)
    }
    
    /// 国内短信模板不支持发送国际/港澳台手机号。发送国际/港澳台手机号请使用国际/港澳台短信正文模板。
    public static var unsupportedOperation_ChineseMainlandTemplateToGlobalPhone: TCSmsError {
        TCSmsError(.unsupportedOperation_ChineseMainlandTemplateToGlobalPhone)
    }
    
    /// 群发请求里既有国内手机号也有国际手机号。请排查是否存在（1）使用国内签名或模板却发送短信到国际手机号；（2）使用国际签名或模板却发送短信到国内手机号。
    public static var unsupportedOperation_ContainDomesticAndInternationalPhoneNumber: TCSmsError {
        TCSmsError(.unsupportedOperation_ContainDomesticAndInternationalPhoneNumber)
    }
    
    /// 国际/港澳台短信模板不支持发送国内手机号。发送国内手机号请使用国内短信正文模板。
    public static var unsupportedOperation_GlobalTemplateToChineseMainlandPhone: TCSmsError {
        TCSmsError(.unsupportedOperation_GlobalTemplateToChineseMainlandPhone)
    }
    
    /// 不支持该地区短信下发。
    public static var unsupportedOperation_UnsuportedRegion: TCSmsError {
        TCSmsError(.unsupportedOperation_UnsuportedRegion)
    }
}

extension TCSmsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCSmsError: Equatable {
    public static func == (lhs: TCSmsError, rhs: TCSmsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSmsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}