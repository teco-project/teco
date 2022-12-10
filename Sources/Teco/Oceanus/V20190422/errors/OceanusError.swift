public struct TCOceanusError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_DataSourceConnectionFailed = "FailedOperation.DataSourceConnectionFailed"
        case failedOperation_DuplicatedJobName = "FailedOperation.DuplicatedJobName"
        case failedOperation_GetResourceTagsByResourceIds = "FailedOperation.GetResourceTagsByResourceIds"
        case failedOperation_GrammarCheckFailure = "FailedOperation.GrammarCheckFailure"
        case failedOperation_ParseSql = "FailedOperation.ParseSql"
        case failedOperation_UserNotAuthenticated = "FailedOperation.UserNotAuthenticated"
        case internalError = "InternalError"
        case internalError_CLS = "InternalError.CLS"
        case internalError_COSClient = "InternalError.COSClient"
        case internalError_CamCgwError = "InternalError.CamCgwError"
        case internalError_DB = "InternalError.DB"
        case internalError_FailedToBescribeResources = "InternalError.FailedToBescribeResources"
        case internalError_FailedToUpdateJob = "InternalError.FailedToUpdateJob"
        case internalError_JobInstanceNotFound = "InternalError.JobInstanceNotFound"
        case internalError_LogicError = "InternalError.LogicError"
        case internalError_ResourceConfigCanNotDelete = "InternalError.ResourceConfigCanNotDelete"
        case internalError_ResourceNotExist = "InternalError.ResourceNotExist"
        case internalError_SqlCodeNotFound = "InternalError.SqlCodeNotFound"
        case internalError_StsNewClient = "InternalError.StsNewClient"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ClusterId = "InvalidParameterValue.ClusterId"
        case invalidParameterValue_ClusterIds = "InvalidParameterValue.ClusterIds"
        case invalidParameterValue_CuMem = "InvalidParameterValue.CuMem"
        case invalidParameterValue_InvalidStartMode = "InvalidParameterValue.InvalidStartMode"
        case invalidParameterValue_JobIdValueError = "InvalidParameterValue.JobIdValueError"
        case invalidParameterValue_JobName = "InvalidParameterValue.JobName"
        case invalidParameterValue_JobNameExisted = "InvalidParameterValue.JobNameExisted"
        case invalidParameterValue_JobTypeCombineWithClusterType = "InvalidParameterValue.JobTypeCombineWithClusterType"
        case invalidParameterValue_JobTypeCombineWithEntrypointClass = "InvalidParameterValue.JobTypeCombineWithEntrypointClass"
        case invalidParameterValue_OrderType = "InvalidParameterValue.OrderType"
        case invalidParameterValue_ResourceIdsNotFound = "InvalidParameterValue.ResourceIdsNotFound"
        case invalidParameterValue_RunJobDescriptionsCount = "InvalidParameterValue.RunJobDescriptionsCount"
        case invalidParameterValue_RunType = "InvalidParameterValue.RunType"
        case invalidParameterValue_UnSupportedComposite = "InvalidParameterValue.UnSupportedComposite"
        case invalidParameterValue_UnknownStopType = "InvalidParameterValue.UnknownStopType"
        case invalidParameter_AppIdResourceNotMatch = "InvalidParameter.AppIdResourceNotMatch"
        case invalidParameter_IllegalMaxParallelism = "InvalidParameter.IllegalMaxParallelism"
        case invalidParameter_InvalidAppId = "InvalidParameter.InvalidAppId"
        case invalidParameter_InvalidClusterId = "InvalidParameter.InvalidClusterId"
        case invalidParameter_InvalidName = "InvalidParameter.InvalidName"
        case invalidParameter_InvalidRegion = "InvalidParameter.InvalidRegion"
        case invalidParameter_InvalidResourceIds = "InvalidParameter.InvalidResourceIds"
        case invalidParameter_JobConfigLogCollectParamError = "InvalidParameter.JobConfigLogCollectParamError"
        case invalidParameter_MaxParallelismTooLarge = "InvalidParameter.MaxParallelismTooLarge"
        case invalidParameter_MaxParallelismTooSmall = "InvalidParameter.MaxParallelismTooSmall"
        case invalidParameter_UinResourceNotMatch = "InvalidParameter.UinResourceNotMatch"
        case invalidParameter_UnsupportedFlinkConf = "InvalidParameter.UnsupportedFlinkConf"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Job = "LimitExceeded.Job"
        case limitExceeded_JobConfig = "LimitExceeded.JobConfig"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_InstanceInProcess = "ResourceInUse.InstanceInProcess"
        case resourceInUse_ResourceNameAlreadyExists = "ResourceInUse.ResourceNameAlreadyExists"
        case resourceInsufficient_CU = "ResourceInsufficient.CU"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_COSBucket = "ResourceNotFound.COSBucket"
        case resourceNotFound_ClusterId = "ResourceNotFound.ClusterId"
        case resourceNotFound_Job = "ResourceNotFound.Job"
        case resourceNotFound_JobConfig = "ResourceNotFound.JobConfig"
        case resourceNotFound_JobId = "ResourceNotFound.JobId"
        case resourceNotFound_Resource = "ResourceNotFound.Resource"
        case resourceNotFound_ResourceConfig = "ResourceNotFound.ResourceConfig"
        case resourceNotFound_ResourceNotExist = "ResourceNotFound.ResourceNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_BeUseBySomeJobConfig = "ResourceUnavailable.BeUseBySomeJobConfig"
        case resourceUnavailable_CheckResourceLocExists = "ResourceUnavailable.CheckResourceLocExists"
        case resourceUnavailable_Cluster = "ResourceUnavailable.Cluster"
        case resourceUnavailable_ClusterGroupStatus = "ResourceUnavailable.ClusterGroupStatus"
        case resourceUnavailable_FailedToBescribeResources = "ResourceUnavailable.FailedToBescribeResources"
        case resourceUnavailable_GetJobPublishedJobConfig = "ResourceUnavailable.GetJobPublishedJobConfig"
        case resourceUnavailable_JobResourceConfigNotReady = "ResourceUnavailable.JobResourceConfigNotReady"
        case resourceUnavailable_NoRunningJobInstancesFoundForJobId = "ResourceUnavailable.NoRunningJobInstancesFoundForJobId"
        case resourceUnavailable_NotAllowedToBeDeleted = "ResourceUnavailable.NotAllowedToBeDeleted"
        case resourceUnavailable_NotAllowedToBeStopOrPause = "ResourceUnavailable.NotAllowedToBeStopOrPause"
        case resourceUnavailable_ReqCuMem = "ResourceUnavailable.ReqCuMem"
        case resourceUnavailable_ResourceLocNotExists = "ResourceUnavailable.ResourceLocNotExists"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_InvalidCheckpointIntervalError = "UnsupportedOperation.InvalidCheckpointIntervalError"
        case unsupportedOperation_NoPermissionAccess = "UnsupportedOperation.NoPermissionAccess"
        case unsupportedOperation_UnsupportedStartMode = "UnsupportedOperation.UnsupportedStartMode"
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
    public static var authFailure: TCOceanusError {
        TCOceanusError(.authFailure)
    }
    
    /// 未授权操作。
    public static var authFailure_UnauthorizedOperation: TCOceanusError {
        TCOceanusError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCOceanusError {
        TCOceanusError(.failedOperation)
    }
    
    /// 数据库连接失败，请检查参数是否填写正确。
    public static var failedOperation_DataSourceConnectionFailed: TCOceanusError {
        TCOceanusError(.failedOperation_DataSourceConnectionFailed)
    }
    
    /// 重复的作业名。
    public static var failedOperation_DuplicatedJobName: TCOceanusError {
        TCOceanusError(.failedOperation_DuplicatedJobName)
    }
    
    /// 查询资源关联标签失败。
    public static var failedOperation_GetResourceTagsByResourceIds: TCOceanusError {
        TCOceanusError(.failedOperation_GetResourceTagsByResourceIds)
    }
    
    /// 语法检查失败。
    public static var failedOperation_GrammarCheckFailure: TCOceanusError {
        TCOceanusError(.failedOperation_GrammarCheckFailure)
    }
    
    /// SQL解析失败。
    public static var failedOperation_ParseSql: TCOceanusError {
        TCOceanusError(.failedOperation_ParseSql)
    }
    
    /// 用户未实名验证。
    public static var failedOperation_UserNotAuthenticated: TCOceanusError {
        TCOceanusError(.failedOperation_UserNotAuthenticated)
    }
    
    /// 内部错误。
    public static var internalError: TCOceanusError {
        TCOceanusError(.internalError)
    }
    
    /// CLS接口错误。
    public static var internalError_CLS: TCOceanusError {
        TCOceanusError(.internalError_CLS)
    }
    
    /// COS 服务访问错误。
    public static var internalError_COSClient: TCOceanusError {
        TCOceanusError(.internalError_COSClient)
    }
    
    /// CAM 网关错误。
    public static var internalError_CamCgwError: TCOceanusError {
        TCOceanusError(.internalError_CamCgwError)
    }
    
    /// 数据库异常。
    public static var internalError_DB: TCOceanusError {
        TCOceanusError(.internalError_DB)
    }
    
    /// 失败的目标资源。
    public static var internalError_FailedToBescribeResources: TCOceanusError {
        TCOceanusError(.internalError_FailedToBescribeResources)
    }
    
    /// 无法更新作业错误。
    public static var internalError_FailedToUpdateJob: TCOceanusError {
        TCOceanusError(.internalError_FailedToUpdateJob)
    }
    
    /// 作业实例没找到。
    public static var internalError_JobInstanceNotFound: TCOceanusError {
        TCOceanusError(.internalError_JobInstanceNotFound)
    }
    
    /// 内部错误。
    public static var internalError_LogicError: TCOceanusError {
        TCOceanusError(.internalError_LogicError)
    }
    
    /// 资源只有一个版本，无法删除。
    public static var internalError_ResourceConfigCanNotDelete: TCOceanusError {
        TCOceanusError(.internalError_ResourceConfigCanNotDelete)
    }
    
    /// 资源不存在。
    public static var internalError_ResourceNotExist: TCOceanusError {
        TCOceanusError(.internalError_ResourceNotExist)
    }
    
    /// 未找到sqlcode错误。
    public static var internalError_SqlCodeNotFound: TCOceanusError {
        TCOceanusError(.internalError_SqlCodeNotFound)
    }
    
    /// 内部错误。
    public static var internalError_StsNewClient: TCOceanusError {
        TCOceanusError(.internalError_StsNewClient)
    }
    
    /// 系统错误。
    public static var internalError_SystemError: TCOceanusError {
        TCOceanusError(.internalError_SystemError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCOceanusError {
        TCOceanusError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCOceanusError {
        TCOceanusError(.invalidParameterValue)
    }
    
    /// 集群Id指定错误，为空或者不存在。
    public static var invalidParameterValue_ClusterId: TCOceanusError {
        TCOceanusError(.invalidParameterValue_ClusterId)
    }
    
    /// 群集Id报错。
    public static var invalidParameterValue_ClusterIds: TCOceanusError {
        TCOceanusError(.invalidParameterValue_ClusterIds)
    }
    
    /// CU内存规格不匹配。
    public static var invalidParameterValue_CuMem: TCOceanusError {
        TCOceanusError(.invalidParameterValue_CuMem)
    }
    
    /// 无效启动模式。
    public static var invalidParameterValue_InvalidStartMode: TCOceanusError {
        TCOceanusError(.invalidParameterValue_InvalidStartMode)
    }
    
    /// 作业id的参数无效。
    public static var invalidParameterValue_JobIdValueError: TCOceanusError {
        TCOceanusError(.invalidParameterValue_JobIdValueError)
    }
    
    /// Illegal JobName。
    public static var invalidParameterValue_JobName: TCOceanusError {
        TCOceanusError(.invalidParameterValue_JobName)
    }
    
    /// 作业名称已存在。
    public static var invalidParameterValue_JobNameExisted: TCOceanusError {
        TCOceanusError(.invalidParameterValue_JobNameExisted)
    }
    
    /// 集群模式与作业类型不匹配。
    public static var invalidParameterValue_JobTypeCombineWithClusterType: TCOceanusError {
        TCOceanusError(.invalidParameterValue_JobTypeCombineWithClusterType)
    }
    
    /// SQL作业不能指定EntrypointClass，JAR作业则必须指定。
    public static var invalidParameterValue_JobTypeCombineWithEntrypointClass: TCOceanusError {
        TCOceanusError(.invalidParameterValue_JobTypeCombineWithEntrypointClass)
    }
    
    /// OrderType值错误。
    public static var invalidParameterValue_OrderType: TCOceanusError {
        TCOceanusError(.invalidParameterValue_OrderType)
    }
    
    /// 未找到资源ID。
    public static var invalidParameterValue_ResourceIdsNotFound: TCOceanusError {
        TCOceanusError(.invalidParameterValue_ResourceIdsNotFound)
    }
    
    /// 批量运行作业个数超过上限。
    public static var invalidParameterValue_RunJobDescriptionsCount: TCOceanusError {
        TCOceanusError(.invalidParameterValue_RunJobDescriptionsCount)
    }
    
    /// RunType错误。
    public static var invalidParameterValue_RunType: TCOceanusError {
        TCOceanusError(.invalidParameterValue_RunType)
    }
    
    /// 不支持的复合类型。
    public static var invalidParameterValue_UnSupportedComposite: TCOceanusError {
        TCOceanusError(.invalidParameterValue_UnSupportedComposite)
    }
    
    /// 未知停止类型错误。
    public static var invalidParameterValue_UnknownStopType: TCOceanusError {
        TCOceanusError(.invalidParameterValue_UnknownStopType)
    }
    
    /// AppId资源不匹配。
    public static var invalidParameter_AppIdResourceNotMatch: TCOceanusError {
        TCOceanusError(.invalidParameter_AppIdResourceNotMatch)
    }
    
    /// 非法的 MaxParallelism 参数。
    public static var invalidParameter_IllegalMaxParallelism: TCOceanusError {
        TCOceanusError(.invalidParameter_IllegalMaxParallelism)
    }
    
    /// appid错误。
    public static var invalidParameter_InvalidAppId: TCOceanusError {
        TCOceanusError(.invalidParameter_InvalidAppId)
    }
    
    /// 无效集群id。
    public static var invalidParameter_InvalidClusterId: TCOceanusError {
        TCOceanusError(.invalidParameter_InvalidClusterId)
    }
    
    /// 名字不符合规范。
    public static var invalidParameter_InvalidName: TCOceanusError {
        TCOceanusError(.invalidParameter_InvalidName)
    }
    
    /// 无效Region。
    public static var invalidParameter_InvalidRegion: TCOceanusError {
        TCOceanusError(.invalidParameter_InvalidRegion)
    }
    
    /// ResourceIds非法。
    public static var invalidParameter_InvalidResourceIds: TCOceanusError {
        TCOceanusError(.invalidParameter_InvalidResourceIds)
    }
    
    public static var invalidParameter_JobConfigLogCollectParamError: TCOceanusError {
        TCOceanusError(.invalidParameter_JobConfigLogCollectParamError)
    }
    
    /// MaxParallelism 过大。
    public static var invalidParameter_MaxParallelismTooLarge: TCOceanusError {
        TCOceanusError(.invalidParameter_MaxParallelismTooLarge)
    }
    
    /// MaxParallelism 不允许小于算子默认并行度。
    public static var invalidParameter_MaxParallelismTooSmall: TCOceanusError {
        TCOceanusError(.invalidParameter_MaxParallelismTooSmall)
    }
    
    /// Uin资源不匹配。
    public static var invalidParameter_UinResourceNotMatch: TCOceanusError {
        TCOceanusError(.invalidParameter_UinResourceNotMatch)
    }
    
    /// Flink参数非法。
    public static var invalidParameter_UnsupportedFlinkConf: TCOceanusError {
        TCOceanusError(.invalidParameter_UnsupportedFlinkConf)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCOceanusError {
        TCOceanusError(.limitExceeded)
    }
    
    /// Job个数超过限额。
    public static var limitExceeded_Job: TCOceanusError {
        TCOceanusError(.limitExceeded_Job)
    }
    
    /// 作业配置超出限制。
    public static var limitExceeded_JobConfig: TCOceanusError {
        TCOceanusError(.limitExceeded_JobConfig)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCOceanusError {
        TCOceanusError(.resourceInUse)
    }
    
    /// 集群有其他操作。
    public static var resourceInUse_InstanceInProcess: TCOceanusError {
        TCOceanusError(.resourceInUse_InstanceInProcess)
    }
    
    /// 资源名称已存在。
    public static var resourceInUse_ResourceNameAlreadyExists: TCOceanusError {
        TCOceanusError(.resourceInUse_ResourceNameAlreadyExists)
    }
    
    /// CU资源不足。
    public static var resourceInsufficient_CU: TCOceanusError {
        TCOceanusError(.resourceInsufficient_CU)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCOceanusError {
        TCOceanusError(.resourceNotFound)
    }
    
    /// COS Bucket 未找到或无权限访问。
    public static var resourceNotFound_COSBucket: TCOceanusError {
        TCOceanusError(.resourceNotFound_COSBucket)
    }
    
    /// 集群不存在。
    public static var resourceNotFound_ClusterId: TCOceanusError {
        TCOceanusError(.resourceNotFound_ClusterId)
    }
    
    /// 作业不存在。
    public static var resourceNotFound_Job: TCOceanusError {
        TCOceanusError(.resourceNotFound_Job)
    }
    
    /// 作业配置版本不存在。
    public static var resourceNotFound_JobConfig: TCOceanusError {
        TCOceanusError(.resourceNotFound_JobConfig)
    }
    
    /// 找不到作业。
    public static var resourceNotFound_JobId: TCOceanusError {
        TCOceanusError(.resourceNotFound_JobId)
    }
    
    /// 程序包不存在。
    public static var resourceNotFound_Resource: TCOceanusError {
        TCOceanusError(.resourceNotFound_Resource)
    }
    
    /// 程序包版本不存在。
    public static var resourceNotFound_ResourceConfig: TCOceanusError {
        TCOceanusError(.resourceNotFound_ResourceConfig)
    }
    
    /// 资源不存在。
    public static var resourceNotFound_ResourceNotExist: TCOceanusError {
        TCOceanusError(.resourceNotFound_ResourceNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCOceanusError {
        TCOceanusError(.resourceUnavailable)
    }
    
    /// 被某个作业配置使用。
    public static var resourceUnavailable_BeUseBySomeJobConfig: TCOceanusError {
        TCOceanusError(.resourceUnavailable_BeUseBySomeJobConfig)
    }
    
    /// 检查资源位置是否存在错误。
    public static var resourceUnavailable_CheckResourceLocExists: TCOceanusError {
        TCOceanusError(.resourceUnavailable_CheckResourceLocExists)
    }
    
    /// 集群处于非运行状态。
    public static var resourceUnavailable_Cluster: TCOceanusError {
        TCOceanusError(.resourceUnavailable_Cluster)
    }
    
    /// 群集组状态错误。
    public static var resourceUnavailable_ClusterGroupStatus: TCOceanusError {
        TCOceanusError(.resourceUnavailable_ClusterGroupStatus)
    }
    
    /// 失败的目标资源。
    public static var resourceUnavailable_FailedToBescribeResources: TCOceanusError {
        TCOceanusError(.resourceUnavailable_FailedToBescribeResources)
    }
    
    /// 获取发布的作业作业配置错误。
    public static var resourceUnavailable_GetJobPublishedJobConfig: TCOceanusError {
        TCOceanusError(.resourceUnavailable_GetJobPublishedJobConfig)
    }
    
    /// 作业资源配置未就绪。
    public static var resourceUnavailable_JobResourceConfigNotReady: TCOceanusError {
        TCOceanusError(.resourceUnavailable_JobResourceConfigNotReady)
    }
    
    /// 找不到JobId的正在运行的作业实例。
    public static var resourceUnavailable_NoRunningJobInstancesFoundForJobId: TCOceanusError {
        TCOceanusError(.resourceUnavailable_NoRunningJobInstancesFoundForJobId)
    }
    
    /// 不允许删除错误。
    public static var resourceUnavailable_NotAllowedToBeDeleted: TCOceanusError {
        TCOceanusError(.resourceUnavailable_NotAllowedToBeDeleted)
    }
    
    /// 不允许停止或暂停错误。
    public static var resourceUnavailable_NotAllowedToBeStopOrPause: TCOceanusError {
        TCOceanusError(.resourceUnavailable_NotAllowedToBeStopOrPause)
    }
    
    /// 共享群集只允许CuMem=4。
    public static var resourceUnavailable_ReqCuMem: TCOceanusError {
        TCOceanusError(.resourceUnavailable_ReqCuMem)
    }
    
    /// cos上的程序包不存在。
    public static var resourceUnavailable_ResourceLocNotExists: TCOceanusError {
        TCOceanusError(.resourceUnavailable_ResourceLocNotExists)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCOceanusError {
        TCOceanusError(.unauthorizedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCOceanusError {
        TCOceanusError(.unsupportedOperation)
    }
    
    /// Checkpoint 时间间隔，错误。
    public static var unsupportedOperation_InvalidCheckpointIntervalError: TCOceanusError {
        TCOceanusError(.unsupportedOperation_InvalidCheckpointIntervalError)
    }
    
    /// 权限拦截,没有进入权限。
    public static var unsupportedOperation_NoPermissionAccess: TCOceanusError {
        TCOceanusError(.unsupportedOperation_NoPermissionAccess)
    }
    
    /// 不支持的启动模式。
    public static var unsupportedOperation_UnsupportedStartMode: TCOceanusError {
        TCOceanusError(.unsupportedOperation_UnsupportedStartMode)
    }
}

extension TCOceanusError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCOceanusError: Equatable {
    public static func == (lhs: TCOceanusError, rhs: TCOceanusError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOceanusError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}