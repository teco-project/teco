public struct TCLighthouseError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_CreateBlueprintFailed = "FailedOperation.CreateBlueprintFailed"
        case failedOperation_CreateKeyPairFailed = "FailedOperation.CreateKeyPairFailed"
        case failedOperation_DeleteKeyPairFailed = "FailedOperation.DeleteKeyPairFailed"
        case failedOperation_FirewallRulesOperationFailed = "FailedOperation.FirewallRulesOperationFailed"
        case failedOperation_ImportKeyPairFailed = "FailedOperation.ImportKeyPairFailed"
        case failedOperation_InstanceOperationFailed = "FailedOperation.InstanceOperationFailed"
        case failedOperation_IsolateResourcesFailed = "FailedOperation.IsolateResourcesFailed"
        case failedOperation_ModifyInstancesBundleFailed = "FailedOperation.ModifyInstancesBundleFailed"
        case failedOperation_SnapshotOperationFailed = "FailedOperation.SnapshotOperationFailed"
        case failedOperation_UnableToCreateBlueprint = "FailedOperation.UnableToCreateBlueprint"
        case failedOperation_UnableToCreateInstances = "FailedOperation.UnableToCreateInstances"
        case internalError = "InternalError"
        case internalError_DescribeDisksReturnableError = "InternalError.DescribeDisksReturnableError"
        case internalError_DescribeInstanceStatus = "InternalError.DescribeInstanceStatus"
        case internalError_DescribeInstancesModification = "InternalError.DescribeInstancesModification"
        case internalError_DescribeInstancesModificationError = "InternalError.DescribeInstancesModificationError"
        case internalError_DescribeInstancesReturnableError = "InternalError.DescribeInstancesReturnableError"
        case internalError_DescribeInstancesTrafficPackagesFailed = "InternalError.DescribeInstancesTrafficPackagesFailed"
        case internalError_DescribeResourcesReturnableError = "InternalError.DescribeResourcesReturnableError"
        case internalError_GetSnapshotAllocQuotaLockError = "InternalError.GetSnapshotAllocQuotaLockError"
        case internalError_InvalidActionNotFound = "InternalError.InvalidActionNotFound"
        case internalError_InvalidBundlePrice = "InternalError.InvalidBundlePrice"
        case internalError_InvalidCommandNotFound = "InternalError.InvalidCommandNotFound"
        case internalError_RequestError = "InternalError.RequestError"
        case internalError_TradeCallBillingGatewayFailed = "InternalError.TradeCallBillingGatewayFailed"
        case internalError_TradeGetPriceFailed = "InternalError.TradeGetPriceFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BlueprintConfigNotMatch = "InvalidParameterValue.BlueprintConfigNotMatch"
        case invalidParameterValue_BlueprintId = "InvalidParameterValue.BlueprintId"
        case invalidParameterValue_BlueprintIdMalformed = "InvalidParameterValue.BlueprintIdMalformed"
        case invalidParameterValue_BundleAndBlueprintNotMatch = "InvalidParameterValue.BundleAndBlueprintNotMatch"
        case invalidParameterValue_CcnIdMalformed = "InvalidParameterValue.CcnIdMalformed"
        case invalidParameterValue_DiskNameTooLong = "InvalidParameterValue.DiskNameTooLong"
        case invalidParameterValue_DiskSizeNotMatch = "InvalidParameterValue.DiskSizeNotMatch"
        case invalidParameterValue_DuplicateParameterValue = "InvalidParameterValue.DuplicateParameterValue"
        case invalidParameterValue_Duplicated = "InvalidParameterValue.Duplicated"
        case invalidParameterValue_FirewallRuleDescriptionTooLong = "InvalidParameterValue.FirewallRuleDescriptionTooLong"
        case invalidParameterValue_InstanceIdMalformed = "InvalidParameterValue.InstanceIdMalformed"
        case invalidParameterValue_InstanceNameTooLong = "InvalidParameterValue.InstanceNameTooLong"
        case invalidParameterValue_InvalidBlueprintId = "InvalidParameterValue.InvalidBlueprintId"
        case invalidParameterValue_InvalidBlueprintPlatformType = "InvalidParameterValue.InvalidBlueprintPlatformType"
        case invalidParameterValue_InvalidBlueprintState = "InvalidParameterValue.InvalidBlueprintState"
        case invalidParameterValue_InvalidBlueprintType = "InvalidParameterValue.InvalidBlueprintType"
        case invalidParameterValue_InvalidBundle = "InvalidParameterValue.InvalidBundle"
        case invalidParameterValue_InvalidConsoleDisplayTypes = "InvalidParameterValue.InvalidConsoleDisplayTypes"
        case invalidParameterValue_InvalidDiskIdMalformed = "InvalidParameterValue.InvalidDiskIdMalformed"
        case invalidParameterValue_InvalidInstanceLoginKeyPairPermitLogin = "InvalidParameterValue.InvalidInstanceLoginKeyPairPermitLogin"
        case invalidParameterValue_InvalidIpFormat = "InvalidParameterValue.InvalidIpFormat"
        case invalidParameterValue_InvalidKeyPairNameEmpty = "InvalidParameterValue.InvalidKeyPairNameEmpty"
        case invalidParameterValue_InvalidKeyPairNameIncludeIllegalChar = "InvalidParameterValue.InvalidKeyPairNameIncludeIllegalChar"
        case invalidParameterValue_InvalidKeyPairNameTooLong = "InvalidParameterValue.InvalidKeyPairNameTooLong"
        case invalidParameterValue_InvalidParameterCombination = "InvalidParameterValue.InvalidParameterCombination"
        case invalidParameterValue_InvalidPassword = "InvalidParameterValue.InvalidPassword"
        case invalidParameterValue_InvalidResourceQuotaResourceName = "InvalidParameterValue.InvalidResourceQuotaResourceName"
        case invalidParameterValue_InvalidZone = "InvalidParameterValue.InvalidZone"
        case invalidParameterValue_KeyPairIdMalformed = "InvalidParameterValue.KeyPairIdMalformed"
        case invalidParameterValue_KeyPairPublicKeyDuplicated = "InvalidParameterValue.KeyPairPublicKeyDuplicated"
        case invalidParameterValue_KeyPairPublicKeyMalformed = "InvalidParameterValue.KeyPairPublicKeyMalformed"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_Negative = "InvalidParameterValue.Negative"
        case invalidParameterValue_NotAllowToChangePlatformType = "InvalidParameterValue.NotAllowToChangePlatformType"
        case invalidParameterValue_OutOfRange = "InvalidParameterValue.OutOfRange"
        case invalidParameterValue_SnapshotIdMalformed = "InvalidParameterValue.SnapshotIdMalformed"
        case invalidParameterValue_SnapshotNameTooLong = "InvalidParameterValue.SnapshotNameTooLong"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_ZoneInvalid = "InvalidParameterValue.ZoneInvalid"
        case invalidParameter_BundleAndBlueprintNotMatch = "InvalidParameter.BundleAndBlueprintNotMatch"
        case invalidParameter_BundleIdNotFound = "InvalidParameter.BundleIdNotFound"
        case invalidParameter_FilterValueLimitExceeded = "InvalidParameter.FilterValueLimitExceeded"
        case invalidParameter_FirewallRulesDuplicated = "InvalidParameter.FirewallRulesDuplicated"
        case invalidParameter_FirewallRulesExist = "InvalidParameter.FirewallRulesExist"
        case invalidParameter_InvalidFilter = "InvalidParameter.InvalidFilter"
        case invalidParameter_InvalidFilterInvalidKey = "InvalidParameter.InvalidFilterInvalidKey"
        case invalidParameter_InvalidFilterInvalidNameNotStr = "InvalidParameter.InvalidFilterInvalidNameNotStr"
        case invalidParameter_InvalidFilterInvalidValuesNotList = "InvalidParameter.InvalidFilterInvalidValuesNotList"
        case invalidParameter_InvalidFilterNotDict = "InvalidParameter.InvalidFilterNotDict"
        case invalidParameter_InvalidFilterNotSupportedName = "InvalidParameter.InvalidFilterNotSupportedName"
        case invalidParameter_OnlyAllowModifyOneAttribute = "InvalidParameter.OnlyAllowModifyOneAttribute"
        case invalidParameter_ParameterConflict = "InvalidParameter.ParameterConflict"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AttachDataDiskQuotaLimitExceeded = "LimitExceeded.AttachDataDiskQuotaLimitExceeded"
        case limitExceeded_FirewallRulesLimitExceeded = "LimitExceeded.FirewallRulesLimitExceeded"
        case limitExceeded_InstanceQuotaLimitExceeded = "LimitExceeded.InstanceQuotaLimitExceeded"
        case limitExceeded_IsolateResourcesLimitExceeded = "LimitExceeded.IsolateResourcesLimitExceeded"
        case limitExceeded_KeyPairLimitExceeded = "LimitExceeded.KeyPairLimitExceeded"
        case limitExceeded_SnapshotQuotaLimitExceeded = "LimitExceeded.SnapshotQuotaLimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied_BundleNotSupportModify = "OperationDenied.BundleNotSupportModify"
        case operationDenied_DiskCreating = "OperationDenied.DiskCreating"
        case operationDenied_DiskOperationInProgress = "OperationDenied.DiskOperationInProgress"
        case operationDenied_DiskUsageNotSupportOperation = "OperationDenied.DiskUsageNotSupportOperation"
        case operationDenied_InstanceCreating = "OperationDenied.InstanceCreating"
        case operationDenied_InstanceOperationInProgress = "OperationDenied.InstanceOperationInProgress"
        case operationDenied_OperationDeniedCreateSnapshotForStorageBundle = "OperationDenied.OperationDeniedCreateSnapshotForStorageBundle"
        case resourceInUse_KeyPairInUse = "ResourceInUse.KeyPairInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_BlueprintIdNotFound = "ResourceNotFound.BlueprintIdNotFound"
        case resourceNotFound_BlueprintNotFound = "ResourceNotFound.BlueprintNotFound"
        case resourceNotFound_DiskIdNotFound = "ResourceNotFound.DiskIdNotFound"
        case resourceNotFound_DiskNotFound = "ResourceNotFound.DiskNotFound"
        case resourceNotFound_FirewallNotFound = "ResourceNotFound.FirewallNotFound"
        case resourceNotFound_FirewallRulesNotFound = "ResourceNotFound.FirewallRulesNotFound"
        case resourceNotFound_InstanceDataDiskNotFound = "ResourceNotFound.InstanceDataDiskNotFound"
        case resourceNotFound_InstanceIdNotFound = "ResourceNotFound.InstanceIdNotFound"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_KeyIdNotFound = "ResourceNotFound.KeyIdNotFound"
        case resourceNotFound_PrivateBlueprintNotFound = "ResourceNotFound.PrivateBlueprintNotFound"
        case resourceNotFound_SnapshotIdNotFound = "ResourceNotFound.SnapshotIdNotFound"
        case resourceNotFound_SnapshotNotFound = "ResourceNotFound.SnapshotNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_BlueprintUnavailable = "ResourceUnavailable.BlueprintUnavailable"
        case resourceUnavailable_BundleUnavailable = "ResourceUnavailable.BundleUnavailable"
        case resourcesSoldOut_PurchaseSourceHasNoBundleConfigs = "ResourcesSoldOut.PurchaseSourceHasNoBundleConfigs"
        case resourcesSoldOut_ZonesHasNoBundleConfigs = "ResourcesSoldOut.ZonesHasNoBundleConfigs"
        case unauthorizedOperation_MFAExpired = "UnauthorizedOperation.MFAExpired"
        case unauthorizedOperation_MFANotFound = "UnauthorizedOperation.MFANotFound"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AttachCcnConditionUnsatisfied = "UnsupportedOperation.AttachCcnConditionUnsatisfied"
        case unsupportedOperation_AttachCcnFailed = "UnsupportedOperation.AttachCcnFailed"
        case unsupportedOperation_BlueprintCurStateInvalid = "UnsupportedOperation.BlueprintCurStateInvalid"
        case unsupportedOperation_BlueprintOccupied = "UnsupportedOperation.BlueprintOccupied"
        case unsupportedOperation_CcnAlreadyAttached = "UnsupportedOperation.CcnAlreadyAttached"
        case unsupportedOperation_CcnNotAttached = "UnsupportedOperation.CcnNotAttached"
        case unsupportedOperation_DescribeCcnAttachedInstancesFailed = "UnsupportedOperation.DescribeCcnAttachedInstancesFailed"
        case unsupportedOperation_DetachCcnFailed = "UnsupportedOperation.DetachCcnFailed"
        case unsupportedOperation_DiskBusy = "UnsupportedOperation.DiskBusy"
        case unsupportedOperation_DiskLatestOperationUnfinished = "UnsupportedOperation.DiskLatestOperationUnfinished"
        case unsupportedOperation_FirewallBusy = "UnsupportedOperation.FirewallBusy"
        case unsupportedOperation_FirewallVersionMismatch = "UnsupportedOperation.FirewallVersionMismatch"
        case unsupportedOperation_InstanceExpired = "UnsupportedOperation.InstanceExpired"
        case unsupportedOperation_InstanceLinuxUnixCreatingNotSupportPassword = "UnsupportedOperation.InstanceLinuxUnixCreatingNotSupportPassword"
        case unsupportedOperation_InvalidDiskState = "UnsupportedOperation.InvalidDiskState"
        case unsupportedOperation_InvalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
        case unsupportedOperation_InvalidSnapshotState = "UnsupportedOperation.InvalidSnapshotState"
        case unsupportedOperation_KeyPairBindDuplicate = "UnsupportedOperation.KeyPairBindDuplicate"
        case unsupportedOperation_KeyPairBindToBlueprints = "UnsupportedOperation.KeyPairBindToBlueprints"
        case unsupportedOperation_KeyPairNotBoundToInstance = "UnsupportedOperation.KeyPairNotBoundToInstance"
        case unsupportedOperation_LatestOperationUnfinished = "UnsupportedOperation.LatestOperationUnfinished"
        case unsupportedOperation_NotSupportSharedBlueprint = "UnsupportedOperation.NotSupportSharedBlueprint"
        case unsupportedOperation_PostDestroyResourceFailed = "UnsupportedOperation.PostDestroyResourceFailed"
        case unsupportedOperation_ResetAttachCcnFailed = "UnsupportedOperation.ResetAttachCcnFailed"
        case unsupportedOperation_ResourceNotReturnable = "UnsupportedOperation.ResourceNotReturnable"
        case unsupportedOperation_SnapshotBusy = "UnsupportedOperation.SnapshotBusy"
        case unsupportedOperation_SystemBusy = "UnsupportedOperation.SystemBusy"
        case unsupportedOperation_WindowsNotAllowToAssociateKeyPair = "UnsupportedOperation.WindowsNotAllowToAssociateKeyPair"
        case unsupportedOperation_WindowsNotSupportKeyPair = "UnsupportedOperation.WindowsNotSupportKeyPair"
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
    public static var authFailure: TCLighthouseError {
        TCLighthouseError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCLighthouseError {
        TCLighthouseError(.failedOperation)
    }
    
    /// 创建镜像失败。
    public static var failedOperation_CreateBlueprintFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_CreateBlueprintFailed)
    }
    
    /// 对密钥对的创建操作失败。
    public static var failedOperation_CreateKeyPairFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_CreateKeyPairFailed)
    }
    
    /// 对密钥对的删除操作失败。
    public static var failedOperation_DeleteKeyPairFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_DeleteKeyPairFailed)
    }
    
    /// 对防火墙规则的操作失败。
    public static var failedOperation_FirewallRulesOperationFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_FirewallRulesOperationFailed)
    }
    
    /// 对密钥对的导入操作失败。
    public static var failedOperation_ImportKeyPairFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_ImportKeyPairFailed)
    }
    
    /// 对实例的操作失败。
    public static var failedOperation_InstanceOperationFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_InstanceOperationFailed)
    }
    
    /// 退还资源失败。
    public static var failedOperation_IsolateResourcesFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_IsolateResourcesFailed)
    }
    
    public static var failedOperation_ModifyInstancesBundleFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_ModifyInstancesBundleFailed)
    }
    
    /// 快照操作失败。
    public static var failedOperation_SnapshotOperationFailed: TCLighthouseError {
        TCLighthouseError(.failedOperation_SnapshotOperationFailed)
    }
    
    /// 操作失败，不能创建自定义镜像。
    public static var failedOperation_UnableToCreateBlueprint: TCLighthouseError {
        TCLighthouseError(.failedOperation_UnableToCreateBlueprint)
    }
    
    /// 无法创建实例。
    ///
    /// 请稍后重试。
    public static var failedOperation_UnableToCreateInstances: TCLighthouseError {
        TCLighthouseError(.failedOperation_UnableToCreateInstances)
    }
    
    /// 内部错误。
    public static var internalError: TCLighthouseError {
        TCLighthouseError(.internalError)
    }
    
    /// 查询磁盘返回了不合法内容。
    public static var internalError_DescribeDisksReturnableError: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeDisksReturnableError)
    }
    
    /// 查询实例状态失败，请稍后重试。
    public static var internalError_DescribeInstanceStatus: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeInstanceStatus)
    }
    
    /// 查询实例是否可变配失败。
    public static var internalError_DescribeInstancesModification: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeInstancesModification)
    }
    
    /// 查询实例是否可变配失败。
    public static var internalError_DescribeInstancesModificationError: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeInstancesModificationError)
    }
    
    /// 查询实例是否可退还失败。
    public static var internalError_DescribeInstancesReturnableError: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeInstancesReturnableError)
    }
    
    /// 查询实例流量包错误。
    public static var internalError_DescribeInstancesTrafficPackagesFailed: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeInstancesTrafficPackagesFailed)
    }
    
    /// 查询资源返回了不符合要求内容。
    public static var internalError_DescribeResourcesReturnableError: TCLighthouseError {
        TCLighthouseError(.internalError_DescribeResourcesReturnableError)
    }
    
    /// 快照配额锁获取失败。
    public static var internalError_GetSnapshotAllocQuotaLockError: TCLighthouseError {
        TCLighthouseError(.internalError_GetSnapshotAllocQuotaLockError)
    }
    
    /// 无法找到此接口。
    ///
    /// 请确认接口是否存在。
    public static var internalError_InvalidActionNotFound: TCLighthouseError {
        TCLighthouseError(.internalError_InvalidActionNotFound)
    }
    
    /// 套餐价格错误。
    public static var internalError_InvalidBundlePrice: TCLighthouseError {
        TCLighthouseError(.internalError_InvalidBundlePrice)
    }
    
    /// 命令 <code>DescribeInstanceLoginKeyPair</code> 无法找到。
    public static var internalError_InvalidCommandNotFound: TCLighthouseError {
        TCLighthouseError(.internalError_InvalidCommandNotFound)
    }
    
    /// 请求出现错误。
    public static var internalError_RequestError: TCLighthouseError {
        TCLighthouseError(.internalError_RequestError)
    }
    
    /// 调用计费网关服务失败。
    ///
    /// 请稍后再次重试。
    public static var internalError_TradeCallBillingGatewayFailed: TCLighthouseError {
        TCLighthouseError(.internalError_TradeCallBillingGatewayFailed)
    }
    
    /// 价格获取失败。
    public static var internalError_TradeGetPriceFailed: TCLighthouseError {
        TCLighthouseError(.internalError_TradeGetPriceFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCLighthouseError {
        TCLighthouseError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue)
    }
    
    /// 该实例配置不符合指定镜像的要求。
    public static var invalidParameterValue_BlueprintConfigNotMatch: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_BlueprintConfigNotMatch)
    }
    
    /// 镜像 ID 不合法，重装实例不允许切换操作系统类型。
    public static var invalidParameterValue_BlueprintId: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_BlueprintId)
    }
    
    /// 参数值非法，镜像 ID 格式非法。
    public static var invalidParameterValue_BlueprintIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_BlueprintIdMalformed)
    }
    
    /// 一般是套餐内存或者系统盘大小不满足镜像要求，请更换套餐或者镜像。
    public static var invalidParameterValue_BundleAndBlueprintNotMatch: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_BundleAndBlueprintNotMatch)
    }
    
    /// 云联网实例ID格式非法。
    public static var invalidParameterValue_CcnIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_CcnIdMalformed)
    }
    
    /// 磁盘名称长度超出限制。
    public static var invalidParameterValue_DiskNameTooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_DiskNameTooLong)
    }
    
    /// 磁盘大小发生改变。
    public static var invalidParameterValue_DiskSizeNotMatch: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_DiskSizeNotMatch)
    }
    
    /// 参数 <code>KeyName</code> 已经存在且重复。
    public static var invalidParameterValue_DuplicateParameterValue: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_DuplicateParameterValue)
    }
    
    /// 参数值非法，不允许包含重复的值。
    public static var invalidParameterValue_Duplicated: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_Duplicated)
    }
    
    /// 防火墙规则描述长度超出限制。
    public static var invalidParameterValue_FirewallRuleDescriptionTooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_FirewallRuleDescriptionTooLong)
    }
    
    /// 参数值非法，实例 ID 格式非法。
    public static var invalidParameterValue_InstanceIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InstanceIdMalformed)
    }
    
    /// 参数值非法，实例名称超过允许的最大长度。
    public static var invalidParameterValue_InstanceNameTooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InstanceNameTooLong)
    }
    
    /// 镜像 ID 不合法。
    public static var invalidParameterValue_InvalidBlueprintId: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidBlueprintId)
    }
    
    /// 镜像操作系统类型不合法。
    public static var invalidParameterValue_InvalidBlueprintPlatformType: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidBlueprintPlatformType)
    }
    
    /// 镜像状态取值非法。
    public static var invalidParameterValue_InvalidBlueprintState: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidBlueprintState)
    }
    
    /// 镜像类型不合法。
    public static var invalidParameterValue_InvalidBlueprintType: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidBlueprintType)
    }
    
    /// 非法的套餐参数。
    ///
    /// 更换套餐。
    public static var invalidParameterValue_InvalidBundle: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidBundle)
    }
    
    /// 控制台显示类型不合法。
    public static var invalidParameterValue_InvalidConsoleDisplayTypes: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidConsoleDisplayTypes)
    }
    
    /// 参数值非法，磁盘 ID 格式非法。
    public static var invalidParameterValue_InvalidDiskIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidDiskIdMalformed)
    }
    
    /// 设置是否使用默认密钥对登录的值不正确。
    public static var invalidParameterValue_InvalidInstanceLoginKeyPairPermitLogin: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidInstanceLoginKeyPairPermitLogin)
    }
    
    /// 参数值非法，IP 地址格式非法。
    public static var invalidParameterValue_InvalidIpFormat: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidIpFormat)
    }
    
    /// 参数值非法。
    public static var invalidParameterValue_InvalidKeyPairNameEmpty: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidKeyPairNameEmpty)
    }
    
    /// 非法的密钥对名称。
    public static var invalidParameterValue_InvalidKeyPairNameIncludeIllegalChar: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidKeyPairNameIncludeIllegalChar)
    }
    
    /// 参数长度非法。
    public static var invalidParameterValue_InvalidKeyPairNameTooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidKeyPairNameTooLong)
    }
    
    /// 参数组合非法。
    public static var invalidParameterValue_InvalidParameterCombination: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidParameterCombination)
    }
    
    /// 参数中的密码不合法。
    public static var invalidParameterValue_InvalidPassword: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidPassword)
    }
    
    /// 不正确的配额资源名称。
    public static var invalidParameterValue_InvalidResourceQuotaResourceName: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidResourceQuotaResourceName)
    }
    
    /// 参数Zone的取值不合法。
    public static var invalidParameterValue_InvalidZone: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_InvalidZone)
    }
    
    /// 参数值非法，密钥对 ID 格式非法。
    public static var invalidParameterValue_KeyPairIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_KeyPairIdMalformed)
    }
    
    /// 该密钥对中的公钥在系统中已存在，无法重复使用 。
    public static var invalidParameterValue_KeyPairPublicKeyDuplicated: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_KeyPairPublicKeyDuplicated)
    }
    
    /// 指定的公钥格式错误。
    public static var invalidParameterValue_KeyPairPublicKeyMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_KeyPairPublicKeyMalformed)
    }
    
    /// 参数值非法，参数值的数量超过最大限制。
    public static var invalidParameterValue_LimitExceeded: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 参数值非法，不能为负值。
    public static var invalidParameterValue_Negative: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_Negative)
    }
    
    /// 不允许改变平台类型。
    public static var invalidParameterValue_NotAllowToChangePlatformType: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_NotAllowToChangePlatformType)
    }
    
    /// 参数值非法，不在合法范围内。
    public static var invalidParameterValue_OutOfRange: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_OutOfRange)
    }
    
    /// 参数值非法，快照 ID 格式非法。
    public static var invalidParameterValue_SnapshotIdMalformed: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_SnapshotIdMalformed)
    }
    
    /// 参数值非法，快照名称超过允许的最大长度。
    public static var invalidParameterValue_SnapshotNameTooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_SnapshotNameTooLong)
    }
    
    /// 参数取值过长，超过最大长度。
    public static var invalidParameterValue_TooLong: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_TooLong)
    }
    
    /// 非法的可用区。
    public static var invalidParameterValue_ZoneInvalid: TCLighthouseError {
        TCLighthouseError(.invalidParameterValue_ZoneInvalid)
    }
    
    /// 套餐和镜像不匹配。
    ///
    /// 更换套餐或者更换镜像。
    public static var invalidParameter_BundleAndBlueprintNotMatch: TCLighthouseError {
        TCLighthouseError(.invalidParameter_BundleAndBlueprintNotMatch)
    }
    
    /// 产品未定义的套餐 ID。
    public static var invalidParameter_BundleIdNotFound: TCLighthouseError {
        TCLighthouseError(.invalidParameter_BundleIdNotFound)
    }
    
    /// 参数非法，Filter 参数中的 Values 取值数量超过允许的最大数量。
    public static var invalidParameter_FilterValueLimitExceeded: TCLighthouseError {
        TCLighthouseError(.invalidParameter_FilterValueLimitExceeded)
    }
    
    /// 参数非法，防火墙规则重复。
    public static var invalidParameter_FirewallRulesDuplicated: TCLighthouseError {
        TCLighthouseError(.invalidParameter_FirewallRulesDuplicated)
    }
    
    /// 参数非法，防火墙规则已存在。
    public static var invalidParameter_FirewallRulesExist: TCLighthouseError {
        TCLighthouseError(.invalidParameter_FirewallRulesExist)
    }
    
    /// 参数非法，Filter 参数非法。
    public static var invalidParameter_InvalidFilter: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilter)
    }
    
    /// 参数非法，Filter 参数中的 Name 取值非法。
    public static var invalidParameter_InvalidFilterInvalidKey: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilterInvalidKey)
    }
    
    /// 参数非法，Filter 参数中的 Name 取值不是字符串。
    public static var invalidParameter_InvalidFilterInvalidNameNotStr: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilterInvalidNameNotStr)
    }
    
    /// 参数非法，Filter 参数中的 Values 不是列表。
    public static var invalidParameter_InvalidFilterInvalidValuesNotList: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilterInvalidValuesNotList)
    }
    
    /// 参数非法，Filter 参数不是字典。
    public static var invalidParameter_InvalidFilterNotDict: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilterNotDict)
    }
    
    /// 参数非法，Filter 参数中有不支持的 Name。
    public static var invalidParameter_InvalidFilterNotSupportedName: TCLighthouseError {
        TCLighthouseError(.invalidParameter_InvalidFilterNotSupportedName)
    }
    
    /// 参数非法，每次只能修改一个属性。
    public static var invalidParameter_OnlyAllowModifyOneAttribute: TCLighthouseError {
        TCLighthouseError(.invalidParameter_OnlyAllowModifyOneAttribute)
    }
    
    /// 参数非法，参数冲突。
    public static var invalidParameter_ParameterConflict: TCLighthouseError {
        TCLighthouseError(.invalidParameter_ParameterConflict)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded)
    }
    
    /// 实例挂载数据盘配额不足，无法挂载磁盘。
    public static var limitExceeded_AttachDataDiskQuotaLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_AttachDataDiskQuotaLimitExceeded)
    }
    
    /// 超过防火墙规则配额。
    public static var limitExceeded_FirewallRulesLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_FirewallRulesLimitExceeded)
    }
    
    /// 超过实例配额。
    public static var limitExceeded_InstanceQuotaLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_InstanceQuotaLimitExceeded)
    }
    
    /// 退还资源数量超出限制。
    public static var limitExceeded_IsolateResourcesLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_IsolateResourcesLimitExceeded)
    }
    
    /// 超过密钥对配额。
    public static var limitExceeded_KeyPairLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_KeyPairLimitExceeded)
    }
    
    /// 超过快照配额。
    public static var limitExceeded_SnapshotQuotaLimitExceeded: TCLighthouseError {
        TCLighthouseError(.limitExceeded_SnapshotQuotaLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCLighthouseError {
        TCLighthouseError(.missingParameter)
    }
    
    /// 该实例不支持升级套餐操作。
    ///
    /// 请选择其他套餐完成升级套餐操作
    public static var operationDenied_BundleNotSupportModify: TCLighthouseError {
        TCLighthouseError(.operationDenied_BundleNotSupportModify)
    }
    
    /// 磁盘处于创建过程中。
    public static var operationDenied_DiskCreating: TCLighthouseError {
        TCLighthouseError(.operationDenied_DiskCreating)
    }
    
    /// 磁盘正在操作过程中，请稍后重试。
    public static var operationDenied_DiskOperationInProgress: TCLighthouseError {
        TCLighthouseError(.operationDenied_DiskOperationInProgress)
    }
    
    /// 磁盘的云盘类型不支持该操作。
    public static var operationDenied_DiskUsageNotSupportOperation: TCLighthouseError {
        TCLighthouseError(.operationDenied_DiskUsageNotSupportOperation)
    }
    
    /// 禁止对实例进行操作，实例在创建中，不允许进行该操作。
    public static var operationDenied_InstanceCreating: TCLighthouseError {
        TCLighthouseError(.operationDenied_InstanceCreating)
    }
    
    /// 禁止对实例进行操作，实例最近一次的操作尚在进行中。
    public static var operationDenied_InstanceOperationInProgress: TCLighthouseError {
        TCLighthouseError(.operationDenied_InstanceOperationInProgress)
    }
    
    /// 使用存储型套餐的实例不支持创建快照。
    public static var operationDenied_OperationDeniedCreateSnapshotForStorageBundle: TCLighthouseError {
        TCLighthouseError(.operationDenied_OperationDeniedCreateSnapshotForStorageBundle)
    }
    
    /// 密钥对正在使用中。
    public static var resourceInUse_KeyPairInUse: TCLighthouseError {
        TCLighthouseError(.resourceInUse_KeyPairInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound)
    }
    
    /// 镜像 ID 不存在。
    public static var resourceNotFound_BlueprintIdNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_BlueprintIdNotFound)
    }
    
    /// 指定的镜像不存在。请检查镜像的BlueprintId是否正确。
    public static var resourceNotFound_BlueprintNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_BlueprintNotFound)
    }
    
    /// 磁盘 ID 不存在。
    public static var resourceNotFound_DiskIdNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_DiskIdNotFound)
    }
    
    /// 磁盘不存在。
    public static var resourceNotFound_DiskNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_DiskNotFound)
    }
    
    /// 防火墙不存在。
    public static var resourceNotFound_FirewallNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_FirewallNotFound)
    }
    
    /// 防火墙规则不存在。
    public static var resourceNotFound_FirewallRulesNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_FirewallRulesNotFound)
    }
    
    /// 实例不存在挂载的数据盘。
    public static var resourceNotFound_InstanceDataDiskNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_InstanceDataDiskNotFound)
    }
    
    /// 实例 ID 不存在。
    public static var resourceNotFound_InstanceIdNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_InstanceIdNotFound)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 密钥对 ID 不存在。
    public static var resourceNotFound_KeyIdNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_KeyIdNotFound)
    }
    
    public static var resourceNotFound_PrivateBlueprintNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_PrivateBlueprintNotFound)
    }
    
    /// 快照 ID 不存在。
    public static var resourceNotFound_SnapshotIdNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_SnapshotIdNotFound)
    }
    
    /// 快照不存在。
    public static var resourceNotFound_SnapshotNotFound: TCLighthouseError {
        TCLighthouseError(.resourceNotFound_SnapshotNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCLighthouseError {
        TCLighthouseError(.resourceUnavailable)
    }
    
    /// 镜像资源不可用。
    public static var resourceUnavailable_BlueprintUnavailable: TCLighthouseError {
        TCLighthouseError(.resourceUnavailable_BlueprintUnavailable)
    }
    
    /// 套餐不可用。
    public static var resourceUnavailable_BundleUnavailable: TCLighthouseError {
        TCLighthouseError(.resourceUnavailable_BundleUnavailable)
    }
    
    /// 套餐无可用配置。
    ///
    /// 更换套餐。
    public static var resourcesSoldOut_PurchaseSourceHasNoBundleConfigs: TCLighthouseError {
        TCLighthouseError(.resourcesSoldOut_PurchaseSourceHasNoBundleConfigs)
    }
    
    /// 套餐无可用配置。
    ///
    /// 更换套餐。
    public static var resourcesSoldOut_ZonesHasNoBundleConfigs: TCLighthouseError {
        TCLighthouseError(.resourcesSoldOut_ZonesHasNoBundleConfigs)
    }
    
    /// MFA 已过期。
    public static var unauthorizedOperation_MFAExpired: TCLighthouseError {
        TCLighthouseError(.unauthorizedOperation_MFAExpired)
    }
    
    /// MFA 不存在。
    public static var unauthorizedOperation_MFANotFound: TCLighthouseError {
        TCLighthouseError(.unauthorizedOperation_MFANotFound)
    }
    
    /// 无权限。
    public static var unauthorizedOperation_NoPermission: TCLighthouseError {
        TCLighthouseError(.unauthorizedOperation_NoPermission)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCLighthouseError {
        TCLighthouseError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation)
    }
    
    /// 没有实例不支持关联到云联网。
    public static var unsupportedOperation_AttachCcnConditionUnsatisfied: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_AttachCcnConditionUnsatisfied)
    }
    
    /// 关联云联网失败。请检查云联网状态并稍后再试。
    public static var unsupportedOperation_AttachCcnFailed: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_AttachCcnFailed)
    }
    
    /// 镜像当前状态不支持该操作。
    public static var unsupportedOperation_BlueprintCurStateInvalid: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_BlueprintCurStateInvalid)
    }
    
    /// 镜像被使用中，不支持该操作。
    public static var unsupportedOperation_BlueprintOccupied: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_BlueprintOccupied)
    }
    
    /// 已经关联云联网，不支持再次关联。
    public static var unsupportedOperation_CcnAlreadyAttached: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_CcnAlreadyAttached)
    }
    
    /// 云联网 尚未关联。不支持此操作。
    public static var unsupportedOperation_CcnNotAttached: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_CcnNotAttached)
    }
    
    /// 查询云联网关联的实例状态失败。请稍后再试。
    public static var unsupportedOperation_DescribeCcnAttachedInstancesFailed: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_DescribeCcnAttachedInstancesFailed)
    }
    
    /// 解关联云联网失败。请检查云联网状态并稍后再试。
    public static var unsupportedOperation_DetachCcnFailed: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_DetachCcnFailed)
    }
    
    /// 磁盘忙。
    public static var unsupportedOperation_DiskBusy: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_DiskBusy)
    }
    
    /// 不支持的操作，磁盘最近一次的操作尚未完成。
    public static var unsupportedOperation_DiskLatestOperationUnfinished: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_DiskLatestOperationUnfinished)
    }
    
    /// 防火墙忙。
    public static var unsupportedOperation_FirewallBusy: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_FirewallBusy)
    }
    
    /// 指定的防火墙版本号和当前版本不一致。
    public static var unsupportedOperation_FirewallVersionMismatch: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_FirewallVersionMismatch)
    }
    
    /// 实例已到期，不支持该操作。
    public static var unsupportedOperation_InstanceExpired: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_InstanceExpired)
    }
    
    /// LinuxUnix实例在创建时不支持设置密码。
    public static var unsupportedOperation_InstanceLinuxUnixCreatingNotSupportPassword: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_InstanceLinuxUnixCreatingNotSupportPassword)
    }
    
    /// 磁盘状态不支持该操作。
    public static var unsupportedOperation_InvalidDiskState: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_InvalidDiskState)
    }
    
    /// 不支持的操作，实例状态不合法。
    public static var unsupportedOperation_InvalidInstanceState: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_InvalidInstanceState)
    }
    
    /// 不支持的操作，快照状态不合法。
    public static var unsupportedOperation_InvalidSnapshotState: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_InvalidSnapshotState)
    }
    
    /// 不支持的操作，不支持将同一个密钥对重复绑定到同一个实例上。
    public static var unsupportedOperation_KeyPairBindDuplicate: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_KeyPairBindDuplicate)
    }
    
    /// 不支持该操作。KeyPair 与镜像存在绑定关系。在进行该操作前请删除与密钥对有绑定关系的自定义镜像。
    public static var unsupportedOperation_KeyPairBindToBlueprints: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_KeyPairBindToBlueprints)
    }
    
    /// 不支持的操作，不支持将未绑定到实例的密钥对从实例解绑。
    public static var unsupportedOperation_KeyPairNotBoundToInstance: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_KeyPairNotBoundToInstance)
    }
    
    /// 不支持的操作，实例最近一次的操作尚未完成。
    public static var unsupportedOperation_LatestOperationUnfinished: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_LatestOperationUnfinished)
    }
    
    /// 共享镜像不支持此操作。
    public static var unsupportedOperation_NotSupportSharedBlueprint: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_NotSupportSharedBlueprint)
    }
    
    /// 计费资源中心删除资源失败。
    ///
    /// 请稍后再次重试。
    public static var unsupportedOperation_PostDestroyResourceFailed: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_PostDestroyResourceFailed)
    }
    
    /// 重新申请关联云联网失败。请检查云联网状态并稍后再试。
    public static var unsupportedOperation_ResetAttachCcnFailed: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_ResetAttachCcnFailed)
    }
    
    /// 资源不支持退换。
    public static var unsupportedOperation_ResourceNotReturnable: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_ResourceNotReturnable)
    }
    
    /// 快照忙。
    public static var unsupportedOperation_SnapshotBusy: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_SnapshotBusy)
    }
    
    public static var unsupportedOperation_SystemBusy: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_SystemBusy)
    }
    
    /// Windows实例不支持绑定密钥对。
    public static var unsupportedOperation_WindowsNotAllowToAssociateKeyPair: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_WindowsNotAllowToAssociateKeyPair)
    }
    
    /// 请不要对windows类型实例进行密钥对功能操作，或者将实例更换为Linux类型实例。
    public static var unsupportedOperation_WindowsNotSupportKeyPair: TCLighthouseError {
        TCLighthouseError(.unsupportedOperation_WindowsNotSupportKeyPair)
    }
}

extension TCLighthouseError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCLighthouseError: Equatable {
    public static func == (lhs: TCLighthouseError, rhs: TCLighthouseError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLighthouseError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLighthouseError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
