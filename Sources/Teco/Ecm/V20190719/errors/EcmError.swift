public struct TCEcmError: TCErrorType {
    enum Code: String {
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_BlockBalance = "FailedOperation.BlockBalance"
        case failedOperation_DataOperationFailed = "FailedOperation.DataOperationFailed"
        case failedOperation_DiskAttached = "FailedOperation.DiskAttached"
        case failedOperation_ImageInUse = "FailedOperation.ImageInUse"
        case failedOperation_InstanceInModule = "FailedOperation.InstanceInModule"
        case failedOperation_InstanceNotAllStopped = "FailedOperation.InstanceNotAllStopped"
        case failedOperation_InstanceOwnerCheckFailed = "FailedOperation.InstanceOwnerCheckFailed"
        case failedOperation_InternalOperationFailure = "FailedOperation.InternalOperationFailure"
        case failedOperation_InvalidStatus = "FailedOperation.InvalidStatus"
        case failedOperation_OperationConflict = "FailedOperation.OperationConflict"
        case failedOperation_OperationNotAllow = "FailedOperation.OperationNotAllow"
        case failedOperation_PrivateIpAddressBinded = "FailedOperation.PrivateIpAddressBinded"
        case failedOperation_PrivateIpAddressUnavailable = "FailedOperation.PrivateIpAddressUnavailable"
        case internalError = "InternalError"
        case internalError_ComponentError = "InternalError.ComponentError"
        case internalError_FailQueryResource = "InternalError.FailQueryResource"
        case internalError_ResourceOpFailed = "InternalError.ResourceOpFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AddressQuotaLimitExceeded = "InvalidParameterValue.AddressQuotaLimitExceeded"
        case invalidParameterValue_BandwidthOutOfRange = "InvalidParameterValue.BandwidthOutOfRange"
        case invalidParameterValue_CidrNotInPeerVpc = "InvalidParameterValue.CidrNotInPeerVpc"
        case invalidParameterValue_Duplicate = "InvalidParameterValue.Duplicate"
        case invalidParameterValue_FilterLimitExceeded = "InvalidParameterValue.FilterLimitExceeded"
        case invalidParameterValue_ImageDuplicate = "InvalidParameterValue.ImageDuplicate"
        case invalidParameterValue_ImageNameDuplicate = "InvalidParameterValue.ImageNameDuplicate"
        case invalidParameterValue_ImageSizeLargeThanSysDiskSize = "InvalidParameterValue.ImageSizeLargeThanSysDiskSize"
        case invalidParameterValue_InstanceConfigNotMatch = "InvalidParameterValue.InstanceConfigNotMatch"
        case invalidParameterValue_InstanceIdNotSupported = "InvalidParameterValue.InstanceIdNotSupported"
        case invalidParameterValue_InstanceNameTooLong = "InvalidParameterValue.InstanceNameTooLong"
        case invalidParameterValue_InstanceTypeNotMatchPid = "InvalidParameterValue.InstanceTypeNotMatchPid"
        case invalidParameterValue_InsufficientRefundQuota = "InvalidParameterValue.InsufficientRefundQuota"
        case invalidParameterValue_InvaildAddressId = "InvalidParameterValue.InvaildAddressId"
        case invalidParameterValue_InvaildDescribeInstance = "InvalidParameterValue.InvaildDescribeInstance"
        case invalidParameterValue_InvaildEniID = "InvalidParameterValue.InvaildEniID"
        case invalidParameterValue_InvaildHostName = "InvalidParameterValue.InvaildHostName"
        case invalidParameterValue_InvaildModifyParam = "InvalidParameterValue.InvaildModifyParam"
        case invalidParameterValue_InvaildModuleNum = "InvalidParameterValue.InvaildModuleNum"
        case invalidParameterValue_InvaildPageParam = "InvalidParameterValue.InvaildPageParam"
        case invalidParameterValue_InvaildPassword = "InvalidParameterValue.InvaildPassword"
        case invalidParameterValue_InvalidAddressCount = "InvalidParameterValue.InvalidAddressCount"
        case invalidParameterValue_InvalidBandwidth = "InvalidParameterValue.InvalidBandwidth"
        case invalidParameterValue_InvalidBandwidthIn = "InvalidParameterValue.InvalidBandwidthIn"
        case invalidParameterValue_InvalidBandwidthInAndOut = "InvalidParameterValue.InvalidBandwidthInAndOut"
        case invalidParameterValue_InvalidBillingType = "InvalidParameterValue.InvalidBillingType"
        case invalidParameterValue_InvalidDataDiskNum = "InvalidParameterValue.InvalidDataDiskNum"
        case invalidParameterValue_InvalidDataDiskSize = "InvalidParameterValue.InvalidDataDiskSize"
        case invalidParameterValue_InvalidDataDiskType = "InvalidParameterValue.InvalidDataDiskType"
        case invalidParameterValue_InvalidDisk = "InvalidParameterValue.InvalidDisk"
        case invalidParameterValue_InvalidDiskId = "InvalidParameterValue.InvalidDiskId"
        case invalidParameterValue_InvalidDiskType = "InvalidParameterValue.InvalidDiskType"
        case invalidParameterValue_InvalidEIPDirectService = "InvalidParameterValue.InvalidEIPDirectService"
        case invalidParameterValue_InvalidEcmRegion = "InvalidParameterValue.InvalidEcmRegion"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidISPInNode = "InvalidParameterValue.InvalidISPInNode"
        case invalidParameterValue_InvalidImageArchitecture = "InvalidParameterValue.InvalidImageArchitecture"
        case invalidParameterValue_InvalidImageID = "InvalidParameterValue.InvalidImageID"
        case invalidParameterValue_InvalidInstanceChargeType = "InvalidParameterValue.InvalidInstanceChargeType"
        case invalidParameterValue_InvalidInstanceID = "InvalidParameterValue.InvalidInstanceID"
        case invalidParameterValue_InvalidInstanceType = "InvalidParameterValue.InvalidInstanceType"
        case invalidParameterValue_InvalidInstanceTypeConfigID = "InvalidParameterValue.InvalidInstanceTypeConfigID"
        case invalidParameterValue_InvalidInternetChargeType = "InvalidParameterValue.InvalidInternetChargeType"
        case invalidParameterValue_InvalidKeyPairId = "InvalidParameterValue.InvalidKeyPairId"
        case invalidParameterValue_InvalidKeyPairName = "InvalidParameterValue.InvalidKeyPairName"
        case invalidParameterValue_InvalidLoadBalancerNum = "InvalidParameterValue.InvalidLoadBalancerNum"
        case invalidParameterValue_InvalidLoadBalancerType = "InvalidParameterValue.InvalidLoadBalancerType"
        case invalidParameterValue_InvalidModuleID = "InvalidParameterValue.InvalidModuleID"
        case invalidParameterValue_InvalidModuleIDAndInstanceTypeConfigID = "InvalidParameterValue.InvalidModuleIDAndInstanceTypeConfigID"
        case invalidParameterValue_InvalidModuleIDAndInstanceTypeID = "InvalidParameterValue.InvalidModuleIDAndInstanceTypeID"
        case invalidParameterValue_InvalidModuleName = "InvalidParameterValue.InvalidModuleName"
        case invalidParameterValue_InvalidOrderByField = "InvalidParameterValue.InvalidOrderByField"
        case invalidParameterValue_InvalidPublicParam = "InvalidParameterValue.InvalidPublicParam"
        case invalidParameterValue_InvalidRegion = "InvalidParameterValue.InvalidRegion"
        case invalidParameterValue_InvalidSecurityGroupID = "InvalidParameterValue.InvalidSecurityGroupID"
        case invalidParameterValue_InvalidSnapshot = "InvalidParameterValue.InvalidSnapshot"
        case invalidParameterValue_InvalidSnapshotId = "InvalidParameterValue.InvalidSnapshotId"
        case invalidParameterValue_InvalidSystemDiskSize = "InvalidParameterValue.InvalidSystemDiskSize"
        case invalidParameterValue_InvalidSystemDiskType = "InvalidParameterValue.InvalidSystemDiskType"
        case invalidParameterValue_InvalidTime = "InvalidParameterValue.InvalidTime"
        case invalidParameterValue_InvalidZone = "InvalidParameterValue.InvalidZone"
        case invalidParameterValue_InvalidZoneInstanceCount = "InvalidParameterValue.InvalidZoneInstanceCount"
        case invalidParameterValue_InvalidZoneInstanceType = "InvalidParameterValue.InvalidZoneInstanceType"
        case invalidParameterValue_Length = "InvalidParameterValue.Length"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_Malformed = "InvalidParameterValue.Malformed"
        case invalidParameterValue_ModuleNotAllowChange = "InvalidParameterValue.ModuleNotAllowChange"
        case invalidParameterValue_NodeNotSupportIPv6 = "InvalidParameterValue.NodeNotSupportIPv6"
        case invalidParameterValue_ObjectNotCurrentSubnet = "InvalidParameterValue.ObjectNotCurrentSubnet"
        case invalidParameterValue_ObjectVpcNotCurrentVpc = "InvalidParameterValue.ObjectVpcNotCurrentVpc"
        case invalidParameterValue_ParameterValueTooLarge = "InvalidParameterValue.ParameterValueTooLarge"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameterValue_Reserved = "InvalidParameterValue.Reserved"
        case invalidParameterValue_SubnetConflict = "InvalidParameterValue.SubnetConflict"
        case invalidParameterValue_SubnetNotExist = "InvalidParameterValue.SubnetNotExist"
        case invalidParameterValue_SubnetRange = "InvalidParameterValue.SubnetRange"
        case invalidParameterValue_TagNumOutOfRange = "InvalidParameterValue.TagNumOutOfRange"
        case invalidParameterValue_TaskNotFound = "InvalidParameterValue.TaskNotFound"
        case invalidParameterValue_TerminateTimeSmaller = "InvalidParameterValue.TerminateTimeSmaller"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_UnmatchedBillingType = "InvalidParameterValue.UnmatchedBillingType"
        case invalidParameterValue_UnsupportedRegion = "InvalidParameterValue.UnsupportedRegion"
        case invalidParameterValue_UserNotSupportIPv6 = "InvalidParameterValue.UserNotSupportIPv6"
        case invalidParameterValue_VpcCidrConflict = "InvalidParameterValue.VpcCidrConflict"
        case invalidParameter_Coexist = "InvalidParameter.Coexist"
        case invalidParameter_DiskConfigNotSupported = "InvalidParameter.DiskConfigNotSupported"
        case invalidParameter_FormatError = "InvalidParameter.FormatError"
        case invalidParameter_InvalidDataFormat = "InvalidParameter.InvalidDataFormat"
        case invalidParameter_InvalidParameterConflict = "InvalidParameter.InvalidParameterConflict"
        case invalidParameter_LBIdNotFound = "InvalidParameter.LBIdNotFound"
        case invalidParameter_ListenerIdNotFound = "InvalidParameter.ListenerIdNotFound"
        case invalidParameter_LocationNotFound = "InvalidParameter.LocationNotFound"
        case invalidParameter_ParameterConflict = "InvalidParameter.ParameterConflict"
        case invalidParameter_PortCheckFailed = "InvalidParameter.PortCheckFailed"
        case invalidParameter_ProjectIdNotExist = "InvalidParameter.ProjectIdNotExist"
        case invalidParameter_ProtocolCheckFailed = "InvalidParameter.ProtocolCheckFailed"
        case invalidParameter_RegionNotFound = "InvalidParameter.RegionNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AddressQuotaLimitExceeded = "LimitExceeded.AddressQuotaLimitExceeded"
        case limitExceeded_AddressQuotaLimitExceededDailyAllocate = "LimitExceeded.AddressQuotaLimitExceededDailyAllocate"
        case limitExceeded_AttachedDiskLimitExceeded = "LimitExceeded.AttachedDiskLimitExceeded"
        case limitExceeded_CidrBlock = "LimitExceeded.CidrBlock"
        case limitExceeded_EniQuotaLimitExceeded = "LimitExceeded.EniQuotaLimitExceeded"
        case limitExceeded_InstanceSecurityGroupLimitExceeded = "LimitExceeded.InstanceSecurityGroupLimitExceeded"
        case limitExceeded_LBLimitExceeded = "LimitExceeded.LBLimitExceeded"
        case limitExceeded_ModuleSecurityGroupLimitExceeded = "LimitExceeded.ModuleSecurityGroupLimitExceeded"
        case limitExceeded_NicOrIPLimitExceeded = "LimitExceeded.NicOrIPLimitExceeded"
        case limitExceeded_PrivateIPQuotaLimitExceeded = "LimitExceeded.PrivateIPQuotaLimitExceeded"
        case limitExceeded_SecurityGroupInstanceLimitExceeded = "LimitExceeded.SecurityGroupInstanceLimitExceeded"
        case limitExceeded_SecurityGroupModuleLimitExceeded = "LimitExceeded.SecurityGroupModuleLimitExceeded"
        case limitExceeded_SecurityGroupPolicySet = "LimitExceeded.SecurityGroupPolicySet"
        case limitExceeded_VcpuLimitExceeded = "LimitExceeded.VcpuLimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_MissingAssociateEntity = "MissingParameter.MissingAssociateEntity"
        case missingParameter_MissingBaseConfigParameter = "MissingParameter.MissingBaseConfigParameter"
        case missingParameter_MissingImageParameter = "MissingParameter.MissingImageParameter"
        case missingParameter_MissingInstanceTypeConfigParameter = "MissingParameter.MissingInstanceTypeConfigParameter"
        case missingParameter_MissingInstancesParameter = "MissingParameter.MissingInstancesParameter"
        case missingParameter_MissingModuleParameter = "MissingParameter.MissingModuleParameter"
        case missingParameter_MissingNetworkInterfaceParameter = "MissingParameter.MissingNetworkInterfaceParameter"
        case missingParameter_MissingNodeParameter = "MissingParameter.MissingNodeParameter"
        case missingParameter_MissingOverViewParameter = "MissingParameter.MissingOverViewParameter"
        case missingParameter_MissingPrivateIpAddress = "MissingParameter.MissingPrivateIpAddress"
        case operationDenied_InstanceOperationInProgress = "OperationDenied.InstanceOperationInProgress"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_IPQuotaNotEnough = "ResourceInsufficient.IPQuotaNotEnough"
        case resourceInsufficient_InstanceQuotaNotEnough = "ResourceInsufficient.InstanceQuotaNotEnough"
        case resourceInsufficient_InvaildPrivateImageNum = "ResourceInsufficient.InvaildPrivateImageNum"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_InstanceNotExist = "ResourceNotFound.InstanceNotExist"
        case resourceNotFound_NotFound = "ResourceNotFound.NotFound"
        case resourceUnavailable_Attached = "ResourceUnavailable.Attached"
        case resourceUnavailable_Expire = "ResourceUnavailable.Expire"
        case resourceUnavailable_InstanceNotRunning = "ResourceUnavailable.InstanceNotRunning"
        case resourceUnavailable_NotPortable = "ResourceUnavailable.NotPortable"
        case resourceUnavailable_NotSupported = "ResourceUnavailable.NotSupported"
        case resourceUnavailable_RepeatRefund = "ResourceUnavailable.RepeatRefund"
        case resourceUnavailable_TypeError = "ResourceUnavailable.TypeError"
        case resourcesSoldOut_LoadBalancerSoldOut = "ResourcesSoldOut.LoadBalancerSoldOut"
        case resourcesSoldOut_SpecifiedInstanceType = "ResourcesSoldOut.SpecifiedInstanceType"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_ForbiddenOperation = "UnauthorizedOperation.ForbiddenOperation"
        case unauthorizedOperation_MFAExpired = "UnauthorizedOperation.MFAExpired"
        case unauthorizedOperation_NotCertification = "UnauthorizedOperation.NotCertification"
        case unauthorizedOperation_NotHavePaymentRight = "UnauthorizedOperation.NotHavePaymentRight"
        case unauthorizedOperation_WindowsImage = "UnauthorizedOperation.WindowsImage"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AddressIdNotFound = "UnsupportedOperation.AddressIdNotFound"
        case unsupportedOperation_AlreadyBindEip = "UnsupportedOperation.AlreadyBindEip"
        case unsupportedOperation_AttachmentAlreadyExists = "UnsupportedOperation.AttachmentAlreadyExists"
        case unsupportedOperation_AttachmentNotFound = "UnsupportedOperation.AttachmentNotFound"
        case unsupportedOperation_DelDefaultRoute = "UnsupportedOperation.DelDefaultRoute"
        case unsupportedOperation_DelRouteWithSubnet = "UnsupportedOperation.DelRouteWithSubnet"
        case unsupportedOperation_DuplicatePolicy = "UnsupportedOperation.DuplicatePolicy"
        case unsupportedOperation_Ecmp = "UnsupportedOperation.Ecmp"
        case unsupportedOperation_EcmpWithCcnRoute = "UnsupportedOperation.EcmpWithCcnRoute"
        case unsupportedOperation_EcmpWithUserRoute = "UnsupportedOperation.EcmpWithUserRoute"
        case unsupportedOperation_InstanceIdNotFound = "UnsupportedOperation.InstanceIdNotFound"
        case unsupportedOperation_InstanceIdNotSupported = "UnsupportedOperation.InstanceIdNotSupported"
        case unsupportedOperation_InstanceTypeNotSupportImage = "UnsupportedOperation.InstanceTypeNotSupportImage"
        case unsupportedOperation_InvalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
        case unsupportedOperation_InvalidNetworkInterfaceIdNotFound = "UnsupportedOperation.InvalidNetworkInterfaceIdNotFound"
        case unsupportedOperation_InvalidPrivateIpAddressAlreadyBindEip = "UnsupportedOperation.InvalidPrivateIpAddressAlreadyBindEip"
        case unsupportedOperation_InvalidState = "UnsupportedOperation.InvalidState"
        case unsupportedOperation_Malformed = "UnsupportedOperation.Malformed"
        case unsupportedOperation_MutexOperationTaskRunning = "UnsupportedOperation.MutexOperationTaskRunning"
        case unsupportedOperation_QuotaLimitExceeded = "UnsupportedOperation.QuotaLimitExceeded"
        case unsupportedOperation_SnapHasShared = "UnsupportedOperation.SnapHasShared"
        case unsupportedOperation_SnapshotHasBindedImage = "UnsupportedOperation.SnapshotHasBindedImage"
        case unsupportedOperation_StatusNotPermit = "UnsupportedOperation.StatusNotPermit"
        case unsupportedOperation_SystemRoute = "UnsupportedOperation.SystemRoute"
        case unsupportedOperation_VersionMismatch = "UnsupportedOperation.VersionMismatch"
        case unsupportedOperation_VpcMismatch = "UnsupportedOperation.VpcMismatch"
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
    
    /// 鉴权失败。
    public static var authFailure_UnauthorizedOperation: TCEcmError {
        TCEcmError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCEcmError {
        TCEcmError(.failedOperation)
    }
    
    /// 余额不足。
    public static var failedOperation_BlockBalance: TCEcmError {
        TCEcmError(.failedOperation_BlockBalance)
    }
    
    /// 数据操作失败。
    public static var failedOperation_DataOperationFailed: TCEcmError {
        TCEcmError(.failedOperation_DataOperationFailed)
    }
    
    /// FailedOperation.DiskAttached
    public static var failedOperation_DiskAttached: TCEcmError {
        TCEcmError(.failedOperation_DiskAttached)
    }
    
    /// 镜像正在使用中。
    public static var failedOperation_ImageInUse: TCEcmError {
        TCEcmError(.failedOperation_ImageInUse)
    }
    
    /// 模块下存在实例。
    public static var failedOperation_InstanceInModule: TCEcmError {
        TCEcmError(.failedOperation_InstanceInModule)
    }
    
    /// 实例没有全部关机。
    public static var failedOperation_InstanceNotAllStopped: TCEcmError {
        TCEcmError(.failedOperation_InstanceNotAllStopped)
    }
    
    /// 实例不属于当前模块。
    public static var failedOperation_InstanceOwnerCheckFailed: TCEcmError {
        TCEcmError(.failedOperation_InstanceOwnerCheckFailed)
    }
    
    /// 内部操作错误。
    public static var failedOperation_InternalOperationFailure: TCEcmError {
        TCEcmError(.failedOperation_InternalOperationFailure)
    }
    
    /// 当前状态无法执行该操作。
    public static var failedOperation_InvalidStatus: TCEcmError {
        TCEcmError(.failedOperation_InvalidStatus)
    }
    
    /// 其他操作正在运行，无法进行当前操作。
    public static var failedOperation_OperationConflict: TCEcmError {
        TCEcmError(.failedOperation_OperationConflict)
    }
    
    /// 不允许执行当前操作。
    public static var failedOperation_OperationNotAllow: TCEcmError {
        TCEcmError(.failedOperation_OperationNotAllow)
    }
    
    /// 该内网IP已经绑定了弹性IP。
    public static var failedOperation_PrivateIpAddressBinded: TCEcmError {
        TCEcmError(.failedOperation_PrivateIpAddressBinded)
    }
    
    /// 内网IP状态非可用状态。
    public static var failedOperation_PrivateIpAddressUnavailable: TCEcmError {
        TCEcmError(.failedOperation_PrivateIpAddressUnavailable)
    }
    
    /// 内部错误。
    public static var internalError: TCEcmError {
        TCEcmError(.internalError)
    }
    
    /// InternalError.ComponentError
    public static var internalError_ComponentError: TCEcmError {
        TCEcmError(.internalError_ComponentError)
    }
    
    /// InternalError.FailQueryResource
    public static var internalError_FailQueryResource: TCEcmError {
        TCEcmError(.internalError_FailQueryResource)
    }
    
    /// InternalError.ResourceOpFailed
    public static var internalError_ResourceOpFailed: TCEcmError {
        TCEcmError(.internalError_ResourceOpFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEcmError {
        TCEcmError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEcmError {
        TCEcmError(.invalidParameterValue)
    }
    
    /// 申请数量超限。
    public static var invalidParameterValue_AddressQuotaLimitExceeded: TCEcmError {
        TCEcmError(.invalidParameterValue_AddressQuotaLimitExceeded)
    }
    
    /// 超多带宽限制。
    public static var invalidParameterValue_BandwidthOutOfRange: TCEcmError {
        TCEcmError(.invalidParameterValue_BandwidthOutOfRange)
    }
    
    /// 目的网段不在对端VPC的CIDR范围内。
    public static var invalidParameterValue_CidrNotInPeerVpc: TCEcmError {
        TCEcmError(.invalidParameterValue_CidrNotInPeerVpc)
    }
    
    /// 重复数据。
    public static var invalidParameterValue_Duplicate: TCEcmError {
        TCEcmError(.invalidParameterValue_Duplicate)
    }
    
    /// Filter参数数值超过限制。
    public static var invalidParameterValue_FilterLimitExceeded: TCEcmError {
        TCEcmError(.invalidParameterValue_FilterLimitExceeded)
    }
    
    /// 镜像已导入。
    public static var invalidParameterValue_ImageDuplicate: TCEcmError {
        TCEcmError(.invalidParameterValue_ImageDuplicate)
    }
    
    /// 镜像名称重复。
    public static var invalidParameterValue_ImageNameDuplicate: TCEcmError {
        TCEcmError(.invalidParameterValue_ImageNameDuplicate)
    }
    
    /// 镜像大小大于系统盘大小。
    public static var invalidParameterValue_ImageSizeLargeThanSysDiskSize: TCEcmError {
        TCEcmError(.invalidParameterValue_ImageSizeLargeThanSysDiskSize)
    }
    
    /// 实例配置不匹配。
    public static var invalidParameterValue_InstanceConfigNotMatch: TCEcmError {
        TCEcmError(.invalidParameterValue_InstanceConfigNotMatch)
    }
    
    /// 实例不支持当前操作。
    public static var invalidParameterValue_InstanceIdNotSupported: TCEcmError {
        TCEcmError(.invalidParameterValue_InstanceIdNotSupported)
    }
    
    /// 实例名字长度超出限制。
    public static var invalidParameterValue_InstanceNameTooLong: TCEcmError {
        TCEcmError(.invalidParameterValue_InstanceNameTooLong)
    }
    
    /// 实例机型和pid不匹配。
    public static var invalidParameterValue_InstanceTypeNotMatchPid: TCEcmError {
        TCEcmError(.invalidParameterValue_InstanceTypeNotMatchPid)
    }
    
    /// InvalidParameterValue.InsufficientRefundQuota
    public static var invalidParameterValue_InsufficientRefundQuota: TCEcmError {
        TCEcmError(.invalidParameterValue_InsufficientRefundQuota)
    }
    
    /// 无效的EIP。
    public static var invalidParameterValue_InvaildAddressId: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildAddressId)
    }
    
    /// 您的输入有误或无相应的操作权限。
    public static var invalidParameterValue_InvaildDescribeInstance: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildDescribeInstance)
    }
    
    /// 无效的弹性网卡ID。
    public static var invalidParameterValue_InvaildEniID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildEniID)
    }
    
    /// HostName不合法。
    public static var invalidParameterValue_InvaildHostName: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildHostName)
    }
    
    /// 参数错误。
    public static var invalidParameterValue_InvaildModifyParam: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildModifyParam)
    }
    
    /// 模块数量不合法。
    public static var invalidParameterValue_InvaildModuleNum: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildModuleNum)
    }
    
    /// 分页参数不合法。
    public static var invalidParameterValue_InvaildPageParam: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildPageParam)
    }
    
    /// 密码不合法。
    public static var invalidParameterValue_InvaildPassword: TCEcmError {
        TCEcmError(.invalidParameterValue_InvaildPassword)
    }
    
    /// 当同步绑定弹性网卡时，一次只能申请单个弹性IP。
    public static var invalidParameterValue_InvalidAddressCount: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidAddressCount)
    }
    
    /// 带宽大小不合法。
    public static var invalidParameterValue_InvalidBandwidth: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidBandwidth)
    }
    
    /// 入带宽大小超过限额。
    public static var invalidParameterValue_InvalidBandwidthIn: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidBandwidthIn)
    }
    
    /// 出入带宽必须一致。
    public static var invalidParameterValue_InvalidBandwidthInAndOut: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidBandwidthInAndOut)
    }
    
    /// 该用户不支持当前所选择的计费类型。
    public static var invalidParameterValue_InvalidBillingType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidBillingType)
    }
    
    /// 数据盘个数不合法。
    public static var invalidParameterValue_InvalidDataDiskNum: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDataDiskNum)
    }
    
    /// 数据盘大小不合法。
    public static var invalidParameterValue_InvalidDataDiskSize: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDataDiskSize)
    }
    
    /// 数据盘类型不合法。
    public static var invalidParameterValue_InvalidDataDiskType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDataDiskType)
    }
    
    /// InvalidParameterValue.InvalidDisk
    public static var invalidParameterValue_InvalidDisk: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDisk)
    }
    
    /// InvalidParameterValue.InvalidDiskId
    public static var invalidParameterValue_InvalidDiskId: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDiskId)
    }
    
    /// InvalidParameterValue.InvalidDiskType
    public static var invalidParameterValue_InvalidDiskType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidDiskType)
    }
    
    /// windows镜像不支持IP直通。
    public static var invalidParameterValue_InvalidEIPDirectService: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidEIPDirectService)
    }
    
    /// 地域参数不合法。
    public static var invalidParameterValue_InvalidEcmRegion: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidEcmRegion)
    }
    
    /// 无效过滤器。
    public static var invalidParameterValue_InvalidFilter: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidFilter)
    }
    
    /// 运营商不合法。
    public static var invalidParameterValue_InvalidISPInNode: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidISPInNode)
    }
    
    /// 内存4G以上机型不支持32位操作系统镜像。
    public static var invalidParameterValue_InvalidImageArchitecture: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidImageArchitecture)
    }
    
    /// 镜像ID不合法。
    public static var invalidParameterValue_InvalidImageID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidImageID)
    }
    
    /// 实例计费类型不合法。
    public static var invalidParameterValue_InvalidInstanceChargeType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidInstanceChargeType)
    }
    
    /// 实例ID不合法。
    public static var invalidParameterValue_InvalidInstanceID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidInstanceID)
    }
    
    /// 不支持调整高IO机型配置。
    public static var invalidParameterValue_InvalidInstanceType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidInstanceType)
    }
    
    /// 机型ID不合法。
    public static var invalidParameterValue_InvalidInstanceTypeConfigID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidInstanceTypeConfigID)
    }
    
    /// 计费类型不合法。
    public static var invalidParameterValue_InvalidInternetChargeType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidInternetChargeType)
    }
    
    /// 秘钥ID无效。
    public static var invalidParameterValue_InvalidKeyPairId: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidKeyPairId)
    }
    
    /// 秘钥名称异常。
    ///
    /// 请检查实例ID是否重复
    public static var invalidParameterValue_InvalidKeyPairName: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidKeyPairName)
    }
    
    /// 负载均衡数量不合法。
    public static var invalidParameterValue_InvalidLoadBalancerNum: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidLoadBalancerNum)
    }
    
    /// 负载均衡类型不合法。
    public static var invalidParameterValue_InvalidLoadBalancerType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidLoadBalancerType)
    }
    
    /// 模块ID不合法。
    public static var invalidParameterValue_InvalidModuleID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidModuleID)
    }
    
    /// ModuleId和InstanceType参数不可同时为空。
    public static var invalidParameterValue_InvalidModuleIDAndInstanceTypeConfigID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidModuleIDAndInstanceTypeConfigID)
    }
    
    /// ModuleId和InstanceType参数不可同时为空。
    public static var invalidParameterValue_InvalidModuleIDAndInstanceTypeID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidModuleIDAndInstanceTypeID)
    }
    
    /// 模块名称冲突。
    public static var invalidParameterValue_InvalidModuleName: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidModuleName)
    }
    
    /// 排序字段不合法。
    public static var invalidParameterValue_InvalidOrderByField: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidOrderByField)
    }
    
    /// 公共参数不合法。
    public static var invalidParameterValue_InvalidPublicParam: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidPublicParam)
    }
    
    /// ecm region不合法。
    public static var invalidParameterValue_InvalidRegion: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidRegion)
    }
    
    /// 全组ID不合法。
    public static var invalidParameterValue_InvalidSecurityGroupID: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidSecurityGroupID)
    }
    
    /// InvalidParameterValue.InvalidSnapshot
    public static var invalidParameterValue_InvalidSnapshot: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidSnapshot)
    }
    
    /// InvalidParameterValue.InvalidSnapshotId
    public static var invalidParameterValue_InvalidSnapshotId: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidSnapshotId)
    }
    
    /// 系统盘大小不合法。
    public static var invalidParameterValue_InvalidSystemDiskSize: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidSystemDiskSize)
    }
    
    /// 系统盘类型不合法。
    public static var invalidParameterValue_InvalidSystemDiskType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidSystemDiskType)
    }
    
    /// 时间不合法。
    public static var invalidParameterValue_InvalidTime: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidTime)
    }
    
    /// zone不合法。
    public static var invalidParameterValue_InvalidZone: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidZone)
    }
    
    /// 城市或者数量不合法。
    public static var invalidParameterValue_InvalidZoneInstanceCount: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidZoneInstanceCount)
    }
    
    /// 用区不支持此机型。
    public static var invalidParameterValue_InvalidZoneInstanceType: TCEcmError {
        TCEcmError(.invalidParameterValue_InvalidZoneInstanceType)
    }
    
    /// 参数长度错误。
    public static var invalidParameterValue_Length: TCEcmError {
        TCEcmError(.invalidParameterValue_Length)
    }
    
    /// 参数值超出限制。
    public static var invalidParameterValue_LimitExceeded: TCEcmError {
        TCEcmError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 入参格式不合法。
    public static var invalidParameterValue_Malformed: TCEcmError {
        TCEcmError(.invalidParameterValue_Malformed)
    }
    
    /// 已有实例的边缘模块不支持调整默认配置。
    public static var invalidParameterValue_ModuleNotAllowChange: TCEcmError {
        TCEcmError(.invalidParameterValue_ModuleNotAllowChange)
    }
    
    /// 节点不支持ipv6。
    public static var invalidParameterValue_NodeNotSupportIPv6: TCEcmError {
        TCEcmError(.invalidParameterValue_NodeNotSupportIPv6)
    }
    
    /// 对象不在当前子网内。
    public static var invalidParameterValue_ObjectNotCurrentSubnet: TCEcmError {
        TCEcmError(.invalidParameterValue_ObjectNotCurrentSubnet)
    }
    
    /// 指定对象不是当前的私有网络。
    public static var invalidParameterValue_ObjectVpcNotCurrentVpc: TCEcmError {
        TCEcmError(.invalidParameterValue_ObjectVpcNotCurrentVpc)
    }
    
    /// 参数值超出限制。
    public static var invalidParameterValue_ParameterValueTooLarge: TCEcmError {
        TCEcmError(.invalidParameterValue_ParameterValueTooLarge)
    }
    
    /// 参数值不在指定范围。
    public static var invalidParameterValue_Range: TCEcmError {
        TCEcmError(.invalidParameterValue_Range)
    }
    
    /// 参数值是一个系统保留对象。
    public static var invalidParameterValue_Reserved: TCEcmError {
        TCEcmError(.invalidParameterValue_Reserved)
    }
    
    /// 指定CIDR与同一个私有网络内的另一个子网发生冲突。
    public static var invalidParameterValue_SubnetConflict: TCEcmError {
        TCEcmError(.invalidParameterValue_SubnetConflict)
    }
    
    /// 更换子网。
    public static var invalidParameterValue_SubnetNotExist: TCEcmError {
        TCEcmError(.invalidParameterValue_SubnetNotExist)
    }
    
    /// 无效的子网网段。
    public static var invalidParameterValue_SubnetRange: TCEcmError {
        TCEcmError(.invalidParameterValue_SubnetRange)
    }
    
    /// 标签数量超过限制。
    public static var invalidParameterValue_TagNumOutOfRange: TCEcmError {
        TCEcmError(.invalidParameterValue_TagNumOutOfRange)
    }
    
    /// 无法找到任务。
    public static var invalidParameterValue_TaskNotFound: TCEcmError {
        TCEcmError(.invalidParameterValue_TaskNotFound)
    }
    
    /// 定时销毁时间早于当前时间。
    public static var invalidParameterValue_TerminateTimeSmaller: TCEcmError {
        TCEcmError(.invalidParameterValue_TerminateTimeSmaller)
    }
    
    /// 参数值太长。
    public static var invalidParameterValue_TooLong: TCEcmError {
        TCEcmError(.invalidParameterValue_TooLong)
    }
    
    /// 该机型不支持当前所选择的计费类型。
    public static var invalidParameterValue_UnmatchedBillingType: TCEcmError {
        TCEcmError(.invalidParameterValue_UnmatchedBillingType)
    }
    
    /// 不支持该区域。
    public static var invalidParameterValue_UnsupportedRegion: TCEcmError {
        TCEcmError(.invalidParameterValue_UnsupportedRegion)
    }
    
    /// 用户不支持ipv6。
    public static var invalidParameterValue_UserNotSupportIPv6: TCEcmError {
        TCEcmError(.invalidParameterValue_UserNotSupportIPv6)
    }
    
    /// 目的网段和当前VPC的CIDR冲突。
    public static var invalidParameterValue_VpcCidrConflict: TCEcmError {
        TCEcmError(.invalidParameterValue_VpcCidrConflict)
    }
    
    /// 参数不支持同时指定。
    public static var invalidParameter_Coexist: TCEcmError {
        TCEcmError(.invalidParameter_Coexist)
    }
    
    /// InvalidParameter.DiskConfigNotSupported
    public static var invalidParameter_DiskConfigNotSupported: TCEcmError {
        TCEcmError(.invalidParameter_DiskConfigNotSupported)
    }
    
    /// 参数格式错误。
    public static var invalidParameter_FormatError: TCEcmError {
        TCEcmError(.invalidParameter_FormatError)
    }
    
    /// 数据格式不正确。
    public static var invalidParameter_InvalidDataFormat: TCEcmError {
        TCEcmError(.invalidParameter_InvalidDataFormat)
    }
    
    /// 指定的两个参数冲突，不能同时存在。 EIP只能绑定在实例上或指定网卡的指定内网 IP 上。
    public static var invalidParameter_InvalidParameterConflict: TCEcmError {
        TCEcmError(.invalidParameter_InvalidParameterConflict)
    }
    
    /// 负载均衡实例ID错误。
    public static var invalidParameter_LBIdNotFound: TCEcmError {
        TCEcmError(.invalidParameter_LBIdNotFound)
    }
    
    /// 监听器ID错误。
    public static var invalidParameter_ListenerIdNotFound: TCEcmError {
        TCEcmError(.invalidParameter_ListenerIdNotFound)
    }
    
    /// 查找不到符合条件的转发规则。
    public static var invalidParameter_LocationNotFound: TCEcmError {
        TCEcmError(.invalidParameter_LocationNotFound)
    }
    
    /// KeepImageLogin, Password, KeyIds 同时只能使用1个。
    public static var invalidParameter_ParameterConflict: TCEcmError {
        TCEcmError(.invalidParameter_ParameterConflict)
    }
    
    /// 监听器端口检查失败，比如端口冲突。
    public static var invalidParameter_PortCheckFailed: TCEcmError {
        TCEcmError(.invalidParameter_PortCheckFailed)
    }
    
    /// InvalidParameter.ProjectIdNotExist
    public static var invalidParameter_ProjectIdNotExist: TCEcmError {
        TCEcmError(.invalidParameter_ProjectIdNotExist)
    }
    
    /// 监听器协议检查失败，比如相关协议不支持对应操作。
    public static var invalidParameter_ProtocolCheckFailed: TCEcmError {
        TCEcmError(.invalidParameter_ProtocolCheckFailed)
    }
    
    /// 地域无效。
    public static var invalidParameter_RegionNotFound: TCEcmError {
        TCEcmError(.invalidParameter_RegionNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCEcmError {
        TCEcmError(.limitExceeded)
    }
    
    /// 申请数量超限。
    public static var limitExceeded_AddressQuotaLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_AddressQuotaLimitExceeded)
    }
    
    /// 申购次数不足，每个腾讯云账户每个地域每天申购次数为配额数*2 次。
    public static var limitExceeded_AddressQuotaLimitExceededDailyAllocate: TCEcmError {
        TCEcmError(.limitExceeded_AddressQuotaLimitExceededDailyAllocate)
    }
    
    /// LimitExceeded.AttachedDiskLimitExceeded
    public static var limitExceeded_AttachedDiskLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_AttachedDiskLimitExceeded)
    }
    
    /// 分配IPv6网段数量达到上限。
    public static var limitExceeded_CidrBlock: TCEcmError {
        TCEcmError(.limitExceeded_CidrBlock)
    }
    
    /// 网卡配额不足。
    public static var limitExceeded_EniQuotaLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_EniQuotaLimitExceeded)
    }
    
    /// 实例绑定的安全组超出限制。
    public static var limitExceeded_InstanceSecurityGroupLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_InstanceSecurityGroupLimitExceeded)
    }
    
    /// 申请的clb超过限制。
    public static var limitExceeded_LBLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_LBLimitExceeded)
    }
    
    /// 模块默认安全组数目限制。
    public static var limitExceeded_ModuleSecurityGroupLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_ModuleSecurityGroupLimitExceeded)
    }
    
    /// 弹性网卡或公网IP数超过CPU规定的限额。
    public static var limitExceeded_NicOrIPLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_NicOrIPLimitExceeded)
    }
    
    /// 内网IP超出限制。
    public static var limitExceeded_PrivateIPQuotaLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_PrivateIPQuotaLimitExceeded)
    }
    
    /// 安全组绑定的实例数超限。
    public static var limitExceeded_SecurityGroupInstanceLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_SecurityGroupInstanceLimitExceeded)
    }
    
    /// 安全组可关联模块数目限制。
    public static var limitExceeded_SecurityGroupModuleLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_SecurityGroupModuleLimitExceeded)
    }
    
    /// 安全组规则数量超过上限。
    public static var limitExceeded_SecurityGroupPolicySet: TCEcmError {
        TCEcmError(.limitExceeded_SecurityGroupPolicySet)
    }
    
    /// 申请的cpu核数超限。
    public static var limitExceeded_VcpuLimitExceeded: TCEcmError {
        TCEcmError(.limitExceeded_VcpuLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEcmError {
        TCEcmError(.missingParameter)
    }
    
    /// 缺少需关联的实体参数。
    public static var missingParameter_MissingAssociateEntity: TCEcmError {
        TCEcmError(.missingParameter_MissingAssociateEntity)
    }
    
    /// 获取基础配置请求参数不全。
    public static var missingParameter_MissingBaseConfigParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingBaseConfigParameter)
    }
    
    /// 镜像操作参数不全。
    public static var missingParameter_MissingImageParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingImageParameter)
    }
    
    /// 机型操作参数不全。
    public static var missingParameter_MissingInstanceTypeConfigParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingInstanceTypeConfigParameter)
    }
    
    /// 实例操作参数不全。
    public static var missingParameter_MissingInstancesParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingInstancesParameter)
    }
    
    /// 模块操作参数不全。
    public static var missingParameter_MissingModuleParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingModuleParameter)
    }
    
    /// 缺少网卡操作配置的请求参数。
    public static var missingParameter_MissingNetworkInterfaceParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingNetworkInterfaceParameter)
    }
    
    /// 节点操作参数不全。
    public static var missingParameter_MissingNodeParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingNodeParameter)
    }
    
    /// 获取概览页配置请求参数不全。
    public static var missingParameter_MissingOverViewParameter: TCEcmError {
        TCEcmError(.missingParameter_MissingOverViewParameter)
    }
    
    /// 缺少私有IP地址。
    public static var missingParameter_MissingPrivateIpAddress: TCEcmError {
        TCEcmError(.missingParameter_MissingPrivateIpAddress)
    }
    
    /// 不允许执行当前操作。
    public static var operationDenied_InstanceOperationInProgress: TCEcmError {
        TCEcmError(.operationDenied_InstanceOperationInProgress)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCEcmError {
        TCEcmError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCEcmError {
        TCEcmError(.resourceInsufficient)
    }
    
    /// IP资源不足。
    public static var resourceInsufficient_IPQuotaNotEnough: TCEcmError {
        TCEcmError(.resourceInsufficient_IPQuotaNotEnough)
    }
    
    /// 实例资源不足。
    public static var resourceInsufficient_InstanceQuotaNotEnough: TCEcmError {
        TCEcmError(.resourceInsufficient_InstanceQuotaNotEnough)
    }
    
    /// 私有镜像数量超出限制。
    public static var resourceInsufficient_InvaildPrivateImageNum: TCEcmError {
        TCEcmError(.resourceInsufficient_InvaildPrivateImageNum)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEcmError {
        TCEcmError(.resourceNotFound)
    }
    
    /// 实例不合法。
    public static var resourceNotFound_InstanceNotExist: TCEcmError {
        TCEcmError(.resourceNotFound_InstanceNotExist)
    }
    
    /// ResourceNotFound.NotFound
    public static var resourceNotFound_NotFound: TCEcmError {
        TCEcmError(.resourceNotFound_NotFound)
    }
    
    /// ResourceUnavailable.Attached
    public static var resourceUnavailable_Attached: TCEcmError {
        TCEcmError(.resourceUnavailable_Attached)
    }
    
    /// ResourceUnavailable.Expire
    public static var resourceUnavailable_Expire: TCEcmError {
        TCEcmError(.resourceUnavailable_Expire)
    }
    
    /// 实例未运行。
    public static var resourceUnavailable_InstanceNotRunning: TCEcmError {
        TCEcmError(.resourceUnavailable_InstanceNotRunning)
    }
    
    /// ResourceUnavailable.NotPortable
    public static var resourceUnavailable_NotPortable: TCEcmError {
        TCEcmError(.resourceUnavailable_NotPortable)
    }
    
    /// ResourceUnavailable.NotSupported
    public static var resourceUnavailable_NotSupported: TCEcmError {
        TCEcmError(.resourceUnavailable_NotSupported)
    }
    
    /// ResourceUnavailable.RepeatRefund
    public static var resourceUnavailable_RepeatRefund: TCEcmError {
        TCEcmError(.resourceUnavailable_RepeatRefund)
    }
    
    /// ResourceUnavailable.TypeError
    public static var resourceUnavailable_TypeError: TCEcmError {
        TCEcmError(.resourceUnavailable_TypeError)
    }
    
    /// 负载均衡资源已经售罄。
    public static var resourcesSoldOut_LoadBalancerSoldOut: TCEcmError {
        TCEcmError(.resourcesSoldOut_LoadBalancerSoldOut)
    }
    
    /// 更换机型或者可用区。
    public static var resourcesSoldOut_SpecifiedInstanceType: TCEcmError {
        TCEcmError(.resourcesSoldOut_SpecifiedInstanceType)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCEcmError {
        TCEcmError(.unauthorizedOperation)
    }
    
    /// 没有权限进行该操作。
    public static var unauthorizedOperation_ForbiddenOperation: TCEcmError {
        TCEcmError(.unauthorizedOperation_ForbiddenOperation)
    }
    
    /// UnauthorizedOperation.MFAExpired
    public static var unauthorizedOperation_MFAExpired: TCEcmError {
        TCEcmError(.unauthorizedOperation_MFAExpired)
    }
    
    /// UnauthorizedOperation.NotCertification
    public static var unauthorizedOperation_NotCertification: TCEcmError {
        TCEcmError(.unauthorizedOperation_NotCertification)
    }
    
    /// UnauthorizedOperation.NotHavePaymentRight
    public static var unauthorizedOperation_NotHavePaymentRight: TCEcmError {
        TCEcmError(.unauthorizedOperation_NotHavePaymentRight)
    }
    
    /// 无windows镜像权限。
    public static var unauthorizedOperation_WindowsImage: TCEcmError {
        TCEcmError(.unauthorizedOperation_WindowsImage)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEcmError {
        TCEcmError(.unsupportedOperation)
    }
    
    /// 未找到相关IP。
    public static var unsupportedOperation_AddressIdNotFound: TCEcmError {
        TCEcmError(.unsupportedOperation_AddressIdNotFound)
    }
    
    /// 指定实例已经绑定了EIP。需先解绑当前的EIP才能再次进行绑定操作。
    public static var unsupportedOperation_AlreadyBindEip: TCEcmError {
        TCEcmError(.unsupportedOperation_AlreadyBindEip)
    }
    
    /// 弹性网卡与实例是已关联的。
    public static var unsupportedOperation_AttachmentAlreadyExists: TCEcmError {
        TCEcmError(.unsupportedOperation_AttachmentAlreadyExists)
    }
    
    /// 实例是未关联的。
    public static var unsupportedOperation_AttachmentNotFound: TCEcmError {
        TCEcmError(.unsupportedOperation_AttachmentNotFound)
    }
    
    /// 禁止删除默认路由表。
    public static var unsupportedOperation_DelDefaultRoute: TCEcmError {
        TCEcmError(.unsupportedOperation_DelDefaultRoute)
    }
    
    /// 禁止删除已关联子网的路由表。
    public static var unsupportedOperation_DelRouteWithSubnet: TCEcmError {
        TCEcmError(.unsupportedOperation_DelRouteWithSubnet)
    }
    
    /// 安全组规则重复。
    public static var unsupportedOperation_DuplicatePolicy: TCEcmError {
        TCEcmError(.unsupportedOperation_DuplicatePolicy)
    }
    
    /// 不支持ECMP。
    public static var unsupportedOperation_Ecmp: TCEcmError {
        TCEcmError(.unsupportedOperation_Ecmp)
    }
    
    /// 和云联网的路由形成ECMP。
    public static var unsupportedOperation_EcmpWithCcnRoute: TCEcmError {
        TCEcmError(.unsupportedOperation_EcmpWithCcnRoute)
    }
    
    /// 和用户自定义的路由形成ECMP。
    public static var unsupportedOperation_EcmpWithUserRoute: TCEcmError {
        TCEcmError(.unsupportedOperation_EcmpWithUserRoute)
    }
    
    /// 无效实例ID。指定的实例ID不存在。
    public static var unsupportedOperation_InstanceIdNotFound: TCEcmError {
        TCEcmError(.unsupportedOperation_InstanceIdNotFound)
    }
    
    /// 不被支持的实例。
    public static var unsupportedOperation_InstanceIdNotSupported: TCEcmError {
        TCEcmError(.unsupportedOperation_InstanceIdNotSupported)
    }
    
    /// 当前机型不支持所选镜像。
    public static var unsupportedOperation_InstanceTypeNotSupportImage: TCEcmError {
        TCEcmError(.unsupportedOperation_InstanceTypeNotSupportImage)
    }
    
    /// 当前状态不能进行该操作。
    public static var unsupportedOperation_InvalidInstanceState: TCEcmError {
        TCEcmError(.unsupportedOperation_InvalidInstanceState)
    }
    
    /// 指定 NetworkInterfaceId 不存在或指定的PrivateIpAddress不在NetworkInterfaceId上。
    public static var unsupportedOperation_InvalidNetworkInterfaceIdNotFound: TCEcmError {
        TCEcmError(.unsupportedOperation_InvalidNetworkInterfaceIdNotFound)
    }
    
    /// 指定弹性网卡的指定内网IP已经绑定了EIP，不能重复绑定。
    public static var unsupportedOperation_InvalidPrivateIpAddressAlreadyBindEip: TCEcmError {
        TCEcmError(.unsupportedOperation_InvalidPrivateIpAddressAlreadyBindEip)
    }
    
    /// 资源状态不合法。
    public static var unsupportedOperation_InvalidState: TCEcmError {
        TCEcmError(.unsupportedOperation_InvalidState)
    }
    
    /// 请确认提供的IP地址是否完整。
    public static var unsupportedOperation_Malformed: TCEcmError {
        TCEcmError(.unsupportedOperation_Malformed)
    }
    
    /// 资源互斥操作任务正在执行。
    public static var unsupportedOperation_MutexOperationTaskRunning: TCEcmError {
        TCEcmError(.unsupportedOperation_MutexOperationTaskRunning)
    }
    
    /// 实例规格仅支持绑定三个EIP。
    public static var unsupportedOperation_QuotaLimitExceeded: TCEcmError {
        TCEcmError(.unsupportedOperation_QuotaLimitExceeded)
    }
    
    /// UnsupportedOperation.SnapHasShared
    public static var unsupportedOperation_SnapHasShared: TCEcmError {
        TCEcmError(.unsupportedOperation_SnapHasShared)
    }
    
    /// UnsupportedOperation.SnapshotHasBindedImage
    public static var unsupportedOperation_SnapshotHasBindedImage: TCEcmError {
        TCEcmError(.unsupportedOperation_SnapshotHasBindedImage)
    }
    
    /// 当前状态不能进行此操作。
    public static var unsupportedOperation_StatusNotPermit: TCEcmError {
        TCEcmError(.unsupportedOperation_StatusNotPermit)
    }
    
    /// 系统路由，禁止操作。
    public static var unsupportedOperation_SystemRoute: TCEcmError {
        TCEcmError(.unsupportedOperation_SystemRoute)
    }
    
    /// 指定安全组规则版本号和当前最新版本不一致。
    public static var unsupportedOperation_VersionMismatch: TCEcmError {
        TCEcmError(.unsupportedOperation_VersionMismatch)
    }
    
    /// 资源不属于同一个VPC。
    public static var unsupportedOperation_VpcMismatch: TCEcmError {
        TCEcmError(.unsupportedOperation_VpcMismatch)
    }
}

extension TCEcmError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCEcmError: Equatable {
    public static func == (lhs: TCEcmError, rhs: TCEcmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEcmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEcmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
