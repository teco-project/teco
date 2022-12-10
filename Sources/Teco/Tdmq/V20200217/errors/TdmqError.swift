public struct TCTdmqError: TCErrorType {
    enum Code: String {
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CmqBackendError = "FailedOperation.CmqBackendError"
        case failedOperation_CreateBindVpc = "FailedOperation.CreateBindVpc"
        case failedOperation_CreateCluster = "FailedOperation.CreateCluster"
        case failedOperation_CreateEnvironment = "FailedOperation.CreateEnvironment"
        case failedOperation_CreateEnvironmentRole = "FailedOperation.CreateEnvironmentRole"
        case failedOperation_CreateNamespace = "FailedOperation.CreateNamespace"
        case failedOperation_CreateProducerError = "FailedOperation.CreateProducerError"
        case failedOperation_CreatePulsarClientError = "FailedOperation.CreatePulsarClientError"
        case failedOperation_CreateRole = "FailedOperation.CreateRole"
        case failedOperation_CreateSecretKey = "FailedOperation.CreateSecretKey"
        case failedOperation_CreateSubscription = "FailedOperation.CreateSubscription"
        case failedOperation_CreateTopic = "FailedOperation.CreateTopic"
        case failedOperation_DeleteCluster = "FailedOperation.DeleteCluster"
        case failedOperation_DeleteEnvironmentRoles = "FailedOperation.DeleteEnvironmentRoles"
        case failedOperation_DeleteEnvironments = "FailedOperation.DeleteEnvironments"
        case failedOperation_DeleteNamespace = "FailedOperation.DeleteNamespace"
        case failedOperation_DeleteRoles = "FailedOperation.DeleteRoles"
        case failedOperation_DeleteSubscriptions = "FailedOperation.DeleteSubscriptions"
        case failedOperation_DeleteTopics = "FailedOperation.DeleteTopics"
        case failedOperation_DescribeSubscription = "FailedOperation.DescribeSubscription"
        case failedOperation_GetEnvironmentAttributesFailed = "FailedOperation.GetEnvironmentAttributesFailed"
        case failedOperation_GetTopicPartitionsFailed = "FailedOperation.GetTopicPartitionsFailed"
        case failedOperation_MaxMessageSizeError = "FailedOperation.MaxMessageSizeError"
        case failedOperation_MessageIDError = "FailedOperation.MessageIDError"
        case failedOperation_NamespaceInUse = "FailedOperation.NamespaceInUse"
        case failedOperation_PulsarAdminError = "FailedOperation.PulsarAdminError"
        case failedOperation_ReceiveError = "FailedOperation.ReceiveError"
        case failedOperation_ReceiveTimeout = "FailedOperation.ReceiveTimeout"
        case failedOperation_ResetMsgSubOffsetByTimestampFailed = "FailedOperation.ResetMsgSubOffsetByTimestampFailed"
        case failedOperation_RoleInUse = "FailedOperation.RoleInUse"
        case failedOperation_SaveSecretKey = "FailedOperation.SaveSecretKey"
        case failedOperation_SendMessageTimeoutError = "FailedOperation.SendMessageTimeoutError"
        case failedOperation_SendMsgFailed = "FailedOperation.SendMsgFailed"
        case failedOperation_SetRetentionPolicy = "FailedOperation.SetRetentionPolicy"
        case failedOperation_SetTTL = "FailedOperation.SetTTL"
        case failedOperation_TopicInUse = "FailedOperation.TopicInUse"
        case failedOperation_TopicTypeError = "FailedOperation.TopicTypeError"
        case failedOperation_UpdateEnvironment = "FailedOperation.UpdateEnvironment"
        case failedOperation_UpdateEnvironmentRole = "FailedOperation.UpdateEnvironmentRole"
        case failedOperation_UpdateRole = "FailedOperation.UpdateRole"
        case failedOperation_UpdateTopic = "FailedOperation.UpdateTopic"
        case failedOperation_VpcInUse = "FailedOperation.VpcInUse"
        case internalError = "InternalError"
        case internalError_BrokerService = "InternalError.BrokerService"
        case internalError_GetAttributesFailed = "InternalError.GetAttributesFailed"
        case internalError_IllegalMessage = "InternalError.IllegalMessage"
        case internalError_Retry = "InternalError.Retry"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ClusterNameDuplication = "InvalidParameterValue.ClusterNameDuplication"
        case invalidParameterValue_InvalidParams = "InvalidParameterValue.InvalidParams"
        case invalidParameterValue_NeedMoreParams = "InvalidParameterValue.NeedMoreParams"
        case invalidParameterValue_TTL = "InvalidParameterValue.TTL"
        case invalidParameterValue_TopicNotFound = "InvalidParameterValue.TopicNotFound"
        case invalidParameter_Partition = "InvalidParameter.Partition"
        case invalidParameter_TenantNotFound = "InvalidParameter.TenantNotFound"
        case invalidParameter_TokenNotFound = "InvalidParameter.TokenNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Clusters = "LimitExceeded.Clusters"
        case limitExceeded_Environments = "LimitExceeded.Environments"
        case limitExceeded_Namespaces = "LimitExceeded.Namespaces"
        case limitExceeded_RetentionSize = "LimitExceeded.RetentionSize"
        case limitExceeded_RetentionTime = "LimitExceeded.RetentionTime"
        case limitExceeded_Subscriptions = "LimitExceeded.Subscriptions"
        case limitExceeded_Topics = "LimitExceeded.Topics"
        case missingParameter = "MissingParameter"
        case missingParameter_NeedMoreParams = "MissingParameter.NeedMoreParams"
        case operationDenied_ConsumerRunning = "OperationDenied.ConsumerRunning"
        case operationDenied_DefaultEnvironment = "OperationDenied.DefaultEnvironment"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_Cluster = "ResourceInUse.Cluster"
        case resourceInUse_EnvironmentRole = "ResourceInUse.EnvironmentRole"
        case resourceInUse_Namespace = "ResourceInUse.Namespace"
        case resourceInUse_Queue = "ResourceInUse.Queue"
        case resourceInUse_Role = "ResourceInUse.Role"
        case resourceInUse_Subscription = "ResourceInUse.Subscription"
        case resourceInUse_Topic = "ResourceInUse.Topic"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_BrokerCluster = "ResourceNotFound.BrokerCluster"
        case resourceNotFound_Cluster = "ResourceNotFound.Cluster"
        case resourceNotFound_Environment = "ResourceNotFound.Environment"
        case resourceNotFound_EnvironmentRole = "ResourceNotFound.EnvironmentRole"
        case resourceNotFound_Namespace = "ResourceNotFound.Namespace"
        case resourceNotFound_Role = "ResourceNotFound.Role"
        case resourceNotFound_Subscription = "ResourceNotFound.Subscription"
        case resourceNotFound_Topic = "ResourceNotFound.Topic"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_CreateFailed = "ResourceUnavailable.CreateFailed"
        case resourceUnavailable_FundRequired = "ResourceUnavailable.FundRequired"
        case resourceUnavailable_SystemUpgrade = "ResourceUnavailable.SystemUpgrade"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// CAM鉴权不通过。
    public static var authFailure_UnauthorizedOperation: TCTdmqError {
        TCTdmqError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTdmqError {
        TCTdmqError(.failedOperation)
    }
    
    /// CMQ 后台服务错误。
    ///
    /// CMQ 后台服务错误，请再试一次。
    public static var failedOperation_CmqBackendError: TCTdmqError {
        TCTdmqError(.failedOperation_CmqBackendError)
    }
    
    /// 创建vpc绑定关系失败。
    public static var failedOperation_CreateBindVpc: TCTdmqError {
        TCTdmqError(.failedOperation_CreateBindVpc)
    }
    
    /// 创建集群失败。
    public static var failedOperation_CreateCluster: TCTdmqError {
        TCTdmqError(.failedOperation_CreateCluster)
    }
    
    /// 环境创建失败。
    public static var failedOperation_CreateEnvironment: TCTdmqError {
        TCTdmqError(.failedOperation_CreateEnvironment)
    }
    
    /// 创建环境角色失败。
    public static var failedOperation_CreateEnvironmentRole: TCTdmqError {
        TCTdmqError(.failedOperation_CreateEnvironmentRole)
    }
    
    /// 创建命名空间失败。
    public static var failedOperation_CreateNamespace: TCTdmqError {
        TCTdmqError(.failedOperation_CreateNamespace)
    }
    
    /// 创建producer出错。
    public static var failedOperation_CreateProducerError: TCTdmqError {
        TCTdmqError(.failedOperation_CreateProducerError)
    }
    
    /// 创建TDMQ client的出错。
    public static var failedOperation_CreatePulsarClientError: TCTdmqError {
        TCTdmqError(.failedOperation_CreatePulsarClientError)
    }
    
    /// 角色创建失败。
    public static var failedOperation_CreateRole: TCTdmqError {
        TCTdmqError(.failedOperation_CreateRole)
    }
    
    /// 创建秘钥失败。
    public static var failedOperation_CreateSecretKey: TCTdmqError {
        TCTdmqError(.failedOperation_CreateSecretKey)
    }
    
    /// 创建订阅关系失败。
    public static var failedOperation_CreateSubscription: TCTdmqError {
        TCTdmqError(.failedOperation_CreateSubscription)
    }
    
    /// 主题创建失败。
    public static var failedOperation_CreateTopic: TCTdmqError {
        TCTdmqError(.failedOperation_CreateTopic)
    }
    
    /// 删除集群失败。
    public static var failedOperation_DeleteCluster: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteCluster)
    }
    
    /// 删除环境角色失败。
    public static var failedOperation_DeleteEnvironmentRoles: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteEnvironmentRoles)
    }
    
    /// 环境删除失败。
    public static var failedOperation_DeleteEnvironments: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteEnvironments)
    }
    
    /// 删除命名空间失败。
    public static var failedOperation_DeleteNamespace: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteNamespace)
    }
    
    /// 角色删除失败。
    public static var failedOperation_DeleteRoles: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteRoles)
    }
    
    /// 删除订阅关系失败。
    public static var failedOperation_DeleteSubscriptions: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteSubscriptions)
    }
    
    /// 主题删除失败。
    public static var failedOperation_DeleteTopics: TCTdmqError {
        TCTdmqError(.failedOperation_DeleteTopics)
    }
    
    /// 查询订阅数据失败。
    public static var failedOperation_DescribeSubscription: TCTdmqError {
        TCTdmqError(.failedOperation_DescribeSubscription)
    }
    
    /// 获取环境属性失败。
    public static var failedOperation_GetEnvironmentAttributesFailed: TCTdmqError {
        TCTdmqError(.failedOperation_GetEnvironmentAttributesFailed)
    }
    
    /// 获取主题分区数失败。
    public static var failedOperation_GetTopicPartitionsFailed: TCTdmqError {
        TCTdmqError(.failedOperation_GetTopicPartitionsFailed)
    }
    
    /// 最大消息超过1MB。
    public static var failedOperation_MaxMessageSizeError: TCTdmqError {
        TCTdmqError(.failedOperation_MaxMessageSizeError)
    }
    
    /// 上传的msgID错误。
    ///
    /// 请使用正确的MessageID的格式，否则服务端无法正确解析，
    public static var failedOperation_MessageIDError: TCTdmqError {
        TCTdmqError(.failedOperation_MessageIDError)
    }
    
    /// 必须先清除关联命名空间才能继续操作。
    public static var failedOperation_NamespaceInUse: TCTdmqError {
        TCTdmqError(.failedOperation_NamespaceInUse)
    }
    
    public static var failedOperation_PulsarAdminError: TCTdmqError {
        TCTdmqError(.failedOperation_PulsarAdminError)
    }
    
    /// 接收消息出错。
    ///
    /// 这个是由于在接收消息时，client或者broker没有正确响应导致抛出 PulsarClientException 异常，可通过重试来尝试解决。
    public static var failedOperation_ReceiveError: TCTdmqError {
        TCTdmqError(.failedOperation_ReceiveError)
    }
    
    /// 接收消息超时，请重试。
    ///
    /// 这里是因为接收消息超时导致的错误，一般由于网络抖动等因素会引起接收消息超时，可以通过重试来解决。
    public static var failedOperation_ReceiveTimeout: TCTdmqError {
        TCTdmqError(.failedOperation_ReceiveTimeout)
    }
    
    /// 消息回溯设置失败。
    public static var failedOperation_ResetMsgSubOffsetByTimestampFailed: TCTdmqError {
        TCTdmqError(.failedOperation_ResetMsgSubOffsetByTimestampFailed)
    }
    
    /// 必须先清除关联角色数据才能继续操作。
    public static var failedOperation_RoleInUse: TCTdmqError {
        TCTdmqError(.failedOperation_RoleInUse)
    }
    
    /// 保存秘钥失败。
    public static var failedOperation_SaveSecretKey: TCTdmqError {
        TCTdmqError(.failedOperation_SaveSecretKey)
    }
    
    /// 消息发送超时。
    ///
    /// 消息发送超时主要是由于broker侧的问题导致的，一般可以通过业务侧重试解决
    public static var failedOperation_SendMessageTimeoutError: TCTdmqError {
        TCTdmqError(.failedOperation_SendMessageTimeoutError)
    }
    
    /// 发送消息失败。
    public static var failedOperation_SendMsgFailed: TCTdmqError {
        TCTdmqError(.failedOperation_SendMsgFailed)
    }
    
    /// 设置消息保留策略失败。
    ///
    /// 调整参数后重试。
    public static var failedOperation_SetRetentionPolicy: TCTdmqError {
        TCTdmqError(.failedOperation_SetRetentionPolicy)
    }
    
    /// 设置消息TTL失败。
    public static var failedOperation_SetTTL: TCTdmqError {
        TCTdmqError(.failedOperation_SetTTL)
    }
    
    /// 必须先清除关联主题数据才能继续操作。
    public static var failedOperation_TopicInUse: TCTdmqError {
        TCTdmqError(.failedOperation_TopicInUse)
    }
    
    /// 请使用partition topic。
    ///
    /// 创建的Topic类型不支持
    public static var failedOperation_TopicTypeError: TCTdmqError {
        TCTdmqError(.failedOperation_TopicTypeError)
    }
    
    /// 环境更新失败。
    public static var failedOperation_UpdateEnvironment: TCTdmqError {
        TCTdmqError(.failedOperation_UpdateEnvironment)
    }
    
    /// 更新环境角色失败。
    public static var failedOperation_UpdateEnvironmentRole: TCTdmqError {
        TCTdmqError(.failedOperation_UpdateEnvironmentRole)
    }
    
    /// 角色更新失败。
    public static var failedOperation_UpdateRole: TCTdmqError {
        TCTdmqError(.failedOperation_UpdateRole)
    }
    
    /// 主题更新失败。
    public static var failedOperation_UpdateTopic: TCTdmqError {
        TCTdmqError(.failedOperation_UpdateTopic)
    }
    
    /// 必须先清除关联VPC路由数据才能继续操作。
    public static var failedOperation_VpcInUse: TCTdmqError {
        TCTdmqError(.failedOperation_VpcInUse)
    }
    
    /// 内部错误。
    public static var internalError: TCTdmqError {
        TCTdmqError(.internalError)
    }
    
    /// Broker服务异常。
    public static var internalError_BrokerService: TCTdmqError {
        TCTdmqError(.internalError_BrokerService)
    }
    
    /// 获取属性失败。
    public static var internalError_GetAttributesFailed: TCTdmqError {
        TCTdmqError(.internalError_GetAttributesFailed)
    }
    
    /// 内部错误。
    public static var internalError_IllegalMessage: TCTdmqError {
        TCTdmqError(.internalError_IllegalMessage)
    }
    
    /// 重试可以成功。
    public static var internalError_Retry: TCTdmqError {
        TCTdmqError(.internalError_Retry)
    }
    
    /// 系统错误。
    public static var internalError_SystemError: TCTdmqError {
        TCTdmqError(.internalError_SystemError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTdmqError {
        TCTdmqError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTdmqError {
        TCTdmqError(.invalidParameterValue)
    }
    
    /// 与现有集群名称重复。
    public static var invalidParameterValue_ClusterNameDuplication: TCTdmqError {
        TCTdmqError(.invalidParameterValue_ClusterNameDuplication)
    }
    
    /// 参数值不在允许范围内。
    public static var invalidParameterValue_InvalidParams: TCTdmqError {
        TCTdmqError(.invalidParameterValue_InvalidParams)
    }
    
    /// 必要参数没有传递。
    public static var invalidParameterValue_NeedMoreParams: TCTdmqError {
        TCTdmqError(.invalidParameterValue_NeedMoreParams)
    }
    
    /// 无效的消息TTL值。
    public static var invalidParameterValue_TTL: TCTdmqError {
        TCTdmqError(.invalidParameterValue_TTL)
    }
    
    /// 上传的topic name错误。
    public static var invalidParameterValue_TopicNotFound: TCTdmqError {
        TCTdmqError(.invalidParameterValue_TopicNotFound)
    }
    
    /// 调整分区数到合理的范围内
    public static var invalidParameter_Partition: TCTdmqError {
        TCTdmqError(.invalidParameter_Partition)
    }
    
    /// 上传的 tenant name 错误。
    public static var invalidParameter_TenantNotFound: TCTdmqError {
        TCTdmqError(.invalidParameter_TenantNotFound)
    }
    
    /// 没有获取到正确的 token。
    public static var invalidParameter_TokenNotFound: TCTdmqError {
        TCTdmqError(.invalidParameter_TokenNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTdmqError {
        TCTdmqError(.limitExceeded)
    }
    
    /// 实例下集群数量超过限制。
    public static var limitExceeded_Clusters: TCTdmqError {
        TCTdmqError(.limitExceeded_Clusters)
    }
    
    /// 实例下环境数量超过限制。
    public static var limitExceeded_Environments: TCTdmqError {
        TCTdmqError(.limitExceeded_Environments)
    }
    
    /// 实例下命名空间数量超过限额。
    public static var limitExceeded_Namespaces: TCTdmqError {
        TCTdmqError(.limitExceeded_Namespaces)
    }
    
    /// 超过剩余额度，请重新调整。
    public static var limitExceeded_RetentionSize: TCTdmqError {
        TCTdmqError(.limitExceeded_RetentionSize)
    }
    
    /// 超过保留时间限制，请重新调整。
    public static var limitExceeded_RetentionTime: TCTdmqError {
        TCTdmqError(.limitExceeded_RetentionTime)
    }
    
    /// 实例下订阅者数量超过限制。
    public static var limitExceeded_Subscriptions: TCTdmqError {
        TCTdmqError(.limitExceeded_Subscriptions)
    }
    
    /// 实例下主题数量超过限制。
    public static var limitExceeded_Topics: TCTdmqError {
        TCTdmqError(.limitExceeded_Topics)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTdmqError {
        TCTdmqError(.missingParameter)
    }
    
    /// 必要参数没有传递。
    public static var missingParameter_NeedMoreParams: TCTdmqError {
        TCTdmqError(.missingParameter_NeedMoreParams)
    }
    
    /// 订阅仍在消费中。
    public static var operationDenied_ConsumerRunning: TCTdmqError {
        TCTdmqError(.operationDenied_ConsumerRunning)
    }
    
    /// 默认环境不允许操作。
    public static var operationDenied_DefaultEnvironment: TCTdmqError {
        TCTdmqError(.operationDenied_DefaultEnvironment)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTdmqError {
        TCTdmqError(.resourceInUse)
    }
    
    /// 集群已存在。
    public static var resourceInUse_Cluster: TCTdmqError {
        TCTdmqError(.resourceInUse_Cluster)
    }
    
    /// 环境角色已存在。
    public static var resourceInUse_EnvironmentRole: TCTdmqError {
        TCTdmqError(.resourceInUse_EnvironmentRole)
    }
    
    /// 重名，命名空间已存在。
    public static var resourceInUse_Namespace: TCTdmqError {
        TCTdmqError(.resourceInUse_Namespace)
    }
    
    /// 队列已存在。
    public static var resourceInUse_Queue: TCTdmqError {
        TCTdmqError(.resourceInUse_Queue)
    }
    
    /// 角色已存在。
    public static var resourceInUse_Role: TCTdmqError {
        TCTdmqError(.resourceInUse_Role)
    }
    
    /// 重名，订阅关系已存在。
    public static var resourceInUse_Subscription: TCTdmqError {
        TCTdmqError(.resourceInUse_Subscription)
    }
    
    /// 重名，主题已存在。
    public static var resourceInUse_Topic: TCTdmqError {
        TCTdmqError(.resourceInUse_Topic)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTdmqError {
        TCTdmqError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTdmqError {
        TCTdmqError(.resourceNotFound)
    }
    
    /// 服务的集群不存在。
    public static var resourceNotFound_BrokerCluster: TCTdmqError {
        TCTdmqError(.resourceNotFound_BrokerCluster)
    }
    
    /// 集群不存在。
    public static var resourceNotFound_Cluster: TCTdmqError {
        TCTdmqError(.resourceNotFound_Cluster)
    }
    
    /// 环境不存在。
    ///
    /// 创建环境。
    public static var resourceNotFound_Environment: TCTdmqError {
        TCTdmqError(.resourceNotFound_Environment)
    }
    
    /// 环境角色不存在。
    public static var resourceNotFound_EnvironmentRole: TCTdmqError {
        TCTdmqError(.resourceNotFound_EnvironmentRole)
    }
    
    /// 命名空间不存在。
    public static var resourceNotFound_Namespace: TCTdmqError {
        TCTdmqError(.resourceNotFound_Namespace)
    }
    
    /// 角色不存在。
    public static var resourceNotFound_Role: TCTdmqError {
        TCTdmqError(.resourceNotFound_Role)
    }
    
    /// 订阅关系不存在。
    ///
    /// 创建订阅关系。
    public static var resourceNotFound_Subscription: TCTdmqError {
        TCTdmqError(.resourceNotFound_Subscription)
    }
    
    /// 主题不存在。
    ///
    /// 创建主题。
    public static var resourceNotFound_Topic: TCTdmqError {
        TCTdmqError(.resourceNotFound_Topic)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTdmqError {
        TCTdmqError(.resourceUnavailable)
    }
    
    /// 发货异常。
    ///
    /// 请检查账户状态
    public static var resourceUnavailable_CreateFailed: TCTdmqError {
        TCTdmqError(.resourceUnavailable_CreateFailed)
    }
    
    /// 需要充值才可继续操作。
    public static var resourceUnavailable_FundRequired: TCTdmqError {
        TCTdmqError(.resourceUnavailable_FundRequired)
    }
    
    /// 系统升级。
    ///
    /// 升级完成后可用。
    public static var resourceUnavailable_SystemUpgrade: TCTdmqError {
        TCTdmqError(.resourceUnavailable_SystemUpgrade)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCTdmqError {
        TCTdmqError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTdmqError {
        TCTdmqError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTdmqError {
        TCTdmqError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTdmqError {
        TCTdmqError(.unsupportedOperation)
    }
}

extension TCTdmqError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self]
    }
}

extension TCTdmqError: Equatable {
    public static func == (lhs: TCTdmqError, rhs: TCTdmqError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdmqError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTdmqError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
