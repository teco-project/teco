public struct TCTkeError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AccountCommon = "FailedOperation.AccountCommon"
        case failedOperation_AccountUserNotAuthenticated = "FailedOperation.AccountUserNotAuthenticated"
        case failedOperation_AsCommon = "FailedOperation.AsCommon"
        case failedOperation_CVMUnexpectedError = "FailedOperation.CVMUnexpectedError"
        case failedOperation_CamNoAuth = "FailedOperation.CamNoAuth"
        case failedOperation_ClusterForbiddenToDelete = "FailedOperation.ClusterForbiddenToDelete"
        case failedOperation_ClusterNotFound = "FailedOperation.ClusterNotFound"
        case failedOperation_ClusterState = "FailedOperation.ClusterState"
        case failedOperation_ClusterUpgradeNodeVersion = "FailedOperation.ClusterUpgradeNodeVersion"
        case failedOperation_ComponentClientCommon = "FailedOperation.ComponentClientCommon"
        case failedOperation_ComponentClientHttp = "FailedOperation.ComponentClientHttp"
        case failedOperation_ComponentClientUnpack = "FailedOperation.ComponentClientUnpack"
        case failedOperation_ComponentClinetHttp = "FailedOperation.ComponentClinetHttp"
        case failedOperation_CreateClsClient = "FailedOperation.CreateClsClient"
        case failedOperation_CreateClsConfig = "FailedOperation.CreateClsConfig"
        case failedOperation_CreateClsIndex = "FailedOperation.CreateClsIndex"
        case failedOperation_CreateClsLogSet = "FailedOperation.CreateClsLogSet"
        case failedOperation_CreateClsMachineGroup = "FailedOperation.CreateClsMachineGroup"
        case failedOperation_CreateClsTopic = "FailedOperation.CreateClsTopic"
        case failedOperation_CvmCommon = "FailedOperation.CvmCommon"
        case failedOperation_CvmNumberNotMatch = "FailedOperation.CvmNumberNotMatch"
        case failedOperation_CvmVpcidNotMatch = "FailedOperation.CvmVpcidNotMatch"
        case failedOperation_Db = "FailedOperation.Db"
        case failedOperation_DbRecordNotFound = "FailedOperation.DbRecordNotFound"
        case failedOperation_DfwGetUSGQuota = "FailedOperation.DfwGetUSGQuota"
        case failedOperation_DisableVPCCNIFailed = "FailedOperation.DisableVPCCNIFailed"
        case failedOperation_EnableVPCCNIFailed = "FailedOperation.EnableVPCCNIFailed"
        case failedOperation_GetClsConfig = "FailedOperation.GetClsConfig"
        case failedOperation_GetClsLogSet = "FailedOperation.GetClsLogSet"
        case failedOperation_GetClsMachineGroup = "FailedOperation.GetClsMachineGroup"
        case failedOperation_KubeClientConf = "FailedOperation.KubeClientConf"
        case failedOperation_KubeClientConnection = "FailedOperation.KubeClientConnection"
        case failedOperation_KubeCommon = "FailedOperation.KubeCommon"
        case failedOperation_KubernetesClientBuildError = "FailedOperation.KubernetesClientBuildError"
        case failedOperation_KubernetesCreateOperationError = "FailedOperation.KubernetesCreateOperationError"
        case failedOperation_KubernetesDeleteOperationError = "FailedOperation.KubernetesDeleteOperationError"
        case failedOperation_KubernetesGetOperationError = "FailedOperation.KubernetesGetOperationError"
        case failedOperation_KubernetesInternal = "FailedOperation.KubernetesInternal"
        case failedOperation_KubernetesPatchOperationError = "FailedOperation.KubernetesPatchOperationError"
        case failedOperation_LbCommon = "FailedOperation.LbCommon"
        case failedOperation_ModifyClsIndex = "FailedOperation.ModifyClsIndex"
        case failedOperation_NetworkScaleError = "FailedOperation.NetworkScaleError"
        case failedOperation_OsNotSupport = "FailedOperation.OsNotSupport"
        case failedOperation_Param = "FailedOperation.Param"
        case failedOperation_QuotaMaxClsLimit = "FailedOperation.QuotaMaxClsLimit"
        case failedOperation_QuotaMaxNodLimit = "FailedOperation.QuotaMaxNodLimit"
        case failedOperation_QuotaUSGLimit = "FailedOperation.QuotaUSGLimit"
        case failedOperation_RBACForbidden = "FailedOperation.RBACForbidden"
        case failedOperation_RecordNotFound = "FailedOperation.RecordNotFound"
        case failedOperation_TaskAlreadyRunning = "FailedOperation.TaskAlreadyRunning"
        case failedOperation_TradeCommon = "FailedOperation.TradeCommon"
        case failedOperation_UnexpectedError = "FailedOperation.UnexpectedError"
        case failedOperation_VPCUnexpectedError = "FailedOperation.VPCUnexpectedError"
        case failedOperation_VpcCommon = "FailedOperation.VpcCommon"
        case failedOperation_VpcRecodrNotFound = "FailedOperation.VpcRecodrNotFound"
        case failedOperation_WhitelistUnexpectedError = "FailedOperation.WhitelistUnexpectedError"
        case internalError = "InternalError"
        case internalError_AccountCommon = "InternalError.AccountCommon"
        case internalError_AccountUserNotAuthenticated = "InternalError.AccountUserNotAuthenticated"
        case internalError_AsCommon = "InternalError.AsCommon"
        case internalError_CamNoAuth = "InternalError.CamNoAuth"
        case internalError_CidrConflictWithOtherCluster = "InternalError.CidrConflictWithOtherCluster"
        case internalError_CidrConflictWithOtherRoute = "InternalError.CidrConflictWithOtherRoute"
        case internalError_CidrConflictWithVpcCidr = "InternalError.CidrConflictWithVpcCidr"
        case internalError_CidrConflictWithVpcGlobalRoute = "InternalError.CidrConflictWithVpcGlobalRoute"
        case internalError_CidrInvali = "InternalError.CidrInvali"
        case internalError_CidrMaskSizeOutOfRange = "InternalError.CidrMaskSizeOutOfRange"
        case internalError_CidrOutOfRouteTable = "InternalError.CidrOutOfRouteTable"
        case internalError_ClusterNotFound = "InternalError.ClusterNotFound"
        case internalError_ClusterState = "InternalError.ClusterState"
        case internalError_ClusterUpgradeNodeVersion = "InternalError.ClusterUpgradeNodeVersion"
        case internalError_CmdTimeout = "InternalError.CmdTimeout"
        case internalError_ComponentClientHttp = "InternalError.ComponentClientHttp"
        case internalError_ComponentClinetHttp = "InternalError.ComponentClinetHttp"
        case internalError_ContainerNotFound = "InternalError.ContainerNotFound"
        case internalError_CreateMasterFailed = "InternalError.CreateMasterFailed"
        case internalError_CvmCommon = "InternalError.CvmCommon"
        case internalError_CvmNotFound = "InternalError.CvmNotFound"
        case internalError_CvmNumberNotMatch = "InternalError.CvmNumberNotMatch"
        case internalError_CvmStatus = "InternalError.CvmStatus"
        case internalError_Db = "InternalError.Db"
        case internalError_DbAffectivedRows = "InternalError.DbAffectivedRows"
        case internalError_DbRecordNotFound = "InternalError.DbRecordNotFound"
        case internalError_DfwGetUSGCount = "InternalError.DfwGetUSGCount"
        case internalError_DfwGetUSGQuota = "InternalError.DfwGetUSGQuota"
        case internalError_EmptyClusterNotSupport = "InternalError.EmptyClusterNotSupport"
        case internalError_GatewayAlreadyAssociatedCidr = "InternalError.GatewayAlreadyAssociatedCidr"
        case internalError_ImageIdNotFound = "InternalError.ImageIdNotFound"
        case internalError_InitMasterFailed = "InternalError.InitMasterFailed"
        case internalError_InvalidPrivateNetworkCidr = "InternalError.InvalidPrivateNetworkCidr"
        case internalError_KubeClientConnection = "InternalError.KubeClientConnection"
        case internalError_KubeClientCreate = "InternalError.KubeClientCreate"
        case internalError_KubeCommon = "InternalError.KubeCommon"
        case internalError_KubernetesClientBuildError = "InternalError.KubernetesClientBuildError"
        case internalError_KubernetesCreateOperationError = "InternalError.KubernetesCreateOperationError"
        case internalError_KubernetesDeleteOperationError = "InternalError.KubernetesDeleteOperationError"
        case internalError_KubernetesGetOperationError = "InternalError.KubernetesGetOperationError"
        case internalError_KubernetesInternal = "InternalError.KubernetesInternal"
        case internalError_KubernetesPatchOperationError = "InternalError.KubernetesPatchOperationError"
        case internalError_LbCommon = "InternalError.LbCommon"
        case internalError_OsNotSupport = "InternalError.OsNotSupport"
        case internalError_Param = "InternalError.Param"
        case internalError_PodNotFound = "InternalError.PodNotFound"
        case internalError_PublicClusterOpNotSupport = "InternalError.PublicClusterOpNotSupport"
        case internalError_QuotaMaxClsLimit = "InternalError.QuotaMaxClsLimit"
        case internalError_QuotaMaxNodLimit = "InternalError.QuotaMaxNodLimit"
        case internalError_QuotaMaxRtLimit = "InternalError.QuotaMaxRtLimit"
        case internalError_QuotaUSGLimit = "InternalError.QuotaUSGLimit"
        case internalError_ResourceExistAlready = "InternalError.ResourceExistAlready"
        case internalError_RouteTableNotEmpty = "InternalError.RouteTableNotEmpty"
        case internalError_RouteTableNotFound = "InternalError.RouteTableNotFound"
        case internalError_TaskAlreadyRunning = "InternalError.TaskAlreadyRunning"
        case internalError_TaskCreateFailed = "InternalError.TaskCreateFailed"
        case internalError_TaskLifeStateError = "InternalError.TaskLifeStateError"
        case internalError_TaskNotFound = "InternalError.TaskNotFound"
        case internalError_TradeCommon = "InternalError.TradeCommon"
        case internalError_TradeInsufficientBalance = "InternalError.TradeInsufficientBalance"
        case internalError_UnexceptedInternal = "InternalError.UnexceptedInternal"
        case internalError_UnexpectedInternal = "InternalError.UnexpectedInternal"
        case internalError_VPCUnexpectedError = "InternalError.VPCUnexpectedError"
        case internalError_VpcCommon = "InternalError.VpcCommon"
        case internalError_VpcPeerNotFound = "InternalError.VpcPeerNotFound"
        case internalError_VpcRecodrNotFound = "InternalError.VpcRecodrNotFound"
        case internalError_VstationError = "InternalError.VstationError"
        case internalError_WhitelistUnexpectedError = "InternalError.WhitelistUnexpectedError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_AsCommonError = "InvalidParameter.AsCommonError"
        case invalidParameter_CIDRInvalid = "InvalidParameter.CIDRInvalid"
        case invalidParameter_CIDRMaskSizeOutOfRange = "InvalidParameter.CIDRMaskSizeOutOfRange"
        case invalidParameter_CidrConflictWithOtherCluster = "InvalidParameter.CidrConflictWithOtherCluster"
        case invalidParameter_CidrConflictWithOtherRoute = "InvalidParameter.CidrConflictWithOtherRoute"
        case invalidParameter_CidrConflictWithVpcCidr = "InvalidParameter.CidrConflictWithVpcCidr"
        case invalidParameter_CidrConflictWithVpcGlobalRoute = "InvalidParameter.CidrConflictWithVpcGlobalRoute"
        case invalidParameter_CidrInvali = "InvalidParameter.CidrInvali"
        case invalidParameter_CidrInvalid = "InvalidParameter.CidrInvalid"
        case invalidParameter_CidrOutOfRouteTable = "InvalidParameter.CidrOutOfRouteTable"
        case invalidParameter_ClusterNotFound = "InvalidParameter.ClusterNotFound"
        case invalidParameter_GatewayAlreadyAssociatedCidr = "InvalidParameter.GatewayAlreadyAssociatedCidr"
        case invalidParameter_InvalidPrivateNetworkCIDR = "InvalidParameter.InvalidPrivateNetworkCIDR"
        case invalidParameter_OsNotSupport = "InvalidParameter.OsNotSupport"
        case invalidParameter_Param = "InvalidParameter.Param"
        case invalidParameter_PromClusterNotFound = "InvalidParameter.PromClusterNotFound"
        case invalidParameter_PromInstanceNotFound = "InvalidParameter.PromInstanceNotFound"
        case invalidParameter_ResourceNotFound = "InvalidParameter.ResourceNotFound"
        case invalidParameter_RouteTableNotEmpty = "InvalidParameter.RouteTableNotEmpty"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_ClusterInDeletionProtection = "OperationDenied.ClusterInDeletionProtection"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_ResourceExistAlready = "ResourceInUse.ResourceExistAlready"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_SpecifiedInstanceType = "ResourceInsufficient.SpecifiedInstanceType"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AsAsgNotExist = "ResourceNotFound.AsAsgNotExist"
        case resourceNotFound_ClusterNotFound = "ResourceNotFound.ClusterNotFound"
        case resourceNotFound_KubeResourceNotFound = "ResourceNotFound.KubeResourceNotFound"
        case resourceNotFound_KubernetesResourceNotFound = "ResourceNotFound.KubernetesResourceNotFound"
        case resourceNotFound_RouteTableNotFound = "ResourceNotFound.RouteTableNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_ClusterInAbnormalStat = "ResourceUnavailable.ClusterInAbnormalStat"
        case resourceUnavailable_ClusterState = "ResourceUnavailable.ClusterState"
        case resourceUnavailable_EksContainerStatus = "ResourceUnavailable.EksContainerStatus"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CamNoAuth = "UnauthorizedOperation.CamNoAuth"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_CaEnableFailed = "UnsupportedOperation.CaEnableFailed"
        case unsupportedOperation_ClusterNotSuitAddClusterCIDR = "UnsupportedOperation.ClusterNotSuitAddClusterCIDR"
        case unsupportedOperation_ClusterNotSuitEnableVPCCNI = "UnsupportedOperation.ClusterNotSuitEnableVPCCNI"
        case unsupportedOperation_NotInWhitelist = "UnsupportedOperation.NotInWhitelist"
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
    public static var failedOperation: TCTkeError {
        TCTkeError(.failedOperation)
    }
    
    /// 获取用户认证信息失败。
    public static var failedOperation_AccountCommon: TCTkeError {
        TCTkeError(.failedOperation_AccountCommon)
    }
    
    /// 账户未通过认证。
    public static var failedOperation_AccountUserNotAuthenticated: TCTkeError {
        TCTkeError(.failedOperation_AccountUserNotAuthenticated)
    }
    
    /// 伸缩组资源创建报错。
    public static var failedOperation_AsCommon: TCTkeError {
        TCTkeError(.failedOperation_AsCommon)
    }
    
    /// CVM未知错误。
    public static var failedOperation_CVMUnexpectedError: TCTkeError {
        TCTkeError(.failedOperation_CVMUnexpectedError)
    }
    
    /// 无该接口CAM权限。
    public static var failedOperation_CamNoAuth: TCTkeError {
        TCTkeError(.failedOperation_CamNoAuth)
    }
    
    public static var failedOperation_ClusterForbiddenToDelete: TCTkeError {
        TCTkeError(.failedOperation_ClusterForbiddenToDelete)
    }
    
    /// 集群未找到。
    public static var failedOperation_ClusterNotFound: TCTkeError {
        TCTkeError(.failedOperation_ClusterNotFound)
    }
    
    /// 集群状态错误。
    public static var failedOperation_ClusterState: TCTkeError {
        TCTkeError(.failedOperation_ClusterState)
    }
    
    /// 集群节点版本过低。
    public static var failedOperation_ClusterUpgradeNodeVersion: TCTkeError {
        TCTkeError(.failedOperation_ClusterUpgradeNodeVersion)
    }
    
    public static var failedOperation_ComponentClientCommon: TCTkeError {
        TCTkeError(.failedOperation_ComponentClientCommon)
    }
    
    /// 内部HTTP客户端错误。
    public static var failedOperation_ComponentClientHttp: TCTkeError {
        TCTkeError(.failedOperation_ComponentClientHttp)
    }
    
    /// 内部HTTP解包失败。
    public static var failedOperation_ComponentClientUnpack: TCTkeError {
        TCTkeError(.failedOperation_ComponentClientUnpack)
    }
    
    /// 请求(http请求)其他云服务失败。
    public static var failedOperation_ComponentClinetHttp: TCTkeError {
        TCTkeError(.failedOperation_ComponentClinetHttp)
    }
    
    public static var failedOperation_CreateClsClient: TCTkeError {
        TCTkeError(.failedOperation_CreateClsClient)
    }
    
    public static var failedOperation_CreateClsConfig: TCTkeError {
        TCTkeError(.failedOperation_CreateClsConfig)
    }
    
    public static var failedOperation_CreateClsIndex: TCTkeError {
        TCTkeError(.failedOperation_CreateClsIndex)
    }
    
    public static var failedOperation_CreateClsLogSet: TCTkeError {
        TCTkeError(.failedOperation_CreateClsLogSet)
    }
    
    public static var failedOperation_CreateClsMachineGroup: TCTkeError {
        TCTkeError(.failedOperation_CreateClsMachineGroup)
    }
    
    public static var failedOperation_CreateClsTopic: TCTkeError {
        TCTkeError(.failedOperation_CreateClsTopic)
    }
    
    /// cvm创建节点报错。
    public static var failedOperation_CvmCommon: TCTkeError {
        TCTkeError(.failedOperation_CvmCommon)
    }
    
    /// 存在云服务器在CVM侧查询不到。
    public static var failedOperation_CvmNumberNotMatch: TCTkeError {
        TCTkeError(.failedOperation_CvmNumberNotMatch)
    }
    
    /// CVM 和 VPC ID 不匹配。
    public static var failedOperation_CvmVpcidNotMatch: TCTkeError {
        TCTkeError(.failedOperation_CvmVpcidNotMatch)
    }
    
    /// db错误。
    public static var failedOperation_Db: TCTkeError {
        TCTkeError(.failedOperation_Db)
    }
    
    /// 记录未找到。
    public static var failedOperation_DbRecordNotFound: TCTkeError {
        TCTkeError(.failedOperation_DbRecordNotFound)
    }
    
    /// 获得安全组配额失败。
    public static var failedOperation_DfwGetUSGQuota: TCTkeError {
        TCTkeError(.failedOperation_DfwGetUSGQuota)
    }
    
    public static var failedOperation_DisableVPCCNIFailed: TCTkeError {
        TCTkeError(.failedOperation_DisableVPCCNIFailed)
    }
    
    public static var failedOperation_EnableVPCCNIFailed: TCTkeError {
        TCTkeError(.failedOperation_EnableVPCCNIFailed)
    }
    
    public static var failedOperation_GetClsConfig: TCTkeError {
        TCTkeError(.failedOperation_GetClsConfig)
    }
    
    public static var failedOperation_GetClsLogSet: TCTkeError {
        TCTkeError(.failedOperation_GetClsLogSet)
    }
    
    public static var failedOperation_GetClsMachineGroup: TCTkeError {
        TCTkeError(.failedOperation_GetClsMachineGroup)
    }
    
    public static var failedOperation_KubeClientConf: TCTkeError {
        TCTkeError(.failedOperation_KubeClientConf)
    }
    
    /// 连接用户Kubernetes集群失败。
    public static var failedOperation_KubeClientConnection: TCTkeError {
        TCTkeError(.failedOperation_KubeClientConnection)
    }
    
    /// KubernetesAPI错误。
    public static var failedOperation_KubeCommon: TCTkeError {
        TCTkeError(.failedOperation_KubeCommon)
    }
    
    /// Kubernetes client建立失败。
    public static var failedOperation_KubernetesClientBuildError: TCTkeError {
        TCTkeError(.failedOperation_KubernetesClientBuildError)
    }
    
    /// 创建集群Client出错。
    public static var failedOperation_KubernetesCreateOperationError: TCTkeError {
        TCTkeError(.failedOperation_KubernetesCreateOperationError)
    }
    
    public static var failedOperation_KubernetesDeleteOperationError: TCTkeError {
        TCTkeError(.failedOperation_KubernetesDeleteOperationError)
    }
    
    /// 获取Kubernetes资源失败。
    public static var failedOperation_KubernetesGetOperationError: TCTkeError {
        TCTkeError(.failedOperation_KubernetesGetOperationError)
    }
    
    /// Kubernetes未知错误。
    public static var failedOperation_KubernetesInternal: TCTkeError {
        TCTkeError(.failedOperation_KubernetesInternal)
    }
    
    public static var failedOperation_KubernetesPatchOperationError: TCTkeError {
        TCTkeError(.failedOperation_KubernetesPatchOperationError)
    }
    
    /// 底层调用CLB未知错误。
    public static var failedOperation_LbCommon: TCTkeError {
        TCTkeError(.failedOperation_LbCommon)
    }
    
    public static var failedOperation_ModifyClsIndex: TCTkeError {
        TCTkeError(.failedOperation_ModifyClsIndex)
    }
    
    /// 网络扩展错误。
    public static var failedOperation_NetworkScaleError: TCTkeError {
        TCTkeError(.failedOperation_NetworkScaleError)
    }
    
    /// 镜像OS不支持。
    public static var failedOperation_OsNotSupport: TCTkeError {
        TCTkeError(.failedOperation_OsNotSupport)
    }
    
    /// 参数错误。
    public static var failedOperation_Param: TCTkeError {
        TCTkeError(.failedOperation_Param)
    }
    
    /// 超过配额限制。
    public static var failedOperation_QuotaMaxClsLimit: TCTkeError {
        TCTkeError(.failedOperation_QuotaMaxClsLimit)
    }
    
    /// 超过配额限制。
    public static var failedOperation_QuotaMaxNodLimit: TCTkeError {
        TCTkeError(.failedOperation_QuotaMaxNodLimit)
    }
    
    /// 安全组配额不足。
    public static var failedOperation_QuotaUSGLimit: TCTkeError {
        TCTkeError(.failedOperation_QuotaUSGLimit)
    }
    
    /// 子账户RBAC权限不足。
    public static var failedOperation_RBACForbidden: TCTkeError {
        TCTkeError(.failedOperation_RBACForbidden)
    }
    
    public static var failedOperation_RecordNotFound: TCTkeError {
        TCTkeError(.failedOperation_RecordNotFound)
    }
    
    /// 已有相同任务执行中。
    public static var failedOperation_TaskAlreadyRunning: TCTkeError {
        TCTkeError(.failedOperation_TaskAlreadyRunning)
    }
    
    /// 询价错误。
    public static var failedOperation_TradeCommon: TCTkeError {
        TCTkeError(.failedOperation_TradeCommon)
    }
    
    public static var failedOperation_UnexpectedError: TCTkeError {
        TCTkeError(.failedOperation_UnexpectedError)
    }
    
    /// VPC未知错误。
    public static var failedOperation_VPCUnexpectedError: TCTkeError {
        TCTkeError(.failedOperation_VPCUnexpectedError)
    }
    
    /// VPC报错。
    public static var failedOperation_VpcCommon: TCTkeError {
        TCTkeError(.failedOperation_VpcCommon)
    }
    
    /// 未发现vpc记录。
    public static var failedOperation_VpcRecodrNotFound: TCTkeError {
        TCTkeError(.failedOperation_VpcRecodrNotFound)
    }
    
    public static var failedOperation_WhitelistUnexpectedError: TCTkeError {
        TCTkeError(.failedOperation_WhitelistUnexpectedError)
    }
    
    /// 内部错误。
    public static var internalError: TCTkeError {
        TCTkeError(.internalError)
    }
    
    /// 获取用户认证信息失败。
    public static var internalError_AccountCommon: TCTkeError {
        TCTkeError(.internalError_AccountCommon)
    }
    
    /// 账户未通过认证。
    public static var internalError_AccountUserNotAuthenticated: TCTkeError {
        TCTkeError(.internalError_AccountUserNotAuthenticated)
    }
    
    /// 伸缩组资源创建报错。
    public static var internalError_AsCommon: TCTkeError {
        TCTkeError(.internalError_AsCommon)
    }
    
    /// 没有权限。
    public static var internalError_CamNoAuth: TCTkeError {
        TCTkeError(.internalError_CamNoAuth)
    }
    
    /// CIDR和其他集群CIDR冲突。
    public static var internalError_CidrConflictWithOtherCluster: TCTkeError {
        TCTkeError(.internalError_CidrConflictWithOtherCluster)
    }
    
    /// CIDR和其他路由冲突。
    public static var internalError_CidrConflictWithOtherRoute: TCTkeError {
        TCTkeError(.internalError_CidrConflictWithOtherRoute)
    }
    
    /// CIDR和vpc冲突。
    public static var internalError_CidrConflictWithVpcCidr: TCTkeError {
        TCTkeError(.internalError_CidrConflictWithVpcCidr)
    }
    
    /// CIDR和全局路由冲突。
    public static var internalError_CidrConflictWithVpcGlobalRoute: TCTkeError {
        TCTkeError(.internalError_CidrConflictWithVpcGlobalRoute)
    }
    
    /// CIDR无效。
    public static var internalError_CidrInvali: TCTkeError {
        TCTkeError(.internalError_CidrInvali)
    }
    
    /// CIDR掩码无效。
    public static var internalError_CidrMaskSizeOutOfRange: TCTkeError {
        TCTkeError(.internalError_CidrMaskSizeOutOfRange)
    }
    
    /// CIDR不在路由表之内。
    public static var internalError_CidrOutOfRouteTable: TCTkeError {
        TCTkeError(.internalError_CidrOutOfRouteTable)
    }
    
    /// 集群未找到。
    public static var internalError_ClusterNotFound: TCTkeError {
        TCTkeError(.internalError_ClusterNotFound)
    }
    
    /// 集群状态错误。
    public static var internalError_ClusterState: TCTkeError {
        TCTkeError(.internalError_ClusterState)
    }
    
    /// 集群节点版本过低。
    public static var internalError_ClusterUpgradeNodeVersion: TCTkeError {
        TCTkeError(.internalError_ClusterUpgradeNodeVersion)
    }
    
    /// 执行命令超时。
    public static var internalError_CmdTimeout: TCTkeError {
        TCTkeError(.internalError_CmdTimeout)
    }
    
    /// 内部HTTP客户端错误。
    public static var internalError_ComponentClientHttp: TCTkeError {
        TCTkeError(.internalError_ComponentClientHttp)
    }
    
    /// 请求(http请求)其他云服务失败。
    public static var internalError_ComponentClinetHttp: TCTkeError {
        TCTkeError(.internalError_ComponentClinetHttp)
    }
    
    /// 容器未找到。
    public static var internalError_ContainerNotFound: TCTkeError {
        TCTkeError(.internalError_ContainerNotFound)
    }
    
    /// 创建集群失败。
    public static var internalError_CreateMasterFailed: TCTkeError {
        TCTkeError(.internalError_CreateMasterFailed)
    }
    
    /// cvm创建节点报错。
    public static var internalError_CvmCommon: TCTkeError {
        TCTkeError(.internalError_CvmCommon)
    }
    
    /// cvm不存在。
    public static var internalError_CvmNotFound: TCTkeError {
        TCTkeError(.internalError_CvmNotFound)
    }
    
    /// 存在云服务器在CVM侧查询不到。
    public static var internalError_CvmNumberNotMatch: TCTkeError {
        TCTkeError(.internalError_CvmNumberNotMatch)
    }
    
    /// cvm状态不正常。
    public static var internalError_CvmStatus: TCTkeError {
        TCTkeError(.internalError_CvmStatus)
    }
    
    /// db错误。
    public static var internalError_Db: TCTkeError {
        TCTkeError(.internalError_Db)
    }
    
    /// DB错误。
    public static var internalError_DbAffectivedRows: TCTkeError {
        TCTkeError(.internalError_DbAffectivedRows)
    }
    
    /// 记录未找到。
    public static var internalError_DbRecordNotFound: TCTkeError {
        TCTkeError(.internalError_DbRecordNotFound)
    }
    
    /// 获得当前安全组总数失败。
    public static var internalError_DfwGetUSGCount: TCTkeError {
        TCTkeError(.internalError_DfwGetUSGCount)
    }
    
    /// 获得安全组配额失败。
    public static var internalError_DfwGetUSGQuota: TCTkeError {
        TCTkeError(.internalError_DfwGetUSGQuota)
    }
    
    /// 不支持空集群。
    public static var internalError_EmptyClusterNotSupport: TCTkeError {
        TCTkeError(.internalError_EmptyClusterNotSupport)
    }
    
    /// 下一跳地址已关联CIDR。
    public static var internalError_GatewayAlreadyAssociatedCidr: TCTkeError {
        TCTkeError(.internalError_GatewayAlreadyAssociatedCidr)
    }
    
    /// 镜像未找到。
    public static var internalError_ImageIdNotFound: TCTkeError {
        TCTkeError(.internalError_ImageIdNotFound)
    }
    
    /// 初始化master失败。
    public static var internalError_InitMasterFailed: TCTkeError {
        TCTkeError(.internalError_InitMasterFailed)
    }
    
    /// 无效CIDR。
    public static var internalError_InvalidPrivateNetworkCidr: TCTkeError {
        TCTkeError(.internalError_InvalidPrivateNetworkCidr)
    }
    
    /// 连接用户Kubernetes集群失败。
    public static var internalError_KubeClientConnection: TCTkeError {
        TCTkeError(.internalError_KubeClientConnection)
    }
    
    /// 创建集群Client出错。
    public static var internalError_KubeClientCreate: TCTkeError {
        TCTkeError(.internalError_KubeClientCreate)
    }
    
    /// KubernetesAPI错误。
    public static var internalError_KubeCommon: TCTkeError {
        TCTkeError(.internalError_KubeCommon)
    }
    
    /// kubernetes client建立失败。
    public static var internalError_KubernetesClientBuildError: TCTkeError {
        TCTkeError(.internalError_KubernetesClientBuildError)
    }
    
    /// 创建Kubernetes资源失败。
    public static var internalError_KubernetesCreateOperationError: TCTkeError {
        TCTkeError(.internalError_KubernetesCreateOperationError)
    }
    
    /// 删除Kubernetes资源失败。
    public static var internalError_KubernetesDeleteOperationError: TCTkeError {
        TCTkeError(.internalError_KubernetesDeleteOperationError)
    }
    
    /// 获取Kubernetes资源失败。
    public static var internalError_KubernetesGetOperationError: TCTkeError {
        TCTkeError(.internalError_KubernetesGetOperationError)
    }
    
    /// Kubernetes未知错误。
    public static var internalError_KubernetesInternal: TCTkeError {
        TCTkeError(.internalError_KubernetesInternal)
    }
    
    /// Kubernetes Patch操作失败。
    public static var internalError_KubernetesPatchOperationError: TCTkeError {
        TCTkeError(.internalError_KubernetesPatchOperationError)
    }
    
    /// 底层调用CLB未知错误。
    public static var internalError_LbCommon: TCTkeError {
        TCTkeError(.internalError_LbCommon)
    }
    
    /// 镜像OS不支持。
    public static var internalError_OsNotSupport: TCTkeError {
        TCTkeError(.internalError_OsNotSupport)
    }
    
    /// Param。
    public static var internalError_Param: TCTkeError {
        TCTkeError(.internalError_Param)
    }
    
    /// Pod未找到。
    public static var internalError_PodNotFound: TCTkeError {
        TCTkeError(.internalError_PodNotFound)
    }
    
    /// 集群不支持当前操作。
    public static var internalError_PublicClusterOpNotSupport: TCTkeError {
        TCTkeError(.internalError_PublicClusterOpNotSupport)
    }
    
    /// 超过配额限制。
    public static var internalError_QuotaMaxClsLimit: TCTkeError {
        TCTkeError(.internalError_QuotaMaxClsLimit)
    }
    
    /// 超过配额限制。
    public static var internalError_QuotaMaxNodLimit: TCTkeError {
        TCTkeError(.internalError_QuotaMaxNodLimit)
    }
    
    /// 超过配额限制。
    public static var internalError_QuotaMaxRtLimit: TCTkeError {
        TCTkeError(.internalError_QuotaMaxRtLimit)
    }
    
    /// 安全组配额不足。
    public static var internalError_QuotaUSGLimit: TCTkeError {
        TCTkeError(.internalError_QuotaUSGLimit)
    }
    
    /// 资源已存在。
    public static var internalError_ResourceExistAlready: TCTkeError {
        TCTkeError(.internalError_ResourceExistAlready)
    }
    
    /// 路由表非空。
    public static var internalError_RouteTableNotEmpty: TCTkeError {
        TCTkeError(.internalError_RouteTableNotEmpty)
    }
    
    /// 路由表不存在。
    public static var internalError_RouteTableNotFound: TCTkeError {
        TCTkeError(.internalError_RouteTableNotFound)
    }
    
    /// 已有相同任务执行中。
    public static var internalError_TaskAlreadyRunning: TCTkeError {
        TCTkeError(.internalError_TaskAlreadyRunning)
    }
    
    /// 创建任务失败。
    public static var internalError_TaskCreateFailed: TCTkeError {
        TCTkeError(.internalError_TaskCreateFailed)
    }
    
    /// 任务当前所处状态不支持此操作。
    public static var internalError_TaskLifeStateError: TCTkeError {
        TCTkeError(.internalError_TaskLifeStateError)
    }
    
    /// 任务未找到。
    public static var internalError_TaskNotFound: TCTkeError {
        TCTkeError(.internalError_TaskNotFound)
    }
    
    /// 询价错误。
    public static var internalError_TradeCommon: TCTkeError {
        TCTkeError(.internalError_TradeCommon)
    }
    
    /// 账户余额不足。
    public static var internalError_TradeInsufficientBalance: TCTkeError {
        TCTkeError(.internalError_TradeInsufficientBalance)
    }
    
    /// 内部错误。
    public static var internalError_UnexceptedInternal: TCTkeError {
        TCTkeError(.internalError_UnexceptedInternal)
    }
    
    /// 未知的内部错误。
    public static var internalError_UnexpectedInternal: TCTkeError {
        TCTkeError(.internalError_UnexpectedInternal)
    }
    
    /// VPC未知错误。
    public static var internalError_VPCUnexpectedError: TCTkeError {
        TCTkeError(.internalError_VPCUnexpectedError)
    }
    
    /// VPC报错。
    public static var internalError_VpcCommon: TCTkeError {
        TCTkeError(.internalError_VpcCommon)
    }
    
    /// 对等连接不存在。
    public static var internalError_VpcPeerNotFound: TCTkeError {
        TCTkeError(.internalError_VpcPeerNotFound)
    }
    
    /// 未发现vpc记录。
    public static var internalError_VpcRecodrNotFound: TCTkeError {
        TCTkeError(.internalError_VpcRecodrNotFound)
    }
    
    /// VstationError。
    public static var internalError_VstationError: TCTkeError {
        TCTkeError(.internalError_VstationError)
    }
    
    /// 白名单未知错误。
    public static var internalError_WhitelistUnexpectedError: TCTkeError {
        TCTkeError(.internalError_WhitelistUnexpectedError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTkeError {
        TCTkeError(.invalidParameter)
    }
    
    /// 弹性伸缩组创建参数错误。
    public static var invalidParameter_AsCommonError: TCTkeError {
        TCTkeError(.invalidParameter_AsCommonError)
    }
    
    /// 非法的CIDR。
    public static var invalidParameter_CIDRInvalid: TCTkeError {
        TCTkeError(.invalidParameter_CIDRInvalid)
    }
    
    /// CIDR掩码超出范围(集群CIDR范围 最小值: 10 最大值: 24)。
    public static var invalidParameter_CIDRMaskSizeOutOfRange: TCTkeError {
        TCTkeError(.invalidParameter_CIDRMaskSizeOutOfRange)
    }
    
    /// CIDR和其他集群CIDR冲突。
    public static var invalidParameter_CidrConflictWithOtherCluster: TCTkeError {
        TCTkeError(.invalidParameter_CidrConflictWithOtherCluster)
    }
    
    /// 创建的路由与已存在的其他路由产生冲突。
    public static var invalidParameter_CidrConflictWithOtherRoute: TCTkeError {
        TCTkeError(.invalidParameter_CidrConflictWithOtherRoute)
    }
    
    /// CIDR和vpc的CIDR冲突。
    public static var invalidParameter_CidrConflictWithVpcCidr: TCTkeError {
        TCTkeError(.invalidParameter_CidrConflictWithVpcCidr)
    }
    
    /// 创建的路由与VPC下已存在的全局路由产生冲突。
    public static var invalidParameter_CidrConflictWithVpcGlobalRoute: TCTkeError {
        TCTkeError(.invalidParameter_CidrConflictWithVpcGlobalRoute)
    }
    
    /// CIDR无效。
    public static var invalidParameter_CidrInvali: TCTkeError {
        TCTkeError(.invalidParameter_CidrInvali)
    }
    
    /// 参数错误，CIDR不符合规范。
    public static var invalidParameter_CidrInvalid: TCTkeError {
        TCTkeError(.invalidParameter_CidrInvalid)
    }
    
    /// CIDR不在路由表之内。
    public static var invalidParameter_CidrOutOfRouteTable: TCTkeError {
        TCTkeError(.invalidParameter_CidrOutOfRouteTable)
    }
    
    /// 集群ID不存在。
    public static var invalidParameter_ClusterNotFound: TCTkeError {
        TCTkeError(.invalidParameter_ClusterNotFound)
    }
    
    /// 下一跳地址已关联CIDR。
    public static var invalidParameter_GatewayAlreadyAssociatedCidr: TCTkeError {
        TCTkeError(.invalidParameter_GatewayAlreadyAssociatedCidr)
    }
    
    /// 无效的私有CIDR网段。
    public static var invalidParameter_InvalidPrivateNetworkCIDR: TCTkeError {
        TCTkeError(.invalidParameter_InvalidPrivateNetworkCIDR)
    }
    
    public static var invalidParameter_OsNotSupport: TCTkeError {
        TCTkeError(.invalidParameter_OsNotSupport)
    }
    
    /// 参数错误。
    public static var invalidParameter_Param: TCTkeError {
        TCTkeError(.invalidParameter_Param)
    }
    
    /// Prometheus未关联本集群。
    public static var invalidParameter_PromClusterNotFound: TCTkeError {
        TCTkeError(.invalidParameter_PromClusterNotFound)
    }
    
    /// Prometheus实例不存在。
    public static var invalidParameter_PromInstanceNotFound: TCTkeError {
        TCTkeError(.invalidParameter_PromInstanceNotFound)
    }
    
    /// 资源未找到。
    public static var invalidParameter_ResourceNotFound: TCTkeError {
        TCTkeError(.invalidParameter_ResourceNotFound)
    }
    
    /// 路由表非空。
    public static var invalidParameter_RouteTableNotEmpty: TCTkeError {
        TCTkeError(.invalidParameter_RouteTableNotEmpty)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTkeError {
        TCTkeError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTkeError {
        TCTkeError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTkeError {
        TCTkeError(.operationDenied)
    }
    
    /// 集群处于删除保护中，禁止删除。
    public static var operationDenied_ClusterInDeletionProtection: TCTkeError {
        TCTkeError(.operationDenied_ClusterInDeletionProtection)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTkeError {
        TCTkeError(.resourceInUse)
    }
    
    /// 资源已存在。
    public static var resourceInUse_ResourceExistAlready: TCTkeError {
        TCTkeError(.resourceInUse_ResourceExistAlready)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTkeError {
        TCTkeError(.resourceInsufficient)
    }
    
    public static var resourceInsufficient_SpecifiedInstanceType: TCTkeError {
        TCTkeError(.resourceInsufficient_SpecifiedInstanceType)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTkeError {
        TCTkeError(.resourceNotFound)
    }
    
    /// 伸缩组不存在。
    public static var resourceNotFound_AsAsgNotExist: TCTkeError {
        TCTkeError(.resourceNotFound_AsAsgNotExist)
    }
    
    /// 集群不存在。
    public static var resourceNotFound_ClusterNotFound: TCTkeError {
        TCTkeError(.resourceNotFound_ClusterNotFound)
    }
    
    /// 用户Kubernetes集群中未找到指定资源。
    public static var resourceNotFound_KubeResourceNotFound: TCTkeError {
        TCTkeError(.resourceNotFound_KubeResourceNotFound)
    }
    
    /// 未找到该kubernetes资源。
    public static var resourceNotFound_KubernetesResourceNotFound: TCTkeError {
        TCTkeError(.resourceNotFound_KubernetesResourceNotFound)
    }
    
    /// 找不到对应路由表。
    public static var resourceNotFound_RouteTableNotFound: TCTkeError {
        TCTkeError(.resourceNotFound_RouteTableNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTkeError {
        TCTkeError(.resourceUnavailable)
    }
    
    /// 集群状态异常。
    public static var resourceUnavailable_ClusterInAbnormalStat: TCTkeError {
        TCTkeError(.resourceUnavailable_ClusterInAbnormalStat)
    }
    
    /// 集群状态不支持该操作。
    public static var resourceUnavailable_ClusterState: TCTkeError {
        TCTkeError(.resourceUnavailable_ClusterState)
    }
    
    /// Eks Container Instance状态不支持改操作。
    public static var resourceUnavailable_EksContainerStatus: TCTkeError {
        TCTkeError(.resourceUnavailable_EksContainerStatus)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCTkeError {
        TCTkeError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTkeError {
        TCTkeError(.unauthorizedOperation)
    }
    
    /// 无该接口CAM权限。
    public static var unauthorizedOperation_CamNoAuth: TCTkeError {
        TCTkeError(.unauthorizedOperation_CamNoAuth)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTkeError {
        TCTkeError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTkeError {
        TCTkeError(.unsupportedOperation)
    }
    
    /// AS伸缩关闭导致无法开启CA。
    public static var unsupportedOperation_CaEnableFailed: TCTkeError {
        TCTkeError(.unsupportedOperation_CaEnableFailed)
    }
    
    public static var unsupportedOperation_ClusterNotSuitAddClusterCIDR: TCTkeError {
        TCTkeError(.unsupportedOperation_ClusterNotSuitAddClusterCIDR)
    }
    
    public static var unsupportedOperation_ClusterNotSuitEnableVPCCNI: TCTkeError {
        TCTkeError(.unsupportedOperation_ClusterNotSuitEnableVPCCNI)
    }
    
    /// 非白名单用户。
    public static var unsupportedOperation_NotInWhitelist: TCTkeError {
        TCTkeError(.unsupportedOperation_NotInWhitelist)
    }
}

extension TCTkeError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, OperationDenied.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTkeError: Equatable {
    public static func == (lhs: TCTkeError, rhs: TCTkeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTkeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}