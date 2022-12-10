public struct TCCfsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_BindResourcePkgFailed = "FailedOperation.BindResourcePkgFailed"
        case failedOperation_ClientTokenInUse = "FailedOperation.ClientTokenInUse"
        case failedOperation_MountTargetExists = "FailedOperation.MountTargetExists"
        case failedOperation_PgroupInUse = "FailedOperation.PgroupInUse"
        case failedOperation_PgroupIsUpdating = "FailedOperation.PgroupIsUpdating"
        case failedOperation_PgroupLinkCfsv10 = "FailedOperation.PgroupLinkCfsv10"
        case failedOperation_UntagResourceFailed = "FailedOperation.UntagResourceFailed"
        case internalError = "InternalError"
        case internalError_CreateFsFailed = "InternalError.CreateFsFailed"
        case internalError_GetAccountStatusFailed = "InternalError.GetAccountStatusFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ClientTokenLimitExceeded = "InvalidParameterValue.ClientTokenLimitExceeded"
        case invalidParameterValue_DuplicatedPgroupName = "InvalidParameterValue.DuplicatedPgroupName"
        case invalidParameterValue_DuplicatedRuleAuthClientIp = "InvalidParameterValue.DuplicatedRuleAuthClientIp"
        case invalidParameterValue_FsNameLimitExceeded = "InvalidParameterValue.FsNameLimitExceeded"
        case invalidParameterValue_FsSizeLimitExceeded = "InvalidParameterValue.FsSizeLimitExceeded"
        case invalidParameterValue_InvalidAuthClientIp = "InvalidParameterValue.InvalidAuthClientIp"
        case invalidParameterValue_InvalidClientToken = "InvalidParameterValue.InvalidClientToken"
        case invalidParameterValue_InvalidEncrypted = "InvalidParameterValue.InvalidEncrypted"
        case invalidParameterValue_InvalidFileSystemId = "InvalidParameterValue.InvalidFileSystemId"
        case invalidParameterValue_InvalidFsName = "InvalidParameterValue.InvalidFsName"
        case invalidParameterValue_InvalidFsSizeLimit = "InvalidParameterValue.InvalidFsSizeLimit"
        case invalidParameterValue_InvalidFsStatus = "InvalidParameterValue.InvalidFsStatus"
        case invalidParameterValue_InvalidMountTargetIp = "InvalidParameterValue.InvalidMountTargetIp"
        case invalidParameterValue_InvalidNetInterface = "InvalidParameterValue.InvalidNetInterface"
        case invalidParameterValue_InvalidPgroup = "InvalidParameterValue.InvalidPgroup"
        case invalidParameterValue_InvalidPgroupId = "InvalidParameterValue.InvalidPgroupId"
        case invalidParameterValue_InvalidPgroupName = "InvalidParameterValue.InvalidPgroupName"
        case invalidParameterValue_InvalidPriority = "InvalidParameterValue.InvalidPriority"
        case invalidParameterValue_InvalidProtocol = "InvalidParameterValue.InvalidProtocol"
        case invalidParameterValue_InvalidRegionZoneInfo = "InvalidParameterValue.InvalidRegionZoneInfo"
        case invalidParameterValue_InvalidResourceTags = "InvalidParameterValue.InvalidResourceTags"
        case invalidParameterValue_InvalidRwPermission = "InvalidParameterValue.InvalidRwPermission"
        case invalidParameterValue_InvalidSnapshotStatus = "InvalidParameterValue.InvalidSnapshotStatus"
        case invalidParameterValue_InvalidStorageResourcePkg = "InvalidParameterValue.InvalidStorageResourcePkg"
        case invalidParameterValue_InvalidStorageType = "InvalidParameterValue.InvalidStorageType"
        case invalidParameterValue_InvalidSubnetId = "InvalidParameterValue.InvalidSubnetId"
        case invalidParameterValue_InvalidTagKey = "InvalidParameterValue.InvalidTagKey"
        case invalidParameterValue_InvalidTagValue = "InvalidParameterValue.InvalidTagValue"
        case invalidParameterValue_InvalidTurboCapacity = "InvalidParameterValue.InvalidTurboCapacity"
        case invalidParameterValue_InvalidUserPermission = "InvalidParameterValue.InvalidUserPermission"
        case invalidParameterValue_InvalidVip = "InvalidParameterValue.InvalidVip"
        case invalidParameterValue_InvalidVpcId = "InvalidParameterValue.InvalidVpcId"
        case invalidParameterValue_InvalidVpcParameter = "InvalidParameterValue.InvalidVpcParameter"
        case invalidParameterValue_InvalidZoneId = "InvalidParameterValue.InvalidZoneId"
        case invalidParameterValue_InvalidZoneOrZoneId = "InvalidParameterValue.InvalidZoneOrZoneId"
        case invalidParameterValue_MissingFileSystemId = "InvalidParameterValue.MissingFileSystemId"
        case invalidParameterValue_MissingFileSystemIdOrRegion = "InvalidParameterValue.MissingFileSystemIdOrRegion"
        case invalidParameterValue_MissingFsParameter = "InvalidParameterValue.MissingFsParameter"
        case invalidParameterValue_MissingKmsKeyId = "InvalidParameterValue.MissingKmsKeyId"
        case invalidParameterValue_MissingNameOrDescinfo = "InvalidParameterValue.MissingNameOrDescinfo"
        case invalidParameterValue_MissingPgroupName = "InvalidParameterValue.MissingPgroupName"
        case invalidParameterValue_MissingStorageResourcePkg = "InvalidParameterValue.MissingStorageResourcePkg"
        case invalidParameterValue_MissingSubnetidOrUnsubnetid = "InvalidParameterValue.MissingSubnetidOrUnsubnetid"
        case invalidParameterValue_MissingVpcParameter = "InvalidParameterValue.MissingVpcParameter"
        case invalidParameterValue_MissingVpcidOrUnvpcid = "InvalidParameterValue.MissingVpcidOrUnvpcid"
        case invalidParameterValue_MissingZoneId = "InvalidParameterValue.MissingZoneId"
        case invalidParameterValue_MissingZoneOrZoneId = "InvalidParameterValue.MissingZoneOrZoneId"
        case invalidParameterValue_PgroupDescinfoLimitExceeded = "InvalidParameterValue.PgroupDescinfoLimitExceeded"
        case invalidParameterValue_PgroupNameLimitExceeded = "InvalidParameterValue.PgroupNameLimitExceeded"
        case invalidParameterValue_QuotaCapLimitError = "InvalidParameterValue.QuotaCapLimitError"
        case invalidParameterValue_QuotaFileLimitError = "InvalidParameterValue.QuotaFileLimitError"
        case invalidParameterValue_QuotaUserIdError = "InvalidParameterValue.QuotaUserIdError"
        case invalidParameterValue_QuotaUserTypeError = "InvalidParameterValue.QuotaUserTypeError"
        case invalidParameterValue_RuleNotMatchPgroup = "InvalidParameterValue.RuleNotMatchPgroup"
        case invalidParameterValue_TagKeyFilterLimitExceeded = "InvalidParameterValue.TagKeyFilterLimitExceeded"
        case invalidParameterValue_TagKeyLimitExceeded = "InvalidParameterValue.TagKeyLimitExceeded"
        case invalidParameterValue_TagValueLimitExceeded = "InvalidParameterValue.TagValueLimitExceeded"
        case invalidParameterValue_UnavailableRegion = "InvalidParameterValue.UnavailableRegion"
        case invalidParameterValue_UnavailableZone = "InvalidParameterValue.UnavailableZone"
        case invalidParameterValue_ZoneIdRegionNotMatch = "InvalidParameterValue.ZoneIdRegionNotMatch"
        case invalidParameter_AutoPolicyNotFound = "InvalidParameter.AutoPolicyNotFound"
        case invalidParameter_InvalidAlivedDays = "InvalidParameter.InvalidAlivedDays"
        case invalidParameter_InvalidParamDayofWeek = "InvalidParameter.InvalidParamDayofWeek"
        case invalidParameter_InvalidParamHour = "InvalidParameter.InvalidParamHour"
        case invalidParameter_InvalidSnapPolicyStatus = "InvalidParameter.InvalidSnapPolicyStatus"
        case invalidParameter_InvalidSnapshotName = "InvalidParameter.InvalidSnapshotName"
        case invalidParameter_InvalidSnapshotPolicyName = "InvalidParameter.InvalidSnapshotPolicyName"
        case invalidParameter_MissingPolicyParam = "InvalidParameter.MissingPolicyParam"
        case invalidParameter_SnapshotNameLimitExceeded = "InvalidParameter.SnapshotNameLimitExceeded"
        case invalidParameter_SnapshotPolicyNameLimitExceeded = "InvalidParameter.SnapshotPolicyNameLimitExceeded"
        case resourceInsufficient_FileSystemLimitExceeded = "ResourceInsufficient.FileSystemLimitExceeded"
        case resourceInsufficient_PgroupNumberLimitExceeded = "ResourceInsufficient.PgroupNumberLimitExceeded"
        case resourceInsufficient_RegionSoldOut = "ResourceInsufficient.RegionSoldOut"
        case resourceInsufficient_RuleLimitExceeded = "ResourceInsufficient.RuleLimitExceeded"
        case resourceInsufficient_SubnetIpAllOccupied = "ResourceInsufficient.SubnetIpAllOccupied"
        case resourceInsufficient_TagLimitExceeded = "ResourceInsufficient.TagLimitExceeded"
        case resourceInsufficient_TagQuotasExceeded = "ResourceInsufficient.TagQuotasExceeded"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_FileSystemNotFound = "ResourceNotFound.FileSystemNotFound"
        case resourceNotFound_MountTargetNotFound = "ResourceNotFound.MountTargetNotFound"
        case resourceNotFound_PgroupNotFound = "ResourceNotFound.PgroupNotFound"
        case resourceNotFound_RuleNotFound = "ResourceNotFound.RuleNotFound"
        case resourceNotFound_SnapshotNotFound = "ResourceNotFound.SnapshotNotFound"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BasicNetInterfaceNotSupported = "UnsupportedOperation.BasicNetInterfaceNotSupported"
        case unsupportedOperation_OutOfService = "UnsupportedOperation.OutOfService"
        case unsupportedOperation_UnauthorizedCfsQcsRole = "UnsupportedOperation.UnauthorizedCfsQcsRole"
        case unsupportedOperation_UnverifiedUser = "UnsupportedOperation.UnverifiedUser"
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
    public static var authFailure: TCCfsError {
        TCCfsError(.authFailure)
    }
    
    /// 请求未CAM授权。
    public static var authFailure_UnauthorizedOperation: TCCfsError {
        TCCfsError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCfsError {
        TCCfsError(.failedOperation)
    }
    
    /// 文件系统绑定资源包失败。
    public static var failedOperation_BindResourcePkgFailed: TCCfsError {
        TCCfsError(.failedOperation_BindResourcePkgFailed)
    }
    
    /// 资源正在创建中。
    public static var failedOperation_ClientTokenInUse: TCCfsError {
        TCCfsError(.failedOperation_ClientTokenInUse)
    }
    
    /// 文件系统存在挂载点。
    public static var failedOperation_MountTargetExists: TCCfsError {
        TCCfsError(.failedOperation_MountTargetExists)
    }
    
    /// 权限组已绑定文件系统。
    public static var failedOperation_PgroupInUse: TCCfsError {
        TCCfsError(.failedOperation_PgroupInUse)
    }
    
    /// 权限组正在更新中。
    public static var failedOperation_PgroupIsUpdating: TCCfsError {
        TCCfsError(.failedOperation_PgroupIsUpdating)
    }
    
    /// 该权限组关联了旧版本实例，请解除关联后重试。
    public static var failedOperation_PgroupLinkCfsv10: TCCfsError {
        TCCfsError(.failedOperation_PgroupLinkCfsv10)
    }
    
    /// 解绑资源标签失败。
    public static var failedOperation_UntagResourceFailed: TCCfsError {
        TCCfsError(.failedOperation_UntagResourceFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCCfsError {
        TCCfsError(.internalError)
    }
    
    /// 创建文件系统失败。
    public static var internalError_CreateFsFailed: TCCfsError {
        TCCfsError(.internalError_CreateFsFailed)
    }
    
    /// 获取用户费用状态失败。
    public static var internalError_GetAccountStatusFailed: TCCfsError {
        TCCfsError(.internalError_GetAccountStatusFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCfsError {
        TCCfsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCfsError {
        TCCfsError(.invalidParameterValue)
    }
    
    /// 用于保证请求幂等性的字符串长度超过限制（不能超过64字节）。
    public static var invalidParameterValue_ClientTokenLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_ClientTokenLimitExceeded)
    }
    
    /// 权限组名称重复。
    public static var invalidParameterValue_DuplicatedPgroupName: TCCfsError {
        TCCfsError(.invalidParameterValue_DuplicatedPgroupName)
    }
    
    /// 规则IP重复。
    public static var invalidParameterValue_DuplicatedRuleAuthClientIp: TCCfsError {
        TCCfsError(.invalidParameterValue_DuplicatedRuleAuthClientIp)
    }
    
    /// 用户自定义名称过长（超过64字节)。
    public static var invalidParameterValue_FsNameLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_FsNameLimitExceeded)
    }
    
    /// 文件系统配额设置超出上限。
    public static var invalidParameterValue_FsSizeLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_FsSizeLimitExceeded)
    }
    
    /// 规则IP错误。
    public static var invalidParameterValue_InvalidAuthClientIp: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidAuthClientIp)
    }
    
    /// 用于保证请求幂等性的字符串错误。
    public static var invalidParameterValue_InvalidClientToken: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidClientToken)
    }
    
    /// 加密参数错误。
    public static var invalidParameterValue_InvalidEncrypted: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidEncrypted)
    }
    
    /// FileSystemId无效。
    public static var invalidParameterValue_InvalidFileSystemId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidFileSystemId)
    }
    
    /// 无效的自定义名称。
    public static var invalidParameterValue_InvalidFsName: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidFsName)
    }
    
    /// 无效的文件系统配额。
    public static var invalidParameterValue_InvalidFsSizeLimit: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidFsSizeLimit)
    }
    
    /// 无效的文件系统状态。
    public static var invalidParameterValue_InvalidFsStatus: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidFsStatus)
    }
    
    /// 错误的挂载点IP。
    public static var invalidParameterValue_InvalidMountTargetIp: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidMountTargetIp)
    }
    
    /// 无效的网络类型。
    public static var invalidParameterValue_InvalidNetInterface: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidNetInterface)
    }
    
    /// 权限组不属于该用户。
    public static var invalidParameterValue_InvalidPgroup: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidPgroup)
    }
    
    /// 权限组ID无效。
    public static var invalidParameterValue_InvalidPgroupId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidPgroupId)
    }
    
    /// 无效的权限组名称。
    public static var invalidParameterValue_InvalidPgroupName: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidPgroupName)
    }
    
    /// 优先级设置错误。
    public static var invalidParameterValue_InvalidPriority: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidPriority)
    }
    
    /// 协议参数错误。
    public static var invalidParameterValue_InvalidProtocol: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidProtocol)
    }
    
    /// 用户区域选择错误 (ZoneName) 或 (ZoneId, Region)二者必选一。
    public static var invalidParameterValue_InvalidRegionZoneInfo: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidRegionZoneInfo)
    }
    
    /// 参数值错误: 资源标签值错误。
    public static var invalidParameterValue_InvalidResourceTags: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidResourceTags)
    }
    
    /// 读写权限设置错误。
    public static var invalidParameterValue_InvalidRwPermission: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidRwPermission)
    }
    
    /// 无效的快照状态。
    public static var invalidParameterValue_InvalidSnapshotStatus: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidSnapshotStatus)
    }
    
    /// 资源包不存在或已绑定。
    public static var invalidParameterValue_InvalidStorageResourcePkg: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidStorageResourcePkg)
    }
    
    /// 存储类型参数错误。
    public static var invalidParameterValue_InvalidStorageType: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidStorageType)
    }
    
    /// 无效的子网ID。
    public static var invalidParameterValue_InvalidSubnetId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidSubnetId)
    }
    
    /// 标签键不能为空。
    public static var invalidParameterValue_InvalidTagKey: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidTagKey)
    }
    
    public static var invalidParameterValue_InvalidTagValue: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidTagValue)
    }
    
    public static var invalidParameterValue_InvalidTurboCapacity: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidTurboCapacity)
    }
    
    /// 用户权限设置错误。
    public static var invalidParameterValue_InvalidUserPermission: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidUserPermission)
    }
    
    /// 用户指定不可用的vip。
    public static var invalidParameterValue_InvalidVip: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidVip)
    }
    
    /// 无效的VPCID。
    public static var invalidParameterValue_InvalidVpcId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidVpcId)
    }
    
    /// VPC参数错误。
    public static var invalidParameterValue_InvalidVpcParameter: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidVpcParameter)
    }
    
    /// 无效的可用区。
    public static var invalidParameterValue_InvalidZoneId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidZoneId)
    }
    
    /// 无效的可用区或可用区ID。
    public static var invalidParameterValue_InvalidZoneOrZoneId: TCCfsError {
        TCCfsError(.invalidParameterValue_InvalidZoneOrZoneId)
    }
    
    /// FileSystemId缺失。
    public static var invalidParameterValue_MissingFileSystemId: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingFileSystemId)
    }
    
    /// 用户参数选择错误 (FileSystemId) 或 (Region)二者必选一。
    public static var invalidParameterValue_MissingFileSystemIdOrRegion: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingFileSystemIdOrRegion)
    }
    
    /// FileSystem参数缺失。
    public static var invalidParameterValue_MissingFsParameter: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingFsParameter)
    }
    
    /// 密钥ID或ARN参数缺失。
    public static var invalidParameterValue_MissingKmsKeyId: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingKmsKeyId)
    }
    
    /// 权限组名称和描述不能同时为空。
    public static var invalidParameterValue_MissingNameOrDescinfo: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingNameOrDescinfo)
    }
    
    /// 权限组名称不能为空。
    public static var invalidParameterValue_MissingPgroupName: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingPgroupName)
    }
    
    /// 未绑定存储包。
    public static var invalidParameterValue_MissingStorageResourcePkg: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingStorageResourcePkg)
    }
    
    /// SUBNETID和UNSUBNETID不能同时为空。
    public static var invalidParameterValue_MissingSubnetidOrUnsubnetid: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingSubnetidOrUnsubnetid)
    }
    
    /// VPC相关参数缺失。
    public static var invalidParameterValue_MissingVpcParameter: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingVpcParameter)
    }
    
    /// VPCID和UNVPCID不能同时为空。
    public static var invalidParameterValue_MissingVpcidOrUnvpcid: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingVpcidOrUnvpcid)
    }
    
    /// ZoneID缺失。
    public static var invalidParameterValue_MissingZoneId: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingZoneId)
    }
    
    /// 用户区域选择错误 (Zone) 或 (Zone_id)二者必选一。
    public static var invalidParameterValue_MissingZoneOrZoneId: TCCfsError {
        TCCfsError(.invalidParameterValue_MissingZoneOrZoneId)
    }
    
    /// 权限组描述长度超过限制（不能超过255字节）。
    public static var invalidParameterValue_PgroupDescinfoLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_PgroupDescinfoLimitExceeded)
    }
    
    /// 权限组名称长度超过限制（不能超过64字节）。
    public static var invalidParameterValue_PgroupNameLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_PgroupNameLimitExceeded)
    }
    
    public static var invalidParameterValue_QuotaCapLimitError: TCCfsError {
        TCCfsError(.invalidParameterValue_QuotaCapLimitError)
    }
    
    public static var invalidParameterValue_QuotaFileLimitError: TCCfsError {
        TCCfsError(.invalidParameterValue_QuotaFileLimitError)
    }
    
    public static var invalidParameterValue_QuotaUserIdError: TCCfsError {
        TCCfsError(.invalidParameterValue_QuotaUserIdError)
    }
    
    public static var invalidParameterValue_QuotaUserTypeError: TCCfsError {
        TCCfsError(.invalidParameterValue_QuotaUserTypeError)
    }
    
    /// 权限组规则和权限组不匹配。
    public static var invalidParameterValue_RuleNotMatchPgroup: TCCfsError {
        TCCfsError(.invalidParameterValue_RuleNotMatchPgroup)
    }
    
    /// 参数值错误: 标签键个数超过上限（6个）。
    public static var invalidParameterValue_TagKeyFilterLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_TagKeyFilterLimitExceeded)
    }
    
    /// 标签键长度超过限制（不能超过127字节）。
    public static var invalidParameterValue_TagKeyLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_TagKeyLimitExceeded)
    }
    
    /// 标签值长度超过限制（不能超过255字节）。
    public static var invalidParameterValue_TagValueLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameterValue_TagValueLimitExceeded)
    }
    
    /// 该可用区无法提供服务。
    public static var invalidParameterValue_UnavailableRegion: TCCfsError {
        TCCfsError(.invalidParameterValue_UnavailableRegion)
    }
    
    /// 该地域无法提供服务。
    public static var invalidParameterValue_UnavailableZone: TCCfsError {
        TCCfsError(.invalidParameterValue_UnavailableZone)
    }
    
    /// ZoneId和Region不匹配。
    public static var invalidParameterValue_ZoneIdRegionNotMatch: TCCfsError {
        TCCfsError(.invalidParameterValue_ZoneIdRegionNotMatch)
    }
    
    /// 快照策略未找到。
    public static var invalidParameter_AutoPolicyNotFound: TCCfsError {
        TCCfsError(.invalidParameter_AutoPolicyNotFound)
    }
    
    /// 无效的快照保留时间。
    public static var invalidParameter_InvalidAlivedDays: TCCfsError {
        TCCfsError(.invalidParameter_InvalidAlivedDays)
    }
    
    /// 定期星期参数无效。
    public static var invalidParameter_InvalidParamDayofWeek: TCCfsError {
        TCCfsError(.invalidParameter_InvalidParamDayofWeek)
    }
    
    /// 定期小时 参数值错误。
    public static var invalidParameter_InvalidParamHour: TCCfsError {
        TCCfsError(.invalidParameter_InvalidParamHour)
    }
    
    /// 无效的快照策略状态。
    public static var invalidParameter_InvalidSnapPolicyStatus: TCCfsError {
        TCCfsError(.invalidParameter_InvalidSnapPolicyStatus)
    }
    
    /// 无效的文件系统快照参数名称 。
    public static var invalidParameter_InvalidSnapshotName: TCCfsError {
        TCCfsError(.invalidParameter_InvalidSnapshotName)
    }
    
    /// 无效的文件系统快照策略名称。
    public static var invalidParameter_InvalidSnapshotPolicyName: TCCfsError {
        TCCfsError(.invalidParameter_InvalidSnapshotPolicyName)
    }
    
    /// 缺少策略相关参数。
    public static var invalidParameter_MissingPolicyParam: TCCfsError {
        TCCfsError(.invalidParameter_MissingPolicyParam)
    }
    
    /// 文件系统快照名称超出上限。
    public static var invalidParameter_SnapshotNameLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameter_SnapshotNameLimitExceeded)
    }
    
    /// 文件系统快照策略名称超过限制。
    public static var invalidParameter_SnapshotPolicyNameLimitExceeded: TCCfsError {
        TCCfsError(.invalidParameter_SnapshotPolicyNameLimitExceeded)
    }
    
    /// 文件系统数量达到上限。
    public static var resourceInsufficient_FileSystemLimitExceeded: TCCfsError {
        TCCfsError(.resourceInsufficient_FileSystemLimitExceeded)
    }
    
    /// 权限组数量达到上限。
    public static var resourceInsufficient_PgroupNumberLimitExceeded: TCCfsError {
        TCCfsError(.resourceInsufficient_PgroupNumberLimitExceeded)
    }
    
    /// 区域资源售罄。
    public static var resourceInsufficient_RegionSoldOut: TCCfsError {
        TCCfsError(.resourceInsufficient_RegionSoldOut)
    }
    
    /// 规则条数超过上限。
    public static var resourceInsufficient_RuleLimitExceeded: TCCfsError {
        TCCfsError(.resourceInsufficient_RuleLimitExceeded)
    }
    
    /// 该子网下已无可用IP。
    public static var resourceInsufficient_SubnetIpAllOccupied: TCCfsError {
        TCCfsError(.resourceInsufficient_SubnetIpAllOccupied)
    }
    
    /// 该资源的标签个数达到最大限制。
    public static var resourceInsufficient_TagLimitExceeded: TCCfsError {
        TCCfsError(.resourceInsufficient_TagLimitExceeded)
    }
    
    public static var resourceInsufficient_TagQuotasExceeded: TCCfsError {
        TCCfsError(.resourceInsufficient_TagQuotasExceeded)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCfsError {
        TCCfsError(.resourceNotFound)
    }
    
    /// 该文件系统不存在。
    public static var resourceNotFound_FileSystemNotFound: TCCfsError {
        TCCfsError(.resourceNotFound_FileSystemNotFound)
    }
    
    /// 挂载点不存在。
    public static var resourceNotFound_MountTargetNotFound: TCCfsError {
        TCCfsError(.resourceNotFound_MountTargetNotFound)
    }
    
    /// 权限组不存在。
    public static var resourceNotFound_PgroupNotFound: TCCfsError {
        TCCfsError(.resourceNotFound_PgroupNotFound)
    }
    
    /// 权限规则不存在。
    public static var resourceNotFound_RuleNotFound: TCCfsError {
        TCCfsError(.resourceNotFound_RuleNotFound)
    }
    
    /// 快照ID 不存在。
    public static var resourceNotFound_SnapshotNotFound: TCCfsError {
        TCCfsError(.resourceNotFound_SnapshotNotFound)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCfsError {
        TCCfsError(.unsupportedOperation)
    }
    
    /// 该可用区不支持基础网络。
    public static var unsupportedOperation_BasicNetInterfaceNotSupported: TCCfsError {
        TCCfsError(.unsupportedOperation_BasicNetInterfaceNotSupported)
    }
    
    /// 用户已欠费, 请充值后重试。
    public static var unsupportedOperation_OutOfService: TCCfsError {
        TCCfsError(.unsupportedOperation_OutOfService)
    }
    
    /// cfs角色未被授权。
    public static var unsupportedOperation_UnauthorizedCfsQcsRole: TCCfsError {
        TCCfsError(.unsupportedOperation_UnauthorizedCfsQcsRole)
    }
    
    /// 用户未经过实名认证。
    public static var unsupportedOperation_UnverifiedUser: TCCfsError {
        TCCfsError(.unsupportedOperation_UnverifiedUser)
    }
}

extension TCCfsError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceInsufficient.self, ResourceNotFound.self, UnsupportedOperation.self]
    }
}

extension TCCfsError: Equatable {
    public static func == (lhs: TCCfsError, rhs: TCCfsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCfsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}