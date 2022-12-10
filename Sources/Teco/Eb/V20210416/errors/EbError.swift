public struct TCEbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AddPrivateLink = "FailedOperation.AddPrivateLink"
        case failedOperation_AuthenticateUserFailed = "FailedOperation.AuthenticateUserFailed"
        case failedOperation_CreateTrigger = "FailedOperation.CreateTrigger"
        case failedOperation_DeleteConnection = "FailedOperation.DeleteConnection"
        case failedOperation_DeletePrivateLink = "FailedOperation.DeletePrivateLink"
        case failedOperation_DeleteRule = "FailedOperation.DeleteRule"
        case failedOperation_ESInternalError = "FailedOperation.ESInternalError"
        case failedOperation_ESRequestFailed = "FailedOperation.ESRequestFailed"
        case failedOperation_ESTemplateConflict = "FailedOperation.ESTemplateConflict"
        case failedOperation_ErrorFilter = "FailedOperation.ErrorFilter"
        case failedOperation_RegisterCLSService = "FailedOperation.RegisterCLSService"
        case failedOperation_ServiceError = "FailedOperation.ServiceError"
        case failedOperation_TagResource = "FailedOperation.TagResource"
        case failedOperation_TagResourceAllocateQuotas = "FailedOperation.TagResourceAllocateQuotas"
        case failedOperation_UnTagResource = "FailedOperation.UnTagResource"
        case failedOperation_UpdateConnection = "FailedOperation.UpdateConnection"
        case failedOperation_UpdateRule = "FailedOperation.UpdateRule"
        case internalError = "InternalError"
        case internalError_OssException = "InternalError.OssException"
        case internalError_System = "InternalError.System"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_AMPParams = "InvalidParameterValue.AMPParams"
        case invalidParameterValue_BatchEventCount = "InvalidParameterValue.BatchEventCount"
        case invalidParameterValue_BatchTimeout = "InvalidParameterValue.BatchTimeout"
        case invalidParameterValue_CKafkaTargetParams = "InvalidParameterValue.CKafkaTargetParams"
        case invalidParameterValue_CallbackType = "InvalidParameterValue.CallbackType"
        case invalidParameterValue_CallbackWeComURL = "InvalidParameterValue.CallbackWeComURL"
        case invalidParameterValue_ConnectionDescription = "InvalidParameterValue.ConnectionDescription"
        case invalidParameterValue_ConnectionId = "InvalidParameterValue.ConnectionId"
        case invalidParameterValue_ConnectionName = "InvalidParameterValue.ConnectionName"
        case invalidParameterValue_DTSParams = "InvalidParameterValue.DTSParams"
        case invalidParameterValue_DeadLetterConfig = "InvalidParameterValue.DeadLetterConfig"
        case invalidParameterValue_Description = "InvalidParameterValue.Description"
        case invalidParameterValue_ElasticSearchTargetParams = "InvalidParameterValue.ElasticSearchTargetParams"
        case invalidParameterValue_EventBusId = "InvalidParameterValue.EventBusId"
        case invalidParameterValue_EventBusName = "InvalidParameterValue.EventBusName"
        case invalidParameterValue_EventPattern = "InvalidParameterValue.EventPattern"
        case invalidParameterValue_EventTraceConfig = "InvalidParameterValue.EventTraceConfig"
        case invalidParameterValue_Filters = "InvalidParameterValue.Filters"
        case invalidParameterValue_InvalidApiRequestConfig = "InvalidParameterValue.InvalidApiRequestConfig"
        case invalidParameterValue_InvalidEvent = "InvalidParameterValue.InvalidEvent"
        case invalidParameterValue_InvalidEventBus = "InvalidParameterValue.InvalidEventBus"
        case invalidParameterValue_InvalidFilterRule = "InvalidParameterValue.InvalidFilterRule"
        case invalidParameterValue_InvalidPattern = "InvalidParameterValue.InvalidPattern"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_LinkMode = "InvalidParameterValue.LinkMode"
        case invalidParameterValue_NoticeReceiverChannel = "InvalidParameterValue.NoticeReceiverChannel"
        case invalidParameterValue_NoticeReceiverTimeWindow = "InvalidParameterValue.NoticeReceiverTimeWindow"
        case invalidParameterValue_NoticeReceiverUserIds = "InvalidParameterValue.NoticeReceiverUserIds"
        case invalidParameterValue_NoticeReceiverUserType = "InvalidParameterValue.NoticeReceiverUserType"
        case invalidParameterValue_Offset = "InvalidParameterValue.Offset"
        case invalidParameterValue_Order = "InvalidParameterValue.Order"
        case invalidParameterValue_OrderBy = "InvalidParameterValue.OrderBy"
        case invalidParameterValue_Qualifier = "InvalidParameterValue.Qualifier"
        case invalidParameterValue_RuleId = "InvalidParameterValue.RuleId"
        case invalidParameterValue_RuleName = "InvalidParameterValue.RuleName"
        case invalidParameterValue_Tags = "InvalidParameterValue.Tags"
        case invalidParameterValue_TargetDescription = "InvalidParameterValue.TargetDescription"
        case invalidParameterValue_TargetId = "InvalidParameterValue.TargetId"
        case invalidParameterValue_TransformationID = "InvalidParameterValue.TransformationID"
        case invalidParameterValue_Transformations = "InvalidParameterValue.Transformations"
        case invalidParameterValue_Type = "InvalidParameterValue.Type"
        case invalidParameter_EnableAPIGateway = "InvalidParameter.EnableAPIGateway"
        case invalidParameter_Payload = "InvalidParameter.Payload"
        case limitExceeded_BannedAccount = "LimitExceeded.BannedAccount"
        case limitExceeded_ClusterPrivateLinkExceeded = "LimitExceeded.ClusterPrivateLinkExceeded"
        case limitExceeded_Connection = "LimitExceeded.Connection"
        case limitExceeded_EventBus = "LimitExceeded.EventBus"
        case limitExceeded_InsufficientBalance = "LimitExceeded.InsufficientBalance"
        case limitExceeded_Logset = "LimitExceeded.Logset"
        case limitExceeded_ResourceLimit = "LimitExceeded.ResourceLimit"
        case limitExceeded_RouteOverLimit = "LimitExceeded.RouteOverLimit"
        case limitExceeded_Rule = "LimitExceeded.Rule"
        case limitExceeded_Target = "LimitExceeded.Target"
        case limitExceeded_Trigger = "LimitExceeded.Trigger"
        case limitExceeded_UserPrivateLinkExceeded = "LimitExceeded.UserPrivateLinkExceeded"
        case operationDenied_AccountNotExists = "OperationDenied.AccountNotExists"
        case operationDenied_DefaultCLSResourceUnsupported = "OperationDenied.DefaultCLSResourceUnsupported"
        case operationDenied_ESVersionUnsupported = "OperationDenied.ESVersionUnsupported"
        case operationDenied_EventBusResourceIsLocked = "OperationDenied.EventBusResourceIsLocked"
        case operationDenied_ResourceImmutable = "OperationDenied.ResourceImmutable"
        case operationDenied_UnsupportedOperation = "OperationDenied.UnsupportedOperation"
        case resourceInUse_DefaultEventBus = "ResourceInUse.DefaultEventBus"
        case resourceInUse_EventBus = "ResourceInUse.EventBus"
        case resourceInUse_Rule = "ResourceInUse.Rule"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Connection = "ResourceNotFound.Connection"
        case resourceNotFound_EventBus = "ResourceNotFound.EventBus"
        case resourceNotFound_EventBusNotFound = "ResourceNotFound.EventBusNotFound"
        case resourceNotFound_Function = "ResourceNotFound.Function"
        case resourceNotFound_InvalidApi = "ResourceNotFound.InvalidApi"
        case resourceNotFound_InvalidService = "ResourceNotFound.InvalidService"
        case resourceNotFound_Namespace = "ResourceNotFound.Namespace"
        case resourceNotFound_NetAssociation = "ResourceNotFound.NetAssociation"
        case resourceNotFound_PrivateLinkResource = "ResourceNotFound.PrivateLinkResource"
        case resourceNotFound_Role = "ResourceNotFound.Role"
        case resourceNotFound_Rule = "ResourceNotFound.Rule"
        case resourceNotFound_Tag = "ResourceNotFound.Tag"
        case resourceNotFound_Target = "ResourceNotFound.Target"
        case resourceNotFound_Transformation = "ResourceNotFound.Transformation"
        case resourceNotFound_Version = "ResourceNotFound.Version"
        case resourceUnavailable_Connection = "ResourceUnavailable.Connection"
        case resourceUnavailable_ESUnhealth = "ResourceUnavailable.ESUnhealth"
        case resourceUnavailable_Target = "ResourceUnavailable.Target"
        case unauthorizedOperation_CAM = "UnauthorizedOperation.CAM"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_InvalidAction = "UnsupportedOperation.InvalidAction"
        case unsupportedOperation_InvalidEndpointType = "UnsupportedOperation.InvalidEndpointType"
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
    public static var authFailure: TCEbError {
        TCEbError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCEbError {
        TCEbError(.failedOperation)
    }
    
    public static var failedOperation_AddPrivateLink: TCEbError {
        TCEbError(.failedOperation_AddPrivateLink)
    }
    
    public static var failedOperation_AuthenticateUserFailed: TCEbError {
        TCEbError(.failedOperation_AuthenticateUserFailed)
    }
    
    /// 投递目标创建失败，请检查函数状态。
    public static var failedOperation_CreateTrigger: TCEbError {
        TCEbError(.failedOperation_CreateTrigger)
    }
    
    /// 删除连接器失败，请检查资源状态。
    public static var failedOperation_DeleteConnection: TCEbError {
        TCEbError(.failedOperation_DeleteConnection)
    }
    
    public static var failedOperation_DeletePrivateLink: TCEbError {
        TCEbError(.failedOperation_DeletePrivateLink)
    }
    
    /// 规则删除失败，请检查资源信息，确认是资源否存在或状态正常。
    public static var failedOperation_DeleteRule: TCEbError {
        TCEbError(.failedOperation_DeleteRule)
    }
    
    public static var failedOperation_ESInternalError: TCEbError {
        TCEbError(.failedOperation_ESInternalError)
    }
    
    public static var failedOperation_ESRequestFailed: TCEbError {
        TCEbError(.failedOperation_ESRequestFailed)
    }
    
    public static var failedOperation_ESTemplateConflict: TCEbError {
        TCEbError(.failedOperation_ESTemplateConflict)
    }
    
    /// 规则与事件不匹配，请修正后再试。
    public static var failedOperation_ErrorFilter: TCEbError {
        TCEbError(.failedOperation_ErrorFilter)
    }
    
    public static var failedOperation_RegisterCLSService: TCEbError {
        TCEbError(.failedOperation_RegisterCLSService)
    }
    
    /// ServiceError操作失败，请检查资源信息。
    public static var failedOperation_ServiceError: TCEbError {
        TCEbError(.failedOperation_ServiceError)
    }
    
    public static var failedOperation_TagResource: TCEbError {
        TCEbError(.failedOperation_TagResource)
    }
    
    public static var failedOperation_TagResourceAllocateQuotas: TCEbError {
        TCEbError(.failedOperation_TagResourceAllocateQuotas)
    }
    
    public static var failedOperation_UnTagResource: TCEbError {
        TCEbError(.failedOperation_UnTagResource)
    }
    
    /// 连接器更新失败，请检查资源信息，确认是资源否存在或状态正常。
    public static var failedOperation_UpdateConnection: TCEbError {
        TCEbError(.failedOperation_UpdateConnection)
    }
    
    /// 规则更新失败，请检查资源信息，确认是资源否存在或状态正常。
    public static var failedOperation_UpdateRule: TCEbError {
        TCEbError(.failedOperation_UpdateRule)
    }
    
    /// 内部错误。
    public static var internalError: TCEbError {
        TCEbError(.internalError)
    }
    
    /// 服务处理出错，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_OssException: TCEbError {
        TCEbError(.internalError_OssException)
    }
    
    /// 服务处理出错，请稍后重试。若无法解决，请联系智能客服或提交工单。
    public static var internalError_System: TCEbError {
        TCEbError(.internalError_System)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEbError {
        TCEbError(.invalidParameter)
    }
    
    /// AMPParams取值与规范不符，请修正后再试。
    public static var invalidParameterValue_AMPParams: TCEbError {
        TCEbError(.invalidParameterValue_AMPParams)
    }
    
    /// BatchEventCount取值与规范不符，请修正后再试。
    public static var invalidParameterValue_BatchEventCount: TCEbError {
        TCEbError(.invalidParameterValue_BatchEventCount)
    }
    
    /// BatchTimeout取值与规范不符，请修正后再试。
    public static var invalidParameterValue_BatchTimeout: TCEbError {
        TCEbError(.invalidParameterValue_BatchTimeout)
    }
    
    /// Ckafka 目标配置参数取值与规范不符，请修正后再试。
    public static var invalidParameterValue_CKafkaTargetParams: TCEbError {
        TCEbError(.invalidParameterValue_CKafkaTargetParams)
    }
    
    /// CallbackType取值与规范不符，请修正后再试。
    public static var invalidParameterValue_CallbackType: TCEbError {
        TCEbError(.invalidParameterValue_CallbackType)
    }
    
    /// CallbackWeComURL取值与规范不符，请修正后再试。
    public static var invalidParameterValue_CallbackWeComURL: TCEbError {
        TCEbError(.invalidParameterValue_CallbackWeComURL)
    }
    
    /// ConnectionDescription取值与规范不符，请修正后再试。
    public static var invalidParameterValue_ConnectionDescription: TCEbError {
        TCEbError(.invalidParameterValue_ConnectionDescription)
    }
    
    /// ConnectionId取值与规范不符，请修正后再试。
    public static var invalidParameterValue_ConnectionId: TCEbError {
        TCEbError(.invalidParameterValue_ConnectionId)
    }
    
    /// ConnectionName取值与规范不符，请修正后再试。
    public static var invalidParameterValue_ConnectionName: TCEbError {
        TCEbError(.invalidParameterValue_ConnectionName)
    }
    
    /// DTSParams取值与规范不符，请修正后再试。
    public static var invalidParameterValue_DTSParams: TCEbError {
        TCEbError(.invalidParameterValue_DTSParams)
    }
    
    /// 死信队列配置参数取值与规范不符，请修正后再试。
    public static var invalidParameterValue_DeadLetterConfig: TCEbError {
        TCEbError(.invalidParameterValue_DeadLetterConfig)
    }
    
    /// Description取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Description: TCEbError {
        TCEbError(.invalidParameterValue_Description)
    }
    
    public static var invalidParameterValue_ElasticSearchTargetParams: TCEbError {
        TCEbError(.invalidParameterValue_ElasticSearchTargetParams)
    }
    
    /// EventBusId取值与规范不符，请修正后再试。
    public static var invalidParameterValue_EventBusId: TCEbError {
        TCEbError(.invalidParameterValue_EventBusId)
    }
    
    /// EventBusName取值与规范不符，请修正后再试。
    public static var invalidParameterValue_EventBusName: TCEbError {
        TCEbError(.invalidParameterValue_EventBusName)
    }
    
    /// EventPattern取值与规范不符，请修正后再试。
    public static var invalidParameterValue_EventPattern: TCEbError {
        TCEbError(.invalidParameterValue_EventPattern)
    }
    
    /// 链路追踪配置参数取值与规范不符，请修正后再试。
    public static var invalidParameterValue_EventTraceConfig: TCEbError {
        TCEbError(.invalidParameterValue_EventTraceConfig)
    }
    
    /// Filters取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Filters: TCEbError {
        TCEbError(.invalidParameterValue_Filters)
    }
    
    /// InvalidApiRequestConfig取值与规范不符，请修正后再试。
    public static var invalidParameterValue_InvalidApiRequestConfig: TCEbError {
        TCEbError(.invalidParameterValue_InvalidApiRequestConfig)
    }
    
    /// 事件格式非法，请修正后再试。
    public static var invalidParameterValue_InvalidEvent: TCEbError {
        TCEbError(.invalidParameterValue_InvalidEvent)
    }
    
    /// 非法的事件集，请检查后重试。
    public static var invalidParameterValue_InvalidEventBus: TCEbError {
        TCEbError(.invalidParameterValue_InvalidEventBus)
    }
    
    /// 事件模式格式错误，请修正后再试。
    public static var invalidParameterValue_InvalidFilterRule: TCEbError {
        TCEbError(.invalidParameterValue_InvalidFilterRule)
    }
    
    /// 非法的匹配规则，请检查后重试。
    public static var invalidParameterValue_InvalidPattern: TCEbError {
        TCEbError(.invalidParameterValue_InvalidPattern)
    }
    
    /// Limit取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Limit: TCEbError {
        TCEbError(.invalidParameterValue_Limit)
    }
    
    public static var invalidParameterValue_LinkMode: TCEbError {
        TCEbError(.invalidParameterValue_LinkMode)
    }
    
    /// NoticeReceiverChannel取值与规范不符，请修正后再试。
    public static var invalidParameterValue_NoticeReceiverChannel: TCEbError {
        TCEbError(.invalidParameterValue_NoticeReceiverChannel)
    }
    
    /// NoticeReceiverTimeWindow取值与规范不符，请修正后再试。
    public static var invalidParameterValue_NoticeReceiverTimeWindow: TCEbError {
        TCEbError(.invalidParameterValue_NoticeReceiverTimeWindow)
    }
    
    /// NoticeReceiverUserIds取值与规范不符，请修正后再试。
    public static var invalidParameterValue_NoticeReceiverUserIds: TCEbError {
        TCEbError(.invalidParameterValue_NoticeReceiverUserIds)
    }
    
    /// NoticeReceiverUserType取值与规范不符，请修正后再试。
    public static var invalidParameterValue_NoticeReceiverUserType: TCEbError {
        TCEbError(.invalidParameterValue_NoticeReceiverUserType)
    }
    
    /// Offset取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Offset: TCEbError {
        TCEbError(.invalidParameterValue_Offset)
    }
    
    /// Order取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Order: TCEbError {
        TCEbError(.invalidParameterValue_Order)
    }
    
    /// OrderBy取值与规范不符，请修正后再试。
    public static var invalidParameterValue_OrderBy: TCEbError {
        TCEbError(.invalidParameterValue_OrderBy)
    }
    
    /// Qualifier取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Qualifier: TCEbError {
        TCEbError(.invalidParameterValue_Qualifier)
    }
    
    /// RuleId取值与规范不符，请修正后再试。
    public static var invalidParameterValue_RuleId: TCEbError {
        TCEbError(.invalidParameterValue_RuleId)
    }
    
    /// RuleName取值与规范不符，请修正后再试。
    public static var invalidParameterValue_RuleName: TCEbError {
        TCEbError(.invalidParameterValue_RuleName)
    }
    
    public static var invalidParameterValue_Tags: TCEbError {
        TCEbError(.invalidParameterValue_Tags)
    }
    
    /// TargetDescription取值与规范不符，请修正后再试。
    public static var invalidParameterValue_TargetDescription: TCEbError {
        TCEbError(.invalidParameterValue_TargetDescription)
    }
    
    /// TargetId取值与规范不符，请修正后再试。
    public static var invalidParameterValue_TargetId: TCEbError {
        TCEbError(.invalidParameterValue_TargetId)
    }
    
    /// 数据转换配置参数取值与规范不符，请修正后再试。
    public static var invalidParameterValue_TransformationID: TCEbError {
        TCEbError(.invalidParameterValue_TransformationID)
    }
    
    /// 数据转换任务创建失败，配置参数取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Transformations: TCEbError {
        TCEbError(.invalidParameterValue_Transformations)
    }
    
    /// Type取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Type: TCEbError {
        TCEbError(.invalidParameterValue_Type)
    }
    
    public static var invalidParameter_EnableAPIGateway: TCEbError {
        TCEbError(.invalidParameter_EnableAPIGateway)
    }
    
    /// Payload与规范不符，请修正后再试。
    public static var invalidParameter_Payload: TCEbError {
        TCEbError(.invalidParameter_Payload)
    }
    
    /// 事件投递失败，因欠费或违规等原因，账号已被禁用，请联系官网账户端客服处理。
    public static var limitExceeded_BannedAccount: TCEbError {
        TCEbError(.limitExceeded_BannedAccount)
    }
    
    public static var limitExceeded_ClusterPrivateLinkExceeded: TCEbError {
        TCEbError(.limitExceeded_ClusterPrivateLinkExceeded)
    }
    
    /// Connection数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_Connection: TCEbError {
        TCEbError(.limitExceeded_Connection)
    }
    
    /// EventBus数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_EventBus: TCEbError {
        TCEbError(.limitExceeded_EventBus)
    }
    
    /// 资源创建失败，可冻结余额不足，请充值后重新创建。
    public static var limitExceeded_InsufficientBalance: TCEbError {
        TCEbError(.limitExceeded_InsufficientBalance)
    }
    
    /// Logset数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_Logset: TCEbError {
        TCEbError(.limitExceeded_Logset)
    }
    
    /// ResourceLimit数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_ResourceLimit: TCEbError {
        TCEbError(.limitExceeded_ResourceLimit)
    }
    
    /// RouteOverLimit数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_RouteOverLimit: TCEbError {
        TCEbError(.limitExceeded_RouteOverLimit)
    }
    
    /// Rule数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_Rule: TCEbError {
        TCEbError(.limitExceeded_Rule)
    }
    
    /// Target数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_Target: TCEbError {
        TCEbError(.limitExceeded_Target)
    }
    
    /// 投递目标创建失败，函数触发器数量达到限制，可提交工单申请提升限制。
    public static var limitExceeded_Trigger: TCEbError {
        TCEbError(.limitExceeded_Trigger)
    }
    
    public static var limitExceeded_UserPrivateLinkExceeded: TCEbError {
        TCEbError(.limitExceeded_UserPrivateLinkExceeded)
    }
    
    /// 投递目标创建失败，检测到当前账号不存在，请确认您的账号状态。
    public static var operationDenied_AccountNotExists: TCEbError {
        TCEbError(.operationDenied_AccountNotExists)
    }
    
    /// 不允许在自定义事件集上创建基于EB默认日志集的CLS事件目标。
    public static var operationDenied_DefaultCLSResourceUnsupported: TCEbError {
        TCEbError(.operationDenied_DefaultCLSResourceUnsupported)
    }
    
    public static var operationDenied_ESVersionUnsupported: TCEbError {
        TCEbError(.operationDenied_ESVersionUnsupported)
    }
    
    public static var operationDenied_EventBusResourceIsLocked: TCEbError {
        TCEbError(.operationDenied_EventBusResourceIsLocked)
    }
    
    /// 操作失败，该资源不可修改或删除。
    public static var operationDenied_ResourceImmutable: TCEbError {
        TCEbError(.operationDenied_ResourceImmutable)
    }
    
    /// 当前用户账号类型暂不支持操作，请提交工单处理。
    public static var operationDenied_UnsupportedOperation: TCEbError {
        TCEbError(.operationDenied_UnsupportedOperation)
    }
    
    /// 同一个地域下，云服务默认事件集不允许重复创建。
    public static var resourceInUse_DefaultEventBus: TCEbError {
        TCEbError(.resourceInUse_DefaultEventBus)
    }
    
    /// 事件集下有规则或者连接器，无法删除，请删除所有规则和连接器后重试。
    public static var resourceInUse_EventBus: TCEbError {
        TCEbError(.resourceInUse_EventBus)
    }
    
    /// 规则下有目标，无法删除，请删除所有目标后重试。
    public static var resourceInUse_Rule: TCEbError {
        TCEbError(.resourceInUse_Rule)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEbError {
        TCEbError(.resourceNotFound)
    }
    
    /// 未找到指定的Connection，请创建后再试。
    public static var resourceNotFound_Connection: TCEbError {
        TCEbError(.resourceNotFound_Connection)
    }
    
    /// 未找到指定事件集，请创建后再试。
    public static var resourceNotFound_EventBus: TCEbError {
        TCEbError(.resourceNotFound_EventBus)
    }
    
    /// 事件集不存在或未配置规则，请检查后再试。
    public static var resourceNotFound_EventBusNotFound: TCEbError {
        TCEbError(.resourceNotFound_EventBusNotFound)
    }
    
    /// 未找到指定的Function，请创建后再试。
    public static var resourceNotFound_Function: TCEbError {
        TCEbError(.resourceNotFound_Function)
    }
    
    /// 连接器删除失败，未找到指定 API 。
    public static var resourceNotFound_InvalidApi: TCEbError {
        TCEbError(.resourceNotFound_InvalidApi)
    }
    
    /// 连接器操作失败，未找到指定 API 网关服务。
    public static var resourceNotFound_InvalidService: TCEbError {
        TCEbError(.resourceNotFound_InvalidService)
    }
    
    /// 投递目标创建失败，未找到指定的命名空间，请创建后再试。
    public static var resourceNotFound_Namespace: TCEbError {
        TCEbError(.resourceNotFound_Namespace)
    }
    
    public static var resourceNotFound_NetAssociation: TCEbError {
        TCEbError(.resourceNotFound_NetAssociation)
    }
    
    public static var resourceNotFound_PrivateLinkResource: TCEbError {
        TCEbError(.resourceNotFound_PrivateLinkResource)
    }
    
    /// 未找到指定的服务角色，请创建后再试。
    public static var resourceNotFound_Role: TCEbError {
        TCEbError(.resourceNotFound_Role)
    }
    
    /// 未找到指定的Rule，请创建后再试。
    public static var resourceNotFound_Rule: TCEbError {
        TCEbError(.resourceNotFound_Rule)
    }
    
    public static var resourceNotFound_Tag: TCEbError {
        TCEbError(.resourceNotFound_Tag)
    }
    
    /// 未找到指定的Target，请创建后再试。
    public static var resourceNotFound_Target: TCEbError {
        TCEbError(.resourceNotFound_Target)
    }
    
    /// 未找到指定的转换任务，请创建后再试。
    public static var resourceNotFound_Transformation: TCEbError {
        TCEbError(.resourceNotFound_Transformation)
    }
    
    /// 投递目标创建失败，未找到指定的服务版本，请创建后再试。
    public static var resourceNotFound_Version: TCEbError {
        TCEbError(.resourceNotFound_Version)
    }
    
    /// 连接器创建失败，当前资源不可用。
    public static var resourceUnavailable_Connection: TCEbError {
        TCEbError(.resourceUnavailable_Connection)
    }
    
    public static var resourceUnavailable_ESUnhealth: TCEbError {
        TCEbError(.resourceUnavailable_ESUnhealth)
    }
    
    /// 投递目标创建失败，当前资源不可用。
    public static var resourceUnavailable_Target: TCEbError {
        TCEbError(.resourceUnavailable_Target)
    }
    
    /// 当前账号缺少 EB 操作权限，请登录 CAM 控制台进行授权。
    public static var unauthorizedOperation_CAM: TCEbError {
        TCEbError(.unauthorizedOperation_CAM)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEbError {
        TCEbError(.unsupportedOperation)
    }
    
    /// 连接器操作失败，接口不支持当前操作。
    public static var unsupportedOperation_InvalidAction: TCEbError {
        TCEbError(.unsupportedOperation_InvalidAction)
    }
    
    /// 连接器创建失败，不支持当前后端服务类型。
    public static var unsupportedOperation_InvalidEndpointType: TCEbError {
        TCEbError(.unsupportedOperation_InvalidEndpointType)
    }
}

extension TCEbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCEbError: Equatable {
    public static func == (lhs: TCEbError, rhs: TCEbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}