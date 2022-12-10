public struct TCBatchError: TCErrorType {
    enum Code: String {
        case allowedOneAttributeInEnvIdAndComputeEnv = "AllowedOneAttributeInEnvIdAndComputeEnv"
        case internalError = "InternalError"
        case internalError_CallCpmAPI = "InternalError.CallCpmAPI"
        case internalError_CallCvm = "InternalError.CallCvm"
        case internalError_CallTagAPI = "InternalError.CallTagAPI"
        case internalError_CpmResponseDataEmpty = "InternalError.CpmResponseDataEmpty"
        case invalidFilter = "InvalidFilter"
        case invalidParameterAtLeastOneAttribute = "InvalidParameterAtLeastOneAttribute"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ComputeEnv = "InvalidParameterValue.ComputeEnv"
        case invalidParameterValue_DependenceNotFoundTaskName = "InvalidParameterValue.DependenceNotFoundTaskName"
        case invalidParameterValue_DependenceUnfeasible = "InvalidParameterValue.DependenceUnfeasible"
        case invalidParameterValue_InstanceIdDuplicated = "InvalidParameterValue.InstanceIdDuplicated"
        case invalidParameterValue_InstanceType = "InvalidParameterValue.InstanceType"
        case invalidParameterValue_InstanceTypeDuplicate = "InvalidParameterValue.InstanceTypeDuplicate"
        case invalidParameterValue_InstanceTypesEmpty = "InvalidParameterValue.InstanceTypesEmpty"
        case invalidParameterValue_InvalidDataTypeAny = "InvalidParameterValue.InvalidDataTypeAny"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidZoneMismatchRegion = "InvalidParameterValue.InvalidZoneMismatchRegion"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_LocalPath = "InvalidParameterValue.LocalPath"
        case invalidParameterValue_MaxRetryCount = "InvalidParameterValue.MaxRetryCount"
        case invalidParameterValue_Negative = "InvalidParameterValue.Negative"
        case invalidParameterValue_NotFloat = "InvalidParameterValue.NotFloat"
        case invalidParameterValue_OsTypeId = "InvalidParameterValue.OsTypeId"
        case invalidParameterValue_RegionNotSupportCpm = "InvalidParameterValue.RegionNotSupportCpm"
        case invalidParameterValue_RemoteStoragePath = "InvalidParameterValue.RemoteStoragePath"
        case invalidParameterValue_RemoteStorageSchemeType = "InvalidParameterValue.RemoteStorageSchemeType"
        case invalidParameterValue_ResourceType = "InvalidParameterValue.ResourceType"
        case invalidParameterValue_UnavailableZone = "InvalidParameterValue.UnavailableZone"
        case invalidParameterValue_UnsupportedBatchInstanceChargeType = "InvalidParameterValue.UnsupportedBatchInstanceChargeType"
        case invalidParameter_ComputeNodeIdMalformed = "InvalidParameter.ComputeNodeIdMalformed"
        case invalidParameter_CvmParameters = "InvalidParameter.CvmParameters"
        case invalidParameter_EnvDescriptionTooLong = "InvalidParameter.EnvDescriptionTooLong"
        case invalidParameter_EnvIdMalformed = "InvalidParameter.EnvIdMalformed"
        case invalidParameter_EnvNameTooLong = "InvalidParameter.EnvNameTooLong"
        case invalidParameter_ImageIdMalformed = "InvalidParameter.ImageIdMalformed"
        case invalidParameter_InvalidParameterCombination = "InvalidParameter.InvalidParameterCombination"
        case invalidParameter_JobDescriptionTooLong = "InvalidParameter.JobDescriptionTooLong"
        case invalidParameter_JobIdMalformed = "InvalidParameter.JobIdMalformed"
        case invalidParameter_JobNameTooLong = "InvalidParameter.JobNameTooLong"
        case invalidParameter_NotificationEventNameDuplicate = "InvalidParameter.NotificationEventNameDuplicate"
        case invalidParameter_NotificationTopicName = "InvalidParameter.NotificationTopicName"
        case invalidParameter_NotificationTopicNameTooLong = "InvalidParameter.NotificationTopicNameTooLong"
        case invalidParameter_TaskName = "InvalidParameter.TaskName"
        case invalidParameter_TaskNameTooLong = "InvalidParameter.TaskNameTooLong"
        case invalidParameter_TaskTemplateDescriptionTooLong = "InvalidParameter.TaskTemplateDescriptionTooLong"
        case invalidParameter_TaskTemplateIdMalformed = "InvalidParameter.TaskTemplateIdMalformed"
        case invalidParameter_TaskTemplateName = "InvalidParameter.TaskTemplateName"
        case invalidParameter_TaskTemplateNameTooLong = "InvalidParameter.TaskTemplateNameTooLong"
        case invalidZone_MismatchRegion = "InvalidZone.MismatchRegion"
        case limitExceeded_ComputeEnvQuota = "LimitExceeded.ComputeEnvQuota"
        case limitExceeded_CpuQuota = "LimitExceeded.CpuQuota"
        case limitExceeded_JobQuota = "LimitExceeded.JobQuota"
        case limitExceeded_TaskTemplateQuota = "LimitExceeded.TaskTemplateQuota"
        case resourceInUse_Job = "ResourceInUse.Job"
        case resourceNotFound_ComputeEnv = "ResourceNotFound.ComputeEnv"
        case resourceNotFound_ComputeNode = "ResourceNotFound.ComputeNode"
        case resourceNotFound_Job = "ResourceNotFound.Job"
        case resourceNotFound_Task = "ResourceNotFound.Task"
        case resourceNotFound_TaskInstance = "ResourceNotFound.TaskInstance"
        case resourceNotFound_TaskTemplate = "ResourceNotFound.TaskTemplate"
        case unauthorizedOperation_UserNotAllowedToUseBatch = "UnauthorizedOperation.UserNotAllowedToUseBatch"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AcceptOtherRequest = "UnsupportedOperation.AcceptOtherRequest"
        case unsupportedOperation_ComputeEnvAcceptOtherRequest = "UnsupportedOperation.ComputeEnvAcceptOtherRequest"
        case unsupportedOperation_ComputeEnvOperation = "UnsupportedOperation.ComputeEnvOperation"
        case unsupportedOperation_ComputeNodeForbidTerminate = "UnsupportedOperation.ComputeNodeForbidTerminate"
        case unsupportedOperation_ComputeNodeIsTerminating = "UnsupportedOperation.ComputeNodeIsTerminating"
        case unsupportedOperation_InstancesNotAllowToAttach = "UnsupportedOperation.InstancesNotAllowToAttach"
        case unsupportedOperation_NotEnoughComputeNodesToTerminate = "UnsupportedOperation.NotEnoughComputeNodesToTerminate"
        case unsupportedOperation_TerminateOperationWithEnvId = "UnsupportedOperation.TerminateOperationWithEnvId"
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
    
    /// ComputeEnv 和 EnvId 必须指定一个（且只有一个）参数。
    public static var allowedOneAttributeInEnvIdAndComputeEnv: TCBatchError {
        TCBatchError(.allowedOneAttributeInEnvIdAndComputeEnv)
    }
    
    /// 内部错误。
    public static var internalError: TCBatchError {
        TCBatchError(.internalError)
    }
    
    /// 调用Cpm API返回错误。
    public static var internalError_CallCpmAPI: TCBatchError {
        TCBatchError(.internalError_CallCpmAPI)
    }
    
    /// 调用CVM API返回错误。
    public static var internalError_CallCvm: TCBatchError {
        TCBatchError(.internalError_CallCvm)
    }
    
    /// 获取Tag错误。
    public static var internalError_CallTagAPI: TCBatchError {
        TCBatchError(.internalError_CallTagAPI)
    }
    
    /// 黑石服务返回数据为空。
    public static var internalError_CpmResponseDataEmpty: TCBatchError {
        TCBatchError(.internalError_CpmResponseDataEmpty)
    }
    
    /// 指定的Filter不被支持。
    public static var invalidFilter: TCBatchError {
        TCBatchError(.invalidFilter)
    }
    
    /// TaskTemplateName、TaskTemplateDescription和TaskTemplateInfo至少包含一项。
    public static var invalidParameterAtLeastOneAttribute: TCBatchError {
        TCBatchError(.invalidParameterAtLeastOneAttribute)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBatchError {
        TCBatchError(.invalidParameterValue)
    }
    
    /// 计算环境参数校验失败。
    public static var invalidParameterValue_ComputeEnv: TCBatchError {
        TCBatchError(.invalidParameterValue_ComputeEnv)
    }
    
    /// 找不到依赖任务定义。
    public static var invalidParameterValue_DependenceNotFoundTaskName: TCBatchError {
        TCBatchError(.invalidParameterValue_DependenceNotFoundTaskName)
    }
    
    /// 禁止环状任务依赖关系。
    public static var invalidParameterValue_DependenceUnfeasible: TCBatchError {
        TCBatchError(.invalidParameterValue_DependenceUnfeasible)
    }
    
    /// 实例ID重复。
    public static var invalidParameterValue_InstanceIdDuplicated: TCBatchError {
        TCBatchError(.invalidParameterValue_InstanceIdDuplicated)
    }
    
    /// 不支持指定的实例类型。
    public static var invalidParameterValue_InstanceType: TCBatchError {
        TCBatchError(.invalidParameterValue_InstanceType)
    }
    
    /// 实例类型不能有重复值。
    public static var invalidParameterValue_InstanceTypeDuplicate: TCBatchError {
        TCBatchError(.invalidParameterValue_InstanceTypeDuplicate)
    }
    
    /// 实例类型列表不能为空。
    public static var invalidParameterValue_InstanceTypesEmpty: TCBatchError {
        TCBatchError(.invalidParameterValue_InstanceTypesEmpty)
    }
    
    /// DataTypeAny不合法。
    public static var invalidParameterValue_InvalidDataTypeAny: TCBatchError {
        TCBatchError(.invalidParameterValue_InvalidDataTypeAny)
    }
    
    /// Filter参数不正确。
    public static var invalidParameterValue_InvalidFilter: TCBatchError {
        TCBatchError(.invalidParameterValue_InvalidFilter)
    }
    
    /// 可用区和地域不匹配。
    public static var invalidParameterValue_InvalidZoneMismatchRegion: TCBatchError {
        TCBatchError(.invalidParameterValue_InvalidZoneMismatchRegion)
    }
    
    /// Filter参数值数量超过限制。
    public static var invalidParameterValue_LimitExceeded: TCBatchError {
        TCBatchError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 非法的本地存储路径。
    public static var invalidParameterValue_LocalPath: TCBatchError {
        TCBatchError(.invalidParameterValue_LocalPath)
    }
    
    /// 重试次数过大。
    public static var invalidParameterValue_MaxRetryCount: TCBatchError {
        TCBatchError(.invalidParameterValue_MaxRetryCount)
    }
    
    /// 非法的负值参数。
    public static var invalidParameterValue_Negative: TCBatchError {
        TCBatchError(.invalidParameterValue_Negative)
    }
    
    /// 参数值不是浮点型。
    public static var invalidParameterValue_NotFloat: TCBatchError {
        TCBatchError(.invalidParameterValue_NotFloat)
    }
    
    /// 指定的OsTypeId不合法。
    public static var invalidParameterValue_OsTypeId: TCBatchError {
        TCBatchError(.invalidParameterValue_OsTypeId)
    }
    
    /// 该地域不支持创建黑石计算环境。
    public static var invalidParameterValue_RegionNotSupportCpm: TCBatchError {
        TCBatchError(.invalidParameterValue_RegionNotSupportCpm)
    }
    
    /// 非法的存储路径格式。
    public static var invalidParameterValue_RemoteStoragePath: TCBatchError {
        TCBatchError(.invalidParameterValue_RemoteStoragePath)
    }
    
    /// 非法的存储类型。
    public static var invalidParameterValue_RemoteStorageSchemeType: TCBatchError {
        TCBatchError(.invalidParameterValue_RemoteStorageSchemeType)
    }
    
    /// 指定的ResourceType不合法。
    public static var invalidParameterValue_ResourceType: TCBatchError {
        TCBatchError(.invalidParameterValue_ResourceType)
    }
    
    /// Zone不可用。
    public static var invalidParameterValue_UnavailableZone: TCBatchError {
        TCBatchError(.invalidParameterValue_UnavailableZone)
    }
    
    /// 批量计算不支持的机型付费类型。
    public static var invalidParameterValue_UnsupportedBatchInstanceChargeType: TCBatchError {
        TCBatchError(.invalidParameterValue_UnsupportedBatchInstanceChargeType)
    }
    
    /// 非法的计算节点ID格式。
    public static var invalidParameter_ComputeNodeIdMalformed: TCBatchError {
        TCBatchError(.invalidParameter_ComputeNodeIdMalformed)
    }
    
    /// 非法的CVM参数。
    public static var invalidParameter_CvmParameters: TCBatchError {
        TCBatchError(.invalidParameter_CvmParameters)
    }
    
    /// 计算环境描述过长。
    public static var invalidParameter_EnvDescriptionTooLong: TCBatchError {
        TCBatchError(.invalidParameter_EnvDescriptionTooLong)
    }
    
    /// 非法的计算环境ID格式。
    public static var invalidParameter_EnvIdMalformed: TCBatchError {
        TCBatchError(.invalidParameter_EnvIdMalformed)
    }
    
    /// 计算环境名称过长。
    public static var invalidParameter_EnvNameTooLong: TCBatchError {
        TCBatchError(.invalidParameter_EnvNameTooLong)
    }
    
    /// 镜像ID不正确。
    public static var invalidParameter_ImageIdMalformed: TCBatchError {
        TCBatchError(.invalidParameter_ImageIdMalformed)
    }
    
    /// 非法的参数组合。
    public static var invalidParameter_InvalidParameterCombination: TCBatchError {
        TCBatchError(.invalidParameter_InvalidParameterCombination)
    }
    
    /// 作业描述过长。
    public static var invalidParameter_JobDescriptionTooLong: TCBatchError {
        TCBatchError(.invalidParameter_JobDescriptionTooLong)
    }
    
    /// 非法的作业ID格式。
    public static var invalidParameter_JobIdMalformed: TCBatchError {
        TCBatchError(.invalidParameter_JobIdMalformed)
    }
    
    /// 作业名称过长。
    public static var invalidParameter_JobNameTooLong: TCBatchError {
        TCBatchError(.invalidParameter_JobNameTooLong)
    }
    
    /// 重复的消息通知事件名称。
    public static var invalidParameter_NotificationEventNameDuplicate: TCBatchError {
        TCBatchError(.invalidParameter_NotificationEventNameDuplicate)
    }
    
    /// 非法的主题名称。
    public static var invalidParameter_NotificationTopicName: TCBatchError {
        TCBatchError(.invalidParameter_NotificationTopicName)
    }
    
    /// 主题名称过长。
    public static var invalidParameter_NotificationTopicNameTooLong: TCBatchError {
        TCBatchError(.invalidParameter_NotificationTopicNameTooLong)
    }
    
    /// 非法的任务名称。
    public static var invalidParameter_TaskName: TCBatchError {
        TCBatchError(.invalidParameter_TaskName)
    }
    
    /// 任务名称过长。
    public static var invalidParameter_TaskNameTooLong: TCBatchError {
        TCBatchError(.invalidParameter_TaskNameTooLong)
    }
    
    /// 任务模板描述过长。
    public static var invalidParameter_TaskTemplateDescriptionTooLong: TCBatchError {
        TCBatchError(.invalidParameter_TaskTemplateDescriptionTooLong)
    }
    
    /// 非法的任务模板ID格式。
    public static var invalidParameter_TaskTemplateIdMalformed: TCBatchError {
        TCBatchError(.invalidParameter_TaskTemplateIdMalformed)
    }
    
    /// 非法的任务模板名称。
    public static var invalidParameter_TaskTemplateName: TCBatchError {
        TCBatchError(.invalidParameter_TaskTemplateName)
    }
    
    /// 任务模板名称过长。
    public static var invalidParameter_TaskTemplateNameTooLong: TCBatchError {
        TCBatchError(.invalidParameter_TaskTemplateNameTooLong)
    }
    
    /// 指定的zone不存在。
    public static var invalidZone_MismatchRegion: TCBatchError {
        TCBatchError(.invalidZone_MismatchRegion)
    }
    
    /// 计算环境配额不足。
    public static var limitExceeded_ComputeEnvQuota: TCBatchError {
        TCBatchError(.limitExceeded_ComputeEnvQuota)
    }
    
    /// CPU配额不足。
    public static var limitExceeded_CpuQuota: TCBatchError {
        TCBatchError(.limitExceeded_CpuQuota)
    }
    
    /// 作业配额不足。
    public static var limitExceeded_JobQuota: TCBatchError {
        TCBatchError(.limitExceeded_JobQuota)
    }
    
    /// 任务模板配额不足。
    public static var limitExceeded_TaskTemplateQuota: TCBatchError {
        TCBatchError(.limitExceeded_TaskTemplateQuota)
    }
    
    /// Job在使用中。
    public static var resourceInUse_Job: TCBatchError {
        TCBatchError(.resourceInUse_Job)
    }
    
    /// 指定计算环境不存在。
    public static var resourceNotFound_ComputeEnv: TCBatchError {
        TCBatchError(.resourceNotFound_ComputeEnv)
    }
    
    /// 指定计算节点不存在。
    public static var resourceNotFound_ComputeNode: TCBatchError {
        TCBatchError(.resourceNotFound_ComputeNode)
    }
    
    /// 指定作业不存在。
    public static var resourceNotFound_Job: TCBatchError {
        TCBatchError(.resourceNotFound_Job)
    }
    
    /// 指定作业任务不存在。
    public static var resourceNotFound_Task: TCBatchError {
        TCBatchError(.resourceNotFound_Task)
    }
    
    /// 指定任务实例不存在。
    public static var resourceNotFound_TaskInstance: TCBatchError {
        TCBatchError(.resourceNotFound_TaskInstance)
    }
    
    /// 指定任务模板ID不存在。
    public static var resourceNotFound_TaskTemplate: TCBatchError {
        TCBatchError(.resourceNotFound_TaskTemplate)
    }
    
    /// 禁止使用批量计算服务。
    public static var unauthorizedOperation_UserNotAllowedToUseBatch: TCBatchError {
        TCBatchError(.unauthorizedOperation_UserNotAllowedToUseBatch)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCBatchError {
        TCBatchError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBatchError {
        TCBatchError(.unsupportedOperation)
    }
    
    /// 处理其他请求，禁止删除操作。
    public static var unsupportedOperation_AcceptOtherRequest: TCBatchError {
        TCBatchError(.unsupportedOperation_AcceptOtherRequest)
    }
    
    /// 计算环境正在接受请求。
    public static var unsupportedOperation_ComputeEnvAcceptOtherRequest: TCBatchError {
        TCBatchError(.unsupportedOperation_ComputeEnvAcceptOtherRequest)
    }
    
    /// 禁止删除操作。
    public static var unsupportedOperation_ComputeEnvOperation: TCBatchError {
        TCBatchError(.unsupportedOperation_ComputeEnvOperation)
    }
    
    /// 禁止终止计算节点。
    public static var unsupportedOperation_ComputeNodeForbidTerminate: TCBatchError {
        TCBatchError(.unsupportedOperation_ComputeNodeForbidTerminate)
    }
    
    /// 计算节点停止中。
    public static var unsupportedOperation_ComputeNodeIsTerminating: TCBatchError {
        TCBatchError(.unsupportedOperation_ComputeNodeIsTerminating)
    }
    
    /// 不允许将该实例添加到计算环境中。
    public static var unsupportedOperation_InstancesNotAllowToAttach: TCBatchError {
        TCBatchError(.unsupportedOperation_InstancesNotAllowToAttach)
    }
    
    /// 缩容时，缩容数大于现有计算节点数。
    public static var unsupportedOperation_NotEnoughComputeNodesToTerminate: TCBatchError {
        TCBatchError(.unsupportedOperation_NotEnoughComputeNodesToTerminate)
    }
    
    /// 指定计算环境的任务实例禁止该操作。
    public static var unsupportedOperation_TerminateOperationWithEnvId: TCBatchError {
        TCBatchError(.unsupportedOperation_TerminateOperationWithEnvId)
    }
}

extension TCBatchError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, InvalidZone.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCBatchError: Equatable {
    public static func == (lhs: TCBatchError, rhs: TCBatchError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBatchError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}