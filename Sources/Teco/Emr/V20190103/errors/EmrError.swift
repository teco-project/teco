public struct TCEmrError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_DuplicateOrderNotAllowed = "FailedOperation.DuplicateOrderNotAllowed"
        case failedOperation_NotSupportPod = "FailedOperation.NotSupportPod"
        case internalError = "InternalError"
        case internalError_AccountCgwError = "InternalError.AccountCgwError"
        case internalError_CamCgwError = "InternalError.CamCgwError"
        case internalError_CamError = "InternalError.CamError"
        case internalError_CbsCgwError = "InternalError.CbsCgwError"
        case internalError_CbsError = "InternalError.CbsError"
        case internalError_CdbCgwError = "InternalError.CdbCgwError"
        case internalError_CdbError = "InternalError.CdbError"
        case internalError_CheckQuotaErr = "InternalError.CheckQuotaErr"
        case internalError_ConfigCgwError = "InternalError.ConfigCgwError"
        case internalError_CvmError = "InternalError.CvmError"
        case internalError_EKSError = "InternalError.EKSError"
        case internalError_KmsError = "InternalError.KmsError"
        case internalError_ProjectCgwError = "InternalError.ProjectCgwError"
        case internalError_SgError = "InternalError.SgError"
        case internalError_TKEError = "InternalError.TKEError"
        case internalError_TagError = "InternalError.TagError"
        case internalError_TradeCgwError = "InternalError.TradeCgwError"
        case internalError_VpcCgwError = "InternalError.VpcCgwError"
        case internalError_VpcError = "InternalError.VpcError"
        case internalError_WoodServerError = "InternalError.WoodServerError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidTkeInstance = "InvalidParameterValue.InvalidTkeInstance"
        case invalidParameter_DisplayStrategyNotMatch = "InvalidParameter.DisplayStrategyNotMatch"
        case invalidParameter_HALessMasterCount = "InvalidParameter.HALessMasterCount"
        case invalidParameter_IncorrectCommonCount = "InvalidParameter.IncorrectCommonCount"
        case invalidParameter_IncorrectMasterCount = "InvalidParameter.IncorrectMasterCount"
        case invalidParameter_InvalidAppId = "InvalidParameter.InvalidAppId"
        case invalidParameter_InvalidAutoRenew = "InvalidParameter.InvalidAutoRenew"
        case invalidParameter_InvalidBootstrapAction = "InvalidParameter.InvalidBootstrapAction"
        case invalidParameter_InvalidClickHouseCluster = "InvalidParameter.InvalidClickHouseCluster"
        case invalidParameter_InvalidClientToken = "InvalidParameter.InvalidClientToken"
        case invalidParameter_InvalidClusterId = "InvalidParameter.InvalidClusterId"
        case invalidParameter_InvalidCommonDiskType = "InvalidParameter.InvalidCommonDiskType"
        case invalidParameter_InvalidComponent = "InvalidParameter.InvalidComponent"
        case invalidParameter_InvalidCoreCount = "InvalidParameter.InvalidCoreCount"
        case invalidParameter_InvalidCosFileURI = "InvalidParameter.InvalidCosFileURI"
        case invalidParameter_InvalidCount = "InvalidParameter.InvalidCount"
        case invalidParameter_InvalidCountNum = "InvalidParameter.InvalidCountNum"
        case invalidParameter_InvalidCustomizedPodParam = "InvalidParameter.InvalidCustomizedPodParam"
        case invalidParameter_InvalidDiskSize = "InvalidParameter.InvalidDiskSize"
        case invalidParameter_InvalidEksInstance = "InvalidParameter.InvalidEksInstance"
        case invalidParameter_InvalidExtendField = "InvalidParameter.InvalidExtendField"
        case invalidParameter_InvalidFailurePolicy = "InvalidParameter.InvalidFailurePolicy"
        case invalidParameter_InvalidInstance = "InvalidParameter.InvalidInstance"
        case invalidParameter_InvalidInstanceName = "InvalidParameter.InvalidInstanceName"
        case invalidParameter_InvalidInstancePolicy = "InvalidParameter.InvalidInstancePolicy"
        case invalidParameter_InvalidInstanceType = "InvalidParameter.InvalidInstanceType"
        case invalidParameter_InvalidJobFlow = "InvalidParameter.InvalidJobFlow"
        case invalidParameter_InvalidJobType = "InvalidParameter.InvalidJobType"
        case invalidParameter_InvalidLoginSetting = "InvalidParameter.InvalidLoginSetting"
        case invalidParameter_InvalidMasterDiskType = "InvalidParameter.InvalidMasterDiskType"
        case invalidParameter_InvalidMetaDataJdbcUrl = "InvalidParameter.InvalidMetaDataJdbcUrl"
        case invalidParameter_InvalidMetaType = "InvalidParameter.InvalidMetaType"
        case invalidParameter_InvalidModifySpec = "InvalidParameter.InvalidModifySpec"
        case invalidParameter_InvalidNodeType = "InvalidParameter.InvalidNodeType"
        case invalidParameter_InvalidPassword = "InvalidParameter.InvalidPassword"
        case invalidParameter_InvalidPaymode = "InvalidParameter.InvalidPaymode"
        case invalidParameter_InvalidPreExecutedFile = "InvalidParameter.InvalidPreExecutedFile"
        case invalidParameter_InvalidProduct = "InvalidParameter.InvalidProduct"
        case invalidParameter_InvalidProductId = "InvalidParameter.InvalidProductId"
        case invalidParameter_InvalidProjectId = "InvalidParameter.InvalidProjectId"
        case invalidParameter_InvalidResourceIds = "InvalidParameter.InvalidResourceIds"
        case invalidParameter_InvalidResourceSpec = "InvalidParameter.InvalidResourceSpec"
        case invalidParameter_InvalidSecuritySupport = "InvalidParameter.InvalidSecuritySupport"
        case invalidParameter_InvalidSercurityGrpupId = "InvalidParameter.InvalidSercurityGrpupId"
        case invalidParameter_InvalidServiceName = "InvalidParameter.InvalidServiceName"
        case invalidParameter_InvalidServiceNodeInfo = "InvalidParameter.InvalidServiceNodeInfo"
        case invalidParameter_InvalidSoftDeployInfo = "InvalidParameter.InvalidSoftDeployInfo"
        case invalidParameter_InvalidSoftInfo = "InvalidParameter.InvalidSoftInfo"
        case invalidParameter_InvalidSoftWare = "InvalidParameter.InvalidSoftWare"
        case invalidParameter_InvalidSoftWareName = "InvalidParameter.InvalidSoftWareName"
        case invalidParameter_InvalidSoftWareVersion = "InvalidParameter.InvalidSoftWareVersion"
        case invalidParameter_InvalidSubnetId = "InvalidParameter.InvalidSubnetId"
        case invalidParameter_InvalidSupportHA = "InvalidParameter.InvalidSupportHA"
        case invalidParameter_InvalidTagsGroup = "InvalidParameter.InvalidTagsGroup"
        case invalidParameter_InvalidTaskCount = "InvalidParameter.InvalidTaskCount"
        case invalidParameter_InvalidTimeSpan = "InvalidParameter.InvalidTimeSpan"
        case invalidParameter_InvalidTimeUnit = "InvalidParameter.InvalidTimeUnit"
        case invalidParameter_InvalidTkeInstance = "InvalidParameter.InvalidTkeInstance"
        case invalidParameter_InvalidUnifyMeta = "InvalidParameter.InvalidUnifyMeta"
        case invalidParameter_InvalidVpcId = "InvalidParameter.InvalidVpcId"
        case invalidParameter_InvalidZone = "InvalidParameter.InvalidZone"
        case invalidParameter_NotContainMustSelectSoftware = "InvalidParameter.NotContainMustSelectSoftware"
        case invalidParameter_OrderFieldNotMatch = "InvalidParameter.OrderFieldNotMatch"
        case invalidParameter_PayModeResourceNotMatch = "InvalidParameter.PayModeResourceNotMatch"
        case invalidParameter_ProjectResourceNotMatch = "InvalidParameter.ProjectResourceNotMatch"
        case invalidParameter_SoftwareNotInProduct = "InvalidParameter.SoftwareNotInProduct"
        case invalidParameter_UngrantedPolicy = "InvalidParameter.UngrantedPolicy"
        case invalidParameter_UngrantedRole = "InvalidParameter.UngrantedRole"
        case invalidParameter_ZoneResourceNotMatch = "InvalidParameter.ZoneResourceNotMatch"
        case limitExceeded_BootstrapActionsNumLimitExceeded = "LimitExceeded.BootstrapActionsNumLimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse_InstanceInProcess = "ResourceInUse.InstanceInProcess"
        case resourceInsufficient_DiskInsufficient = "ResourceInsufficient.DiskInsufficient"
        case resourceInsufficient_InstanceInsufficient = "ResourceInsufficient.InstanceInsufficient"
        case resourceNotFound_CDBInfoNotFound = "ResourceNotFound.CDBInfoNotFound"
        case resourceNotFound_ClusterNotFound = "ResourceNotFound.ClusterNotFound"
        case resourceNotFound_HardwareInfoNotFound = "ResourceNotFound.HardwareInfoNotFound"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_ResourceNotFound = "ResourceNotFound.ResourceNotFound"
        case resourceNotFound_SubnetNotFound = "ResourceNotFound.SubnetNotFound"
        case resourceNotFound_TKEPreconditionNotFound = "ResourceNotFound.TKEPreconditionNotFound"
        case resourceNotFound_TagsNotFound = "ResourceNotFound.TagsNotFound"
        case resourceUnavailable_ResourceSpecNotDefaultSpec = "ResourceUnavailable.ResourceSpecNotDefaultSpec"
        case resourcesSoldOut = "ResourcesSoldOut"
        case resourcesSoldOut_CbsSoldOut = "ResourcesSoldOut.CbsSoldOut"
        case resourcesSoldOut_CvmSoldOut = "ResourcesSoldOut.CvmSoldOut"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ServiceNotSupport = "UnsupportedOperation.ServiceNotSupport"
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
    public static var failedOperation: TCEmrError {
        TCEmrError(.failedOperation)
    }
    
    /// 重复的订单，请检查emr控制台。
    ///
    /// 占位符
    public static var failedOperation_DuplicateOrderNotAllowed: TCEmrError {
        TCEmrError(.failedOperation_DuplicateOrderNotAllowed)
    }
    
    /// 操作失败，不支持pod。
    ///
    /// 占位符
    public static var failedOperation_NotSupportPod: TCEmrError {
        TCEmrError(.failedOperation_NotSupportPod)
    }
    
    /// 内部错误。
    public static var internalError: TCEmrError {
        TCEmrError(.internalError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_AccountCgwError: TCEmrError {
        TCEmrError(.internalError_AccountCgwError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_CamCgwError: TCEmrError {
        TCEmrError(.internalError_CamCgwError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_CamError: TCEmrError {
        TCEmrError(.internalError_CamError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_CbsCgwError: TCEmrError {
        TCEmrError(.internalError_CbsCgwError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_CbsError: TCEmrError {
        TCEmrError(.internalError_CbsError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_CdbCgwError: TCEmrError {
        TCEmrError(.internalError_CdbCgwError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_CdbError: TCEmrError {
        TCEmrError(.internalError_CdbError)
    }
    
    /// cvm或cbs资源不够或软件不合法。
    public static var internalError_CheckQuotaErr: TCEmrError {
        TCEmrError(.internalError_CheckQuotaErr)
    }
    
    /// 内部服务调用异常。
    public static var internalError_ConfigCgwError: TCEmrError {
        TCEmrError(.internalError_ConfigCgwError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_CvmError: TCEmrError {
        TCEmrError(.internalError_CvmError)
    }
    
    /// 调用EKS报错。
    public static var internalError_EKSError: TCEmrError {
        TCEmrError(.internalError_EKSError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_KmsError: TCEmrError {
        TCEmrError(.internalError_KmsError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_ProjectCgwError: TCEmrError {
        TCEmrError(.internalError_ProjectCgwError)
    }
    
    /// 安全组接口调用异常。
    public static var internalError_SgError: TCEmrError {
        TCEmrError(.internalError_SgError)
    }
    
    /// TKE调用出错。
    public static var internalError_TKEError: TCEmrError {
        TCEmrError(.internalError_TKEError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_TagError: TCEmrError {
        TCEmrError(.internalError_TagError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_TradeCgwError: TCEmrError {
        TCEmrError(.internalError_TradeCgwError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_VpcCgwError: TCEmrError {
        TCEmrError(.internalError_VpcCgwError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_VpcError: TCEmrError {
        TCEmrError(.internalError_VpcError)
    }
    
    /// 内部服务调用异常。
    ///
    /// 占位符
    public static var internalError_WoodServerError: TCEmrError {
        TCEmrError(.internalError_WoodServerError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEmrError {
        TCEmrError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEmrError {
        TCEmrError(.invalidParameterValue)
    }
    
    /// 无效的Tke集群ID，或Tke集群不符合条件。
    public static var invalidParameterValue_InvalidTkeInstance: TCEmrError {
        TCEmrError(.invalidParameterValue_InvalidTkeInstance)
    }
    
    /// 展示策略错误。
    ///
    /// 占位符
    public static var invalidParameter_DisplayStrategyNotMatch: TCEmrError {
        TCEmrError(.invalidParameter_DisplayStrategyNotMatch)
    }
    
    /// 参数错误。
    ///
    /// 占位符
    public static var invalidParameter_HALessMasterCount: TCEmrError {
        TCEmrError(.invalidParameter_HALessMasterCount)
    }
    
    /// Common节点数量无效。
    ///
    /// 占位符
    public static var invalidParameter_IncorrectCommonCount: TCEmrError {
        TCEmrError(.invalidParameter_IncorrectCommonCount)
    }
    
    /// Master节点数量无效。
    ///
    /// 占位符
    public static var invalidParameter_IncorrectMasterCount: TCEmrError {
        TCEmrError(.invalidParameter_IncorrectMasterCount)
    }
    
    /// 无效参数，AppId。
    ///
    /// 占位符
    public static var invalidParameter_InvalidAppId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidAppId)
    }
    
    /// 无效的自动续费标识。
    ///
    /// 占位符
    public static var invalidParameter_InvalidAutoRenew: TCEmrError {
        TCEmrError(.invalidParameter_InvalidAutoRenew)
    }
    
    /// 无效的引导脚本。
    ///
    /// 占位符
    public static var invalidParameter_InvalidBootstrapAction: TCEmrError {
        TCEmrError(.invalidParameter_InvalidBootstrapAction)
    }
    
    /// 无效的ClickHouse集群。
    ///
    /// 占位符
    public static var invalidParameter_InvalidClickHouseCluster: TCEmrError {
        TCEmrError(.invalidParameter_InvalidClickHouseCluster)
    }
    
    /// 无效的ClientToken。
    ///
    /// 占位符
    public static var invalidParameter_InvalidClientToken: TCEmrError {
        TCEmrError(.invalidParameter_InvalidClientToken)
    }
    
    /// 无效参数，ClusterId。
    ///
    /// 占位符
    public static var invalidParameter_InvalidClusterId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidClusterId)
    }
    
    /// 参数错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCommonDiskType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCommonDiskType)
    }
    
    /// 无效的组件。
    ///
    /// 占位符
    public static var invalidParameter_InvalidComponent: TCEmrError {
        TCEmrError(.invalidParameter_InvalidComponent)
    }
    
    /// Core节点数量无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCoreCount: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCoreCount)
    }
    
    /// CosFileUri参数值无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCosFileURI: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCosFileURI)
    }
    
    /// 扩容数量必须大于0。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCount: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCount)
    }
    
    /// 同一请求只能扩容Task或者Core节点。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCountNum: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCountNum)
    }
    
    /// 错误信息：Invalid PodParameter。
    ///
    /// 占位符
    public static var invalidParameter_InvalidCustomizedPodParam: TCEmrError {
        TCEmrError(.invalidParameter_InvalidCustomizedPodParam)
    }
    
    /// 无效的磁盘大小。
    ///
    /// 占位符
    public static var invalidParameter_InvalidDiskSize: TCEmrError {
        TCEmrError(.invalidParameter_InvalidDiskSize)
    }
    
    /// 无效的EKS实例。
    ///
    /// 占位符
    public static var invalidParameter_InvalidEksInstance: TCEmrError {
        TCEmrError(.invalidParameter_InvalidEksInstance)
    }
    
    /// CustomConfig参数值无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidExtendField: TCEmrError {
        TCEmrError(.invalidParameter_InvalidExtendField)
    }
    
    /// 无效的任务失败处理策略。
    ///
    /// 占位符
    public static var invalidParameter_InvalidFailurePolicy: TCEmrError {
        TCEmrError(.invalidParameter_InvalidFailurePolicy)
    }
    
    /// 无效参数，EMR实例不符合要求。
    ///
    /// 占位符
    public static var invalidParameter_InvalidInstance: TCEmrError {
        TCEmrError(.invalidParameter_InvalidInstance)
    }
    
    /// 无效的集群名称。
    ///
    /// 占位符
    public static var invalidParameter_InvalidInstanceName: TCEmrError {
        TCEmrError(.invalidParameter_InvalidInstanceName)
    }
    
    /// 无效的集群保留策略。
    ///
    /// 占位符
    public static var invalidParameter_InvalidInstancePolicy: TCEmrError {
        TCEmrError(.invalidParameter_InvalidInstancePolicy)
    }
    
    /// 无效的机型。
    ///
    /// 占位符
    public static var invalidParameter_InvalidInstanceType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidInstanceType)
    }
    
    /// 无效的流程任务。
    ///
    /// 占位符
    public static var invalidParameter_InvalidJobFlow: TCEmrError {
        TCEmrError(.invalidParameter_InvalidJobFlow)
    }
    
    /// 无效的任务步骤类型。
    ///
    /// 占位符
    public static var invalidParameter_InvalidJobType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidJobType)
    }
    
    /// 无效的登录设置。
    ///
    /// 占位符
    public static var invalidParameter_InvalidLoginSetting: TCEmrError {
        TCEmrError(.invalidParameter_InvalidLoginSetting)
    }
    
    /// 参数错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidMasterDiskType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidMasterDiskType)
    }
    
    public static var invalidParameter_InvalidMetaDataJdbcUrl: TCEmrError {
        TCEmrError(.invalidParameter_InvalidMetaDataJdbcUrl)
    }
    
    /// 无效的元数据表类型。
    ///
    /// 占位符
    public static var invalidParameter_InvalidMetaType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidMetaType)
    }
    
    /// 变配规格无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidModifySpec: TCEmrError {
        TCEmrError(.invalidParameter_InvalidModifySpec)
    }
    
    /// 无效的NodeType。
    ///
    /// 占位符
    public static var invalidParameter_InvalidNodeType: TCEmrError {
        TCEmrError(.invalidParameter_InvalidNodeType)
    }
    
    /// 无效密码。
    ///
    /// 占位符
    public static var invalidParameter_InvalidPassword: TCEmrError {
        TCEmrError(.invalidParameter_InvalidPassword)
    }
    
    /// 无效的付费类型。
    ///
    /// 占位符
    public static var invalidParameter_InvalidPaymode: TCEmrError {
        TCEmrError(.invalidParameter_InvalidPaymode)
    }
    
    /// 无效的引导操作脚本。
    ///
    /// 占位符
    public static var invalidParameter_InvalidPreExecutedFile: TCEmrError {
        TCEmrError(.invalidParameter_InvalidPreExecutedFile)
    }
    
    /// 无效参数，不符合EMR版本。
    ///
    /// 占位符
    public static var invalidParameter_InvalidProduct: TCEmrError {
        TCEmrError(.invalidParameter_InvalidProduct)
    }
    
    /// 无效的产品ID。
    ///
    /// 占位符
    public static var invalidParameter_InvalidProductId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidProductId)
    }
    
    /// 无效的项目ID。
    ///
    /// 占位符
    public static var invalidParameter_InvalidProjectId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidProjectId)
    }
    
    /// 资源ID无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidResourceIds: TCEmrError {
        TCEmrError(.invalidParameter_InvalidResourceIds)
    }
    
    /// 无效的资源规格。
    ///
    /// 占位符
    public static var invalidParameter_InvalidResourceSpec: TCEmrError {
        TCEmrError(.invalidParameter_InvalidResourceSpec)
    }
    
    /// 该EMR版本不支持开启安全模式。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSecuritySupport: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSecuritySupport)
    }
    
    /// 无效的安全组ID。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSercurityGrpupId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSercurityGrpupId)
    }
    
    /// 服务名无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidServiceName: TCEmrError {
        TCEmrError(.invalidParameter_InvalidServiceName)
    }
    
    /// 参数ServiceNodeInfo无效或错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidServiceNodeInfo: TCEmrError {
        TCEmrError(.invalidParameter_InvalidServiceNodeInfo)
    }
    
    /// 参数InvalidSoftDeployInfo无效或错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSoftDeployInfo: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSoftDeployInfo)
    }
    
    /// 无效的SoftInfo。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSoftInfo: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSoftInfo)
    }
    
    /// 参数错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSoftWare: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSoftWare)
    }
    
    /// 软件名无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSoftWareName: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSoftWareName)
    }
    
    /// 软件版本无效。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSoftWareVersion: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSoftWareVersion)
    }
    
    /// 无效的子网ID。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSubnetId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSubnetId)
    }
    
    /// 无效的高可用参数。
    ///
    /// 占位符
    public static var invalidParameter_InvalidSupportHA: TCEmrError {
        TCEmrError(.invalidParameter_InvalidSupportHA)
    }
    
    /// 参数错误。
    ///
    /// 占位符
    public static var invalidParameter_InvalidTagsGroup: TCEmrError {
        TCEmrError(.invalidParameter_InvalidTagsGroup)
    }
    
    /// task的数量不能超过20。
    ///
    /// 占位符
    public static var invalidParameter_InvalidTaskCount: TCEmrError {
        TCEmrError(.invalidParameter_InvalidTaskCount)
    }
    
    /// 无效的timespan。
    ///
    /// 占位符
    public static var invalidParameter_InvalidTimeSpan: TCEmrError {
        TCEmrError(.invalidParameter_InvalidTimeSpan)
    }
    
    /// 无效的TimeUnit。
    ///
    /// 占位符
    public static var invalidParameter_InvalidTimeUnit: TCEmrError {
        TCEmrError(.invalidParameter_InvalidTimeUnit)
    }
    
    /// 无效的Tke集群ID，或Tke集群不符合条件。
    ///
    /// 占位符
    public static var invalidParameter_InvalidTkeInstance: TCEmrError {
        TCEmrError(.invalidParameter_InvalidTkeInstance)
    }
    
    /// 无效的统一元数据库。
    ///
    /// 占位符
    public static var invalidParameter_InvalidUnifyMeta: TCEmrError {
        TCEmrError(.invalidParameter_InvalidUnifyMeta)
    }
    
    /// 无效的私有网络ID。
    ///
    /// 占位符
    public static var invalidParameter_InvalidVpcId: TCEmrError {
        TCEmrError(.invalidParameter_InvalidVpcId)
    }
    
    /// 无效的可用区。
    ///
    /// 占位符
    public static var invalidParameter_InvalidZone: TCEmrError {
        TCEmrError(.invalidParameter_InvalidZone)
    }
    
    /// 无效参数，不满足必须组件。
    ///
    /// 占位符
    public static var invalidParameter_NotContainMustSelectSoftware: TCEmrError {
        TCEmrError(.invalidParameter_NotContainMustSelectSoftware)
    }
    
    /// 排序字段错误。
    ///
    /// 占位符
    public static var invalidParameter_OrderFieldNotMatch: TCEmrError {
        TCEmrError(.invalidParameter_OrderFieldNotMatch)
    }
    
    /// 付费模式与资源不匹配。
    ///
    /// 占位符
    public static var invalidParameter_PayModeResourceNotMatch: TCEmrError {
        TCEmrError(.invalidParameter_PayModeResourceNotMatch)
    }
    
    /// 项目与资源不匹配。
    ///
    /// 占位符
    public static var invalidParameter_ProjectResourceNotMatch: TCEmrError {
        TCEmrError(.invalidParameter_ProjectResourceNotMatch)
    }
    
    /// 存在无效的产品组件。
    ///
    /// 占位符
    public static var invalidParameter_SoftwareNotInProduct: TCEmrError {
        TCEmrError(.invalidParameter_SoftwareNotInProduct)
    }
    
    /// 策略为授权。
    ///
    /// 占位符
    public static var invalidParameter_UngrantedPolicy: TCEmrError {
        TCEmrError(.invalidParameter_UngrantedPolicy)
    }
    
    /// 角色未授权。
    ///
    /// 占位符
    public static var invalidParameter_UngrantedRole: TCEmrError {
        TCEmrError(.invalidParameter_UngrantedRole)
    }
    
    /// 可用区与资源不匹配。
    ///
    /// 占位符
    public static var invalidParameter_ZoneResourceNotMatch: TCEmrError {
        TCEmrError(.invalidParameter_ZoneResourceNotMatch)
    }
    
    /// 引导脚本数量超过限制。
    ///
    /// 占位符
    public static var limitExceeded_BootstrapActionsNumLimitExceeded: TCEmrError {
        TCEmrError(.limitExceeded_BootstrapActionsNumLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEmrError {
        TCEmrError(.missingParameter)
    }
    
    /// 实例在流程中。
    ///
    /// 占位符
    public static var resourceInUse_InstanceInProcess: TCEmrError {
        TCEmrError(.resourceInUse_InstanceInProcess)
    }
    
    /// 硬盘规格不满足。
    ///
    /// 占位符
    public static var resourceInsufficient_DiskInsufficient: TCEmrError {
        TCEmrError(.resourceInsufficient_DiskInsufficient)
    }
    
    /// 不支持或售罄的节点规格。
    ///
    /// 占位符
    public static var resourceInsufficient_InstanceInsufficient: TCEmrError {
        TCEmrError(.resourceInsufficient_InstanceInsufficient)
    }
    
    /// 资源不存在。
    ///
    /// 占位符
    public static var resourceNotFound_CDBInfoNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_CDBInfoNotFound)
    }
    
    /// 无法找到该实例。
    ///
    /// 占位符
    public static var resourceNotFound_ClusterNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_ClusterNotFound)
    }
    
    /// 无法找到硬件信息。
    ///
    /// 占位符
    public static var resourceNotFound_HardwareInfoNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_HardwareInfoNotFound)
    }
    
    /// 无法找到该实例。
    ///
    /// 占位符
    public static var resourceNotFound_InstanceNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 无法找到监控元数据。
    ///
    /// 占位符
    public static var resourceNotFound_ResourceNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_ResourceNotFound)
    }
    
    /// 找不到对应的子网。
    ///
    /// 占位符
    public static var resourceNotFound_SubnetNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_SubnetNotFound)
    }
    
    /// tke集群前置组件未部署。
    ///
    /// 占位符
    public static var resourceNotFound_TKEPreconditionNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_TKEPreconditionNotFound)
    }
    
    /// 没有查找到指定标签。
    ///
    /// 占位符
    public static var resourceNotFound_TagsNotFound: TCEmrError {
        TCEmrError(.resourceNotFound_TagsNotFound)
    }
    
    /// 当前资源规格不存在默认规格。
    ///
    /// 占位符
    public static var resourceUnavailable_ResourceSpecNotDefaultSpec: TCEmrError {
        TCEmrError(.resourceUnavailable_ResourceSpecNotDefaultSpec)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCEmrError {
        TCEmrError(.resourcesSoldOut)
    }
    
    /// CBS资源售罄。
    ///
    /// 占位符
    public static var resourcesSoldOut_CbsSoldOut: TCEmrError {
        TCEmrError(.resourcesSoldOut_CbsSoldOut)
    }
    
    /// 云服务器已售罄。
    ///
    /// 占位符
    public static var resourcesSoldOut_CvmSoldOut: TCEmrError {
        TCEmrError(.resourcesSoldOut_CvmSoldOut)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCEmrError {
        TCEmrError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEmrError {
        TCEmrError(.unsupportedOperation)
    }
    
    /// 该服务不支持此操作。
    ///
    /// 占位符
    public static var unsupportedOperation_ServiceNotSupport: TCEmrError {
        TCEmrError(.unsupportedOperation_ServiceNotSupport)
    }
}

extension TCEmrError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnsupportedOperation.self]
    }
}

extension TCEmrError: Equatable {
    public static func == (lhs: TCEmrError, rhs: TCEmrError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEmrError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEmrError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
