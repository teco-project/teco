public struct TCIotcloudError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AccountIsolated = "FailedOperation.AccountIsolated"
        case failedOperation_AlreadyDistributionDevice = "FailedOperation.AlreadyDistributionDevice"
        case failedOperation_BindDeviceOverLimit = "FailedOperation.BindDeviceOverLimit"
        case failedOperation_BroadcastTaskIsRunning = "FailedOperation.BroadcastTaskIsRunning"
        case failedOperation_DeviceAlreadyDisabled = "FailedOperation.DeviceAlreadyDisabled"
        case failedOperation_DeviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
        case failedOperation_DeviceIsUpdating = "FailedOperation.DeviceIsUpdating"
        case failedOperation_DeviceNoSubscription = "FailedOperation.DeviceNoSubscription"
        case failedOperation_DeviceOffline = "FailedOperation.DeviceOffline"
        case failedOperation_DeviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
        case failedOperation_DuplicationOfFunctionItem = "FailedOperation.DuplicationOfFunctionItem"
        case failedOperation_FunctionFileNotExist = "FailedOperation.FunctionFileNotExist"
        case failedOperation_InvalidMsgLen = "FailedOperation.InvalidMsgLen"
        case failedOperation_InvalidTopicName = "FailedOperation.InvalidTopicName"
        case failedOperation_ProductNotBind = "FailedOperation.ProductNotBind"
        case failedOperation_ProductResourceDuplicate = "FailedOperation.ProductResourceDuplicate"
        case failedOperation_ProxyIPIsNotEnough = "FailedOperation.ProxyIPIsNotEnough"
        case failedOperation_RRPCTimeout = "FailedOperation.RRPCTimeout"
        case failedOperation_RuleAlreadyDisabled = "FailedOperation.RuleAlreadyDisabled"
        case failedOperation_RuleAlreadyEnabled = "FailedOperation.RuleAlreadyEnabled"
        case failedOperation_TidWhiteListNotOpen = "FailedOperation.TidWhiteListNotOpen"
        case failedOperation_UpdateVersionNotMatch = "FailedOperation.UpdateVersionNotMatch"
        case internalError = "InternalError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ActionNil = "InvalidParameterValue.ActionNil"
        case invalidParameterValue_CACertInvalid = "InvalidParameterValue.CACertInvalid"
        case invalidParameterValue_CACertNotMatch = "InvalidParameterValue.CACertNotMatch"
        case invalidParameterValue_CheckForwardURLFail = "InvalidParameterValue.CheckForwardURLFail"
        case invalidParameterValue_CloudComponentAlreadyExist = "InvalidParameterValue.CloudComponentAlreadyExist"
        case invalidParameterValue_DefinedPskNotBase64 = "InvalidParameterValue.DefinedPskNotBase64"
        case invalidParameterValue_DeviceAlreadyExist = "InvalidParameterValue.DeviceAlreadyExist"
        case invalidParameterValue_DeviceIsNotGateway = "InvalidParameterValue.DeviceIsNotGateway"
        case invalidParameterValue_FailActionHasSameDevice = "InvalidParameterValue.FailActionHasSameDevice"
        case invalidParameterValue_FirmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
        case invalidParameterValue_ForwardRedirectDenied = "InvalidParameterValue.ForwardRedirectDenied"
        case invalidParameterValue_InvalidJSON = "InvalidParameterValue.InvalidJSON"
        case invalidParameterValue_InvalidSQL = "InvalidParameterValue.InvalidSQL"
        case invalidParameterValue_JSONHasInvalidNode = "InvalidParameterValue.JSONHasInvalidNode"
        case invalidParameterValue_JSONSizeExceedLimit = "InvalidParameterValue.JSONSizeExceedLimit"
        case invalidParameterValue_NotMergeAble = "InvalidParameterValue.NotMergeAble"
        case invalidParameterValue_OperationDenied = "InvalidParameterValue.OperationDenied"
        case invalidParameterValue_ParamIncomplete = "InvalidParameterValue.ParamIncomplete"
        case invalidParameterValue_PayloadOverLimit = "InvalidParameterValue.PayloadOverLimit"
        case invalidParameterValue_PrefixInvalid = "InvalidParameterValue.PrefixInvalid"
        case invalidParameterValue_ProductAlreadyExist = "InvalidParameterValue.ProductAlreadyExist"
        case invalidParameterValue_ProductTypeNotSupport = "InvalidParameterValue.ProductTypeNotSupport"
        case invalidParameterValue_RepublishTopicFormatError = "InvalidParameterValue.RepublishTopicFormatError"
        case invalidParameterValue_RuleNumberBeyondLimit = "InvalidParameterValue.RuleNumberBeyondLimit"
        case invalidParameterValue_TidProductAlreadyExist = "InvalidParameterValue.TidProductAlreadyExist"
        case invalidParameterValue_TopicPolicyAlreadyExist = "InvalidParameterValue.TopicPolicyAlreadyExist"
        case invalidParameterValue_TopicRuleAlreadyExist = "InvalidParameterValue.TopicRuleAlreadyExist"
        case invalidParameterValue_TopicRuleSqlNotEdited = "InvalidParameterValue.TopicRuleSqlNotEdited"
        case invalidParameterValue_UpdateTopicRuleDBFail = "InvalidParameterValue.UpdateTopicRuleDBFail"
        case limitExceeded_CAAlreadyBindProduct = "LimitExceeded.CAAlreadyBindProduct"
        case limitExceeded_CACertNameRepeat = "LimitExceeded.CACertNameRepeat"
        case limitExceeded_CACertNotSupport = "LimitExceeded.CACertNotSupport"
        case limitExceeded_CARepeat = "LimitExceeded.CARepeat"
        case limitExceeded_DeviceExceedLimit = "LimitExceeded.DeviceExceedLimit"
        case limitExceeded_FirmwareExceedLimit = "LimitExceeded.FirmwareExceedLimit"
        case limitExceeded_MessageSaved = "LimitExceeded.MessageSaved"
        case limitExceeded_OfflineMessageExceedLimit = "LimitExceeded.OfflineMessageExceedLimit"
        case limitExceeded_ProductExceedLimit = "LimitExceeded.ProductExceedLimit"
        case limitExceeded_TopicPolicyExceedLimit = "LimitExceeded.TopicPolicyExceedLimit"
        case resourceNotFound_CACertNotExist = "ResourceNotFound.CACertNotExist"
        case resourceNotFound_CreateMultiDeviceTaskNotExist = "ResourceNotFound.CreateMultiDeviceTaskNotExist"
        case resourceNotFound_DeviceFirmwareTaskNotExist = "ResourceNotFound.DeviceFirmwareTaskNotExist"
        case resourceNotFound_DeviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
        case resourceNotFound_DeviceNotExist = "ResourceNotFound.DeviceNotExist"
        case resourceNotFound_DeviceResourceNotExist = "ResourceNotFound.DeviceResourceNotExist"
        case resourceNotFound_DeviceShadowNotExist = "ResourceNotFound.DeviceShadowNotExist"
        case resourceNotFound_FirmwareNotExist = "ResourceNotFound.FirmwareNotExist"
        case resourceNotFound_FirmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        case resourceNotFound_ProductNotExist = "ResourceNotFound.ProductNotExist"
        case resourceNotFound_ProductOrDeviceNotExist = "ResourceNotFound.ProductOrDeviceNotExist"
        case resourceNotFound_ProductResourceNotExist = "ResourceNotFound.ProductResourceNotExist"
        case resourceNotFound_ResourceFileNotExist = "ResourceNotFound.ResourceFileNotExist"
        case resourceNotFound_TaskNotExist = "ResourceNotFound.TaskNotExist"
        case resourceNotFound_ThingModelNotExist = "ResourceNotFound.ThingModelNotExist"
        case resourceNotFound_TopicPolicyNotExist = "ResourceNotFound.TopicPolicyNotExist"
        case resourceNotFound_TopicRuleNotExist = "ResourceNotFound.TopicRuleNotExist"
        case unauthorizedOperation_DeleteTidFail = "UnauthorizedOperation.DeleteTidFail"
        case unauthorizedOperation_DeviceHasAlreadyBindGateway = "UnauthorizedOperation.DeviceHasAlreadyBindGateway"
        case unauthorizedOperation_DeviceIsNotEnabled = "UnauthorizedOperation.DeviceIsNotEnabled"
        case unauthorizedOperation_DevicesExistUnderProduct = "UnauthorizedOperation.DevicesExistUnderProduct"
        case unauthorizedOperation_GatewayHasBindedDevices = "UnauthorizedOperation.GatewayHasBindedDevices"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unauthorizedOperation_ProductCantHaveLoRaDevice = "UnauthorizedOperation.ProductCantHaveLoRaDevice"
        case unauthorizedOperation_ProductCantHaveNormalDevice = "UnauthorizedOperation.ProductCantHaveNormalDevice"
        case unauthorizedOperation_ProductCantHaveNotLoRaDevice = "UnauthorizedOperation.ProductCantHaveNotLoRaDevice"
        case unauthorizedOperation_ProductIsForbidden = "UnauthorizedOperation.ProductIsForbidden"
        case unauthorizedOperation_ProductNotSupportPSK = "UnauthorizedOperation.ProductNotSupportPSK"
        case unauthorizedOperation_UserNotAuthenticaed = "UnauthorizedOperation.UserNotAuthenticaed"
        case unsupportedOperation_ClientCertAlreadyGot = "UnsupportedOperation.ClientCertAlreadyGot"
        case unsupportedOperation_DeviceOtaTaskInProgress = "UnsupportedOperation.DeviceOtaTaskInProgress"
        case unsupportedOperation_GatewayProductHasBindedProduct = "UnsupportedOperation.GatewayProductHasBindedProduct"
        case unsupportedOperation_ProductHasBindGateway = "UnsupportedOperation.ProductHasBindGateway"
        case unsupportedOperation_ProductHasBindedGatewayProduct = "UnsupportedOperation.ProductHasBindedGatewayProduct"
        case unsupportedOperation_SuiteTokenNoCreate = "UnsupportedOperation.SuiteTokenNoCreate"
        case unsupportedOperation_WrongProductAuthType = "UnsupportedOperation.WrongProductAuthType"
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
    public static var failedOperation: TCIotcloudError {
        TCIotcloudError(.failedOperation)
    }
    
    /// 操作失败，账号已欠费隔离。
    ///
    /// 请检查账号余额情况，及时充值。
    public static var failedOperation_AccountIsolated: TCIotcloudError {
        TCIotcloudError(.failedOperation_AccountIsolated)
    }
    
    /// 已分发设备，不能再次创建。
    public static var failedOperation_AlreadyDistributionDevice: TCIotcloudError {
        TCIotcloudError(.failedOperation_AlreadyDistributionDevice)
    }
    
    /// 绑定设备超过限制。
    public static var failedOperation_BindDeviceOverLimit: TCIotcloudError {
        TCIotcloudError(.failedOperation_BindDeviceOverLimit)
    }
    
    /// 广播任务正在执行。
    public static var failedOperation_BroadcastTaskIsRunning: TCIotcloudError {
        TCIotcloudError(.failedOperation_BroadcastTaskIsRunning)
    }
    
    /// 设备已经被禁用。
    public static var failedOperation_DeviceAlreadyDisabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceAlreadyDisabled)
    }
    
    /// 设备固件升级任务已经完成。
    public static var failedOperation_DeviceFirmwareTaskAlreadDone: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceFirmwareTaskAlreadDone)
    }
    
    /// 设备正在升级中。
    public static var failedOperation_DeviceIsUpdating: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceIsUpdating)
    }
    
    /// 设备没有订阅相应的topic。
    public static var failedOperation_DeviceNoSubscription: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceNoSubscription)
    }
    
    /// 设备离线。
    public static var failedOperation_DeviceOffline: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceOffline)
    }
    
    /// 设备已经运行其他ota升级任务。
    public static var failedOperation_DeviceRunningOtherOtaTask: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceRunningOtherOtaTask)
    }
    
    /// 不能创建重复的函数。
    public static var failedOperation_DuplicationOfFunctionItem: TCIotcloudError {
        TCIotcloudError(.failedOperation_DuplicationOfFunctionItem)
    }
    
    /// 函数文件不存在。
    public static var failedOperation_FunctionFileNotExist: TCIotcloudError {
        TCIotcloudError(.failedOperation_FunctionFileNotExist)
    }
    
    /// 消息长度非法。
    public static var failedOperation_InvalidMsgLen: TCIotcloudError {
        TCIotcloudError(.failedOperation_InvalidMsgLen)
    }
    
    /// 消息topic非法。
    public static var failedOperation_InvalidTopicName: TCIotcloudError {
        TCIotcloudError(.failedOperation_InvalidTopicName)
    }
    
    /// 产品未绑定，无法代理订阅。
    public static var failedOperation_ProductNotBind: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProductNotBind)
    }
    
    /// 同名产品资源已存在。
    public static var failedOperation_ProductResourceDuplicate: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProductResourceDuplicate)
    }
    
    /// 代理ip或端口资源不足。
    public static var failedOperation_ProxyIPIsNotEnough: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProxyIPIsNotEnough)
    }
    
    /// RRPC接口未收到设备端响应。
    public static var failedOperation_RRPCTimeout: TCIotcloudError {
        TCIotcloudError(.failedOperation_RRPCTimeout)
    }
    
    /// 该规则引擎已经是禁用状态，不需要再被禁用。
    public static var failedOperation_RuleAlreadyDisabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_RuleAlreadyDisabled)
    }
    
    /// 规则已经是启用状态。
    public static var failedOperation_RuleAlreadyEnabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_RuleAlreadyEnabled)
    }
    
    /// 白名单校验未开启，用户不可创建设备，平台会根据设备认证时携带的设备名称自动创建设备。
    public static var failedOperation_TidWhiteListNotOpen: TCIotcloudError {
        TCIotcloudError(.failedOperation_TidWhiteListNotOpen)
    }
    
    /// 更新版本不匹配。
    public static var failedOperation_UpdateVersionNotMatch: TCIotcloudError {
        TCIotcloudError(.failedOperation_UpdateVersionNotMatch)
    }
    
    /// 内部错误。
    public static var internalError: TCIotcloudError {
        TCIotcloudError(.internalError)
    }
    
    public static var internalError_DBOperationError: TCIotcloudError {
        TCIotcloudError(.internalError_DBOperationError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIotcloudError {
        TCIotcloudError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue)
    }
    
    /// 规则行为未配置。
    public static var invalidParameterValue_ActionNil: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ActionNil)
    }
    
    /// CA证书内容错误。
    public static var invalidParameterValue_CACertInvalid: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CACertInvalid)
    }
    
    /// CA验证证书不匹配。
    public static var invalidParameterValue_CACertNotMatch: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CACertNotMatch)
    }
    
    /// 检查第三方URL超时或失败。
    public static var invalidParameterValue_CheckForwardURLFail: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CheckForwardURLFail)
    }
    
    /// 保存失败，行为操作和转发错误行为数据目标不可一致。
    public static var invalidParameterValue_CloudComponentAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CloudComponentAlreadyExist)
    }
    
    /// 格式错误，DefinedPsk需为Base64格式的字符串。
    public static var invalidParameterValue_DefinedPskNotBase64: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DefinedPskNotBase64)
    }
    
    /// 创建的设备名已存在。
    public static var invalidParameterValue_DeviceAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DeviceAlreadyExist)
    }
    
    /// 设备不是网关类型。
    public static var invalidParameterValue_DeviceIsNotGateway: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DeviceIsNotGateway)
    }
    
    /// 存失败，行为操作和转发错误行为数据目标不可为同一设备。
    public static var invalidParameterValue_FailActionHasSameDevice: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_FailActionHasSameDevice)
    }
    
    /// 固件已存在。
    public static var invalidParameterValue_FirmwareAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_FirmwareAlreadyExist)
    }
    
    /// 不允许转发重定向。
    public static var invalidParameterValue_ForwardRedirectDenied: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ForwardRedirectDenied)
    }
    
    /// JSON参数非法。
    public static var invalidParameterValue_InvalidJSON: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_InvalidJSON)
    }
    
    /// SQL语句含有非法字符。
    public static var invalidParameterValue_InvalidSQL: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_InvalidSQL)
    }
    
    /// State JSON对象中包含非法节点。
    public static var invalidParameterValue_JSONHasInvalidNode: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_JSONHasInvalidNode)
    }
    
    /// State JSON对象超过大小限制，最大为 8k。
    public static var invalidParameterValue_JSONSizeExceedLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_JSONSizeExceedLimit)
    }
    
    /// 不可合并。
    public static var invalidParameterValue_NotMergeAble: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_NotMergeAble)
    }
    
    /// 修改规则的操作被禁止。
    ///
    /// 先禁用规则，然后修改后启用。
    public static var invalidParameterValue_OperationDenied: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_OperationDenied)
    }
    
    /// 请求中缺少关键字段信息。
    public static var invalidParameterValue_ParamIncomplete: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ParamIncomplete)
    }
    
    /// 消息Payload超出限制。
    public static var invalidParameterValue_PayloadOverLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_PayloadOverLimit)
    }
    
    /// prefix不合法。
    public static var invalidParameterValue_PrefixInvalid: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_PrefixInvalid)
    }
    
    /// 创建的产品名已存在。
    public static var invalidParameterValue_ProductAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ProductAlreadyExist)
    }
    
    /// 产品类型不支持。
    public static var invalidParameterValue_ProductTypeNotSupport: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ProductTypeNotSupport)
    }
    
    /// 转发的topic格式错误。
    public static var invalidParameterValue_RepublishTopicFormatError: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_RepublishTopicFormatError)
    }
    
    /// 规则数量超过限制。
    public static var invalidParameterValue_RuleNumberBeyondLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_RuleNumberBeyondLimit)
    }
    
    /// 该TID产品已存在。
    public static var invalidParameterValue_TidProductAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TidProductAlreadyExist)
    }
    
    /// Topic已存在。
    public static var invalidParameterValue_TopicPolicyAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicPolicyAlreadyExist)
    }
    
    /// 规则已存在。
    public static var invalidParameterValue_TopicRuleAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicRuleAlreadyExist)
    }
    
    /// 规则sql未编辑。
    public static var invalidParameterValue_TopicRuleSqlNotEdited: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicRuleSqlNotEdited)
    }
    
    /// 请确认规则相关数据是否有更新。
    ///
    /// 修改规则详情，保证规则详情相关字段有值跟以前不一样。
    public static var invalidParameterValue_UpdateTopicRuleDBFail: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_UpdateTopicRuleDBFail)
    }
    
    /// CA证书已经绑定了产品，无法操作。
    public static var limitExceeded_CAAlreadyBindProduct: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CAAlreadyBindProduct)
    }
    
    /// CA证书名称重复。
    public static var limitExceeded_CACertNameRepeat: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CACertNameRepeat)
    }
    
    /// 不支持私有证书操作。
    public static var limitExceeded_CACertNotSupport: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CACertNotSupport)
    }
    
    /// CA证书重复。
    public static var limitExceeded_CARepeat: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CARepeat)
    }
    
    /// 设备数量超过限制。
    public static var limitExceeded_DeviceExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_DeviceExceedLimit)
    }
    
    /// 固件数量超出限制。
    public static var limitExceeded_FirmwareExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_FirmwareExceedLimit)
    }
    
    /// 消息已经保存到离线队列。
    public static var limitExceeded_MessageSaved: TCIotcloudError {
        TCIotcloudError(.limitExceeded_MessageSaved)
    }
    
    /// qos为1的离线消息超过数量限制。
    public static var limitExceeded_OfflineMessageExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_OfflineMessageExceedLimit)
    }
    
    /// 超过产品数量限制。
    public static var limitExceeded_ProductExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_ProductExceedLimit)
    }
    
    /// Topic数量超出限制。
    public static var limitExceeded_TopicPolicyExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_TopicPolicyExceedLimit)
    }
    
    /// CA证书不存在。
    public static var resourceNotFound_CACertNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_CACertNotExist)
    }
    
    /// 批量创建设备任务不存在。
    public static var resourceNotFound_CreateMultiDeviceTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_CreateMultiDeviceTaskNotExist)
    }
    
    /// 设备固件升级任务不存在。
    public static var resourceNotFound_DeviceFirmwareTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceFirmwareTaskNotExist)
    }
    
    /// 设备无固件版本。
    public static var resourceNotFound_DeviceHasNoFirmware: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceHasNoFirmware)
    }
    
    /// 设备不存在。
    public static var resourceNotFound_DeviceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceNotExist)
    }
    
    /// 设备资源不存在。
    public static var resourceNotFound_DeviceResourceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceResourceNotExist)
    }
    
    /// 设备影子不存在。
    public static var resourceNotFound_DeviceShadowNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceShadowNotExist)
    }
    
    /// 固件不存在。
    public static var resourceNotFound_FirmwareNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_FirmwareNotExist)
    }
    
    /// 固件升级任务不存在。
    public static var resourceNotFound_FirmwareTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_FirmwareTaskNotExist)
    }
    
    /// 产品不存在。
    public static var resourceNotFound_ProductNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductNotExist)
    }
    
    /// 用户不存在此产品或设备。
    public static var resourceNotFound_ProductOrDeviceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductOrDeviceNotExist)
    }
    
    /// 产品资源不存在。
    public static var resourceNotFound_ProductResourceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductResourceNotExist)
    }
    
    /// 资源文件不存在。
    public static var resourceNotFound_ResourceFileNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ResourceFileNotExist)
    }
    
    /// 任务不存在。
    public static var resourceNotFound_TaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TaskNotExist)
    }
    
    /// 物模型不存在。
    public static var resourceNotFound_ThingModelNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ThingModelNotExist)
    }
    
    /// Topic不存在。
    public static var resourceNotFound_TopicPolicyNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TopicPolicyNotExist)
    }
    
    /// 规则不存在。
    public static var resourceNotFound_TopicRuleNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TopicRuleNotExist)
    }
    
    /// 该产品已存在TID申请，禁止删除。
    public static var unauthorizedOperation_DeleteTidFail: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeleteTidFail)
    }
    
    /// 该设备绑定了网关设备，无法删除。
    public static var unauthorizedOperation_DeviceHasAlreadyBindGateway: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeviceHasAlreadyBindGateway)
    }
    
    /// 设备未启用。
    public static var unauthorizedOperation_DeviceIsNotEnabled: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeviceIsNotEnabled)
    }
    
    /// 删除的产品下还包括未删除的设备。
    public static var unauthorizedOperation_DevicesExistUnderProduct: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DevicesExistUnderProduct)
    }
    
    /// 该设备下仍有绑定的设备。
    public static var unauthorizedOperation_GatewayHasBindedDevices: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_GatewayHasBindedDevices)
    }
    
    /// 没有权限。
    public static var unauthorizedOperation_PermissionDenied: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 该产品类型不能创建LoRa设备。
    public static var unauthorizedOperation_ProductCantHaveLoRaDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveLoRaDevice)
    }
    
    /// NB-IoT产品不允许创建普通设备。
    public static var unauthorizedOperation_ProductCantHaveNormalDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveNormalDevice)
    }
    
    /// 该产品类型只能创建LoRa设备。
    public static var unauthorizedOperation_ProductCantHaveNotLoRaDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveNotLoRaDevice)
    }
    
    /// 产品禁用了该功能。
    public static var unauthorizedOperation_ProductIsForbidden: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductIsForbidden)
    }
    
    /// 产品不支持密钥认证。
    public static var unauthorizedOperation_ProductNotSupportPSK: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductNotSupportPSK)
    }
    
    /// 用户未通过实名认证。
    public static var unauthorizedOperation_UserNotAuthenticaed: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_UserNotAuthenticaed)
    }
    
    /// 设备私钥已被获取。
    public static var unsupportedOperation_ClientCertAlreadyGot: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ClientCertAlreadyGot)
    }
    
    /// 设备ota升级中。
    public static var unsupportedOperation_DeviceOtaTaskInProgress: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_DeviceOtaTaskInProgress)
    }
    
    /// 网关产品下存在绑定的子产品，无法删除。
    public static var unsupportedOperation_GatewayProductHasBindedProduct: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_GatewayProductHasBindedProduct)
    }
    
    /// 存在网关设备绑定当前产品，无法删除。
    public static var unsupportedOperation_ProductHasBindGateway: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ProductHasBindGateway)
    }
    
    /// 产品存在绑定的网关产品，无法删除。
    public static var unsupportedOperation_ProductHasBindedGatewayProduct: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ProductHasBindedGatewayProduct)
    }
    
    /// 产品为Suite token类型，无法创建新设备。
    public static var unsupportedOperation_SuiteTokenNoCreate: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_SuiteTokenNoCreate)
    }
    
    /// 不支持的认证类型。
    public static var unsupportedOperation_WrongProductAuthType: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_WrongProductAuthType)
    }
}

extension TCIotcloudError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCIotcloudError: Equatable {
    public static func == (lhs: TCIotcloudError, rhs: TCIotcloudError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotcloudError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotcloudError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
