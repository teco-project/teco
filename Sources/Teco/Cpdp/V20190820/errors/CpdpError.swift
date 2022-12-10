public struct TCCpdpError: TCErrorType {
    enum Code: String {
        case authFailure_Account = "AuthFailure.Account"
        case authFailure_Forbidden = "AuthFailure.Forbidden"
        case authFailure_Midas = "AuthFailure.Midas"
        case authFailure_SecretKeyNotFound = "AuthFailure.SecretKeyNotFound"
        case authFailure_Sign = "AuthFailure.Sign"
        case authFailure_VerifyError = "AuthFailure.VerifyError"
        case authFailure_VerifyTokenFailure = "AuthFailure.VerifyTokenFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AbnormalMerchantState = "FailedOperation.AbnormalMerchantState"
        case failedOperation_AbnormalOrderState = "FailedOperation.AbnormalOrderState"
        case failedOperation_AcctNotBind = "FailedOperation.AcctNotBind"
        case failedOperation_AcctNotExist = "FailedOperation.AcctNotExist"
        case failedOperation_Action = "FailedOperation.Action"
        case failedOperation_ActionInvalid = "FailedOperation.ActionInvalid"
        case failedOperation_AddMerchantFailed = "FailedOperation.AddMerchantFailed"
        case failedOperation_AlreadyExists = "FailedOperation.AlreadyExists"
        case failedOperation_AppDeny = "FailedOperation.AppDeny"
        case failedOperation_AppidMchidNotMatch = "FailedOperation.AppidMchidNotMatch"
        case failedOperation_BackCallError = "FailedOperation.BackCallError"
        case failedOperation_BackendError = "FailedOperation.BackendError"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_BankFailed = "FailedOperation.BankFailed"
        case failedOperation_BanlanceNotEnoughError = "FailedOperation.BanlanceNotEnoughError"
        case failedOperation_CallChannelGatewayError = "FailedOperation.CallChannelGatewayError"
        case failedOperation_ChannelDeny = "FailedOperation.ChannelDeny"
        case failedOperation_ChannelError = "FailedOperation.ChannelError"
        case failedOperation_ChannelRefundFailed = "FailedOperation.ChannelRefundFailed"
        case failedOperation_ChannelRefundFrequencyLimited = "FailedOperation.ChannelRefundFrequencyLimited"
        case failedOperation_CloseContractDbFailed = "FailedOperation.CloseContractDbFailed"
        case failedOperation_CloseContractModeInvalid = "FailedOperation.CloseContractModeInvalid"
        case failedOperation_ConfigError = "FailedOperation.ConfigError"
        case failedOperation_ContractStatusError = "FailedOperation.ContractStatusError"
        case failedOperation_CreateAgent = "FailedOperation.CreateAgent"
        case failedOperation_CreateOrderError = "FailedOperation.CreateOrderError"
        case failedOperation_CreateOrderUnknown = "FailedOperation.CreateOrderUnknown"
        case failedOperation_DBConfigError = "FailedOperation.DBConfigError"
        case failedOperation_DbClientConnectFailed = "FailedOperation.DbClientConnectFailed"
        case failedOperation_DbClientInserttFailed = "FailedOperation.DbClientInserttFailed"
        case failedOperation_DbClientQueryFailed = "FailedOperation.DbClientQueryFailed"
        case failedOperation_DbClientUpdateFailed = "FailedOperation.DbClientUpdateFailed"
        case failedOperation_DownloadBillError = "FailedOperation.DownloadBillError"
        case failedOperation_ExternalContractIndexNotFound = "FailedOperation.ExternalContractIndexNotFound"
        case failedOperation_ExternalContractNotFound = "FailedOperation.ExternalContractNotFound"
        case failedOperation_ExternalContractStatusInvalid = "FailedOperation.ExternalContractStatusInvalid"
        case failedOperation_ExternalMerchantContractInfoConfigNoFound = "FailedOperation.ExternalMerchantContractInfoConfigNoFound"
        case failedOperation_ExternalMerchantIndexConfigNoFound = "FailedOperation.ExternalMerchantIndexConfigNoFound"
        case failedOperation_ExternalMerchantInfoConfigNoFound = "FailedOperation.ExternalMerchantInfoConfigNoFound"
        case failedOperation_FileNotExist = "FailedOperation.FileNotExist"
        case failedOperation_FrequencyLimited = "FailedOperation.FrequencyLimited"
        case failedOperation_GetLiveDailySummary = "FailedOperation.GetLiveDailySummary"
        case failedOperation_HttpDoRequestError = "FailedOperation.HttpDoRequestError"
        case failedOperation_InternalServiceTimeout = "FailedOperation.InternalServiceTimeout"
        case failedOperation_InvalidParameter = "FailedOperation.InvalidParameter"
        case failedOperation_InvalidRefundAmt = "FailedOperation.InvalidRefundAmt"
        case failedOperation_InvalidRequest = "FailedOperation.InvalidRequest"
        case failedOperation_InvoiceExist = "FailedOperation.InvoiceExist"
        case failedOperation_IsEmpty = "FailedOperation.IsEmpty"
        case failedOperation_MarshalError = "FailedOperation.MarshalError"
        case failedOperation_MerchantBalanceNotEnough = "FailedOperation.MerchantBalanceNotEnough"
        case failedOperation_MerchantCheckFailed = "FailedOperation.MerchantCheckFailed"
        case failedOperation_MerchantCreateFailed = "FailedOperation.MerchantCreateFailed"
        case failedOperation_MerchantExist = "FailedOperation.MerchantExist"
        case failedOperation_MerchantNotExist = "FailedOperation.MerchantNotExist"
        case failedOperation_MerchantNotExists = "FailedOperation.MerchantNotExists"
        case failedOperation_MerchantPermissionError = "FailedOperation.MerchantPermissionError"
        case failedOperation_MidasInternalError = "FailedOperation.MidasInternalError"
        case failedOperation_MidasInvalidRequest = "FailedOperation.MidasInvalidRequest"
        case failedOperation_MidasNeedRetry = "FailedOperation.MidasNeedRetry"
        case failedOperation_MidasRegisterUnfinished = "FailedOperation.MidasRegisterUnfinished"
        case failedOperation_MidasRepeatOrder = "FailedOperation.MidasRepeatOrder"
        case failedOperation_MidasRisk = "FailedOperation.MidasRisk"
        case failedOperation_MidasStatusNotMatch = "FailedOperation.MidasStatusNotMatch"
        case failedOperation_MidasUnsupportedAction = "FailedOperation.MidasUnsupportedAction"
        case failedOperation_MissingParameter = "FailedOperation.MissingParameter"
        case failedOperation_ModifyMerchantFailed = "FailedOperation.ModifyMerchantFailed"
        case failedOperation_MountNotFound = "FailedOperation.MountNotFound"
        case failedOperation_NoAuth = "FailedOperation.NoAuth"
        case failedOperation_NoRecord = "FailedOperation.NoRecord"
        case failedOperation_NotEnough = "FailedOperation.NotEnough"
        case failedOperation_NotFound = "FailedOperation.NotFound"
        case failedOperation_NotifyUrlParseError = "FailedOperation.NotifyUrlParseError"
        case failedOperation_OcCompletedOrder = "FailedOperation.OcCompletedOrder"
        case failedOperation_OcRepeatOrder = "FailedOperation.OcRepeatOrder"
        case failedOperation_OrderLocked = "FailedOperation.OrderLocked"
        case failedOperation_OrderNotActivated = "FailedOperation.OrderNotActivated"
        case failedOperation_OrderRefundError = "FailedOperation.OrderRefundError"
        case failedOperation_PABankError = "FailedOperation.PABankError"
        case failedOperation_ParamError = "FailedOperation.ParamError"
        case failedOperation_ParameterError = "FailedOperation.ParameterError"
        case failedOperation_ParentAppIdError = "FailedOperation.ParentAppIdError"
        case failedOperation_PortalError = "FailedOperation.PortalError"
        case failedOperation_QueryAgentStatements = "FailedOperation.QueryAgentStatements"
        case failedOperation_QueryContractNull = "FailedOperation.QueryContractNull"
        case failedOperation_QueryMchannelError = "FailedOperation.QueryMchannelError"
        case failedOperation_QueryModeError = "FailedOperation.QueryModeError"
        case failedOperation_QueryOrderError = "FailedOperation.QueryOrderError"
        case failedOperation_QueryResultNull = "FailedOperation.QueryResultNull"
        case failedOperation_QuotaExceed = "FailedOperation.QuotaExceed"
        case failedOperation_RefundInfoDuplicate = "FailedOperation.RefundInfoDuplicate"
        case failedOperation_RefundNotRetrieable = "FailedOperation.RefundNotRetrieable"
        case failedOperation_RefundProcessIng = "FailedOperation.RefundProcessIng"
        case failedOperation_RefundTransactionClosed = "FailedOperation.RefundTransactionClosed"
        case failedOperation_RefundTransactionFinished = "FailedOperation.RefundTransactionFinished"
        case failedOperation_SDKError = "FailedOperation.SDKError"
        case failedOperation_ServiceError = "FailedOperation.ServiceError"
        case failedOperation_SignError = "FailedOperation.SignError"
        case failedOperation_SyncMchannelError = "FailedOperation.SyncMchannelError"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case failedOperation_TerminateMchannelError = "FailedOperation.TerminateMchannelError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case failedOperation_UnmarshalError = "FailedOperation.UnmarshalError"
        case failedOperation_UpdateContractStatusFailed = "FailedOperation.UpdateContractStatusFailed"
        case failedOperation_UploadTaxList = "FailedOperation.UploadTaxList"
        case failedOperation_UploadTaxPayment = "FailedOperation.UploadTaxPayment"
        case failedOperation_WechatError = "FailedOperation.WechatError"
        case failedOperation_WxCrtNotSet = "FailedOperation.WxCrtNotSet"
        case failedOperation_XmlFail = "FailedOperation.XmlFail"
        case internalError_ = "InternalError."
        case internalError_BackendConnectionError = "InternalError.BackendConnectionError"
        case internalError_BackendError = "InternalError.BackendError"
        case internalError_BackendInternalError = "InternalError.BackendInternalError"
        case internalError_BackendNetworkError = "InternalError.BackendNetworkError"
        case internalError_BackendRouterError = "InternalError.BackendRouterError"
        case internalError_BackendTimeOut = "InternalError.BackendTimeOut"
        case internalError_DBAccessError = "InternalError.DBAccessError"
        case internalError_DeleteDBError = "InternalError.DeleteDBError"
        case internalError_DuplicateKeyError = "InternalError.DuplicateKeyError"
        case internalError_FundSummaryAcctNoInconsistentError = "InternalError.FundSummaryAcctNoInconsistentError"
        case internalError_InvoiceExist = "InternalError.InvoiceExist"
        case internalError_Midas = "InternalError.Midas"
        case internalError_ParameterError = "InternalError.ParameterError"
        case internalError_SandBoxAccessError = "InternalError.SandBoxAccessError"
        case internalError_SaveDBError = "InternalError.SaveDBError"
        case internalError_SigGenError = "InternalError.SigGenError"
        case internalError_SubAccountNotFoundError = "InternalError.SubAccountNotFoundError"
        case internalError_Unknown = "InternalError.Unknown"
        case internalError_UnkownError = "InternalError.UnkownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_BackendCgiError = "InvalidParameter.BackendCgiError"
        case invalidParameter_LackParameter = "InvalidParameter.LackParameter"
        case invalidParameter_Midas = "InvalidParameter.Midas"
        case invalidParameter_MidasEnvironment = "InvalidParameter.MidasEnvironment"
        case invalidParameter_MidasExternalApp = "InvalidParameter.MidasExternalApp"
        case invalidParameter_MidasFileType = "InvalidParameter.MidasFileType"
        case invalidParameter_MidasHash = "InvalidParameter.MidasHash"
        case invalidParameter_MidasSignId = "InvalidParameter.MidasSignId"
        case invalidParameter_ParamMarshalFailed = "InvalidParameter.ParamMarshalFailed"
        case invalidParameter_ParamUnmarshalFailed = "InvalidParameter.ParamUnmarshalFailed"
        case invalidParameter_UnsupportedParameter = "InvalidParameter.UnsupportedParameter"
        case limitExceeded_MidasLargeFile = "LimitExceeded.MidasLargeFile"
        case limitExceeded_MidasOrder = "LimitExceeded.MidasOrder"
        case limitExceeded_MidasOrderCanceled = "LimitExceeded.MidasOrderCanceled"
        case limitExceeded_MidasOrderClosed = "LimitExceeded.MidasOrderClosed"
        case limitExceeded_MidasOrderExpired = "LimitExceeded.MidasOrderExpired"
        case limitExceeded_MidasOrderFailed = "LimitExceeded.MidasOrderFailed"
        case limitExceeded_MidasOrderPartialSuccess = "LimitExceeded.MidasOrderPartialSuccess"
        case limitExceeded_MidasOrderProcessing = "LimitExceeded.MidasOrderProcessing"
        case limitExceeded_MidasOrderSuccess = "LimitExceeded.MidasOrderSuccess"
        case missingParameter = "MissingParameter"
        case missingParameter_ = "MissingParameter."
        case missingParameter_Action = "MissingParameter.Action"
        case missingParameter_AppId = "MissingParameter.AppId"
        case requestLimitExceeded_Midas = "RequestLimitExceeded.Midas"
        case requestLimitExceeded_MidasInvalidRequest = "RequestLimitExceeded.MidasInvalidRequest"
        case resourceInUse_Midas = "ResourceInUse.Midas"
        case resourceInsufficient_ThreadPoolReject = "ResourceInsufficient.ThreadPoolReject"
        case resourceNotFound_Account = "ResourceNotFound.Account"
        case resourceNotFound_BatchInfoNotFound = "ResourceNotFound.BatchInfoNotFound"
        case resourceNotFound_InvoiceNotFound = "ResourceNotFound.InvoiceNotFound"
        case resourceNotFound_Key = "ResourceNotFound.Key"
        case resourceNotFound_MerchantInfoNotFound = "ResourceNotFound.MerchantInfoNotFound"
        case resourceNotFound_MidasExternalApp = "ResourceNotFound.MidasExternalApp"
        case resourceNotFound_MidasExternalOrder = "ResourceNotFound.MidasExternalOrder"
        case resourceNotFound_MidasOrder = "ResourceNotFound.MidasOrder"
        case resourceNotFound_MidasSign = "ResourceNotFound.MidasSign"
        case resourceNotFound_PlatformInfoNotFound = "ResourceNotFound.PlatformInfoNotFound"
        case resourceUnavailable_MidasBalance = "ResourceUnavailable.MidasBalance"
        case resourceUnavailable_MidasDay = "ResourceUnavailable.MidasDay"
        case resourceUnavailable_MidasFrozenAmount = "ResourceUnavailable.MidasFrozenAmount"
        case resourceUnavailable_MidasMerchantBalance = "ResourceUnavailable.MidasMerchantBalance"
        case resourceUnavailable_MidasOrder = "ResourceUnavailable.MidasOrder"
        case resourceUnavailable_MidasUserBalance = "ResourceUnavailable.MidasUserBalance"
        case resourceUnavailable_MidasWallet = "ResourceUnavailable.MidasWallet"
        case unauthorizedOperation_Midas = "UnauthorizedOperation.Midas"
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
    
    /// 未进行实名认证。
    public static var authFailure_Account: TCCpdpError {
        TCCpdpError(.authFailure_Account)
    }
    
    /// 权限限额，禁止操作。
    ///
    /// 请联系管理人员授权
    public static var authFailure_Forbidden: TCCpdpError {
        TCCpdpError(.authFailure_Forbidden)
    }
    
    /// 聚鑫签名信息不匹配。
    ///
    /// 请联系我们
    public static var authFailure_Midas: TCCpdpError {
        TCCpdpError(.authFailure_Midas)
    }
    
    /// 未找到密钥。
    public static var authFailure_SecretKeyNotFound: TCCpdpError {
        TCCpdpError(.authFailure_SecretKeyNotFound)
    }
    
    /// 账户尚未签约。
    public static var authFailure_Sign: TCCpdpError {
        TCCpdpError(.authFailure_Sign)
    }
    
    /// 验证失败。
    public static var authFailure_VerifyError: TCCpdpError {
        TCCpdpError(.authFailure_VerifyError)
    }
    
    /// Token校验失败。
    public static var authFailure_VerifyTokenFailure: TCCpdpError {
        TCCpdpError(.authFailure_VerifyTokenFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCpdpError {
        TCCpdpError(.failedOperation)
    }
    
    /// 商户状态异常。
    public static var failedOperation_AbnormalMerchantState: TCCpdpError {
        TCCpdpError(.failedOperation_AbnormalMerchantState)
    }
    
    /// 订单状态异常。
    public static var failedOperation_AbnormalOrderState: TCCpdpError {
        TCCpdpError(.failedOperation_AbnormalOrderState)
    }
    
    /// 账户未绑定。
    public static var failedOperation_AcctNotBind: TCCpdpError {
        TCCpdpError(.failedOperation_AcctNotBind)
    }
    
    /// 账户不存在。
    public static var failedOperation_AcctNotExist: TCCpdpError {
        TCCpdpError(.failedOperation_AcctNotExist)
    }
    
    /// 接口调用出错。
    public static var failedOperation_Action: TCCpdpError {
        TCCpdpError(.failedOperation_Action)
    }
    
    /// 配置参数action无效。
    public static var failedOperation_ActionInvalid: TCCpdpError {
        TCCpdpError(.failedOperation_ActionInvalid)
    }
    
    /// 商户创建失败。
    public static var failedOperation_AddMerchantFailed: TCCpdpError {
        TCCpdpError(.failedOperation_AddMerchantFailed)
    }
    
    /// 订单已经存在。
    public static var failedOperation_AlreadyExists: TCCpdpError {
        TCCpdpError(.failedOperation_AlreadyExists)
    }
    
    /// 该业务代码对应的配置没有发布到相应的环境。
    public static var failedOperation_AppDeny: TCCpdpError {
        TCCpdpError(.failedOperation_AppDeny)
    }
    
    /// 商户号和appid没有绑定关系。
    public static var failedOperation_AppidMchidNotMatch: TCCpdpError {
        TCCpdpError(.failedOperation_AppidMchidNotMatch)
    }
    
    /// 请求下游服务错误。
    public static var failedOperation_BackCallError: TCCpdpError {
        TCCpdpError(.failedOperation_BackCallError)
    }
    
    /// 云鉴内部调用失败。
    public static var failedOperation_BackendError: TCCpdpError {
        TCCpdpError(.failedOperation_BackendError)
    }
    
    /// 账户余额不足。
    public static var failedOperation_BalanceInsufficient: TCCpdpError {
        TCCpdpError(.failedOperation_BalanceInsufficient)
    }
    
    /// 调用银行接口失败，可能原因： 银行接口超时或为获取到返回值 银行接口返回非法。
    public static var failedOperation_BankFailed: TCCpdpError {
        TCCpdpError(.failedOperation_BankFailed)
    }
    
    /// 余额不足。
    public static var failedOperation_BanlanceNotEnoughError: TCCpdpError {
        TCCpdpError(.failedOperation_BanlanceNotEnoughError)
    }
    
    /// 内部请求渠道网关错误。
    public static var failedOperation_CallChannelGatewayError: TCCpdpError {
        TCCpdpError(.failedOperation_CallChannelGatewayError)
    }
    
    /// 支付渠道错误，请确认配置信息是 否提交至聚鑫。
    public static var failedOperation_ChannelDeny: TCCpdpError {
        TCCpdpError(.failedOperation_ChannelDeny)
    }
    
    /// 支付渠道错误。
    public static var failedOperation_ChannelError: TCCpdpError {
        TCCpdpError(.failedOperation_ChannelError)
    }
    
    /// 渠道方退款失败。
    ///
    /// 渠道方拒绝该笔退款请求，请联系米大师定位具体问题原因。
    public static var failedOperation_ChannelRefundFailed: TCCpdpError {
        TCCpdpError(.failedOperation_ChannelRefundFailed)
    }
    
    /// 渠道退款频率受限。
    public static var failedOperation_ChannelRefundFrequencyLimited: TCCpdpError {
        TCCpdpError(.failedOperation_ChannelRefundFrequencyLimited)
    }
    
    /// 终止合约失败。
    public static var failedOperation_CloseContractDbFailed: TCCpdpError {
        TCCpdpError(.failedOperation_CloseContractDbFailed)
    }
    
    /// 终止合约模式非法。
    public static var failedOperation_CloseContractModeInvalid: TCCpdpError {
        TCCpdpError(.failedOperation_CloseContractModeInvalid)
    }
    
    /// 下载服务器配置错误。
    public static var failedOperation_ConfigError: TCCpdpError {
        TCCpdpError(.failedOperation_ConfigError)
    }
    
    /// 签约状态不正确。
    public static var failedOperation_ContractStatusError: TCCpdpError {
        TCCpdpError(.failedOperation_ContractStatusError)
    }
    
    /// 录入代理商出错。
    public static var failedOperation_CreateAgent: TCCpdpError {
        TCCpdpError(.failedOperation_CreateAgent)
    }
    
    /// 消费订单发起失败。
    public static var failedOperation_CreateOrderError: TCCpdpError {
        TCCpdpError(.failedOperation_CreateOrderError)
    }
    
    /// 消费订单发起状态未知，请调用查询接口进行查询。
    public static var failedOperation_CreateOrderUnknown: TCCpdpError {
        TCCpdpError(.failedOperation_CreateOrderUnknown)
    }
    
    /// 下载服务器数据库配置错误。
    public static var failedOperation_DBConfigError: TCCpdpError {
        TCCpdpError(.failedOperation_DBConfigError)
    }
    
    /// 连接数据库失败。
    public static var failedOperation_DbClientConnectFailed: TCCpdpError {
        TCCpdpError(.failedOperation_DbClientConnectFailed)
    }
    
    /// 数据库插入数据失败。
    public static var failedOperation_DbClientInserttFailed: TCCpdpError {
        TCCpdpError(.failedOperation_DbClientInserttFailed)
    }
    
    /// 查询数据失败。
    public static var failedOperation_DbClientQueryFailed: TCCpdpError {
        TCCpdpError(.failedOperation_DbClientQueryFailed)
    }
    
    /// 数据更新失败。
    public static var failedOperation_DbClientUpdateFailed: TCCpdpError {
        TCCpdpError(.failedOperation_DbClientUpdateFailed)
    }
    
    /// 对账单下载失败。
    public static var failedOperation_DownloadBillError: TCCpdpError {
        TCCpdpError(.failedOperation_DownloadBillError)
    }
    
    /// 未查到第三方渠道合约数据。
    public static var failedOperation_ExternalContractIndexNotFound: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalContractIndexNotFound)
    }
    
    /// 未查到第三方渠道合约数据。
    public static var failedOperation_ExternalContractNotFound: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalContractNotFound)
    }
    
    /// 外部签约状态无效。
    public static var failedOperation_ExternalContractStatusInvalid: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalContractStatusInvalid)
    }
    
    /// 第三方渠道商户合约配置查询错误。
    public static var failedOperation_ExternalMerchantContractInfoConfigNoFound: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalMerchantContractInfoConfigNoFound)
    }
    
    /// 第三方渠道商户配置信息查询错误。
    public static var failedOperation_ExternalMerchantIndexConfigNoFound: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalMerchantIndexConfigNoFound)
    }
    
    /// 第三方渠道商户配置信息查询错误。
    public static var failedOperation_ExternalMerchantInfoConfigNoFound: TCCpdpError {
        TCCpdpError(.failedOperation_ExternalMerchantInfoConfigNoFound)
    }
    
    /// 对账文件不存在，尚未生成。
    public static var failedOperation_FileNotExist: TCCpdpError {
        TCCpdpError(.failedOperation_FileNotExist)
    }
    
    /// 频率超限。
    public static var failedOperation_FrequencyLimited: TCCpdpError {
        TCCpdpError(.failedOperation_FrequencyLimited)
    }
    
    /// 获取日结报表列表出错。
    public static var failedOperation_GetLiveDailySummary: TCCpdpError {
        TCCpdpError(.failedOperation_GetLiveDailySummary)
    }
    
    /// 内部http方式请求下游服务错误。
    public static var failedOperation_HttpDoRequestError: TCCpdpError {
        TCCpdpError(.failedOperation_HttpDoRequestError)
    }
    
    /// 内部服务超时。
    public static var failedOperation_InternalServiceTimeout: TCCpdpError {
        TCCpdpError(.failedOperation_InternalServiceTimeout)
    }
    
    /// 参数错误。
    public static var failedOperation_InvalidParameter: TCCpdpError {
        TCCpdpError(.failedOperation_InvalidParameter)
    }
    
    /// 退款金额无效。
    public static var failedOperation_InvalidRefundAmt: TCCpdpError {
        TCCpdpError(.failedOperation_InvalidRefundAmt)
    }
    
    /// 请求参数符合参数格式，但不符合业务规则。
    public static var failedOperation_InvalidRequest: TCCpdpError {
        TCCpdpError(.failedOperation_InvalidRequest)
    }
    
    /// 发票已提交。
    public static var failedOperation_InvoiceExist: TCCpdpError {
        TCCpdpError(.failedOperation_InvoiceExist)
    }
    
    /// 文件为空，未生成或者当天无数据。
    public static var failedOperation_IsEmpty: TCCpdpError {
        TCCpdpError(.failedOperation_IsEmpty)
    }
    
    /// 序列化出错。
    public static var failedOperation_MarshalError: TCCpdpError {
        TCCpdpError(.failedOperation_MarshalError)
    }
    
    /// 商户余额不足。
    public static var failedOperation_MerchantBalanceNotEnough: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantBalanceNotEnough)
    }
    
    /// 商户信息验证失败。
    public static var failedOperation_MerchantCheckFailed: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantCheckFailed)
    }
    
    /// 商户创建失败。
    public static var failedOperation_MerchantCreateFailed: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantCreateFailed)
    }
    
    /// 商户已存在。
    public static var failedOperation_MerchantExist: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantExist)
    }
    
    /// 查无此商户。
    public static var failedOperation_MerchantNotExist: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantNotExist)
    }
    
    /// 商户不存在。
    public static var failedOperation_MerchantNotExists: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantNotExists)
    }
    
    /// 商户权限错误。
    public static var failedOperation_MerchantPermissionError: TCCpdpError {
        TCCpdpError(.failedOperation_MerchantPermissionError)
    }
    
    /// 聚鑫内部系统错误。
    ///
    /// 请联系我们
    public static var failedOperation_MidasInternalError: TCCpdpError {
        TCCpdpError(.failedOperation_MidasInternalError)
    }
    
    public static var failedOperation_MidasInvalidRequest: TCCpdpError {
        TCCpdpError(.failedOperation_MidasInvalidRequest)
    }
    
    /// 聚鑫需要重试。
    ///
    /// 请联系我们
    public static var failedOperation_MidasNeedRetry: TCCpdpError {
        TCCpdpError(.failedOperation_MidasNeedRetry)
    }
    
    /// 聚鑫当前企业对该产品能力有未完成的申请单。
    ///
    /// 请联系我们
    public static var failedOperation_MidasRegisterUnfinished: TCCpdpError {
        TCCpdpError(.failedOperation_MidasRegisterUnfinished)
    }
    
    /// 聚鑫订单已经提交。
    ///
    /// 请联系我们
    public static var failedOperation_MidasRepeatOrder: TCCpdpError {
        TCCpdpError(.failedOperation_MidasRepeatOrder)
    }
    
    /// 通用风控系统错误，被风控拦截。
    ///
    /// 请联系我们
    public static var failedOperation_MidasRisk: TCCpdpError {
        TCCpdpError(.failedOperation_MidasRisk)
    }
    
    public static var failedOperation_MidasStatusNotMatch: TCCpdpError {
        TCCpdpError(.failedOperation_MidasStatusNotMatch)
    }
    
    /// 聚鑫不支持该操作。
    ///
    /// 请联系我们
    public static var failedOperation_MidasUnsupportedAction: TCCpdpError {
        TCCpdpError(.failedOperation_MidasUnsupportedAction)
    }
    
    /// 参数缺失。
    public static var failedOperation_MissingParameter: TCCpdpError {
        TCCpdpError(.failedOperation_MissingParameter)
    }
    
    /// 商户修改失败。
    public static var failedOperation_ModifyMerchantFailed: TCCpdpError {
        TCCpdpError(.failedOperation_ModifyMerchantFailed)
    }
    
    /// 未查询到相关记录
    public static var failedOperation_MountNotFound: TCCpdpError {
        TCCpdpError(.failedOperation_MountNotFound)
    }
    
    /// 商户信息不合法。
    public static var failedOperation_NoAuth: TCCpdpError {
        TCCpdpError(.failedOperation_NoAuth)
    }
    
    /// 订单不存在。
    public static var failedOperation_NoRecord: TCCpdpError {
        TCCpdpError(.failedOperation_NoRecord)
    }
    
    /// 资金不足。
    public static var failedOperation_NotEnough: TCCpdpError {
        TCCpdpError(.failedOperation_NotEnough)
    }
    
    /// 记录不存在。
    public static var failedOperation_NotFound: TCCpdpError {
        TCCpdpError(.failedOperation_NotFound)
    }
    
    /// 业务的签约通知url解析错误。
    public static var failedOperation_NotifyUrlParseError: TCCpdpError {
        TCCpdpError(.failedOperation_NotifyUrlParseError)
    }
    
    /// 订单已经支付。
    public static var failedOperation_OcCompletedOrder: TCCpdpError {
        TCCpdpError(.failedOperation_OcCompletedOrder)
    }
    
    /// 订单号重复，但是两次请求参数不 一致。
    public static var failedOperation_OcRepeatOrder: TCCpdpError {
        TCCpdpError(.failedOperation_OcRepeatOrder)
    }
    
    /// 退款主单被锁，请待前退款单完成后再发起退款。
    public static var failedOperation_OrderLocked: TCCpdpError {
        TCCpdpError(.failedOperation_OrderLocked)
    }
    
    /// 订单状态不可用。
    public static var failedOperation_OrderNotActivated: TCCpdpError {
        TCCpdpError(.failedOperation_OrderNotActivated)
    }
    
    /// 消费订单退款失败。
    public static var failedOperation_OrderRefundError: TCCpdpError {
        TCCpdpError(.failedOperation_OrderRefundError)
    }
    
    /// 平安银行返回错误。
    public static var failedOperation_PABankError: TCCpdpError {
        TCCpdpError(.failedOperation_PABankError)
    }
    
    /// 微信返回参数错误。
    public static var failedOperation_ParamError: TCCpdpError {
        TCCpdpError(.failedOperation_ParamError)
    }
    
    /// 请求参数错误。
    public static var failedOperation_ParameterError: TCCpdpError {
        TCCpdpError(.failedOperation_ParameterError)
    }
    
    /// AppId、SubAppId不匹配。
    public static var failedOperation_ParentAppIdError: TCCpdpError {
        TCCpdpError(.failedOperation_ParentAppIdError)
    }
    
    /// 聚鑫内部系统调用失败。
    public static var failedOperation_PortalError: TCCpdpError {
        TCCpdpError(.failedOperation_PortalError)
    }
    
    /// 查询代理商结算单链接出错。
    public static var failedOperation_QueryAgentStatements: TCCpdpError {
        TCCpdpError(.failedOperation_QueryAgentStatements)
    }
    
    /// 查询签约关系不存在。
    public static var failedOperation_QueryContractNull: TCCpdpError {
        TCCpdpError(.failedOperation_QueryContractNull)
    }
    
    /// 查询渠道返回错误。
    public static var failedOperation_QueryMchannelError: TCCpdpError {
        TCCpdpError(.failedOperation_QueryMchannelError)
    }
    
    /// 查询模式错误。
    public static var failedOperation_QueryModeError: TCCpdpError {
        TCCpdpError(.failedOperation_QueryModeError)
    }
    
    /// 消费订单查询失败。
    public static var failedOperation_QueryOrderError: TCCpdpError {
        TCCpdpError(.failedOperation_QueryOrderError)
    }
    
    /// 渠道查询结果为空，请传入正确参数。
    public static var failedOperation_QueryResultNull: TCCpdpError {
        TCCpdpError(.failedOperation_QueryResultNull)
    }
    
    /// 超出商户单日转账额度。
    public static var failedOperation_QuotaExceed: TCCpdpError {
        TCCpdpError(.failedOperation_QuotaExceed)
    }
    
    /// 退款信息重复。
    public static var failedOperation_RefundInfoDuplicate: TCCpdpError {
        TCCpdpError(.failedOperation_RefundInfoDuplicate)
    }
    
    /// 不可重试退款。
    public static var failedOperation_RefundNotRetrieable: TCCpdpError {
        TCCpdpError(.failedOperation_RefundNotRetrieable)
    }
    
    /// 退款处理中。
    ///
    /// 待渠道完成退款操作，请稍后查看退款结果。
    public static var failedOperation_RefundProcessIng: TCCpdpError {
        TCCpdpError(.failedOperation_RefundProcessIng)
    }
    
    /// 退款交易已结束。
    public static var failedOperation_RefundTransactionClosed: TCCpdpError {
        TCCpdpError(.failedOperation_RefundTransactionClosed)
    }
    
    /// 退款交易已完成，请勿重复操作。
    public static var failedOperation_RefundTransactionFinished: TCCpdpError {
        TCCpdpError(.failedOperation_RefundTransactionFinished)
    }
    
    /// 云鉴内部调用失败。
    public static var failedOperation_SDKError: TCCpdpError {
        TCCpdpError(.failedOperation_SDKError)
    }
    
    /// 接口执行失败。
    public static var failedOperation_ServiceError: TCCpdpError {
        TCCpdpError(.failedOperation_ServiceError)
    }
    
    /// 签名错误。
    public static var failedOperation_SignError: TCCpdpError {
        TCCpdpError(.failedOperation_SignError)
    }
    
    /// 调用后端同步服务失败。
    public static var failedOperation_SyncMchannelError: TCCpdpError {
        TCCpdpError(.failedOperation_SyncMchannelError)
    }
    
    /// 系统内部错误。
    public static var failedOperation_SystemError: TCCpdpError {
        TCCpdpError(.failedOperation_SystemError)
    }
    
    /// 调用后端解约服务失败。
    public static var failedOperation_TerminateMchannelError: TCCpdpError {
        TCCpdpError(.failedOperation_TerminateMchannelError)
    }
    
    /// 未知错误。
    public static var failedOperation_Unknown: TCCpdpError {
        TCCpdpError(.failedOperation_Unknown)
    }
    
    /// 反序列化出错。
    public static var failedOperation_UnmarshalError: TCCpdpError {
        TCCpdpError(.failedOperation_UnmarshalError)
    }
    
    /// 冲正签约状态失败。
    public static var failedOperation_UpdateContractStatusFailed: TCCpdpError {
        TCCpdpError(.failedOperation_UpdateContractStatusFailed)
    }
    
    /// 上传代理商完税列表出错。
    public static var failedOperation_UploadTaxList: TCCpdpError {
        TCCpdpError(.failedOperation_UploadTaxList)
    }
    
    /// 上传代理商完税证明出错。
    public static var failedOperation_UploadTaxPayment: TCCpdpError {
        TCCpdpError(.failedOperation_UploadTaxPayment)
    }
    
    /// 调用渠道错误，请确认渠道如微信 wxappid是否配置正确。
    public static var failedOperation_WechatError: TCCpdpError {
        TCCpdpError(.failedOperation_WechatError)
    }
    
    /// 微信支付证书未配置。
    public static var failedOperation_WxCrtNotSet: TCCpdpError {
        TCCpdpError(.failedOperation_WxCrtNotSet)
    }
    
    /// xml格式错误。
    public static var failedOperation_XmlFail: TCCpdpError {
        TCCpdpError(.failedOperation_XmlFail)
    }
    
    /// 系统错误。
    public static var internalError_: TCCpdpError {
        TCCpdpError(.internalError_)
    }
    
    /// 内部连接后端错误。
    public static var internalError_BackendConnectionError: TCCpdpError {
        TCCpdpError(.internalError_BackendConnectionError)
    }
    
    /// 后端服务访问错误。
    public static var internalError_BackendError: TCCpdpError {
        TCCpdpError(.internalError_BackendError)
    }
    
    /// 服务内部错误。
    public static var internalError_BackendInternalError: TCCpdpError {
        TCCpdpError(.internalError_BackendInternalError)
    }
    
    /// 内部调用后端网络错误。
    public static var internalError_BackendNetworkError: TCCpdpError {
        TCCpdpError(.internalError_BackendNetworkError)
    }
    
    /// 内部调用路由错误。
    public static var internalError_BackendRouterError: TCCpdpError {
        TCCpdpError(.internalError_BackendRouterError)
    }
    
    /// 内部调用后端超时。
    public static var internalError_BackendTimeOut: TCCpdpError {
        TCCpdpError(.internalError_BackendTimeOut)
    }
    
    /// 数据库访问错误。
    public static var internalError_DBAccessError: TCCpdpError {
        TCCpdpError(.internalError_DBAccessError)
    }
    
    /// 数据删除失败。
    public static var internalError_DeleteDBError: TCCpdpError {
        TCCpdpError(.internalError_DeleteDBError)
    }
    
    /// 数据重复插入错误。
    public static var internalError_DuplicateKeyError: TCCpdpError {
        TCCpdpError(.internalError_DuplicateKeyError)
    }
    
    /// 资金汇总账号不一致错误。
    public static var internalError_FundSummaryAcctNoInconsistentError: TCCpdpError {
        TCCpdpError(.internalError_FundSummaryAcctNoInconsistentError)
    }
    
    /// 发票已开具。
    public static var internalError_InvoiceExist: TCCpdpError {
        TCCpdpError(.internalError_InvoiceExist)
    }
    
    /// 聚鑫内部系统未知错误。
    ///
    /// 请联系我们
    public static var internalError_Midas: TCCpdpError {
        TCCpdpError(.internalError_Midas)
    }
    
    /// 参数错误。
    public static var internalError_ParameterError: TCCpdpError {
        TCCpdpError(.internalError_ParameterError)
    }
    
    /// 沙箱环境访问错误。
    public static var internalError_SandBoxAccessError: TCCpdpError {
        TCCpdpError(.internalError_SandBoxAccessError)
    }
    
    /// 数据保存失败。
    public static var internalError_SaveDBError: TCCpdpError {
        TCCpdpError(.internalError_SaveDBError)
    }
    
    /// 生成签名失败。
    public static var internalError_SigGenError: TCCpdpError {
        TCCpdpError(.internalError_SigGenError)
    }
    
    /// 子账户不存在错误。
    public static var internalError_SubAccountNotFoundError: TCCpdpError {
        TCCpdpError(.internalError_SubAccountNotFoundError)
    }
    
    /// 内部错误。
    public static var internalError_Unknown: TCCpdpError {
        TCCpdpError(.internalError_Unknown)
    }
    
    /// 未知错误。
    public static var internalError_UnkownError: TCCpdpError {
        TCCpdpError(.internalError_UnkownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCpdpError {
        TCCpdpError(.invalidParameter)
    }
    
    public static var invalidParameter_BackendCgiError: TCCpdpError {
        TCCpdpError(.invalidParameter_BackendCgiError)
    }
    
    /// 缺少必填参数。
    public static var invalidParameter_LackParameter: TCCpdpError {
        TCCpdpError(.invalidParameter_LackParameter)
    }
    
    /// 聚鑫参数无效。
    ///
    /// 请联系我们
    public static var invalidParameter_Midas: TCCpdpError {
        TCCpdpError(.invalidParameter_Midas)
    }
    
    /// 聚鑫环境参数非法。
    ///
    /// 请联系我们
    public static var invalidParameter_MidasEnvironment: TCCpdpError {
        TCCpdpError(.invalidParameter_MidasEnvironment)
    }
    
    /// 聚鑫第三方应用无效。
    ///
    /// 请联系我们
    public static var invalidParameter_MidasExternalApp: TCCpdpError {
        TCCpdpError(.invalidParameter_MidasExternalApp)
    }
    
    /// 聚鑫文件格式错误。
    ///
    /// 请联系我们
    public static var invalidParameter_MidasFileType: TCCpdpError {
        TCCpdpError(.invalidParameter_MidasFileType)
    }
    
    /// 聚鑫摘要错误。
    ///
    /// 请联系我们
    public static var invalidParameter_MidasHash: TCCpdpError {
        TCCpdpError(.invalidParameter_MidasHash)
    }
    
    /// 聚鑫签约ID非法。
    ///
    /// 请联系我们
    public static var invalidParameter_MidasSignId: TCCpdpError {
        TCCpdpError(.invalidParameter_MidasSignId)
    }
    
    /// 参数编码失败。
    public static var invalidParameter_ParamMarshalFailed: TCCpdpError {
        TCCpdpError(.invalidParameter_ParamMarshalFailed)
    }
    
    /// 参数解析失败。
    public static var invalidParameter_ParamUnmarshalFailed: TCCpdpError {
        TCCpdpError(.invalidParameter_ParamUnmarshalFailed)
    }
    
    /// 无效参数。
    public static var invalidParameter_UnsupportedParameter: TCCpdpError {
        TCCpdpError(.invalidParameter_UnsupportedParameter)
    }
    
    /// 聚鑫文件过大。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasLargeFile: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasLargeFile)
    }
    
    /// 聚鑫不允许并发下单。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrder: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrder)
    }
    
    /// 聚鑫订单已取消。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderCanceled: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderCanceled)
    }
    
    /// 聚鑫已关单。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderClosed: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderClosed)
    }
    
    /// 聚鑫订单已过期，包括超时未支付、超过退款期限等情况。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderExpired: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderExpired)
    }
    
    /// 聚鑫处理失败。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderFailed: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderFailed)
    }
    
    /// 聚鑫处理部分成功部分失败。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderPartialSuccess: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderPartialSuccess)
    }
    
    /// 聚鑫处理中。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderProcessing: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderProcessing)
    }
    
    /// 聚鑫处理成功，请勿再提交。
    ///
    /// 请联系我们
    public static var limitExceeded_MidasOrderSuccess: TCCpdpError {
        TCCpdpError(.limitExceeded_MidasOrderSuccess)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCpdpError {
        TCCpdpError(.missingParameter)
    }
    
    /// 参数缺失。
    public static var missingParameter_: TCCpdpError {
        TCCpdpError(.missingParameter_)
    }
    
    /// 参数缺少Action或Action不存在。
    public static var missingParameter_Action: TCCpdpError {
        TCCpdpError(.missingParameter_Action)
    }
    
    /// 参数缺少Appid。
    public static var missingParameter_AppId: TCCpdpError {
        TCCpdpError(.missingParameter_AppId)
    }
    
    /// 聚鑫接口请求频率限制。
    ///
    /// 请联系我们
    public static var requestLimitExceeded_Midas: TCCpdpError {
        TCCpdpError(.requestLimitExceeded_Midas)
    }
    
    /// 聚鑫接口无效请求过多。
    ///
    /// 请联系我们
    public static var requestLimitExceeded_MidasInvalidRequest: TCCpdpError {
        TCCpdpError(.requestLimitExceeded_MidasInvalidRequest)
    }
    
    /// 聚鑫流程进行中，不能重入。
    ///
    /// 请联系我们
    public static var resourceInUse_Midas: TCCpdpError {
        TCCpdpError(.resourceInUse_Midas)
    }
    
    /// 运行资源不足。
    public static var resourceInsufficient_ThreadPoolReject: TCCpdpError {
        TCCpdpError(.resourceInsufficient_ThreadPoolReject)
    }
    
    /// 账户不匹配或不存在。
    public static var resourceNotFound_Account: TCCpdpError {
        TCCpdpError(.resourceNotFound_Account)
    }
    
    /// 批次信息不存在。
    public static var resourceNotFound_BatchInfoNotFound: TCCpdpError {
        TCCpdpError(.resourceNotFound_BatchInfoNotFound)
    }
    
    /// 发票信息不存在。
    public static var resourceNotFound_InvoiceNotFound: TCCpdpError {
        TCCpdpError(.resourceNotFound_InvoiceNotFound)
    }
    
    /// 密钥不匹配或不存在。
    public static var resourceNotFound_Key: TCCpdpError {
        TCCpdpError(.resourceNotFound_Key)
    }
    
    /// 商户信息不存在。
    public static var resourceNotFound_MerchantInfoNotFound: TCCpdpError {
        TCCpdpError(.resourceNotFound_MerchantInfoNotFound)
    }
    
    /// 聚鑫第三方应用未查找到。
    ///
    /// 请联系我们
    public static var resourceNotFound_MidasExternalApp: TCCpdpError {
        TCCpdpError(.resourceNotFound_MidasExternalApp)
    }
    
    /// 聚鑫第三方渠道找不到订单，ORDER_NOT_FOUND表示支付中台找不到订单。
    ///
    /// 请联系我们
    public static var resourceNotFound_MidasExternalOrder: TCCpdpError {
        TCCpdpError(.resourceNotFound_MidasExternalOrder)
    }
    
    /// 聚鑫订单没有查到记录。
    ///
    /// 请联系我们
    public static var resourceNotFound_MidasOrder: TCCpdpError {
        TCCpdpError(.resourceNotFound_MidasOrder)
    }
    
    /// 聚鑫签约关系不存在。
    ///
    /// 请联系我们
    public static var resourceNotFound_MidasSign: TCCpdpError {
        TCCpdpError(.resourceNotFound_MidasSign)
    }
    
    /// 平台信息不存在。
    public static var resourceNotFound_PlatformInfoNotFound: TCCpdpError {
        TCCpdpError(.resourceNotFound_PlatformInfoNotFound)
    }
    
    public static var resourceUnavailable_MidasBalance: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasBalance)
    }
    
    /// 聚鑫单日限额。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasDay: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasDay)
    }
    
    /// 聚鑫订单剩余冻结金额不足，因此会完结失败。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasFrozenAmount: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasFrozenAmount)
    }
    
    /// 聚鑫商户可用余额不足。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasMerchantBalance: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasMerchantBalance)
    }
    
    /// 聚鑫单笔限额。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasOrder: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasOrder)
    }
    
    /// 聚鑫用户可用余额不足。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasUserBalance: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasUserBalance)
    }
    
    /// 聚鑫钱包支付超限。
    ///
    /// 请联系我们
    public static var resourceUnavailable_MidasWallet: TCCpdpError {
        TCCpdpError(.resourceUnavailable_MidasWallet)
    }
    
    /// 聚鑫系统未授权。
    ///
    /// 请联系我们
    public static var unauthorizedOperation_Midas: TCCpdpError {
        TCCpdpError(.unauthorizedOperation_Midas)
    }
}

extension TCCpdpError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, RequestLimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCCpdpError: Equatable {
    public static func == (lhs: TCCpdpError, rhs: TCCpdpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCpdpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCpdpError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
