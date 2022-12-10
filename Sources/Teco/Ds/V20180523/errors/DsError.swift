public struct TCDsError: TCErrorType {
    enum Code: String {
        case failedOperation_AccountNotOwnContractError = "FailedOperation.AccountNotOwnContractError"
        case failedOperation_AuthorizationTimeError = "FailedOperation.AuthorizationTimeError"
        case failedOperation_BackendInterfaceError = "FailedOperation.BackendInterfaceError"
        case failedOperation_BackendInterfaceResponseContentError = "FailedOperation.BackendInterfaceResponseContentError"
        case failedOperation_BackendInterfaceResponseHeaderError = "FailedOperation.BackendInterfaceResponseHeaderError"
        case failedOperation_CertTypeError = "FailedOperation.CertTypeError"
        case failedOperation_CheckVcodeError = "FailedOperation.CheckVcodeError"
        case failedOperation_ContractExpired = "FailedOperation.ContractExpired"
        case failedOperation_ContractSignedError = "FailedOperation.ContractSignedError"
        case failedOperation_CoordinateError = "FailedOperation.CoordinateError"
        case failedOperation_CoordinateOutsidePDF = "FailedOperation.CoordinateOutsidePDF"
        case failedOperation_CostAccountError = "FailedOperation.CostAccountError"
        case failedOperation_CreateContractError = "FailedOperation.CreateContractError"
        case failedOperation_CreateEnterpriseAccountError = "FailedOperation.CreateEnterpriseAccountError"
        case failedOperation_CreatePersonalAccountError = "FailedOperation.CreatePersonalAccountError"
        case failedOperation_CreateSealError = "FailedOperation.CreateSealError"
        case failedOperation_DeleteAccountError = "FailedOperation.DeleteAccountError"
        case failedOperation_DeleteSealError = "FailedOperation.DeleteSealError"
        case failedOperation_DescribeSubplatError = "FailedOperation.DescribeSubplatError"
        case failedOperation_DescribeTaskStatusError = "FailedOperation.DescribeTaskStatusError"
        case failedOperation_DownloadSealError = "FailedOperation.DownloadSealError"
        case failedOperation_EnterpriseNameFormatError = "FailedOperation.EnterpriseNameFormatError"
        case failedOperation_FirstEnterpriseAccountDeleteError = "FailedOperation.FirstEnterpriseAccountDeleteError"
        case failedOperation_FormatError = "FailedOperation.FormatError"
        case failedOperation_GetPDFSizeFailed = "FailedOperation.GetPDFSizeFailed"
        case failedOperation_IPFormatError = "FailedOperation.IPFormatError"
        case failedOperation_IdentNoFormatError = "FailedOperation.IdentNoFormatError"
        case failedOperation_IdentTypeError = "FailedOperation.IdentTypeError"
        case failedOperation_ImageMeasurementOverLimitError = "FailedOperation.ImageMeasurementOverLimitError"
        case failedOperation_ImageNotBase = "FailedOperation.ImageNotBase"
        case failedOperation_ImageNotPNG = "FailedOperation.ImageNotPNG"
        case failedOperation_MessageDataIllegal = "FailedOperation.MessageDataIllegal"
        case failedOperation_MessageDataOverSize = "FailedOperation.MessageDataOverSize"
        case failedOperation_NameContainsNumber = "FailedOperation.NameContainsNumber"
        case failedOperation_NameIsPureNumber = "FailedOperation.NameIsPureNumber"
        case failedOperation_NoPermissionToSign = "FailedOperation.NoPermissionToSign"
        case failedOperation_NoVerifyError = "FailedOperation.NoVerifyError"
        case failedOperation_OffsetCoordOverLimitError = "FailedOperation.OffsetCoordOverLimitError"
        case failedOperation_Other = "FailedOperation.Other"
        case failedOperation_RepeatedCoordinate = "FailedOperation.RepeatedCoordinate"
        case failedOperation_SMSCodeExpired = "FailedOperation.SMSCodeExpired"
        case failedOperation_SMSCodeLengthWrong = "FailedOperation.SMSCodeLengthWrong"
        case failedOperation_SealMismatched = "FailedOperation.SealMismatched"
        case failedOperation_SealNumOverLimit = "FailedOperation.SealNumOverLimit"
        case failedOperation_SealsExceed = "FailedOperation.SealsExceed"
        case failedOperation_SendVcodeError = "FailedOperation.SendVcodeError"
        case failedOperation_SignContractByCoordinateError = "FailedOperation.SignContractByCoordinateError"
        case failedOperation_SignContractByKeywordError = "FailedOperation.SignContractByKeywordError"
        case failedOperation_SignFieldNotFound = "FailedOperation.SignFieldNotFound"
        case failedOperation_SignPageError = "FailedOperation.SignPageError"
        case failedOperation_SignPermissionExisted = "FailedOperation.SignPermissionExisted"
        case failedOperation_TransactorNameFormatError = "FailedOperation.TransactorNameFormatError"
        case failedOperation_TransactorPhoneFormatError = "FailedOperation.TransactorPhoneFormatError"
        case failedOperation_UpdateFeeStatusError = "FailedOperation.UpdateFeeStatusError"
        case failedOperation_VcodeChecked = "FailedOperation.VcodeChecked"
        case failedOperation_WrongCertType = "FailedOperation.WrongCertType"
        case failedOperation_WrongIdentNoFormat = "FailedOperation.WrongIdentNoFormat"
        case failedOperation_WrongIdentNoSize = "FailedOperation.WrongIdentNoSize"
        case failedOperation_WrongSMSCode = "FailedOperation.WrongSMSCode"
        case internalError_UnknownError = "InternalError.UnknownError"
        case missingParameter_ContractFileNameError = "MissingParameter.ContractFileNameError"
        case missingParameter_ContractFilePathError = "MissingParameter.ContractFilePathError"
        case missingParameter_ImageMeasurementNullError = "MissingParameter.ImageMeasurementNullError"
        case missingParameter_KeywordNullError = "MissingParameter.KeywordNullError"
        case missingParameter_LocationNullError = "MissingParameter.LocationNullError"
        case missingParameter_MOError = "MissingParameter.MOError"
        case missingParameter_OffsetCoordNullError = "MissingParameter.OffsetCoordNullError"
        case missingParameter_SignerNullError = "MissingParameter.SignerNullError"
        case resourceInUse_AccountExist = "ResourceInUse.AccountExist"
        case resourceInUse_EnterpriseAccountAlreadyExist = "ResourceInUse.EnterpriseAccountAlreadyExist"
        case resourceInUse_PersonAccountAlreadyExist = "ResourceInUse.PersonAccountAlreadyExist"
        case resourceNotFound_AccountNotFound = "ResourceNotFound.AccountNotFound"
        case resourceNotFound_ContractNotFound = "ResourceNotFound.ContractNotFound"
        case resourceNotFound_ContractProjectCodeNotFound = "ResourceNotFound.ContractProjectCodeNotFound"
        case resourceNotFound_InitiatorNotFoundError = "ResourceNotFound.InitiatorNotFoundError"
        case resourceNotFound_SealNotFound = "ResourceNotFound.SealNotFound"
        case resourceNotFound_SubplatIdNotFound = "ResourceNotFound.SubplatIdNotFound"
        case resourceNotFound_TaskNotFound = "ResourceNotFound.TaskNotFound"
        case resourceUnavailable_AccountUnavailable = "ResourceUnavailable.AccountUnavailable"
        case resourceUnavailable_ContractSignerUnavailable = "ResourceUnavailable.ContractSignerUnavailable"
        case resourceUnavailable_DownloadSealError = "ResourceUnavailable.DownloadSealError"
        case resourceUnavailable_SubplatUnavailable = "ResourceUnavailable.SubplatUnavailable"
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
    
    /// 该账号不具有该合同。
    public static var failedOperation_AccountNotOwnContractError: TCDsError {
        TCDsError(.failedOperation_AccountNotOwnContractError)
    }
    
    /// 授权时间格式错误。
    public static var failedOperation_AuthorizationTimeError: TCDsError {
        TCDsError(.failedOperation_AuthorizationTimeError)
    }
    
    /// 后端接口调用失败。
    public static var failedOperation_BackendInterfaceError: TCDsError {
        TCDsError(.failedOperation_BackendInterfaceError)
    }
    
    /// 后端接口返回内容异常，请检查请求参数。
    public static var failedOperation_BackendInterfaceResponseContentError: TCDsError {
        TCDsError(.failedOperation_BackendInterfaceResponseContentError)
    }
    
    /// 后端接口返回头异常，请检查请求参数。
    public static var failedOperation_BackendInterfaceResponseHeaderError: TCDsError {
        TCDsError(.failedOperation_BackendInterfaceResponseHeaderError)
    }
    
    /// 证书类型错误。
    public static var failedOperation_CertTypeError: TCDsError {
        TCDsError(.failedOperation_CertTypeError)
    }
    
    /// 验证签署验证码失败。
    public static var failedOperation_CheckVcodeError: TCDsError {
        TCDsError(.failedOperation_CheckVcodeError)
    }
    
    /// 合同已过期。
    public static var failedOperation_ContractExpired: TCDsError {
        TCDsError(.failedOperation_ContractExpired)
    }
    
    /// 该合同已被签署过。
    public static var failedOperation_ContractSignedError: TCDsError {
        TCDsError(.failedOperation_ContractSignedError)
    }
    
    /// 坐标值错误，必须保证坐标值为数字。
    public static var failedOperation_CoordinateError: TCDsError {
        TCDsError(.failedOperation_CoordinateError)
    }
    
    /// 坐标值超出PDF尺寸范围。
    public static var failedOperation_CoordinateOutsidePDF: TCDsError {
        TCDsError(.failedOperation_CoordinateOutsidePDF)
    }
    
    /// 计费账户问题。
    public static var failedOperation_CostAccountError: TCDsError {
        TCDsError(.failedOperation_CostAccountError)
    }
    
    /// 合同创建失败。
    public static var failedOperation_CreateContractError: TCDsError {
        TCDsError(.failedOperation_CreateContractError)
    }
    
    /// 创建企业账户失败，请检查请求参数。
    public static var failedOperation_CreateEnterpriseAccountError: TCDsError {
        TCDsError(.failedOperation_CreateEnterpriseAccountError)
    }
    
    /// 创建个人账户失败。
    public static var failedOperation_CreatePersonalAccountError: TCDsError {
        TCDsError(.failedOperation_CreatePersonalAccountError)
    }
    
    /// 新增印章失败。
    public static var failedOperation_CreateSealError: TCDsError {
        TCDsError(.failedOperation_CreateSealError)
    }
    
    /// 删除账户失败。
    public static var failedOperation_DeleteAccountError: TCDsError {
        TCDsError(.failedOperation_DeleteAccountError)
    }
    
    /// 删除印章失败。
    public static var failedOperation_DeleteSealError: TCDsError {
        TCDsError(.failedOperation_DeleteSealError)
    }
    
    /// 获取子平台信息失败。
    public static var failedOperation_DescribeSubplatError: TCDsError {
        TCDsError(.failedOperation_DescribeSubplatError)
    }
    
    /// 查询任务结果失败。
    public static var failedOperation_DescribeTaskStatusError: TCDsError {
        TCDsError(.failedOperation_DescribeTaskStatusError)
    }
    
    /// 下载签章文件失败，请确保路径正确。
    public static var failedOperation_DownloadSealError: TCDsError {
        TCDsError(.failedOperation_DownloadSealError)
    }
    
    /// 企业名称格式错误，不能包含数字。
    public static var failedOperation_EnterpriseNameFormatError: TCDsError {
        TCDsError(.failedOperation_EnterpriseNameFormatError)
    }
    
    /// 不能删除第一个有效的企业账户。
    public static var failedOperation_FirstEnterpriseAccountDeleteError: TCDsError {
        TCDsError(.failedOperation_FirstEnterpriseAccountDeleteError)
    }
    
    /// 签署关键字信息中存在格式错误(偏移坐标，签章图片宽/高度都必须为数字)。
    public static var failedOperation_FormatError: TCDsError {
        TCDsError(.failedOperation_FormatError)
    }
    
    /// 获得PDF页面尺寸失败。
    public static var failedOperation_GetPDFSizeFailed: TCDsError {
        TCDsError(.failedOperation_GetPDFSizeFailed)
    }
    
    /// 授权IP地址格式错误。
    public static var failedOperation_IPFormatError: TCDsError {
        TCDsError(.failedOperation_IPFormatError)
    }
    
    /// 证件号码格式错误，请输入正确的个人/企业证件号码。
    public static var failedOperation_IdentNoFormatError: TCDsError {
        TCDsError(.failedOperation_IdentNoFormatError)
    }
    
    /// 证件类型错误，企业证件类型值只允许[0-8]，个人证件类型值为0。
    public static var failedOperation_IdentTypeError: TCDsError {
        TCDsError(.failedOperation_IdentTypeError)
    }
    
    /// 图片宽度/高度超过最大像素限制(300px)。
    public static var failedOperation_ImageMeasurementOverLimitError: TCDsError {
        TCDsError(.failedOperation_ImageMeasurementOverLimitError)
    }
    
    /// 图片数据应为BASE64编码格式。
    public static var failedOperation_ImageNotBase: TCDsError {
        TCDsError(.failedOperation_ImageNotBase)
    }
    
    /// 图片数据应为PNG格式。
    public static var failedOperation_ImageNotPNG: TCDsError {
        TCDsError(.failedOperation_ImageNotPNG)
    }
    
    /// 报文不可包含以下字符 '%&amp;&lt;&gt;。
    public static var failedOperation_MessageDataIllegal: TCDsError {
        TCDsError(.failedOperation_MessageDataIllegal)
    }
    
    /// 报文数据长度过长。
    public static var failedOperation_MessageDataOverSize: TCDsError {
        TCDsError(.failedOperation_MessageDataOverSize)
    }
    
    /// 用户名称不能包含数字。
    public static var failedOperation_NameContainsNumber: TCDsError {
        TCDsError(.failedOperation_NameContainsNumber)
    }
    
    /// 企业名称不能为纯数字。
    public static var failedOperation_NameIsPureNumber: TCDsError {
        TCDsError(.failedOperation_NameIsPureNumber)
    }
    
    /// 用户没有开通代签权限。
    public static var failedOperation_NoPermissionToSign: TCDsError {
        TCDsError(.failedOperation_NoPermissionToSign)
    }
    
    /// 未经短信验证。
    public static var failedOperation_NoVerifyError: TCDsError {
        TCDsError(.failedOperation_NoVerifyError)
    }
    
    /// 偏移坐标超过最大偏移量，X轴/Y轴最大偏移量为50。
    public static var failedOperation_OffsetCoordOverLimitError: TCDsError {
        TCDsError(.failedOperation_OffsetCoordOverLimitError)
    }
    
    /// 其它。
    public static var failedOperation_Other: TCDsError {
        TCDsError(.failedOperation_Other)
    }
    
    /// 签名域对角坐标值不能重复。
    public static var failedOperation_RepeatedCoordinate: TCDsError {
        TCDsError(.failedOperation_RepeatedCoordinate)
    }
    
    /// 短信验证码已超时。
    public static var failedOperation_SMSCodeExpired: TCDsError {
        TCDsError(.failedOperation_SMSCodeExpired)
    }
    
    /// 短信校验码长度错误。
    public static var failedOperation_SMSCodeLengthWrong: TCDsError {
        TCDsError(.failedOperation_SMSCodeLengthWrong)
    }
    
    /// 印章不匹配。
    public static var failedOperation_SealMismatched: TCDsError {
        TCDsError(.failedOperation_SealMismatched)
    }
    
    /// 印章数超过上限。
    public static var failedOperation_SealNumOverLimit: TCDsError {
        TCDsError(.failedOperation_SealNumOverLimit)
    }
    
    /// 印章数量超出限制。
    public static var failedOperation_SealsExceed: TCDsError {
        TCDsError(.failedOperation_SealsExceed)
    }
    
    /// 发送签署验证码失败。
    public static var failedOperation_SendVcodeError: TCDsError {
        TCDsError(.failedOperation_SendVcodeError)
    }
    
    /// 按坐标签署合同失败。
    public static var failedOperation_SignContractByCoordinateError: TCDsError {
        TCDsError(.failedOperation_SignContractByCoordinateError)
    }
    
    /// 按关键字签署合同失败。
    public static var failedOperation_SignContractByKeywordError: TCDsError {
        TCDsError(.failedOperation_SignContractByKeywordError)
    }
    
    /// 根据关键字获得PDF签名域失败。
    public static var failedOperation_SignFieldNotFound: TCDsError {
        TCDsError(.failedOperation_SignFieldNotFound)
    }
    
    /// 页数必须是自然数。
    public static var failedOperation_SignPageError: TCDsError {
        TCDsError(.failedOperation_SignPageError)
    }
    
    /// 已经开通代签权限。
    public static var failedOperation_SignPermissionExisted: TCDsError {
        TCDsError(.failedOperation_SignPermissionExisted)
    }
    
    /// 经办人姓名格式错误，不能包含数字。
    public static var failedOperation_TransactorNameFormatError: TCDsError {
        TCDsError(.failedOperation_TransactorNameFormatError)
    }
    
    /// 经办人手机号格式错误，必须为全数字。
    public static var failedOperation_TransactorPhoneFormatError: TCDsError {
        TCDsError(.failedOperation_TransactorPhoneFormatError)
    }
    
    /// 更新计费状态错误。
    public static var failedOperation_UpdateFeeStatusError: TCDsError {
        TCDsError(.failedOperation_UpdateFeeStatusError)
    }
    
    /// 已经开通代签权限。
    public static var failedOperation_VcodeChecked: TCDsError {
        TCDsError(.failedOperation_VcodeChecked)
    }
    
    /// 证书类型为不支持的类型。
    public static var failedOperation_WrongCertType: TCDsError {
        TCDsError(.failedOperation_WrongCertType)
    }
    
    /// 身份证号格式错误。
    public static var failedOperation_WrongIdentNoFormat: TCDsError {
        TCDsError(.failedOperation_WrongIdentNoFormat)
    }
    
    /// 身份证号只能为15或18位字符。
    public static var failedOperation_WrongIdentNoSize: TCDsError {
        TCDsError(.failedOperation_WrongIdentNoSize)
    }
    
    /// 短信验证码不正确。
    public static var failedOperation_WrongSMSCode: TCDsError {
        TCDsError(.failedOperation_WrongSMSCode)
    }
    
    /// 内部错误。
    public static var internalError_UnknownError: TCDsError {
        TCDsError(.internalError_UnknownError)
    }
    
    /// 合同名称不能为空。
    public static var missingParameter_ContractFileNameError: TCDsError {
        TCDsError(.missingParameter_ContractFileNameError)
    }
    
    /// 合同文件路径不能为空。
    public static var missingParameter_ContractFilePathError: TCDsError {
        TCDsError(.missingParameter_ContractFilePathError)
    }
    
    /// 签署关键字信息-签章图片宽度/高度不能为空。
    public static var missingParameter_ImageMeasurementNullError: TCDsError {
        TCDsError(.missingParameter_ImageMeasurementNullError)
    }
    
    /// 签署关键字信息-关键字不能为空。
    public static var missingParameter_KeywordNullError: TCDsError {
        TCDsError(.missingParameter_KeywordNullError)
    }
    
    /// 授权IP地址不能为空。
    public static var missingParameter_LocationNullError: TCDsError {
        TCDsError(.missingParameter_LocationNullError)
    }
    
    /// 找不到 module 或 operation。
    public static var missingParameter_MOError: TCDsError {
        TCDsError(.missingParameter_MOError)
    }
    
    /// 签署关键字信息-偏移坐标不能为空。
    public static var missingParameter_OffsetCoordNullError: TCDsError {
        TCDsError(.missingParameter_OffsetCoordNullError)
    }
    
    /// 签署人不能为空。
    public static var missingParameter_SignerNullError: TCDsError {
        TCDsError(.missingParameter_SignerNullError)
    }
    
    /// 已经开过该账户。
    public static var resourceInUse_AccountExist: TCDsError {
        TCDsError(.resourceInUse_AccountExist)
    }
    
    /// 企业账户已存在。
    public static var resourceInUse_EnterpriseAccountAlreadyExist: TCDsError {
        TCDsError(.resourceInUse_EnterpriseAccountAlreadyExist)
    }
    
    /// 个人账户已存在。
    public static var resourceInUse_PersonAccountAlreadyExist: TCDsError {
        TCDsError(.resourceInUse_PersonAccountAlreadyExist)
    }
    
    /// 账户不存在或已删除。
    public static var resourceNotFound_AccountNotFound: TCDsError {
        TCDsError(.resourceNotFound_AccountNotFound)
    }
    
    /// 合同ID不存在。
    public static var resourceNotFound_ContractNotFound: TCDsError {
        TCDsError(.resourceNotFound_ContractNotFound)
    }
    
    /// 合同project_code不存在。
    public static var resourceNotFound_ContractProjectCodeNotFound: TCDsError {
        TCDsError(.resourceNotFound_ContractProjectCodeNotFound)
    }
    
    /// 合同发起方账号不存在。
    public static var resourceNotFound_InitiatorNotFoundError: TCDsError {
        TCDsError(.resourceNotFound_InitiatorNotFoundError)
    }
    
    /// 印章不存在。
    public static var resourceNotFound_SealNotFound: TCDsError {
        TCDsError(.resourceNotFound_SealNotFound)
    }
    
    /// 子平台ID不存在。
    public static var resourceNotFound_SubplatIdNotFound: TCDsError {
        TCDsError(.resourceNotFound_SubplatIdNotFound)
    }
    
    /// 任务不存在。
    public static var resourceNotFound_TaskNotFound: TCDsError {
        TCDsError(.resourceNotFound_TaskNotFound)
    }
    
    /// 账户状态已冻结或已注销。
    public static var resourceUnavailable_AccountUnavailable: TCDsError {
        TCDsError(.resourceUnavailable_AccountUnavailable)
    }
    
    /// 合同签署人不存在或状态异常，不能进行合同创建操作。
    public static var resourceUnavailable_ContractSignerUnavailable: TCDsError {
        TCDsError(.resourceUnavailable_ContractSignerUnavailable)
    }
    
    /// 下载签章文件失败，请确保路径正确。
    public static var resourceUnavailable_DownloadSealError: TCDsError {
        TCDsError(.resourceUnavailable_DownloadSealError)
    }
    
    /// 子平台欠费。
    public static var resourceUnavailable_SubplatUnavailable: TCDsError {
        TCDsError(.resourceUnavailable_SubplatUnavailable)
    }
}

extension TCDsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, MissingParameter.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self]
    }
}

extension TCDsError: Equatable {
    public static func == (lhs: TCDsError, rhs: TCDsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}