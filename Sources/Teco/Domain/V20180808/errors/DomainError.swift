public struct TCDomainError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_CheckDomainFailed = "FailedOperation.CheckDomainFailed"
        case failedOperation_CreateTemplateFailed = "FailedOperation.CreateTemplateFailed"
        case failedOperation_DeleteTemplateFailed = "FailedOperation.DeleteTemplateFailed"
        case failedOperation_DescribeDomainFailed = "FailedOperation.DescribeDomainFailed"
        case failedOperation_DescribeDomainListFailed = "FailedOperation.DescribeDomainListFailed"
        case failedOperation_DescribeTemplateFailed = "FailedOperation.DescribeTemplateFailed"
        case failedOperation_DomainPriceListFailed = "FailedOperation.DomainPriceListFailed"
        case failedOperation_DuplicatePhoneEmail = "FailedOperation.DuplicatePhoneEmail"
        case failedOperation_ModifyDomainOwnerFailed = "FailedOperation.ModifyDomainOwnerFailed"
        case failedOperation_RegisterDomain = "FailedOperation.RegisterDomain"
        case failedOperation_RegisterDomainFailed = "FailedOperation.RegisterDomainFailed"
        case failedOperation_SendTcbPhoneEmailCodeFailed = "FailedOperation.SendTcbPhoneEmailCodeFailed"
        case failedOperation_SendVerifyCodeIsLimited = "FailedOperation.SendVerifyCodeIsLimited"
        case failedOperation_SetDomainDnsFailed = "FailedOperation.SetDomainDnsFailed"
        case failedOperation_TemplateMaxNumFailed = "FailedOperation.TemplateMaxNumFailed"
        case failedOperation_UploadImageFailed = "FailedOperation.UploadImageFailed"
        case failedOperation_VerifyUinIsRealname = "FailedOperation.VerifyUinIsRealname"
        case internalError = "InternalError"
        case internalError_DomainInternalError = "InternalError.DomainInternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_CertificateCodeIsInvalid = "InvalidParameter.CertificateCodeIsInvalid"
        case invalidParameter_CertificateImageIsInvalid = "InvalidParameter.CertificateImageIsInvalid"
        case invalidParameter_CodeTypeIsInvalid = "InvalidParameter.CodeTypeIsInvalid"
        case invalidParameter_CustomDnsNotAllowed = "InvalidParameter.CustomDnsNotAllowed"
        case invalidParameter_DomainNameIsInvalid = "InvalidParameter.DomainNameIsInvalid"
        case invalidParameter_DuplicateDomainExists = "InvalidParameter.DuplicateDomainExists"
        case invalidParameter_EmailIsInvalid = "InvalidParameter.EmailIsInvalid"
        case invalidParameter_EmailIsUnverified = "InvalidParameter.EmailIsUnverified"
        case invalidParameter_ImageExtInvalid = "InvalidParameter.ImageExtInvalid"
        case invalidParameter_ImageFileIsInvalid = "InvalidParameter.ImageFileIsInvalid"
        case invalidParameter_ImageFormatIsInvalid = "InvalidParameter.ImageFormatIsInvalid"
        case invalidParameter_ImageSizeBelow = "InvalidParameter.ImageSizeBelow"
        case invalidParameter_ImageSizeExceed = "InvalidParameter.ImageSizeExceed"
        case invalidParameter_ImageSizeLimit = "InvalidParameter.ImageSizeLimit"
        case invalidParameter_NameIsInvalid = "InvalidParameter.NameIsInvalid"
        case invalidParameter_NameIsKeyword = "InvalidParameter.NameIsKeyword"
        case invalidParameter_OrgIsInvalid = "InvalidParameter.OrgIsInvalid"
        case invalidParameter_OrgIsKeyword = "InvalidParameter.OrgIsKeyword"
        case invalidParameter_PackageResourceIdInvalid = "InvalidParameter.PackageResourceIdInvalid"
        case invalidParameter_RepTypeIsInvalid = "InvalidParameter.RepTypeIsInvalid"
        case invalidParameter_StreetIsInvalid = "InvalidParameter.StreetIsInvalid"
        case invalidParameter_TelephoneIsInvalid = "InvalidParameter.TelephoneIsInvalid"
        case invalidParameter_TelephoneIsUnverified = "InvalidParameter.TelephoneIsUnverified"
        case invalidParameter_UpTo4000 = "InvalidParameter.UpTo4000"
        case invalidParameter_UserTypeIsInvalid = "InvalidParameter.UserTypeIsInvalid"
        case invalidParameter_VerifyCodeIsInvalid = "InvalidParameter.VerifyCodeIsInvalid"
        case invalidParameter_ZipCodeIsInvalid = "InvalidParameter.ZipCodeIsInvalid"
        case limitExceeded_RequestLimit = "LimitExceeded.RequestLimit"
        case missingParameter = "MissingParameter"
        case missingParameter_DomainIsEmpty = "MissingParameter.DomainIsEmpty"
        case missingParameter_RepDataIsNone = "MissingParameter.RepDataIsNone"
        case missingParameter_TemplateIdIsEmpty = "MissingParameter.TemplateIdIsEmpty"
        case missingParameter_TemplateIdIsExist = "MissingParameter.TemplateIdIsExist"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient_Overwork = "ResourceInsufficient.Overwork"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_ApprovedTemplateNotFound = "ResourceNotFound.ApprovedTemplateNotFound"
        case resourceNotFound_DomainNotFound = "ResourceNotFound.DomainNotFound"
        case resourceNotFound_TemplateNotFound = "ResourceNotFound.TemplateNotFound"
        case resourceUnavailable_DomainIsModifyingDNS = "ResourceUnavailable.DomainIsModifyingDNS"
        case unsupportedOperation_AccountRealName = "UnsupportedOperation.AccountRealName"
        case unsupportedOperation_DomainNotVerified = "UnsupportedOperation.DomainNotVerified"
        case unsupportedOperation_ModifyDomainInfoUnsupported = "UnsupportedOperation.ModifyDomainInfoUnsupported"
        case unsupportedOperation_ModifyDomainUnsupported = "UnsupportedOperation.ModifyDomainUnsupported"
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
    
    /// 操作失败。
    public static var failedOperation: TCDomainError {
        TCDomainError(.failedOperation)
    }
    
    /// 域名查询失败，请稍后重试。
    public static var failedOperation_CheckDomainFailed: TCDomainError {
        TCDomainError(.failedOperation_CheckDomainFailed)
    }
    
    /// 创建模板操作失败。
    public static var failedOperation_CreateTemplateFailed: TCDomainError {
        TCDomainError(.failedOperation_CreateTemplateFailed)
    }
    
    /// 删除模版操作失败，请稍后重试。
    public static var failedOperation_DeleteTemplateFailed: TCDomainError {
        TCDomainError(.failedOperation_DeleteTemplateFailed)
    }
    
    /// 获取域名信息操作失败，请稍后重试。
    public static var failedOperation_DescribeDomainFailed: TCDomainError {
        TCDomainError(.failedOperation_DescribeDomainFailed)
    }
    
    /// 获取域名信息操作失败，请稍后重试。
    public static var failedOperation_DescribeDomainListFailed: TCDomainError {
        TCDomainError(.failedOperation_DescribeDomainListFailed)
    }
    
    /// 查询模板操作失败。
    public static var failedOperation_DescribeTemplateFailed: TCDomainError {
        TCDomainError(.failedOperation_DescribeTemplateFailed)
    }
    
    /// 获取域名价格列表失败。
    public static var failedOperation_DomainPriceListFailed: TCDomainError {
        TCDomainError(.failedOperation_DomainPriceListFailed)
    }
    
    /// 当前账号下已有相同的手机/邮箱，无需重复添加。
    public static var failedOperation_DuplicatePhoneEmail: TCDomainError {
        TCDomainError(.failedOperation_DuplicatePhoneEmail)
    }
    
    /// 域名过户失败。
    public static var failedOperation_ModifyDomainOwnerFailed: TCDomainError {
        TCDomainError(.failedOperation_ModifyDomainOwnerFailed)
    }
    
    /// 域名注册操作失败，请稍后重试。
    public static var failedOperation_RegisterDomain: TCDomainError {
        TCDomainError(.failedOperation_RegisterDomain)
    }
    
    /// 域名注册操作失败，请稍后重试。
    public static var failedOperation_RegisterDomainFailed: TCDomainError {
        TCDomainError(.failedOperation_RegisterDomainFailed)
    }
    
    /// 当前账号为云开发（TCB）账号，无法使用验证功能，请切换登录小程序公众号后重新操作。
    public static var failedOperation_SendTcbPhoneEmailCodeFailed: TCDomainError {
        TCDomainError(.failedOperation_SendTcbPhoneEmailCodeFailed)
    }
    
    /// 发送验证码过于频繁，请稍后重试。
    public static var failedOperation_SendVerifyCodeIsLimited: TCDomainError {
        TCDomainError(.failedOperation_SendVerifyCodeIsLimited)
    }
    
    /// 修改 DNS 失败，请输入正确的 DNS 服务器地址。
    public static var failedOperation_SetDomainDnsFailed: TCDomainError {
        TCDomainError(.failedOperation_SetDomainDnsFailed)
    }
    
    /// 信息模板超过可用数量上限，建议删除已有模板后重试。
    public static var failedOperation_TemplateMaxNumFailed: TCDomainError {
        TCDomainError(.failedOperation_TemplateMaxNumFailed)
    }
    
    /// 上传图片操作失败。
    public static var failedOperation_UploadImageFailed: TCDomainError {
        TCDomainError(.failedOperation_UploadImageFailed)
    }
    
    /// 当前用户未在官网进行实名操作。
    public static var failedOperation_VerifyUinIsRealname: TCDomainError {
        TCDomainError(.failedOperation_VerifyUinIsRealname)
    }
    
    /// 内部错误。
    public static var internalError: TCDomainError {
        TCDomainError(.internalError)
    }
    
    /// 网络错误，请稍后重试。
    public static var internalError_DomainInternalError: TCDomainError {
        TCDomainError(.internalError_DomainInternalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDomainError {
        TCDomainError(.invalidParameter)
    }
    
    /// 资质信息输入不正确。
    public static var invalidParameter_CertificateCodeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_CertificateCodeIsInvalid)
    }
    
    /// 资质照片输入不正确。
    public static var invalidParameter_CertificateImageIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_CertificateImageIsInvalid)
    }
    
    /// 类型只能为手机或者邮箱。
    public static var invalidParameter_CodeTypeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_CodeTypeIsInvalid)
    }
    
    /// 无权限自定义DNS。
    public static var invalidParameter_CustomDnsNotAllowed: TCDomainError {
        TCDomainError(.invalidParameter_CustomDnsNotAllowed)
    }
    
    /// 域名输入为空或者不合法。
    public static var invalidParameter_DomainNameIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_DomainNameIsInvalid)
    }
    
    /// 存在重复域名，请检查后重新提交。
    public static var invalidParameter_DuplicateDomainExists: TCDomainError {
        TCDomainError(.invalidParameter_DuplicateDomainExists)
    }
    
    /// 邮箱为空或者不合法。
    public static var invalidParameter_EmailIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_EmailIsInvalid)
    }
    
    /// 仅支持已验证的电子邮箱，请先在控制台创建后使用
    public static var invalidParameter_EmailIsUnverified: TCDomainError {
        TCDomainError(.invalidParameter_EmailIsUnverified)
    }
    
    /// 不支持该格式文件，请上传 JPG、JPEG 格式图片（可使用第三方图片格式转换工具）。
    public static var invalidParameter_ImageExtInvalid: TCDomainError {
        TCDomainError(.invalidParameter_ImageExtInvalid)
    }
    
    /// 上传的照片参数为空或者不合法。
    public static var invalidParameter_ImageFileIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_ImageFileIsInvalid)
    }
    
    /// 非标准的 JPG、JPEG 格式图片，请使用工具转换格式后重新上传（可使用第三方图片格式转换工具）。
    public static var invalidParameter_ImageFormatIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_ImageFormatIsInvalid)
    }
    
    /// 图片大小低于最小限制(55KB)，请重新上传。
    public static var invalidParameter_ImageSizeBelow: TCDomainError {
        TCDomainError(.invalidParameter_ImageSizeBelow)
    }
    
    /// 图片过大，请减小后重试。
    public static var invalidParameter_ImageSizeExceed: TCDomainError {
        TCDomainError(.invalidParameter_ImageSizeExceed)
    }
    
    /// 图片大小超过限制(1M)，请重新上传。
    public static var invalidParameter_ImageSizeLimit: TCDomainError {
        TCDomainError(.invalidParameter_ImageSizeLimit)
    }
    
    /// 联系人为空或者不合法。
    public static var invalidParameter_NameIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_NameIsInvalid)
    }
    
    /// 联系人填写有误，或因其他原因无法使用，请更换其他联系人。
    public static var invalidParameter_NameIsKeyword: TCDomainError {
        TCDomainError(.invalidParameter_NameIsKeyword)
    }
    
    /// 注册人为空或者不合法。
    public static var invalidParameter_OrgIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_OrgIsInvalid)
    }
    
    /// 域名所有者填写有误，或因其他原因无法使用，请更换其他域名所有者。
    public static var invalidParameter_OrgIsKeyword: TCDomainError {
        TCDomainError(.invalidParameter_OrgIsKeyword)
    }
    
    /// 特惠包ID无效。
    public static var invalidParameter_PackageResourceIdInvalid: TCDomainError {
        TCDomainError(.invalidParameter_PackageResourceIdInvalid)
    }
    
    /// 请求类型错误。
    public static var invalidParameter_RepTypeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_RepTypeIsInvalid)
    }
    
    /// 地址有误，请传入正确的地址。
    public static var invalidParameter_StreetIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_StreetIsInvalid)
    }
    
    /// 电话为空或者不合法。
    public static var invalidParameter_TelephoneIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_TelephoneIsInvalid)
    }
    
    /// 仅支持已验证的手机号码，请先在控制台创建后使用。
    public static var invalidParameter_TelephoneIsUnverified: TCDomainError {
        TCDomainError(.invalidParameter_TelephoneIsUnverified)
    }
    
    /// 域名数量不能超过4000个。
    public static var invalidParameter_UpTo4000: TCDomainError {
        TCDomainError(.invalidParameter_UpTo4000)
    }
    
    /// 用户类型为空或者不合法。
    public static var invalidParameter_UserTypeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_UserTypeIsInvalid)
    }
    
    /// 验证码错误，请重新输入。
    public static var invalidParameter_VerifyCodeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_VerifyCodeIsInvalid)
    }
    
    /// 邮编为空或者不合法。
    public static var invalidParameter_ZipCodeIsInvalid: TCDomainError {
        TCDomainError(.invalidParameter_ZipCodeIsInvalid)
    }
    
    /// 请求频率超过限制。
    public static var limitExceeded_RequestLimit: TCDomainError {
        TCDomainError(.limitExceeded_RequestLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDomainError {
        TCDomainError(.missingParameter)
    }
    
    /// 域名不能为空。
    public static var missingParameter_DomainIsEmpty: TCDomainError {
        TCDomainError(.missingParameter_DomainIsEmpty)
    }
    
    /// 请求数据不能为空。
    public static var missingParameter_RepDataIsNone: TCDomainError {
        TCDomainError(.missingParameter_RepDataIsNone)
    }
    
    /// 模板ID为空或者不合法。
    public static var missingParameter_TemplateIdIsEmpty: TCDomainError {
        TCDomainError(.missingParameter_TemplateIdIsEmpty)
    }
    
    /// 模板已存在。
    public static var missingParameter_TemplateIdIsExist: TCDomainError {
        TCDomainError(.missingParameter_TemplateIdIsExist)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCDomainError {
        TCDomainError(.requestLimitExceeded)
    }
    
    /// 当前正在执行中的任务过多，请稍后再提交新的任务。
    public static var resourceInsufficient_Overwork: TCDomainError {
        TCDomainError(.resourceInsufficient_Overwork)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDomainError {
        TCDomainError(.resourceNotFound)
    }
    
    /// 模板未实名。
    public static var resourceNotFound_ApprovedTemplateNotFound: TCDomainError {
        TCDomainError(.resourceNotFound_ApprovedTemplateNotFound)
    }
    
    /// 域名地址有误，请输入正确的域名地址。
    public static var resourceNotFound_DomainNotFound: TCDomainError {
        TCDomainError(.resourceNotFound_DomainNotFound)
    }
    
    /// 模板信息有误，请输入正确的信息。
    public static var resourceNotFound_TemplateNotFound: TCDomainError {
        TCDomainError(.resourceNotFound_TemplateNotFound)
    }
    
    /// 该域名已有同类型操作未完成，无法执行该操作。
    public static var resourceUnavailable_DomainIsModifyingDNS: TCDomainError {
        TCDomainError(.resourceUnavailable_DomainIsModifyingDNS)
    }
    
    /// 账户实名认证未通过。
    public static var unsupportedOperation_AccountRealName: TCDomainError {
        TCDomainError(.unsupportedOperation_AccountRealName)
    }
    
    /// 当前域名未完成实名认证，无法完成该操作。
    public static var unsupportedOperation_DomainNotVerified: TCDomainError {
        TCDomainError(.unsupportedOperation_DomainNotVerified)
    }
    
    /// 当前域名状态不支持修改。
    public static var unsupportedOperation_ModifyDomainInfoUnsupported: TCDomainError {
        TCDomainError(.unsupportedOperation_ModifyDomainInfoUnsupported)
    }
    
    /// 当前域名状态不支持修改。
    public static var unsupportedOperation_ModifyDomainUnsupported: TCDomainError {
        TCDomainError(.unsupportedOperation_ModifyDomainUnsupported)
    }
}

extension TCDomainError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCDomainError: Equatable {
    public static func == (lhs: TCDomainError, rhs: TCDomainError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDomainError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}