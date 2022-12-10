public struct TCIotexplorerError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_ActionUnreachable = "FailedOperation.ActionUnreachable"
        case failedOperation_BroadcastTaskIsRunning = "FailedOperation.BroadcastTaskIsRunning"
        case failedOperation_DeviceAlreadyDisabled = "FailedOperation.DeviceAlreadyDisabled"
        case failedOperation_DeviceFirmwareIsUpdated = "FailedOperation.DeviceFirmwareIsUpdated"
        case failedOperation_DeviceInfoOutdated = "FailedOperation.DeviceInfoOutdated"
        case failedOperation_DeviceNoSubscription = "FailedOperation.DeviceNoSubscription"
        case failedOperation_DeviceOffline = "FailedOperation.DeviceOffline"
        case failedOperation_OtherUpdateTaskExist = "FailedOperation.OtherUpdateTaskExist"
        case failedOperation_ProductNotReleased = "FailedOperation.ProductNotReleased"
        case failedOperation_RRPCTimeout = "FailedOperation.RRPCTimeout"
        case failedOperation_RuleAlreadyDisabled = "FailedOperation.RuleAlreadyDisabled"
        case failedOperation_RuleAlreadyEnabled = "FailedOperation.RuleAlreadyEnabled"
        case failedOperation_SomeProductIsAlreadyBinded = "FailedOperation.SomeProductIsAlreadyBinded"
        case failedOperation_Timeout = "FailedOperation.Timeout"
        case internalError = "InternalError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case internalError_DBOpertaionError = "InternalError.DBOpertaionError"
        case internalError_InternalLoRaServerError = "InternalError.InternalLoRaServerError"
        case internalError_InternalRPCError = "InternalError.InternalRPCError"
        case internalError_InternalServerException = "InternalError.InternalServerException"
        case internalError_InternalServerExceptionDB = "InternalError.InternalServerExceptionDB"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ActionNil = "InvalidParameterValue.ActionNil"
        case invalidParameterValue_ActionNilOrNotExist = "InvalidParameterValue.ActionNilOrNotExist"
        case invalidParameterValue_AppDescriptionTooLong = "InvalidParameterValue.AppDescriptionTooLong"
        case invalidParameterValue_AppExists = "InvalidParameterValue.AppExists"
        case invalidParameterValue_AppNameTooLong = "InvalidParameterValue.AppNameTooLong"
        case invalidParameterValue_AppNoPermission = "InvalidParameterValue.AppNoPermission"
        case invalidParameterValue_AppNotExists = "InvalidParameterValue.AppNotExists"
        case invalidParameterValue_CheckForwardURLFail = "InvalidParameterValue.CheckForwardURLFail"
        case invalidParameterValue_DeviceAlreadyExist = "InvalidParameterValue.DeviceAlreadyExist"
        case invalidParameterValue_DeviceHasNotBindGateway = "InvalidParameterValue.DeviceHasNotBindGateway"
        case invalidParameterValue_DeviceIsNotGateway = "InvalidParameterValue.DeviceIsNotGateway"
        case invalidParameterValue_DeviceNameInvalid = "InvalidParameterValue.DeviceNameInvalid"
        case invalidParameterValue_DeviceNotExist = "InvalidParameterValue.DeviceNotExist"
        case invalidParameterValue_ErrLLSyncBroadcastDeviceNameLengthExceed = "InvalidParameterValue.ErrLLSyncBroadcastDeviceNameLengthExceed"
        case invalidParameterValue_ErrorTaskNotExist = "InvalidParameterValue.ErrorTaskNotExist"
        case invalidParameterValue_FailActionHasSameDevice = "InvalidParameterValue.FailActionHasSameDevice"
        case invalidParameterValue_FirmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
        case invalidParameterValue_ForwardRedirectDenied = "InvalidParameterValue.ForwardRedirectDenied"
        case invalidParameterValue_InvalidSQL = "InvalidParameterValue.InvalidSQL"
        case invalidParameterValue_LoRaFreqParmsError = "InvalidParameterValue.LoRaFreqParmsError"
        case invalidParameterValue_ModelDefineDontMatchTemplate = "InvalidParameterValue.ModelDefineDontMatchTemplate"
        case invalidParameterValue_ModelDefineDupID = "InvalidParameterValue.ModelDefineDupID"
        case invalidParameterValue_ModelDefineErrorModel = "InvalidParameterValue.ModelDefineErrorModel"
        case invalidParameterValue_ModelDefineErrorType = "InvalidParameterValue.ModelDefineErrorType"
        case invalidParameterValue_ModelDefineEventParamsDupID = "InvalidParameterValue.ModelDefineEventParamsDupID"
        case invalidParameterValue_ModelDefineEventParamsExceedLimit = "InvalidParameterValue.ModelDefineEventParamsExceedLimit"
        case invalidParameterValue_ModelDefineEventPropError = "InvalidParameterValue.ModelDefineEventPropError"
        case invalidParameterValue_ModelDefineEventPropNameError = "InvalidParameterValue.ModelDefineEventPropNameError"
        case invalidParameterValue_ModelDefineInvalid = "InvalidParameterValue.ModelDefineInvalid"
        case invalidParameterValue_ModelDefineNil = "InvalidParameterValue.ModelDefineNil"
        case invalidParameterValue_ModelDefinePropBoolMappingError = "InvalidParameterValue.ModelDefinePropBoolMappingError"
        case invalidParameterValue_ModelDefinePropEnumMappingError = "InvalidParameterValue.ModelDefinePropEnumMappingError"
        case invalidParameterValue_ModelDefinePropRangeError = "InvalidParameterValue.ModelDefinePropRangeError"
        case invalidParameterValue_ModelDefinePropRangeOverflow = "InvalidParameterValue.ModelDefinePropRangeOverflow"
        case invalidParameterValue_ModelPropertyNotExist = "InvalidParameterValue.ModelPropertyNotExist"
        case invalidParameterValue_MsgContentInvalid = "InvalidParameterValue.MsgContentInvalid"
        case invalidParameterValue_MsgLevelInvalid = "InvalidParameterValue.MsgLevelInvalid"
        case invalidParameterValue_MsgTitleInvalid = "InvalidParameterValue.MsgTitleInvalid"
        case invalidParameterValue_MsgTypeInvalid = "InvalidParameterValue.MsgTypeInvalid"
        case invalidParameterValue_OperationDenied = "InvalidParameterValue.OperationDenied"
        case invalidParameterValue_PayloadOverLimit = "InvalidParameterValue.PayloadOverLimit"
        case invalidParameterValue_ProductAlreadyExist = "InvalidParameterValue.ProductAlreadyExist"
        case invalidParameterValue_ProductIDInvalid = "InvalidParameterValue.ProductIDInvalid"
        case invalidParameterValue_ProductIsNotGateway = "InvalidParameterValue.ProductIsNotGateway"
        case invalidParameterValue_ProductParmsError = "InvalidParameterValue.ProductParmsError"
        case invalidParameterValue_ProjectParmsError = "InvalidParameterValue.ProjectParmsError"
        case invalidParameterValue_RepublishTopicFormatError = "InvalidParameterValue.RepublishTopicFormatError"
        case invalidParameterValue_RuleNumberBeyondLimit = "InvalidParameterValue.RuleNumberBeyondLimit"
        case invalidParameterValue_SelectKeyFromBinaryPayload = "InvalidParameterValue.SelectKeyFromBinaryPayload"
        case invalidParameterValue_StartTimeLaterEndTime = "InvalidParameterValue.StartTimeLaterEndTime"
        case invalidParameterValue_TopicPolicyAlreadyExist = "InvalidParameterValue.TopicPolicyAlreadyExist"
        case invalidParameterValue_TopicRuleAlreadyExist = "InvalidParameterValue.TopicRuleAlreadyExist"
        case invalidParameterValue_TopicRuleSqlNotEdited = "InvalidParameterValue.TopicRuleSqlNotEdited"
        case invalidParameterValue_UpdateTopicRuleDBFail = "InvalidParameterValue.UpdateTopicRuleDBFail"
        case invalidParameterValue_UserIDInvalid = "InvalidParameterValue.UserIDInvalid"
        case invalidParameterValue_VPNParmsError = "InvalidParameterValue.VPNParmsError"
        case invalidParameter_ActionInputParamsInvalid = "InvalidParameter.ActionInputParamsInvalid"
        case invalidParameter_FirmwareAlreadyExist = "InvalidParameter.FirmwareAlreadyExist"
        case invalidParameter_ProductIsNotGateway = "InvalidParameter.ProductIsNotGateway"
        case limitExceeded_ApplicationExceedLimit = "LimitExceeded.ApplicationExceedLimit"
        case limitExceeded_BatchProductionExceedLimit = "LimitExceeded.BatchProductionExceedLimit"
        case limitExceeded_BatchProductionNull = "LimitExceeded.BatchProductionNull"
        case limitExceeded_BindProductsExceedLimit = "LimitExceeded.BindProductsExceedLimit"
        case limitExceeded_DeviceExceedLimit = "LimitExceeded.DeviceExceedLimit"
        case limitExceeded_FirmwareExceedLimit = "LimitExceeded.FirmwareExceedLimit"
        case limitExceeded_MessageSaved = "LimitExceeded.MessageSaved"
        case limitExceeded_ProductExceedLimit = "LimitExceeded.ProductExceedLimit"
        case limitExceeded_ProjectExceedLimit = "LimitExceeded.ProjectExceedLimit"
        case limitExceeded_StudioLoRaFreqExceedLimit = "LimitExceeded.StudioLoRaFreqExceedLimit"
        case limitExceeded_StudioProductExceedLimit = "LimitExceeded.StudioProductExceedLimit"
        case limitExceeded_ThingModelExceedLimit = "LimitExceeded.ThingModelExceedLimit"
        case limitExceeded_TopicPolicyExceedLimit = "LimitExceeded.TopicPolicyExceedLimit"
        case missingParameter_ModelDefineEventTypeError = "MissingParameter.ModelDefineEventTypeError"
        case resourceInsufficient_BatchProductionIsRunning = "ResourceInsufficient.BatchProductionIsRunning"
        case resourceNotFound_BatchProductionNotExist = "ResourceNotFound.BatchProductionNotExist"
        case resourceNotFound_CannotGetFromUrl = "ResourceNotFound.CannotGetFromUrl"
        case resourceNotFound_DeviceDupKeyExist = "ResourceNotFound.DeviceDupKeyExist"
        case resourceNotFound_DeviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
        case resourceNotFound_DeviceNotBind = "ResourceNotFound.DeviceNotBind"
        case resourceNotFound_DeviceNotExist = "ResourceNotFound.DeviceNotExist"
        case resourceNotFound_DeviceShadowNotExist = "ResourceNotFound.DeviceShadowNotExist"
        case resourceNotFound_FenceBindNotExist = "ResourceNotFound.FenceBindNotExist"
        case resourceNotFound_FenceNotExist = "ResourceNotFound.FenceNotExist"
        case resourceNotFound_FirmwareNotExist = "ResourceNotFound.FirmwareNotExist"
        case resourceNotFound_FirmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        case resourceNotFound_GatewayDupKeyExist = "ResourceNotFound.GatewayDupKeyExist"
        case resourceNotFound_GatewayNotExist = "ResourceNotFound.GatewayNotExist"
        case resourceNotFound_InstanceNotExist = "ResourceNotFound.InstanceNotExist"
        case resourceNotFound_ModuleNotExist = "ResourceNotFound.ModuleNotExist"
        case resourceNotFound_ProductNotExist = "ResourceNotFound.ProductNotExist"
        case resourceNotFound_ProductOrDeviceNotExist = "ResourceNotFound.ProductOrDeviceNotExist"
        case resourceNotFound_ProductResourceNotExist = "ResourceNotFound.ProductResourceNotExist"
        case resourceNotFound_ProjectNotExist = "ResourceNotFound.ProjectNotExist"
        case resourceNotFound_SpaceNotExist = "ResourceNotFound.SpaceNotExist"
        case resourceNotFound_StudioLoRaFreqNotExist = "ResourceNotFound.StudioLoRaFreqNotExist"
        case resourceNotFound_StudioProductNotExist = "ResourceNotFound.StudioProductNotExist"
        case resourceNotFound_TopicPolicyNotExist = "ResourceNotFound.TopicPolicyNotExist"
        case resourceNotFound_TopicRuleNotExist = "ResourceNotFound.TopicRuleNotExist"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_APPNoPermissionToStudioProduct = "UnauthorizedOperation.APPNoPermissionToStudioProduct"
        case unauthorizedOperation_AppNoPermission = "UnauthorizedOperation.AppNoPermission"
        case unauthorizedOperation_DeviceHasAlreadyBindGateway = "UnauthorizedOperation.DeviceHasAlreadyBindGateway"
        case unauthorizedOperation_DeviceIsNotEnabled = "UnauthorizedOperation.DeviceIsNotEnabled"
        case unauthorizedOperation_GatewayHasBindedDevices = "UnauthorizedOperation.GatewayHasBindedDevices"
        case unauthorizedOperation_NoPermissionToFamily = "UnauthorizedOperation.NoPermissionToFamily"
        case unauthorizedOperation_NoPermissionToInstance = "UnauthorizedOperation.NoPermissionToInstance"
        case unauthorizedOperation_NoPermissionToProject = "UnauthorizedOperation.NoPermissionToProject"
        case unauthorizedOperation_NoPermissionToStudioFence = "UnauthorizedOperation.NoPermissionToStudioFence"
        case unauthorizedOperation_NoPermissionToStudioInstance = "UnauthorizedOperation.NoPermissionToStudioInstance"
        case unauthorizedOperation_NoPermissionToStudioProduct = "UnauthorizedOperation.NoPermissionToStudioProduct"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unauthorizedOperation_ProductNotSupportPSK = "UnauthorizedOperation.ProductNotSupportPSK"
        case unauthorizedOperation_UserLicenseExceedLimit = "UnauthorizedOperation.UserLicenseExceedLimit"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BindsExistUnderFence = "UnsupportedOperation.BindsExistUnderFence"
        case unsupportedOperation_DeviceDupKeyExist = "UnsupportedOperation.DeviceDupKeyExist"
        case unsupportedOperation_DeviceExceedLimit = "UnsupportedOperation.DeviceExceedLimit"
        case unsupportedOperation_DeviceOtaTaskInProgress = "UnsupportedOperation.DeviceOtaTaskInProgress"
        case unsupportedOperation_DeviceType = "UnsupportedOperation.DeviceType"
        case unsupportedOperation_DevicesExistUnderProduct = "UnsupportedOperation.DevicesExistUnderProduct"
        case unsupportedOperation_EnableSaasServiceExistUnderProject = "UnsupportedOperation.EnableSaasServiceExistUnderProject"
        case unsupportedOperation_ExistBindedDevicesUnderGatewayProduct = "UnsupportedOperation.ExistBindedDevicesUnderGatewayProduct"
        case unsupportedOperation_FenceDupKeyExist = "UnsupportedOperation.FenceDupKeyExist"
        case unsupportedOperation_FenceExistUnderSpace = "UnsupportedOperation.FenceExistUnderSpace"
        case unsupportedOperation_GatewayProductHasBindedProduct = "UnsupportedOperation.GatewayProductHasBindedProduct"
        case unsupportedOperation_InstanceIsolated = "UnsupportedOperation.InstanceIsolated"
        case unsupportedOperation_LoRaFreqDupKeyExist = "UnsupportedOperation.LoRaFreqDupKeyExist"
        case unsupportedOperation_LoRaNoUpLink = "UnsupportedOperation.LoRaNoUpLink"
        case unsupportedOperation_LoRaNotActivate = "UnsupportedOperation.LoRaNotActivate"
        case unsupportedOperation_NodesExistUnderVPN = "UnsupportedOperation.NodesExistUnderVPN"
        case unsupportedOperation_PoolExistUnderProject = "UnsupportedOperation.PoolExistUnderProject"
        case unsupportedOperation_ProductDupKeyExist = "UnsupportedOperation.ProductDupKeyExist"
        case unsupportedOperation_ProductExistUnderProject = "UnsupportedOperation.ProductExistUnderProject"
        case unsupportedOperation_ProductHasBindedGateWayProduct = "UnsupportedOperation.ProductHasBindedGateWayProduct"
        case unsupportedOperation_ProjectDupKeyExist = "UnsupportedOperation.ProjectDupKeyExist"
        case unsupportedOperation_SpaceDupKeyExist = "UnsupportedOperation.SpaceDupKeyExist"
        case unsupportedOperation_StaffPoolDupNameExist = "UnsupportedOperation.StaffPoolDupNameExist"
        case unsupportedOperation_StudioLoRaFreqInUsed = "UnsupportedOperation.StudioLoRaFreqInUsed"
        case unsupportedOperation_UnpaidOrder = "UnsupportedOperation.UnpaidOrder"
        case unsupportedOperation_VPNDupKeyExist = "UnsupportedOperation.VPNDupKeyExist"
        case unsupportedOperation_VideoAccountNotExist = "UnsupportedOperation.VideoAccountNotExist"
        case unsupportedOperation_VideoInsufficientLicenses = "UnsupportedOperation.VideoInsufficientLicenses"
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
    public static var authFailure: TCIotexplorerError {
        TCIotexplorerError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCIotexplorerError {
        TCIotexplorerError(.failedOperation)
    }
    
    /// 动作消息不可达。
    public static var failedOperation_ActionUnreachable: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_ActionUnreachable)
    }
    
    /// 广播任务正在执行。
    public static var failedOperation_BroadcastTaskIsRunning: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_BroadcastTaskIsRunning)
    }
    
    /// 设备已经被禁用。
    public static var failedOperation_DeviceAlreadyDisabled: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_DeviceAlreadyDisabled)
    }
    
    /// 设备已为目标升级版本。
    public static var failedOperation_DeviceFirmwareIsUpdated: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_DeviceFirmwareIsUpdated)
    }
    
    /// 设备固件版本错误。
    public static var failedOperation_DeviceInfoOutdated: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_DeviceInfoOutdated)
    }
    
    /// 返回:消息发送失败，设备未订阅Topic。
    public static var failedOperation_DeviceNoSubscription: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_DeviceNoSubscription)
    }
    
    /// 设备处于离线状态。
    public static var failedOperation_DeviceOffline: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_DeviceOffline)
    }
    
    /// 存在其他升级任务。
    public static var failedOperation_OtherUpdateTaskExist: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_OtherUpdateTaskExist)
    }
    
    /// 产品尚未发布。
    public static var failedOperation_ProductNotReleased: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_ProductNotReleased)
    }
    
    /// RRPC接口未收到设备端响应。
    public static var failedOperation_RRPCTimeout: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_RRPCTimeout)
    }
    
    /// 转发已经停止。
    public static var failedOperation_RuleAlreadyDisabled: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_RuleAlreadyDisabled)
    }
    
    /// 该规则已被启用。
    public static var failedOperation_RuleAlreadyEnabled: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_RuleAlreadyEnabled)
    }
    
    /// 部分产品已经被绑定。
    public static var failedOperation_SomeProductIsAlreadyBinded: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_SomeProductIsAlreadyBinded)
    }
    
    /// 超过时间。
    public static var failedOperation_Timeout: TCIotexplorerError {
        TCIotexplorerError(.failedOperation_Timeout)
    }
    
    /// 内部错误。
    public static var internalError: TCIotexplorerError {
        TCIotexplorerError(.internalError)
    }
    
    public static var internalError_DBOperationError: TCIotexplorerError {
        TCIotexplorerError(.internalError_DBOperationError)
    }
    
    /// DB操作错误。
    public static var internalError_DBOpertaionError: TCIotexplorerError {
        TCIotexplorerError(.internalError_DBOpertaionError)
    }
    
    /// 内部LoRaServer错误。
    ///
    /// 用户无需操作，产品已第一时间获得该告警，正在处理中，请稍后重试。
    public static var internalError_InternalLoRaServerError: TCIotexplorerError {
        TCIotexplorerError(.internalError_InternalLoRaServerError)
    }
    
    /// 内部RPC错误。
    public static var internalError_InternalRPCError: TCIotexplorerError {
        TCIotexplorerError(.internalError_InternalRPCError)
    }
    
    /// 发生错误。
    public static var internalError_InternalServerException: TCIotexplorerError {
        TCIotexplorerError(.internalError_InternalServerException)
    }
    
    /// 内部DB错误。
    public static var internalError_InternalServerExceptionDB: TCIotexplorerError {
        TCIotexplorerError(.internalError_InternalServerExceptionDB)
    }
    
    /// 调用超时。
    public static var internalError_Timeout: TCIotexplorerError {
        TCIotexplorerError(.internalError_Timeout)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIotexplorerError {
        TCIotexplorerError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue)
    }
    
    /// 规则行为未配置。
    public static var invalidParameterValue_ActionNil: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ActionNil)
    }
    
    /// 动作为空或不存在。
    public static var invalidParameterValue_ActionNilOrNotExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ActionNilOrNotExist)
    }
    
    /// 应用描述过长。
    public static var invalidParameterValue_AppDescriptionTooLong: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_AppDescriptionTooLong)
    }
    
    /// App已存在。
    public static var invalidParameterValue_AppExists: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_AppExists)
    }
    
    /// 应用名称过长。
    public static var invalidParameterValue_AppNameTooLong: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_AppNameTooLong)
    }
    
    /// App无权限。
    public static var invalidParameterValue_AppNoPermission: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_AppNoPermission)
    }
    
    /// App不存在。
    public static var invalidParameterValue_AppNotExists: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_AppNotExists)
    }
    
    /// 检查第三方URL超时或失败。
    public static var invalidParameterValue_CheckForwardURLFail: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_CheckForwardURLFail)
    }
    
    /// 创建的设备名已存在。
    public static var invalidParameterValue_DeviceAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_DeviceAlreadyExist)
    }
    
    /// 设备未绑定任何网关设备。
    public static var invalidParameterValue_DeviceHasNotBindGateway: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_DeviceHasNotBindGateway)
    }
    
    /// 设备不是网关类型。
    public static var invalidParameterValue_DeviceIsNotGateway: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_DeviceIsNotGateway)
    }
    
    /// 设备名称非法。
    public static var invalidParameterValue_DeviceNameInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_DeviceNameInvalid)
    }
    
    /// 设备不存在。
    public static var invalidParameterValue_DeviceNotExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_DeviceNotExist)
    }
    
    public static var invalidParameterValue_ErrLLSyncBroadcastDeviceNameLengthExceed: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ErrLLSyncBroadcastDeviceNameLengthExceed)
    }
    
    /// 任务不存在。
    public static var invalidParameterValue_ErrorTaskNotExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ErrorTaskNotExist)
    }
    
    /// 存失败，行为操作和转发错误行为数据目标不可为同一设备。
    public static var invalidParameterValue_FailActionHasSameDevice: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_FailActionHasSameDevice)
    }
    
    /// 固件已经存在。
    public static var invalidParameterValue_FirmwareAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_FirmwareAlreadyExist)
    }
    
    /// 转发重定向被拒绝。
    public static var invalidParameterValue_ForwardRedirectDenied: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ForwardRedirectDenied)
    }
    
    /// SQL语句含有非法字符。
    public static var invalidParameterValue_InvalidSQL: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_InvalidSQL)
    }
    
    /// LoRa频点参数错误。
    public static var invalidParameterValue_LoRaFreqParmsError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_LoRaFreqParmsError)
    }
    
    /// 物模型不符合产品模板。
    public static var invalidParameterValue_ModelDefineDontMatchTemplate: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineDontMatchTemplate)
    }
    
    /// 物模型存在重复ID。
    public static var invalidParameterValue_ModelDefineDupID: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineDupID)
    }
    
    /// 物模型事件/属性Model错误。
    public static var invalidParameterValue_ModelDefineErrorModel: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineErrorModel)
    }
    
    /// 物模型事件/属性Model Type错误。
    public static var invalidParameterValue_ModelDefineErrorType: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineErrorType)
    }
    
    /// 物模型EVENT Parms存在重复ID。
    public static var invalidParameterValue_ModelDefineEventParamsDupID: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineEventParamsDupID)
    }
    
    /// 物模型EVENT Parms数量超过限制。
    public static var invalidParameterValue_ModelDefineEventParamsExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineEventParamsExceedLimit)
    }
    
    /// 物模型事件/属性参数错误。
    public static var invalidParameterValue_ModelDefineEventPropError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineEventPropError)
    }
    
    /// 物模型事件/属性 Name 错误。
    public static var invalidParameterValue_ModelDefineEventPropNameError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineEventPropNameError)
    }
    
    /// 数据模板未定义。
    public static var invalidParameterValue_ModelDefineInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineInvalid)
    }
    
    /// 物模型为空。
    public static var invalidParameterValue_ModelDefineNil: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefineNil)
    }
    
    /// 物模型事件/属性 BOOL类型 Mapping 定义错误。
    public static var invalidParameterValue_ModelDefinePropBoolMappingError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefinePropBoolMappingError)
    }
    
    /// 物模型事件/属性 Enum类型 Mapping 定义错误。
    public static var invalidParameterValue_ModelDefinePropEnumMappingError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefinePropEnumMappingError)
    }
    
    /// 物模型事件/属性 Min/Max 定义错误。
    public static var invalidParameterValue_ModelDefinePropRangeError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefinePropRangeError)
    }
    
    /// 物模型事件/属性 Min/Max 范围超限。
    public static var invalidParameterValue_ModelDefinePropRangeOverflow: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelDefinePropRangeOverflow)
    }
    
    /// 属性ID不存在。
    public static var invalidParameterValue_ModelPropertyNotExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ModelPropertyNotExist)
    }
    
    /// 消息内容非法。
    public static var invalidParameterValue_MsgContentInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_MsgContentInvalid)
    }
    
    /// 消息等级非法。
    public static var invalidParameterValue_MsgLevelInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_MsgLevelInvalid)
    }
    
    /// 消息标题非法。
    public static var invalidParameterValue_MsgTitleInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_MsgTitleInvalid)
    }
    
    /// 消息类型非法。
    public static var invalidParameterValue_MsgTypeInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_MsgTypeInvalid)
    }
    
    /// 操作不支持。
    public static var invalidParameterValue_OperationDenied: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_OperationDenied)
    }
    
    /// 消息Payload超出限制。
    public static var invalidParameterValue_PayloadOverLimit: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_PayloadOverLimit)
    }
    
    /// 创建的产品名已存在。
    public static var invalidParameterValue_ProductAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ProductAlreadyExist)
    }
    
    /// 产品ID非法。
    public static var invalidParameterValue_ProductIDInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ProductIDInvalid)
    }
    
    /// 产品不是网关类型，无法绑定子产品。
    public static var invalidParameterValue_ProductIsNotGateway: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ProductIsNotGateway)
    }
    
    /// 产品参数错误。
    public static var invalidParameterValue_ProductParmsError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ProductParmsError)
    }
    
    /// 项目参数错误。
    public static var invalidParameterValue_ProjectParmsError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_ProjectParmsError)
    }
    
    /// 转发的topic格式错误。
    public static var invalidParameterValue_RepublishTopicFormatError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_RepublishTopicFormatError)
    }
    
    /// 规则数量超过限制。
    public static var invalidParameterValue_RuleNumberBeyondLimit: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_RuleNumberBeyondLimit)
    }
    
    /// 二进制数据格式只可利用 * 将数据进行转发。
    public static var invalidParameterValue_SelectKeyFromBinaryPayload: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_SelectKeyFromBinaryPayload)
    }
    
    /// 开始时间晚于结束时间。
    public static var invalidParameterValue_StartTimeLaterEndTime: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_StartTimeLaterEndTime)
    }
    
    /// Topic已存在。
    public static var invalidParameterValue_TopicPolicyAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_TopicPolicyAlreadyExist)
    }
    
    /// 规则已存在。
    public static var invalidParameterValue_TopicRuleAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_TopicRuleAlreadyExist)
    }
    
    /// 规则sql未编辑。
    public static var invalidParameterValue_TopicRuleSqlNotEdited: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_TopicRuleSqlNotEdited)
    }
    
    /// 请确认规则相关数据是否有更新。
    public static var invalidParameterValue_UpdateTopicRuleDBFail: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_UpdateTopicRuleDBFail)
    }
    
    /// 用户ID非法。
    public static var invalidParameterValue_UserIDInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_UserIDInvalid)
    }
    
    /// VPN参数错误。
    public static var invalidParameterValue_VPNParmsError: TCIotexplorerError {
        TCIotexplorerError(.invalidParameterValue_VPNParmsError)
    }
    
    /// 动作输入参数不合法。
    public static var invalidParameter_ActionInputParamsInvalid: TCIotexplorerError {
        TCIotexplorerError(.invalidParameter_ActionInputParamsInvalid)
    }
    
    /// 固件已存在。
    public static var invalidParameter_FirmwareAlreadyExist: TCIotexplorerError {
        TCIotexplorerError(.invalidParameter_FirmwareAlreadyExist)
    }
    
    /// 产品不是网关类型，无法绑定子产品。
    public static var invalidParameter_ProductIsNotGateway: TCIotexplorerError {
        TCIotexplorerError(.invalidParameter_ProductIsNotGateway)
    }
    
    /// 应用数量超出限制。
    public static var limitExceeded_ApplicationExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_ApplicationExceedLimit)
    }
    
    /// 量产超出限制。
    public static var limitExceeded_BatchProductionExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_BatchProductionExceedLimit)
    }
    
    /// 量产为空。
    public static var limitExceeded_BatchProductionNull: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_BatchProductionNull)
    }
    
    /// 绑定的产品数量超过限制。
    public static var limitExceeded_BindProductsExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_BindProductsExceedLimit)
    }
    
    /// 设备数量超过限制。
    public static var limitExceeded_DeviceExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_DeviceExceedLimit)
    }
    
    /// 固件数量超出限制。
    public static var limitExceeded_FirmwareExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_FirmwareExceedLimit)
    }
    
    /// 消息数量超过限制。
    public static var limitExceeded_MessageSaved: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_MessageSaved)
    }
    
    /// 超过产品数量限制。
    public static var limitExceeded_ProductExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_ProductExceedLimit)
    }
    
    /// 项目数量超出限制。
    public static var limitExceeded_ProjectExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_ProjectExceedLimit)
    }
    
    /// LoRa频点数量超出限制。
    public static var limitExceeded_StudioLoRaFreqExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_StudioLoRaFreqExceedLimit)
    }
    
    /// 产品数量超出限制。
    public static var limitExceeded_StudioProductExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_StudioProductExceedLimit)
    }
    
    /// 物模型超出限制。
    public static var limitExceeded_ThingModelExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_ThingModelExceedLimit)
    }
    
    /// Topic数量超出限制。
    public static var limitExceeded_TopicPolicyExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.limitExceeded_TopicPolicyExceedLimit)
    }
    
    /// 物模型事件 Type 错误。
    public static var missingParameter_ModelDefineEventTypeError: TCIotexplorerError {
        TCIotexplorerError(.missingParameter_ModelDefineEventTypeError)
    }
    
    /// 已有量产进行，请等待量产完成。
    public static var resourceInsufficient_BatchProductionIsRunning: TCIotexplorerError {
        TCIotexplorerError(.resourceInsufficient_BatchProductionIsRunning)
    }
    
    /// 量产不存在。
    public static var resourceNotFound_BatchProductionNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_BatchProductionNotExist)
    }
    
    /// 上传URL无法获取。
    public static var resourceNotFound_CannotGetFromUrl: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_CannotGetFromUrl)
    }
    
    /// 存在重复设备。
    public static var resourceNotFound_DeviceDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_DeviceDupKeyExist)
    }
    
    /// 固件不存在。
    public static var resourceNotFound_DeviceHasNoFirmware: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_DeviceHasNoFirmware)
    }
    
    /// 设备未绑定家庭。
    public static var resourceNotFound_DeviceNotBind: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_DeviceNotBind)
    }
    
    /// 设备不存在。
    public static var resourceNotFound_DeviceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_DeviceNotExist)
    }
    
    /// 设备没有影子信息。
    public static var resourceNotFound_DeviceShadowNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_DeviceShadowNotExist)
    }
    
    /// 围栏未绑定该设备。
    public static var resourceNotFound_FenceBindNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_FenceBindNotExist)
    }
    
    /// 围栏未创建或是已删除。
    public static var resourceNotFound_FenceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_FenceNotExist)
    }
    
    /// 固件不存在。
    public static var resourceNotFound_FirmwareNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_FirmwareNotExist)
    }
    
    /// 固件升级任务不存在。
    public static var resourceNotFound_FirmwareTaskNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_FirmwareTaskNotExist)
    }
    
    /// 存在重复网关。
    public static var resourceNotFound_GatewayDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_GatewayDupKeyExist)
    }
    
    /// 网关不存在。
    public static var resourceNotFound_GatewayNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_GatewayNotExist)
    }
    
    /// 实例未创建或是已删除。
    public static var resourceNotFound_InstanceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_InstanceNotExist)
    }
    
    /// 模组不存在或改动未生效。
    public static var resourceNotFound_ModuleNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_ModuleNotExist)
    }
    
    /// 产品不存在。
    public static var resourceNotFound_ProductNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_ProductNotExist)
    }
    
    /// 产品或设备不存在。
    public static var resourceNotFound_ProductOrDeviceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_ProductOrDeviceNotExist)
    }
    
    /// 产品资源不存在。
    public static var resourceNotFound_ProductResourceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_ProductResourceNotExist)
    }
    
    /// 项目不存在。
    public static var resourceNotFound_ProjectNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_ProjectNotExist)
    }
    
    /// 位置空间未创建或是已删除。
    public static var resourceNotFound_SpaceNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_SpaceNotExist)
    }
    
    /// LoRa频点尚未创建或已被删除。
    public static var resourceNotFound_StudioLoRaFreqNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_StudioLoRaFreqNotExist)
    }
    
    /// 产品不存在。
    public static var resourceNotFound_StudioProductNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_StudioProductNotExist)
    }
    
    /// Topic不存在。
    public static var resourceNotFound_TopicPolicyNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_TopicPolicyNotExist)
    }
    
    /// 规则不存在。
    public static var resourceNotFound_TopicRuleNotExist: TCIotexplorerError {
        TCIotexplorerError(.resourceNotFound_TopicRuleNotExist)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation)
    }
    
    /// APP对产品没有权限。
    public static var unauthorizedOperation_APPNoPermissionToStudioProduct: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_APPNoPermissionToStudioProduct)
    }
    
    /// App无权限。
    public static var unauthorizedOperation_AppNoPermission: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_AppNoPermission)
    }
    
    /// 该设备绑定了网关设备，无法删除。
    public static var unauthorizedOperation_DeviceHasAlreadyBindGateway: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_DeviceHasAlreadyBindGateway)
    }
    
    /// 设备未启用。
    public static var unauthorizedOperation_DeviceIsNotEnabled: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_DeviceIsNotEnabled)
    }
    
    /// 该设备下仍有绑定的设备。
    public static var unauthorizedOperation_GatewayHasBindedDevices: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_GatewayHasBindedDevices)
    }
    
    /// 此家庭无权操作。
    public static var unauthorizedOperation_NoPermissionToFamily: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToFamily)
    }
    
    /// 实例ACL错误。
    public static var unauthorizedOperation_NoPermissionToInstance: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToInstance)
    }
    
    /// 项目ACL错误。
    public static var unauthorizedOperation_NoPermissionToProject: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToProject)
    }
    
    /// 围栏ACL错误。
    public static var unauthorizedOperation_NoPermissionToStudioFence: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToStudioFence)
    }
    
    /// 实例ACL错误。
    public static var unauthorizedOperation_NoPermissionToStudioInstance: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToStudioInstance)
    }
    
    /// 产品ACL错误。
    public static var unauthorizedOperation_NoPermissionToStudioProduct: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_NoPermissionToStudioProduct)
    }
    
    /// 没有权限。
    public static var unauthorizedOperation_PermissionDenied: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 产品不支持密钥认证。
    public static var unauthorizedOperation_ProductNotSupportPSK: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_ProductNotSupportPSK)
    }
    
    /// License数量不足。
    public static var unauthorizedOperation_UserLicenseExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.unauthorizedOperation_UserLicenseExceedLimit)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation)
    }
    
    /// 围栏下还存在绑定的设备。
    public static var unsupportedOperation_BindsExistUnderFence: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_BindsExistUnderFence)
    }
    
    /// 创建的设备已经存在。
    public static var unsupportedOperation_DeviceDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_DeviceDupKeyExist)
    }
    
    /// 设备数量超出实例限制。
    public static var unsupportedOperation_DeviceExceedLimit: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_DeviceExceedLimit)
    }
    
    /// 设备ota升级中。
    public static var unsupportedOperation_DeviceOtaTaskInProgress: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_DeviceOtaTaskInProgress)
    }
    
    /// 设备类型错误。
    public static var unsupportedOperation_DeviceType: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_DeviceType)
    }
    
    /// 产品下还存在未删除的设备。
    public static var unsupportedOperation_DevicesExistUnderProduct: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_DevicesExistUnderProduct)
    }
    
    /// 该项目下存在物联使能SaaS服务。
    public static var unsupportedOperation_EnableSaasServiceExistUnderProject: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_EnableSaasServiceExistUnderProject)
    }
    
    /// 网关产品下存在设备绑定了子设备。
    public static var unsupportedOperation_ExistBindedDevicesUnderGatewayProduct: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_ExistBindedDevicesUnderGatewayProduct)
    }
    
    /// 存在重复围栏。
    public static var unsupportedOperation_FenceDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_FenceDupKeyExist)
    }
    
    /// 位置空间下还存在未删除的围栏。
    public static var unsupportedOperation_FenceExistUnderSpace: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_FenceExistUnderSpace)
    }
    
    /// 网关产品还绑定子产品，无法删除。
    public static var unsupportedOperation_GatewayProductHasBindedProduct: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_GatewayProductHasBindedProduct)
    }
    
    /// 由于实例到期已被禁用，请续费后使用。
    public static var unsupportedOperation_InstanceIsolated: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_InstanceIsolated)
    }
    
    /// 存在重复LoRa频点。
    public static var unsupportedOperation_LoRaFreqDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_LoRaFreqDupKeyExist)
    }
    
    /// LoRa设备未上报数据。
    public static var unsupportedOperation_LoRaNoUpLink: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_LoRaNoUpLink)
    }
    
    /// Lora设备没有激活。
    public static var unsupportedOperation_LoRaNotActivate: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_LoRaNotActivate)
    }
    
    /// VPN下还存在未删除的设备。
    public static var unsupportedOperation_NodesExistUnderVPN: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_NodesExistUnderVPN)
    }
    
    /// 该项目下还存在人员库，需删除人员库后才允许删除项目。
    public static var unsupportedOperation_PoolExistUnderProject: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_PoolExistUnderProject)
    }
    
    /// 存在重复产品。
    public static var unsupportedOperation_ProductDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_ProductDupKeyExist)
    }
    
    /// 项目下有产品。
    public static var unsupportedOperation_ProductExistUnderProject: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_ProductExistUnderProject)
    }
    
    /// 产品被绑定到网关产品。
    public static var unsupportedOperation_ProductHasBindedGateWayProduct: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_ProductHasBindedGateWayProduct)
    }
    
    /// 存在重复项目。
    public static var unsupportedOperation_ProjectDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_ProjectDupKeyExist)
    }
    
    /// 存在重复位置空间。
    public static var unsupportedOperation_SpaceDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_SpaceDupKeyExist)
    }
    
    /// 人员库名称已存在。
    public static var unsupportedOperation_StaffPoolDupNameExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_StaffPoolDupNameExist)
    }
    
    /// LoRa频点还被节点或网关使用。
    public static var unsupportedOperation_StudioLoRaFreqInUsed: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_StudioLoRaFreqInUsed)
    }
    
    /// 账户有未支付订单。
    public static var unsupportedOperation_UnpaidOrder: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_UnpaidOrder)
    }
    
    /// 存在重复VPN。
    public static var unsupportedOperation_VPNDupKeyExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_VPNDupKeyExist)
    }
    
    public static var unsupportedOperation_VideoAccountNotExist: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_VideoAccountNotExist)
    }
    
    public static var unsupportedOperation_VideoInsufficientLicenses: TCIotexplorerError {
        TCIotexplorerError(.unsupportedOperation_VideoInsufficientLicenses)
    }
}

extension TCIotexplorerError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceInsufficient.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCIotexplorerError: Equatable {
    public static func == (lhs: TCIotexplorerError, rhs: TCIotexplorerError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotexplorerError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotexplorerError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
