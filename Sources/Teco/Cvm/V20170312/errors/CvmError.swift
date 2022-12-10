public struct TCCvmError: TCErrorType {
    enum Code: String {
        case accountQualificationRestrictions = "AccountQualificationRestrictions"
        case authFailure_CamRoleNameAuthenticateFailed = "AuthFailure.CamRoleNameAuthenticateFailed"
        case eniNotAllowedChangeSubnet = "EniNotAllowedChangeSubnet"
        case failedOperation_AccountAlreadyExists = "FailedOperation.AccountAlreadyExists"
        case failedOperation_AccountIsYourSelf = "FailedOperation.AccountIsYourSelf"
        case failedOperation_BYOLImageShareFailed = "FailedOperation.BYOLImageShareFailed"
        case failedOperation_DisasterRecoverGroupNotFound = "FailedOperation.DisasterRecoverGroupNotFound"
        case failedOperation_IllegalTagKey = "FailedOperation.IllegalTagKey"
        case failedOperation_IllegalTagValue = "FailedOperation.IllegalTagValue"
        case failedOperation_InquiryPriceFailed = "FailedOperation.InquiryPriceFailed"
        case failedOperation_InquiryRefundPriceFailed = "FailedOperation.InquiryRefundPriceFailed"
        case failedOperation_InvalidImageState = "FailedOperation.InvalidImageState"
        case failedOperation_InvalidInstanceApplicationRoleEmr = "FailedOperation.InvalidInstanceApplicationRoleEmr"
        case failedOperation_NoAvailableIpAddressCountInSubnet = "FailedOperation.NoAvailableIpAddressCountInSubnet"
        case failedOperation_NotFoundEIP = "FailedOperation.NotFoundEIP"
        case failedOperation_NotMasterAccount = "FailedOperation.NotMasterAccount"
        case failedOperation_PlacementSetNotEmpty = "FailedOperation.PlacementSetNotEmpty"
        case failedOperation_PromotionalPerioRestriction = "FailedOperation.PromotionalPerioRestriction"
        case failedOperation_PromotionalRegionRestriction = "FailedOperation.PromotionalRegionRestriction"
        case failedOperation_QImageShareFailed = "FailedOperation.QImageShareFailed"
        case failedOperation_RImageShareFailed = "FailedOperation.RImageShareFailed"
        case failedOperation_SecurityGroupActionFailed = "FailedOperation.SecurityGroupActionFailed"
        case failedOperation_SnapshotSizeLargerThanDataSize = "FailedOperation.SnapshotSizeLargerThanDataSize"
        case failedOperation_SnapshotSizeLessThanDataSize = "FailedOperation.SnapshotSizeLessThanDataSize"
        case failedOperation_TagKeyReserved = "FailedOperation.TagKeyReserved"
        case failedOperation_TatAgentNotSupport = "FailedOperation.TatAgentNotSupport"
        case failedOperation_Unreturnable = "FailedOperation.Unreturnable"
        case imageQuotaLimitExceeded = "ImageQuotaLimitExceeded"
        case instancesQuotaLimitExceeded = "InstancesQuotaLimitExceeded"
        case internalError = "InternalError"
        case internalError_TradeUnknownError = "InternalError.TradeUnknownError"
        case internalServerError = "InternalServerError"
        case invalidAccountId_NotFound = "InvalidAccountId.NotFound"
        case invalidAccountIs_YourSelf = "InvalidAccountIs.YourSelf"
        case invalidAccount_InsufficientBalance = "InvalidAccount.InsufficientBalance"
        case invalidAccount_UnpaidOrder = "InvalidAccount.UnpaidOrder"
        case invalidClientToken_TooLong = "InvalidClientToken.TooLong"
        case invalidFilter = "InvalidFilter"
        case invalidFilterValue_LimitExceeded = "InvalidFilterValue.LimitExceeded"
        case invalidHostId_Malformed = "InvalidHostId.Malformed"
        case invalidHostId_NotFound = "InvalidHostId.NotFound"
        case invalidHost_NotSupported = "InvalidHost.NotSupported"
        case invalidImageId_InShared = "InvalidImageId.InShared"
        case invalidImageId_IncorrectState = "InvalidImageId.IncorrectState"
        case invalidImageId_Malformed = "InvalidImageId.Malformed"
        case invalidImageId_NotFound = "InvalidImageId.NotFound"
        case invalidImageId_TooLarge = "InvalidImageId.TooLarge"
        case invalidImageName_Duplicate = "InvalidImageName.Duplicate"
        case invalidImageOsType_Unsupported = "InvalidImageOsType.Unsupported"
        case invalidImageOsVersion_Unsupported = "InvalidImageOsVersion.Unsupported"
        case invalidInstanceId_Malformed = "InvalidInstanceId.Malformed"
        case invalidInstanceId_NotFound = "InvalidInstanceId.NotFound"
        case invalidInstanceName_TooLong = "InvalidInstanceName.TooLong"
        case invalidInstanceNotSupportedPrepaidInstance = "InvalidInstanceNotSupportedPrepaidInstance"
        case invalidInstanceState = "InvalidInstanceState"
        case invalidInstanceType_Malformed = "InvalidInstanceType.Malformed"
        case invalidInstance_NotSupported = "InvalidInstance.NotSupported"
        case invalidKeyPairId_Malformed = "InvalidKeyPairId.Malformed"
        case invalidKeyPairId_NotFound = "InvalidKeyPairId.NotFound"
        case invalidKeyPairNameEmpty = "InvalidKeyPairNameEmpty"
        case invalidKeyPairNameIncludeIllegalChar = "InvalidKeyPairNameIncludeIllegalChar"
        case invalidKeyPairNameTooLong = "InvalidKeyPairNameTooLong"
        case invalidKeyPairName_Duplicate = "InvalidKeyPairName.Duplicate"
        case invalidKeyPair_LimitExceeded = "InvalidKeyPair.LimitExceeded"
        case invalidParameter = "InvalidParameter"
        case invalidParameterCombination = "InvalidParameterCombination"
        case invalidParameterConflict = "InvalidParameterConflict"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValueLimit = "InvalidParameterValueLimit"
        case invalidParameterValueOffset = "InvalidParameterValueOffset"
        case invalidParameterValue_AmountNotEqual = "InvalidParameterValue.AmountNotEqual"
        case invalidParameterValue_BandwidthPackageIdMalformed = "InvalidParameterValue.BandwidthPackageIdMalformed"
        case invalidParameterValue_BandwidthPackageIdNotFound = "InvalidParameterValue.BandwidthPackageIdNotFound"
        case invalidParameterValue_BasicNetworkInstanceFamily = "InvalidParameterValue.BasicNetworkInstanceFamily"
        case invalidParameterValue_BucketNotFound = "InvalidParameterValue.BucketNotFound"
        case invalidParameterValue_CamRoleNameMalformed = "InvalidParameterValue.CamRoleNameMalformed"
        case invalidParameterValue_ChcHostsNotFound = "InvalidParameterValue.ChcHostsNotFound"
        case invalidParameterValue_ChcNetworkEmpty = "InvalidParameterValue.ChcNetworkEmpty"
        case invalidParameterValue_CloudSsdDataDiskSizeTooSmall = "InvalidParameterValue.CloudSsdDataDiskSizeTooSmall"
        case invalidParameterValue_CoreCountValue = "InvalidParameterValue.CoreCountValue"
        case invalidParameterValue_DeployVpcAlreadyExists = "InvalidParameterValue.DeployVpcAlreadyExists"
        case invalidParameterValue_DisasterRecoverGroupIdMalformed = "InvalidParameterValue.DisasterRecoverGroupIdMalformed"
        case invalidParameterValue_Duplicate = "InvalidParameterValue.Duplicate"
        case invalidParameterValue_DuplicateTags = "InvalidParameterValue.DuplicateTags"
        case invalidParameterValue_GPUInstanceFamily = "InvalidParameterValue.GPUInstanceFamily"
        case invalidParameterValue_IPAddressMalformed = "InvalidParameterValue.IPAddressMalformed"
        case invalidParameterValue_IPv6AddressMalformed = "InvalidParameterValue.IPv6AddressMalformed"
        case invalidParameterValue_IllegalHostName = "InvalidParameterValue.IllegalHostName"
        case invalidParameterValue_IncorrectFormat = "InvalidParameterValue.IncorrectFormat"
        case invalidParameterValue_InstanceIdMalformed = "InvalidParameterValue.InstanceIdMalformed"
        case invalidParameterValue_InstanceNotSupportedMixPricingModel = "InvalidParameterValue.InstanceNotSupportedMixPricingModel"
        case invalidParameterValue_InstanceTypeNotFound = "InvalidParameterValue.InstanceTypeNotFound"
        case invalidParameterValue_InstanceTypeNotSupportHpcCluster = "InvalidParameterValue.InstanceTypeNotSupportHpcCluster"
        case invalidParameterValue_InstanceTypeRequiredHpcCluster = "InvalidParameterValue.InstanceTypeRequiredHpcCluster"
        case invalidParameterValue_InsufficientOffering = "InvalidParameterValue.InsufficientOffering"
        case invalidParameterValue_InsufficientPrice = "InvalidParameterValue.InsufficientPrice"
        case invalidParameterValue_InvalidAppIdFormat = "InvalidParameterValue.InvalidAppIdFormat"
        case invalidParameterValue_InvalidBucketPermissionForExport = "InvalidParameterValue.InvalidBucketPermissionForExport"
        case invalidParameterValue_InvalidFileNamePrefixList = "InvalidParameterValue.InvalidFileNamePrefixList"
        case invalidParameterValue_InvalidGPUFamilyChange = "InvalidParameterValue.InvalidGPUFamilyChange"
        case invalidParameterValue_InvalidImageForGivenInstanceType = "InvalidParameterValue.InvalidImageForGivenInstanceType"
        case invalidParameterValue_InvalidImageFormat = "InvalidParameterValue.InvalidImageFormat"
        case invalidParameterValue_InvalidImageId = "InvalidParameterValue.InvalidImageId"
        case invalidParameterValue_InvalidImageIdForRetsetInstance = "InvalidParameterValue.InvalidImageIdForRetsetInstance"
        case invalidParameterValue_InvalidImageOsName = "InvalidParameterValue.InvalidImageOsName"
        case invalidParameterValue_InvalidImageState = "InvalidParameterValue.InvalidImageState"
        case invalidParameterValue_InvalidInstanceSource = "InvalidParameterValue.InvalidInstanceSource"
        case invalidParameterValue_InvalidIpFormat = "InvalidParameterValue.InvalidIpFormat"
        case invalidParameterValue_InvalidLaunchTemplateDescription = "InvalidParameterValue.InvalidLaunchTemplateDescription"
        case invalidParameterValue_InvalidLaunchTemplateName = "InvalidParameterValue.InvalidLaunchTemplateName"
        case invalidParameterValue_InvalidLaunchTemplateVersionDescription = "InvalidParameterValue.InvalidLaunchTemplateVersionDescription"
        case invalidParameterValue_InvalidLicenseType = "InvalidParameterValue.InvalidLicenseType"
        case invalidParameterValue_InvalidParameterValueLimit = "InvalidParameterValue.InvalidParameterValueLimit"
        case invalidParameterValue_InvalidPassword = "InvalidParameterValue.InvalidPassword"
        case invalidParameterValue_InvalidRegion = "InvalidParameterValue.InvalidRegion"
        case invalidParameterValue_InvalidTimeFormat = "InvalidParameterValue.InvalidTimeFormat"
        case invalidParameterValue_InvalidUserDataFormat = "InvalidParameterValue.InvalidUserDataFormat"
        case invalidParameterValue_InvalidVagueName = "InvalidParameterValue.InvalidVagueName"
        case invalidParameterValue_KeyPairNotFound = "InvalidParameterValue.KeyPairNotFound"
        case invalidParameterValue_KeyPairNotSupported = "InvalidParameterValue.KeyPairNotSupported"
        case invalidParameterValue_LaunchTemplateDefaultVersion = "InvalidParameterValue.LaunchTemplateDefaultVersion"
        case invalidParameterValue_LaunchTemplateIdMalformed = "InvalidParameterValue.LaunchTemplateIdMalformed"
        case invalidParameterValue_LaunchTemplateIdNotExisted = "InvalidParameterValue.LaunchTemplateIdNotExisted"
        case invalidParameterValue_LaunchTemplateIdVerNotExisted = "InvalidParameterValue.LaunchTemplateIdVerNotExisted"
        case invalidParameterValue_LaunchTemplateIdVerSetAlready = "InvalidParameterValue.LaunchTemplateIdVerSetAlready"
        case invalidParameterValue_LaunchTemplateNotFound = "InvalidParameterValue.LaunchTemplateNotFound"
        case invalidParameterValue_LaunchTemplateVersion = "InvalidParameterValue.LaunchTemplateVersion"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_LocalDiskSizeRange = "InvalidParameterValue.LocalDiskSizeRange"
        case invalidParameterValue_MustDhcpEnabledVpc = "InvalidParameterValue.MustDhcpEnabledVpc"
        case invalidParameterValue_NotCdcSubnet = "InvalidParameterValue.NotCdcSubnet"
        case invalidParameterValue_NotSupported = "InvalidParameterValue.NotSupported"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameterValue_SnapshotIdMalformed = "InvalidParameterValue.SnapshotIdMalformed"
        case invalidParameterValue_SubnetIdMalformed = "InvalidParameterValue.SubnetIdMalformed"
        case invalidParameterValue_SubnetNotExist = "InvalidParameterValue.SubnetNotExist"
        case invalidParameterValue_TagKeyNotFound = "InvalidParameterValue.TagKeyNotFound"
        case invalidParameterValue_TagQuotaLimitExceeded = "InvalidParameterValue.TagQuotaLimitExceeded"
        case invalidParameterValue_ThreadPerCoreValue = "InvalidParameterValue.ThreadPerCoreValue"
        case invalidParameterValue_TooLarge = "InvalidParameterValue.TooLarge"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_VpcIdMalformed = "InvalidParameterValue.VpcIdMalformed"
        case invalidParameterValue_VpcIdNotExist = "InvalidParameterValue.VpcIdNotExist"
        case invalidParameterValue_VpcIdZoneIdNotMatch = "InvalidParameterValue.VpcIdZoneIdNotMatch"
        case invalidParameterValue_VpcNotSupportIpv6Address = "InvalidParameterValue.VpcNotSupportIpv6Address"
        case invalidParameterValue_ZoneNotSupported = "InvalidParameterValue.ZoneNotSupported"
        case invalidParameter_AtMostOne = "InvalidParameter.AtMostOne"
        case invalidParameter_DataDiskIdContainsRootDisk = "InvalidParameter.DataDiskIdContainsRootDisk"
        case invalidParameter_DataDiskNotBelongSpecifiedInstance = "InvalidParameter.DataDiskNotBelongSpecifiedInstance"
        case invalidParameter_DuplicateSystemSnapshots = "InvalidParameter.DuplicateSystemSnapshots"
        case invalidParameter_HostIdStatusNotSupport = "InvalidParameter.HostIdStatusNotSupport"
        case invalidParameter_HostNameIllegal = "InvalidParameter.HostNameIllegal"
        case invalidParameter_ImageIdsSnapshotIdsMustOne = "InvalidParameter.ImageIdsSnapshotIdsMustOne"
        case invalidParameter_InstanceImageNotSupport = "InvalidParameter.InstanceImageNotSupport"
        case invalidParameter_InternetAccessibleNotSupported = "InvalidParameter.InternetAccessibleNotSupported"
        case invalidParameter_InvalidCloudDiskSoldOut = "InvalidParameter.InvalidCloudDiskSoldOut"
        case invalidParameter_InvalidDependence = "InvalidParameter.InvalidDependence"
        case invalidParameter_InvalidInstanceNotSupported = "InvalidParameter.InvalidInstanceNotSupported"
        case invalidParameter_InvalidIpFormat = "InvalidParameter.InvalidIpFormat"
        case invalidParameter_InvalidParameterCoexistImageIdsFilters = "InvalidParameter.InvalidParameterCoexistImageIdsFilters"
        case invalidParameter_InvalidParameterUrlError = "InvalidParameter.InvalidParameterUrlError"
        case invalidParameter_LackCoreCountOrThreadPerCore = "InvalidParameter.LackCoreCountOrThreadPerCore"
        case invalidParameter_LocalDataDiskNotSupport = "InvalidParameter.LocalDataDiskNotSupport"
        case invalidParameter_ParameterConflict = "InvalidParameter.ParameterConflict"
        case invalidParameter_PasswordNotSupported = "InvalidParameter.PasswordNotSupported"
        case invalidParameter_SnapshotNotFound = "InvalidParameter.SnapshotNotFound"
        case invalidParameter_SpecifyOneParameter = "InvalidParameter.SpecifyOneParameter"
        case invalidParameter_SwapDiskNotSupport = "InvalidParameter.SwapDiskNotSupport"
        case invalidParameter_SystemSnapshotNotFound = "InvalidParameter.SystemSnapshotNotFound"
        case invalidParameter_ValueTooLarge = "InvalidParameter.ValueTooLarge"
        case invalidPassword = "InvalidPassword"
        case invalidPeriod = "InvalidPeriod"
        case invalidPermission = "InvalidPermission"
        case invalidProjectId_NotFound = "InvalidProjectId.NotFound"
        case invalidPublicKey_Duplicate = "InvalidPublicKey.Duplicate"
        case invalidPublicKey_Malformed = "InvalidPublicKey.Malformed"
        case invalidRegion_NotFound = "InvalidRegion.NotFound"
        case invalidRegion_Unavailable = "InvalidRegion.Unavailable"
        case invalidSecurityGroupId_NotFound = "InvalidSecurityGroupId.NotFound"
        case invalidSgId_Malformed = "InvalidSgId.Malformed"
        case invalidZone_MismatchRegion = "InvalidZone.MismatchRegion"
        case limitExceeded_AssociateUSGLimitExceeded = "LimitExceeded.AssociateUSGLimitExceeded"
        case limitExceeded_CvmsVifsPerSecGroupLimitExceeded = "LimitExceeded.CvmsVifsPerSecGroupLimitExceeded"
        case limitExceeded_DisasterRecoverGroup = "LimitExceeded.DisasterRecoverGroup"
        case limitExceeded_EipNumLimit = "LimitExceeded.EipNumLimit"
        case limitExceeded_EniNumLimit = "LimitExceeded.EniNumLimit"
        case limitExceeded_ExportImageTaskLimitExceeded = "LimitExceeded.ExportImageTaskLimitExceeded"
        case limitExceeded_HpcClusterQuota = "LimitExceeded.HpcClusterQuota"
        case limitExceeded_IPv6AddressNum = "LimitExceeded.IPv6AddressNum"
        case limitExceeded_InstanceEniNumLimit = "LimitExceeded.InstanceEniNumLimit"
        case limitExceeded_InstanceQuota = "LimitExceeded.InstanceQuota"
        case limitExceeded_InstanceTypeBandwidth = "LimitExceeded.InstanceTypeBandwidth"
        case limitExceeded_LaunchTemplateQuota = "LimitExceeded.LaunchTemplateQuota"
        case limitExceeded_LaunchTemplateVersionQuota = "LimitExceeded.LaunchTemplateVersionQuota"
        case limitExceeded_PrepayQuota = "LimitExceeded.PrepayQuota"
        case limitExceeded_SingleUSGQuota = "LimitExceeded.SingleUSGQuota"
        case limitExceeded_SpotQuota = "LimitExceeded.SpotQuota"
        case limitExceeded_TagResourceQuota = "LimitExceeded.TagResourceQuota"
        case limitExceeded_UserReturnQuota = "LimitExceeded.UserReturnQuota"
        case limitExceeded_UserSpotQuota = "LimitExceeded.UserSpotQuota"
        case limitExceeded_VpcSubnetNum = "LimitExceeded.VpcSubnetNum"
        case missingParameter = "MissingParameter"
        case missingParameter_AtLeastOne = "MissingParameter.AtLeastOne"
        case missingParameter_DPDKInstanceTypeRequiredVPC = "MissingParameter.DPDKInstanceTypeRequiredVPC"
        case missingParameter_MonitorService = "MissingParameter.MonitorService"
        case mutexOperation_TaskRunning = "MutexOperation.TaskRunning"
        case operationDenied_ChcInstallCloudImageWithoutDeployNetwork = "OperationDenied.ChcInstallCloudImageWithoutDeployNetwork"
        case operationDenied_InnerUserProhibitAction = "OperationDenied.InnerUserProhibitAction"
        case operationDenied_InstanceOperationInProgress = "OperationDenied.InstanceOperationInProgress"
        case overQuota = "OverQuota"
        case regionAbilityLimit_UnsupportedToImportImage = "RegionAbilityLimit.UnsupportedToImportImage"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_HpcCluster = "ResourceInUse.HpcCluster"
        case resourceInsufficient_AvailabilityZoneSoldOut = "ResourceInsufficient.AvailabilityZoneSoldOut"
        case resourceInsufficient_CloudDiskSoldOut = "ResourceInsufficient.CloudDiskSoldOut"
        case resourceInsufficient_CloudDiskUnavailable = "ResourceInsufficient.CloudDiskUnavailable"
        case resourceInsufficient_DisasterRecoverGroupCvmQuota = "ResourceInsufficient.DisasterRecoverGroupCvmQuota"
        case resourceInsufficient_SpecifiedInstanceType = "ResourceInsufficient.SpecifiedInstanceType"
        case resourceInsufficient_ZoneSoldOutForSpecifiedInstance = "ResourceInsufficient.ZoneSoldOutForSpecifiedInstance"
        case resourceNotFound_HpcCluster = "ResourceNotFound.HpcCluster"
        case resourceNotFound_InvalidPlacementSet = "ResourceNotFound.InvalidPlacementSet"
        case resourceNotFound_InvalidZoneInstanceType = "ResourceNotFound.InvalidZoneInstanceType"
        case resourceNotFound_NoDefaultCbs = "ResourceNotFound.NoDefaultCbs"
        case resourceNotFound_NoDefaultCbsWithReason = "ResourceNotFound.NoDefaultCbsWithReason"
        case resourceUnavailable_InstanceType = "ResourceUnavailable.InstanceType"
        case resourceUnavailable_SnapshotCreating = "ResourceUnavailable.SnapshotCreating"
        case resourcesSoldOut_AvailableZone = "ResourcesSoldOut.AvailableZone"
        case resourcesSoldOut_EipInsufficient = "ResourcesSoldOut.EipInsufficient"
        case resourcesSoldOut_SpecifiedInstanceType = "ResourcesSoldOut.SpecifiedInstanceType"
        case secGroupActionFailure = "SecGroupActionFailure"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_ImageNotBelongToAccount = "UnauthorizedOperation.ImageNotBelongToAccount"
        case unauthorizedOperation_InvalidToken = "UnauthorizedOperation.InvalidToken"
        case unauthorizedOperation_MFAExpired = "UnauthorizedOperation.MFAExpired"
        case unauthorizedOperation_MFANotFound = "UnauthorizedOperation.MFANotFound"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BandwidthPackageIdNotSupported = "UnsupportedOperation.BandwidthPackageIdNotSupported"
        case unsupportedOperation_EdgeZoneNotSupportCloudDisk = "UnsupportedOperation.EdgeZoneNotSupportCloudDisk"
        case unsupportedOperation_ElasticNetworkInterface = "UnsupportedOperation.ElasticNetworkInterface"
        case unsupportedOperation_EncryptedImagesNotSupported = "UnsupportedOperation.EncryptedImagesNotSupported"
        case unsupportedOperation_HeterogeneousChangeInstanceFamily = "UnsupportedOperation.HeterogeneousChangeInstanceFamily"
        case unsupportedOperation_IPv6NotSupportVpcMigrate = "UnsupportedOperation.IPv6NotSupportVpcMigrate"
        case unsupportedOperation_ImageTooLargeExportUnsupported = "UnsupportedOperation.ImageTooLargeExportUnsupported"
        case unsupportedOperation_InstanceChargeType = "UnsupportedOperation.InstanceChargeType"
        case unsupportedOperation_InstanceMixedPricingModel = "UnsupportedOperation.InstanceMixedPricingModel"
        case unsupportedOperation_InstanceMixedZoneType = "UnsupportedOperation.InstanceMixedZoneType"
        case unsupportedOperation_InstanceOsWindows = "UnsupportedOperation.InstanceOsWindows"
        case unsupportedOperation_InstanceStateBanning = "UnsupportedOperation.InstanceStateBanning"
        case unsupportedOperation_InstanceStateCorrupted = "UnsupportedOperation.InstanceStateCorrupted"
        case unsupportedOperation_InstanceStateEnterRescueMode = "UnsupportedOperation.InstanceStateEnterRescueMode"
        case unsupportedOperation_InstanceStateEnterServiceLiveMigrate = "UnsupportedOperation.InstanceStateEnterServiceLiveMigrate"
        case unsupportedOperation_InstanceStateExitRescueMode = "UnsupportedOperation.InstanceStateExitRescueMode"
        case unsupportedOperation_InstanceStateExitServiceLiveMigrate = "UnsupportedOperation.InstanceStateExitServiceLiveMigrate"
        case unsupportedOperation_InstanceStateFreezing = "UnsupportedOperation.InstanceStateFreezing"
        case unsupportedOperation_InstanceStateIsolating = "UnsupportedOperation.InstanceStateIsolating"
        case unsupportedOperation_InstanceStateLaunchFailed = "UnsupportedOperation.InstanceStateLaunchFailed"
        case unsupportedOperation_InstanceStatePending = "UnsupportedOperation.InstanceStatePending"
        case unsupportedOperation_InstanceStateRebooting = "UnsupportedOperation.InstanceStateRebooting"
        case unsupportedOperation_InstanceStateRescueMode = "UnsupportedOperation.InstanceStateRescueMode"
        case unsupportedOperation_InstanceStateRunning = "UnsupportedOperation.InstanceStateRunning"
        case unsupportedOperation_InstanceStateServiceLiveMigrate = "UnsupportedOperation.InstanceStateServiceLiveMigrate"
        case unsupportedOperation_InstanceStateShutdown = "UnsupportedOperation.InstanceStateShutdown"
        case unsupportedOperation_InstanceStateStarting = "UnsupportedOperation.InstanceStateStarting"
        case unsupportedOperation_InstanceStateStopped = "UnsupportedOperation.InstanceStateStopped"
        case unsupportedOperation_InstanceStateStopping = "UnsupportedOperation.InstanceStateStopping"
        case unsupportedOperation_InstanceStateTerminated = "UnsupportedOperation.InstanceStateTerminated"
        case unsupportedOperation_InstanceStateTerminating = "UnsupportedOperation.InstanceStateTerminating"
        case unsupportedOperation_InstancesProtected = "UnsupportedOperation.InstancesProtected"
        case unsupportedOperation_InsufficientClusterQuota = "UnsupportedOperation.InsufficientClusterQuota"
        case unsupportedOperation_InvalidDataDisk = "UnsupportedOperation.InvalidDataDisk"
        case unsupportedOperation_InvalidDisk = "UnsupportedOperation.InvalidDisk"
        case unsupportedOperation_InvalidImageLicenseTypeForReset = "UnsupportedOperation.InvalidImageLicenseTypeForReset"
        case unsupportedOperation_InvalidInstanceNotSupportedProtectedInstance = "UnsupportedOperation.InvalidInstanceNotSupportedProtectedInstance"
        case unsupportedOperation_InvalidPermissionNonInternationalAccount = "UnsupportedOperation.InvalidPermissionNonInternationalAccount"
        case unsupportedOperation_InvalidRegionDiskEncrypt = "UnsupportedOperation.InvalidRegionDiskEncrypt"
        case unsupportedOperation_InvalidZone = "UnsupportedOperation.InvalidZone"
        case unsupportedOperation_KeyPairUnsupportedWindows = "UnsupportedOperation.KeyPairUnsupportedWindows"
        case unsupportedOperation_LocalDataDiskChangeInstanceFamily = "UnsupportedOperation.LocalDataDiskChangeInstanceFamily"
        case unsupportedOperation_LocalDiskMigratingToCloudDisk = "UnsupportedOperation.LocalDiskMigratingToCloudDisk"
        case unsupportedOperation_MarketImageExportUnsupported = "UnsupportedOperation.MarketImageExportUnsupported"
        case unsupportedOperation_ModifyEncryptionNotSupported = "UnsupportedOperation.ModifyEncryptionNotSupported"
        case unsupportedOperation_ModifyVPCWithCLB = "UnsupportedOperation.ModifyVPCWithCLB"
        case unsupportedOperation_NoInstanceTypeSupportSpot = "UnsupportedOperation.NoInstanceTypeSupportSpot"
        case unsupportedOperation_NoVpcNetwork = "UnsupportedOperation.NoVpcNetwork"
        case unsupportedOperation_NotFpgaInstance = "UnsupportedOperation.NotFpgaInstance"
        case unsupportedOperation_NotSupportImportInstancesActionTimer = "UnsupportedOperation.NotSupportImportInstancesActionTimer"
        case unsupportedOperation_NotSupportInstanceImage = "UnsupportedOperation.NotSupportInstanceImage"
        case unsupportedOperation_OnlyForPrepaidAccount = "UnsupportedOperation.OnlyForPrepaidAccount"
        case unsupportedOperation_OriginalInstanceTypeInvalid = "UnsupportedOperation.OriginalInstanceTypeInvalid"
        case unsupportedOperation_PublicImageExportUnsupported = "UnsupportedOperation.PublicImageExportUnsupported"
        case unsupportedOperation_RawLocalDiskInsReinstalltoQcow2 = "UnsupportedOperation.RawLocalDiskInsReinstalltoQcow2"
        case unsupportedOperation_RedHatInstanceTerminateUnsupported = "UnsupportedOperation.RedHatInstanceTerminateUnsupported"
        case unsupportedOperation_RedHatInstanceUnsupported = "UnsupportedOperation.RedHatInstanceUnsupported"
        case unsupportedOperation_Region = "UnsupportedOperation.Region"
        case unsupportedOperation_ReservedInstanceInvisibleForUser = "UnsupportedOperation.ReservedInstanceInvisibleForUser"
        case unsupportedOperation_ReservedInstanceOutofQuata = "UnsupportedOperation.ReservedInstanceOutofQuata"
        case unsupportedOperation_SharedImageExportUnsupported = "UnsupportedOperation.SharedImageExportUnsupported"
        case unsupportedOperation_SpecialInstanceType = "UnsupportedOperation.SpecialInstanceType"
        case unsupportedOperation_SpotUnsupportedRegion = "UnsupportedOperation.SpotUnsupportedRegion"
        case unsupportedOperation_StoppedModeStopCharging = "UnsupportedOperation.StoppedModeStopCharging"
        case unsupportedOperation_StoppedModeStopChargingSameFamily = "UnsupportedOperation.StoppedModeStopChargingSameFamily"
        case unsupportedOperation_UnderwritingInstanceTypeOnlySupportAutoRenew = "UnsupportedOperation.UnderwritingInstanceTypeOnlySupportAutoRenew"
        case unsupportedOperation_UnsupportedChangeInstanceFamily = "UnsupportedOperation.UnsupportedChangeInstanceFamily"
        case unsupportedOperation_UnsupportedChangeInstanceFamilyToARM = "UnsupportedOperation.UnsupportedChangeInstanceFamilyToARM"
        case unsupportedOperation_UnsupportedChangeInstanceToThisInstanceFamily = "UnsupportedOperation.UnsupportedChangeInstanceToThisInstanceFamily"
        case unsupportedOperation_UnsupportedInternationalUser = "UnsupportedOperation.UnsupportedInternationalUser"
        case unsupportedOperation_UserLimitOperationExceedQuota = "UnsupportedOperation.UserLimitOperationExceedQuota"
        case unsupportedOperation_WindowsImageExportUnsupported = "UnsupportedOperation.WindowsImageExportUnsupported"
        case vpcAddrNotInSubNet = "VpcAddrNotInSubNet"
        case vpcIpIsUsed = "VpcIpIsUsed"
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
    
    /// 该请求账户未通过资格审计。
    public static var accountQualificationRestrictions: TCCvmError {
        TCCvmError(.accountQualificationRestrictions)
    }
    
    /// 角色名鉴权失败
    public static var authFailure_CamRoleNameAuthenticateFailed: TCCvmError {
        TCCvmError(.authFailure_CamRoleNameAuthenticateFailed)
    }
    
    /// 弹性网卡不允许跨子网操作。
    public static var eniNotAllowedChangeSubnet: TCCvmError {
        TCCvmError(.eniNotAllowedChangeSubnet)
    }
    
    /// 账号已经存在
    public static var failedOperation_AccountAlreadyExists: TCCvmError {
        TCCvmError(.failedOperation_AccountAlreadyExists)
    }
    
    /// 账号为当前用户
    public static var failedOperation_AccountIsYourSelf: TCCvmError {
        TCCvmError(.failedOperation_AccountIsYourSelf)
    }
    
    public static var failedOperation_BYOLImageShareFailed: TCCvmError {
        TCCvmError(.failedOperation_BYOLImageShareFailed)
    }
    
    /// 未找到指定的容灾组
    public static var failedOperation_DisasterRecoverGroupNotFound: TCCvmError {
        TCCvmError(.failedOperation_DisasterRecoverGroupNotFound)
    }
    
    /// 标签键存在不合法字符
    public static var failedOperation_IllegalTagKey: TCCvmError {
        TCCvmError(.failedOperation_IllegalTagKey)
    }
    
    /// 标签值存在不合法字符。
    public static var failedOperation_IllegalTagValue: TCCvmError {
        TCCvmError(.failedOperation_IllegalTagValue)
    }
    
    /// 询价失败
    public static var failedOperation_InquiryPriceFailed: TCCvmError {
        TCCvmError(.failedOperation_InquiryPriceFailed)
    }
    
    /// 查询退换价格失败，找不到付款订单，请检查设备 <code>ins-xxxxxxx</code> 是否已过期。
    public static var failedOperation_InquiryRefundPriceFailed: TCCvmError {
        TCCvmError(.failedOperation_InquiryRefundPriceFailed)
    }
    
    public static var failedOperation_InvalidImageState: TCCvmError {
        TCCvmError(.failedOperation_InvalidImageState)
    }
    
    /// 请求不支持<code>EMR</code>的实例<code>ins-xxxxxxxx</code>。
    public static var failedOperation_InvalidInstanceApplicationRoleEmr: TCCvmError {
        TCCvmError(.failedOperation_InvalidInstanceApplicationRoleEmr)
    }
    
    /// 子网可用IP已耗尽。
    public static var failedOperation_NoAvailableIpAddressCountInSubnet: TCCvmError {
        TCCvmError(.failedOperation_NoAvailableIpAddressCountInSubnet)
    }
    
    /// 当前实例没有弹性IP
    public static var failedOperation_NotFoundEIP: TCCvmError {
        TCCvmError(.failedOperation_NotFoundEIP)
    }
    
    /// 账号为协作者，请填写主账号
    public static var failedOperation_NotMasterAccount: TCCvmError {
        TCCvmError(.failedOperation_NotMasterAccount)
    }
    
    /// 指定的置放群组非空。
    public static var failedOperation_PlacementSetNotEmpty: TCCvmError {
        TCCvmError(.failedOperation_PlacementSetNotEmpty)
    }
    
    /// 促销期内购买的实例不允许调整配置或计费模式。
    public static var failedOperation_PromotionalPerioRestriction: TCCvmError {
        TCCvmError(.failedOperation_PromotionalPerioRestriction)
    }
    
    /// 暂无法在此国家/地区提供该服务。
    public static var failedOperation_PromotionalRegionRestriction: TCCvmError {
        TCCvmError(.failedOperation_PromotionalRegionRestriction)
    }
    
    /// 镜像共享失败。
    public static var failedOperation_QImageShareFailed: TCCvmError {
        TCCvmError(.failedOperation_QImageShareFailed)
    }
    
    /// 镜像共享失败。
    public static var failedOperation_RImageShareFailed: TCCvmError {
        TCCvmError(.failedOperation_RImageShareFailed)
    }
    
    /// 安全组操作失败。
    public static var failedOperation_SecurityGroupActionFailed: TCCvmError {
        TCCvmError(.failedOperation_SecurityGroupActionFailed)
    }
    
    /// 快照容量大于磁盘大小，请选用更大的磁盘空间。
    public static var failedOperation_SnapshotSizeLargerThanDataSize: TCCvmError {
        TCCvmError(.failedOperation_SnapshotSizeLargerThanDataSize)
    }
    
    /// 不支持快照size小于云盘size。
    public static var failedOperation_SnapshotSizeLessThanDataSize: TCCvmError {
        TCCvmError(.failedOperation_SnapshotSizeLessThanDataSize)
    }
    
    /// 请求中指定的标签键为系统预留标签，禁止创建
    public static var failedOperation_TagKeyReserved: TCCvmError {
        TCCvmError(.failedOperation_TagKeyReserved)
    }
    
    /// 镜像是公共镜像并且启用了自动化助手服务，但它不符合 Linux&amp;x86_64。
    public static var failedOperation_TatAgentNotSupport: TCCvmError {
        TCCvmError(.failedOperation_TatAgentNotSupport)
    }
    
    /// 实例无法退还。
    public static var failedOperation_Unreturnable: TCCvmError {
        TCCvmError(.failedOperation_Unreturnable)
    }
    
    /// 镜像配额超过了限制。
    public static var imageQuotaLimitExceeded: TCCvmError {
        TCCvmError(.imageQuotaLimitExceeded)
    }
    
    /// 表示当前创建的实例个数超过了该账户允许购买的剩余配额数。
    public static var instancesQuotaLimitExceeded: TCCvmError {
        TCCvmError(.instancesQuotaLimitExceeded)
    }
    
    /// 内部错误。
    public static var internalError: TCCvmError {
        TCCvmError(.internalError)
    }
    
    /// 内部错误
    public static var internalError_TradeUnknownError: TCCvmError {
        TCCvmError(.internalError_TradeUnknownError)
    }
    
    /// 操作内部错误。
    public static var internalServerError: TCCvmError {
        TCCvmError(.internalServerError)
    }
    
    /// 无效的账户Id。
    public static var invalidAccountId_NotFound: TCCvmError {
        TCCvmError(.invalidAccountId_NotFound)
    }
    
    /// 您无法共享镜像给自己。
    public static var invalidAccountIs_YourSelf: TCCvmError {
        TCCvmError(.invalidAccountIs_YourSelf)
    }
    
    /// 账户余额不足。
    public static var invalidAccount_InsufficientBalance: TCCvmError {
        TCCvmError(.invalidAccount_InsufficientBalance)
    }
    
    /// 账户有未支付订单。
    public static var invalidAccount_UnpaidOrder: TCCvmError {
        TCCvmError(.invalidAccount_UnpaidOrder)
    }
    
    /// 指定的ClientToken字符串长度超出限制，必须小于等于64字节。
    public static var invalidClientToken_TooLong: TCCvmError {
        TCCvmError(.invalidClientToken_TooLong)
    }
    
    /// 无效的过滤器。
    public static var invalidFilter: TCCvmError {
        TCCvmError(.invalidFilter)
    }
    
    /// <a href="https://cloud.tencent.com/document/api/213/15753#Filter"><code>Filter</code></a>。
    public static var invalidFilterValue_LimitExceeded: TCCvmError {
        TCCvmError(.invalidFilterValue_LimitExceeded)
    }
    
    /// 无效<a href="https://cloud.tencent.com/document/product/416">CDH</a> <code>ID</code>。指定的<a href="https://cloud.tencent.com/document/product/416">CDH</a> <code>ID</code>格式错误。例如<code>ID</code>长度错误<code>host-1122</code>。
    public static var invalidHostId_Malformed: TCCvmError {
        TCCvmError(.invalidHostId_Malformed)
    }
    
    /// 指定的HostId不存在，或不属于该请求账号所有。
    public static var invalidHostId_NotFound: TCCvmError {
        TCCvmError(.invalidHostId_NotFound)
    }
    
    /// 不支持该宿主机实例执行指定的操作。
    public static var invalidHost_NotSupported: TCCvmError {
        TCCvmError(.invalidHost_NotSupported)
    }
    
    /// 镜像处于共享中。
    public static var invalidImageId_InShared: TCCvmError {
        TCCvmError(.invalidImageId_InShared)
    }
    
    /// 镜像状态不合法。
    public static var invalidImageId_IncorrectState: TCCvmError {
        TCCvmError(.invalidImageId_IncorrectState)
    }
    
    /// 错误的镜像Id格式。
    public static var invalidImageId_Malformed: TCCvmError {
        TCCvmError(.invalidImageId_Malformed)
    }
    
    /// 未找到该镜像。
    public static var invalidImageId_NotFound: TCCvmError {
        TCCvmError(.invalidImageId_NotFound)
    }
    
    /// 镜像大小超过限制。
    public static var invalidImageId_TooLarge: TCCvmError {
        TCCvmError(.invalidImageId_TooLarge)
    }
    
    /// 镜像名称与原有镜像重复。
    public static var invalidImageName_Duplicate: TCCvmError {
        TCCvmError(.invalidImageName_Duplicate)
    }
    
    /// 不支持的操作系统类型。
    public static var invalidImageOsType_Unsupported: TCCvmError {
        TCCvmError(.invalidImageOsType_Unsupported)
    }
    
    /// 不支持的操作系统版本。
    public static var invalidImageOsVersion_Unsupported: TCCvmError {
        TCCvmError(.invalidImageOsVersion_Unsupported)
    }
    
    /// 无效实例<code>ID</code>。指定的实例<code>ID</code>格式错误。例如实例<code>ID</code>长度错误<code>ins-1122</code>。
    public static var invalidInstanceId_Malformed: TCCvmError {
        TCCvmError(.invalidInstanceId_Malformed)
    }
    
    /// 没有找到相应实例。
    public static var invalidInstanceId_NotFound: TCCvmError {
        TCCvmError(.invalidInstanceId_NotFound)
    }
    
    /// 指定的InstanceName字符串长度超出限制，必须小于等于60字节。
    public static var invalidInstanceName_TooLong: TCCvmError {
        TCCvmError(.invalidInstanceName_TooLong)
    }
    
    /// 该实例不满足包月<a href="https://cloud.tencent.com/document/product/213/9711">退还规则</a>。
    public static var invalidInstanceNotSupportedPrepaidInstance: TCCvmError {
        TCCvmError(.invalidInstanceNotSupportedPrepaidInstance)
    }
    
    /// 指定实例的当前状态不能进行该操作。
    public static var invalidInstanceState: TCCvmError {
        TCCvmError(.invalidInstanceState)
    }
    
    /// 指定InstanceType参数格式不合法。
    public static var invalidInstanceType_Malformed: TCCvmError {
        TCCvmError(.invalidInstanceType_Malformed)
    }
    
    /// 不被支持的实例。
    public static var invalidInstance_NotSupported: TCCvmError {
        TCCvmError(.invalidInstance_NotSupported)
    }
    
    /// 无效密钥对ID。指定的密钥对ID格式错误，例如 <code>ID</code> 长度错误<code>skey-1122</code>。
    public static var invalidKeyPairId_Malformed: TCCvmError {
        TCCvmError(.invalidKeyPairId_Malformed)
    }
    
    /// 无效密钥对ID。指定的密钥对ID不存在。
    public static var invalidKeyPairId_NotFound: TCCvmError {
        TCCvmError(.invalidKeyPairId_NotFound)
    }
    
    /// 密钥名称为空。
    public static var invalidKeyPairNameEmpty: TCCvmError {
        TCCvmError(.invalidKeyPairNameEmpty)
    }
    
    /// 密钥名称包含非法字符。密钥名称只支持英文、数字和下划线。
    public static var invalidKeyPairNameIncludeIllegalChar: TCCvmError {
        TCCvmError(.invalidKeyPairNameIncludeIllegalChar)
    }
    
    /// 密钥名称超过25个字符。
    public static var invalidKeyPairNameTooLong: TCCvmError {
        TCCvmError(.invalidKeyPairNameTooLong)
    }
    
    /// 密钥对名称重复。
    public static var invalidKeyPairName_Duplicate: TCCvmError {
        TCCvmError(.invalidKeyPairName_Duplicate)
    }
    
    /// 密钥对数量超过限制。
    public static var invalidKeyPair_LimitExceeded: TCCvmError {
        TCCvmError(.invalidKeyPair_LimitExceeded)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCvmError {
        TCCvmError(.invalidParameter)
    }
    
    /// 表示参数组合不正确。
    public static var invalidParameterCombination: TCCvmError {
        TCCvmError(.invalidParameterCombination)
    }
    
    /// 指定的两个参数冲突，不能同时存在。 EIP只能绑定在实例上或指定网卡的指定内网 IP 上。
    public static var invalidParameterConflict: TCCvmError {
        TCCvmError(.invalidParameterConflict)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCvmError {
        TCCvmError(.invalidParameterValue)
    }
    
    /// 参数值数量超过限制。
    public static var invalidParameterValueLimit: TCCvmError {
        TCCvmError(.invalidParameterValueLimit)
    }
    
    /// 无效参数值。指定的 <code>Offset</code> 无效。
    public static var invalidParameterValueOffset: TCCvmError {
        TCCvmError(.invalidParameterValueOffset)
    }
    
    /// 入参数目不相等。
    public static var invalidParameterValue_AmountNotEqual: TCCvmError {
        TCCvmError(.invalidParameterValue_AmountNotEqual)
    }
    
    /// 共享带宽包ID不合要求，请提供规范的共享带宽包ID，类似bwp-xxxxxxxx，字母x代表小写字符或者数字。
    public static var invalidParameterValue_BandwidthPackageIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_BandwidthPackageIdMalformed)
    }
    
    /// 请确认指定的带宽包是否存在。
    public static var invalidParameterValue_BandwidthPackageIdNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_BandwidthPackageIdNotFound)
    }
    
    /// 实例为基础网络实例，目标实例规格仅支持私有网络，不支持调整。
    public static var invalidParameterValue_BasicNetworkInstanceFamily: TCCvmError {
        TCCvmError(.invalidParameterValue_BasicNetworkInstanceFamily)
    }
    
    /// 请确认存储桶是否存在。
    public static var invalidParameterValue_BucketNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_BucketNotFound)
    }
    
    /// CamRoleName不合要求，只允许包含英文字母、数字或者 +=,.@_- 字符。
    public static var invalidParameterValue_CamRoleNameMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_CamRoleNameMalformed)
    }
    
    /// 找不到对应的CHC物理服务器。
    public static var invalidParameterValue_ChcHostsNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_ChcHostsNotFound)
    }
    
    /// 该CHC未配置任何网络。
    public static var invalidParameterValue_ChcNetworkEmpty: TCCvmError {
        TCCvmError(.invalidParameterValue_ChcNetworkEmpty)
    }
    
    /// SSD云硬盘为数据盘时，购买大小不得小于100GB
    public static var invalidParameterValue_CloudSsdDataDiskSizeTooSmall: TCCvmError {
        TCCvmError(.invalidParameterValue_CloudSsdDataDiskSizeTooSmall)
    }
    
    /// 核心计数不合法。
    public static var invalidParameterValue_CoreCountValue: TCCvmError {
        TCCvmError(.invalidParameterValue_CoreCountValue)
    }
    
    /// 已经存在部署VPC。
    public static var invalidParameterValue_DeployVpcAlreadyExists: TCCvmError {
        TCCvmError(.invalidParameterValue_DeployVpcAlreadyExists)
    }
    
    /// 置放群组ID格式错误。
    public static var invalidParameterValue_DisasterRecoverGroupIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_DisasterRecoverGroupIdMalformed)
    }
    
    /// 参数值重复。
    public static var invalidParameterValue_Duplicate: TCCvmError {
        TCCvmError(.invalidParameterValue_Duplicate)
    }
    
    public static var invalidParameterValue_DuplicateTags: TCCvmError {
        TCCvmError(.invalidParameterValue_DuplicateTags)
    }
    
    /// 非GPU实例不允许转为GPU实例。
    public static var invalidParameterValue_GPUInstanceFamily: TCCvmError {
        TCCvmError(.invalidParameterValue_GPUInstanceFamily)
    }
    
    /// IP格式非法。
    public static var invalidParameterValue_IPAddressMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_IPAddressMalformed)
    }
    
    /// ipv6地址无效
    public static var invalidParameterValue_IPv6AddressMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_IPv6AddressMalformed)
    }
    
    /// HostName参数值不合法
    public static var invalidParameterValue_IllegalHostName: TCCvmError {
        TCCvmError(.invalidParameterValue_IllegalHostName)
    }
    
    /// 传参格式不对。
    public static var invalidParameterValue_IncorrectFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_IncorrectFormat)
    }
    
    public static var invalidParameterValue_InstanceIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_InstanceIdMalformed)
    }
    
    /// 不支持操作不同计费方式的实例。
    public static var invalidParameterValue_InstanceNotSupportedMixPricingModel: TCCvmError {
        TCCvmError(.invalidParameterValue_InstanceNotSupportedMixPricingModel)
    }
    
    /// 指定机型不存在
    public static var invalidParameterValue_InstanceTypeNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_InstanceTypeNotFound)
    }
    
    /// 实例类型不可加入高性能计算集群。
    public static var invalidParameterValue_InstanceTypeNotSupportHpcCluster: TCCvmError {
        TCCvmError(.invalidParameterValue_InstanceTypeNotSupportHpcCluster)
    }
    
    /// 高性能计算实例需指定对应的高性能计算集群。
    public static var invalidParameterValue_InstanceTypeRequiredHpcCluster: TCCvmError {
        TCCvmError(.invalidParameterValue_InstanceTypeRequiredHpcCluster)
    }
    
    /// 竞价数量不足。
    public static var invalidParameterValue_InsufficientOffering: TCCvmError {
        TCCvmError(.invalidParameterValue_InsufficientOffering)
    }
    
    /// 竞价失败。
    public static var invalidParameterValue_InsufficientPrice: TCCvmError {
        TCCvmError(.invalidParameterValue_InsufficientPrice)
    }
    
    /// 无效的appid。
    public static var invalidParameterValue_InvalidAppIdFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidAppIdFormat)
    }
    
    /// 请检查存储桶的写入权限是否已放通。
    public static var invalidParameterValue_InvalidBucketPermissionForExport: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidBucketPermissionForExport)
    }
    
    /// 参数 FileNamePrefixList 的长度与 ImageIds 或 SnapshotIds 不匹配。
    public static var invalidParameterValue_InvalidFileNamePrefixList: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidFileNamePrefixList)
    }
    
    /// 不支持转为非GPU或其他类型GPU实例。
    public static var invalidParameterValue_InvalidGPUFamilyChange: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidGPUFamilyChange)
    }
    
    /// 镜像ID不支持指定的实例机型。
    public static var invalidParameterValue_InvalidImageForGivenInstanceType: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageForGivenInstanceType)
    }
    
    /// 当前镜像为RAW格式，无法创建CVM，建议您选择其他镜像。
    public static var invalidParameterValue_InvalidImageFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageFormat)
    }
    
    /// 镜像不允许执行该操作
    public static var invalidParameterValue_InvalidImageId: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageId)
    }
    
    /// 镜像无法用于重装当前实例。
    public static var invalidParameterValue_InvalidImageIdForRetsetInstance: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageIdForRetsetInstance)
    }
    
    /// 当前地域不支持指定镜像所包含的操作系统。
    public static var invalidParameterValue_InvalidImageOsName: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageOsName)
    }
    
    /// 镜像被其他操作占用，请检查，并稍后重试。
    public static var invalidParameterValue_InvalidImageState: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidImageState)
    }
    
    /// 该实例配置来自免费升配活动，暂不支持3个月内进行降配。
    public static var invalidParameterValue_InvalidInstanceSource: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidInstanceSource)
    }
    
    /// IP地址不符合规范
    public static var invalidParameterValue_InvalidIpFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidIpFormat)
    }
    
    /// 实例启动模板描述格式错误。
    public static var invalidParameterValue_InvalidLaunchTemplateDescription: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidLaunchTemplateDescription)
    }
    
    /// 实例启动模板名称格式错误。
    public static var invalidParameterValue_InvalidLaunchTemplateName: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidLaunchTemplateName)
    }
    
    /// 实例启动模板描述格式错误。
    public static var invalidParameterValue_InvalidLaunchTemplateVersionDescription: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidLaunchTemplateVersionDescription)
    }
    
    /// 许可证类型不可用。
    public static var invalidParameterValue_InvalidLicenseType: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidLicenseType)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameterValueLimit: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidParameterValueLimit)
    }
    
    /// 无效密码。指定的密码不符合密码复杂度限制。例如密码长度不符合限制等。
    public static var invalidParameterValue_InvalidPassword: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidPassword)
    }
    
    /// Region ID不可用。
    public static var invalidParameterValue_InvalidRegion: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidRegion)
    }
    
    /// 时间格式不合法。
    public static var invalidParameterValue_InvalidTimeFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidTimeFormat)
    }
    
    /// UserData格式错误, 需要base64编码格式
    public static var invalidParameterValue_InvalidUserDataFormat: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidUserDataFormat)
    }
    
    /// 无效的模糊查询字符串。
    public static var invalidParameterValue_InvalidVagueName: TCCvmError {
        TCCvmError(.invalidParameterValue_InvalidVagueName)
    }
    
    /// 请确认密钥是否存在。
    public static var invalidParameterValue_KeyPairNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_KeyPairNotFound)
    }
    
    /// 指定的密钥不支持当前操作。
    public static var invalidParameterValue_KeyPairNotSupported: TCCvmError {
        TCCvmError(.invalidParameterValue_KeyPairNotSupported)
    }
    
    /// 不支持删除默认启动模板版本。
    public static var invalidParameterValue_LaunchTemplateDefaultVersion: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateDefaultVersion)
    }
    
    /// 实例启动模板ID格式错误。
    public static var invalidParameterValue_LaunchTemplateIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateIdMalformed)
    }
    
    /// 实例启动模板ID不存在。
    public static var invalidParameterValue_LaunchTemplateIdNotExisted: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateIdNotExisted)
    }
    
    /// 实例启动模板和版本ID组合不存在。
    public static var invalidParameterValue_LaunchTemplateIdVerNotExisted: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateIdVerNotExisted)
    }
    
    /// 指定的实例启动模板id不存在。
    public static var invalidParameterValue_LaunchTemplateIdVerSetAlready: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateIdVerSetAlready)
    }
    
    /// 实例启动模板未找到。
    public static var invalidParameterValue_LaunchTemplateNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateNotFound)
    }
    
    /// 无效的实例启动模板版本号。
    public static var invalidParameterValue_LaunchTemplateVersion: TCCvmError {
        TCCvmError(.invalidParameterValue_LaunchTemplateVersion)
    }
    
    /// 参数值数量超过限制。
    public static var invalidParameterValue_LimitExceeded: TCCvmError {
        TCCvmError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 本地盘的限制范围。
    public static var invalidParameterValue_LocalDiskSizeRange: TCCvmError {
        TCCvmError(.invalidParameterValue_LocalDiskSizeRange)
    }
    
    /// 参数值必须为开启DHCP的VPC
    public static var invalidParameterValue_MustDhcpEnabledVpc: TCCvmError {
        TCCvmError(.invalidParameterValue_MustDhcpEnabledVpc)
    }
    
    /// 子网不属于该cdc集群。
    public static var invalidParameterValue_NotCdcSubnet: TCCvmError {
        TCCvmError(.invalidParameterValue_NotCdcSubnet)
    }
    
    /// 不支持的操作。
    public static var invalidParameterValue_NotSupported: TCCvmError {
        TCCvmError(.invalidParameterValue_NotSupported)
    }
    
    /// 无效参数值。参数值取值范围不合法。
    public static var invalidParameterValue_Range: TCCvmError {
        TCCvmError(.invalidParameterValue_Range)
    }
    
    /// 快照ID不合要求，请提供规范的快照ID，类似snap-xxxxxxxx，字母x代表小写字符或者数字
    public static var invalidParameterValue_SnapshotIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_SnapshotIdMalformed)
    }
    
    /// 子网ID不合要求，请提供规范的子网ID，类似subnet-xxxxxxxx，字母x代表小写字符或者数字
    public static var invalidParameterValue_SubnetIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_SubnetIdMalformed)
    }
    
    /// 创建失败，您指定的子网不存在，请您重新指定
    public static var invalidParameterValue_SubnetNotExist: TCCvmError {
        TCCvmError(.invalidParameterValue_SubnetNotExist)
    }
    
    /// 指定的标签不存在。
    public static var invalidParameterValue_TagKeyNotFound: TCCvmError {
        TCCvmError(.invalidParameterValue_TagKeyNotFound)
    }
    
    public static var invalidParameterValue_TagQuotaLimitExceeded: TCCvmError {
        TCCvmError(.invalidParameterValue_TagQuotaLimitExceeded)
    }
    
    /// 每核心线程数不合法。
    public static var invalidParameterValue_ThreadPerCoreValue: TCCvmError {
        TCCvmError(.invalidParameterValue_ThreadPerCoreValue)
    }
    
    /// 参数值超过最大限制。
    public static var invalidParameterValue_TooLarge: TCCvmError {
        TCCvmError(.invalidParameterValue_TooLarge)
    }
    
    /// 无效参数值。参数值太长。
    public static var invalidParameterValue_TooLong: TCCvmError {
        TCCvmError(.invalidParameterValue_TooLong)
    }
    
    /// VPC ID<code>xxx</code>不合要求，请提供规范的Vpc ID， 类似vpc-xxxxxxxx，字母x代表小写字符或者数字。
    public static var invalidParameterValue_VpcIdMalformed: TCCvmError {
        TCCvmError(.invalidParameterValue_VpcIdMalformed)
    }
    
    /// 指定的VpcId不存在。
    public static var invalidParameterValue_VpcIdNotExist: TCCvmError {
        TCCvmError(.invalidParameterValue_VpcIdNotExist)
    }
    
    /// VPC网络与实例不在同一可用区
    public static var invalidParameterValue_VpcIdZoneIdNotMatch: TCCvmError {
        TCCvmError(.invalidParameterValue_VpcIdZoneIdNotMatch)
    }
    
    /// 该VPC不支持ipv6。
    public static var invalidParameterValue_VpcNotSupportIpv6Address: TCCvmError {
        TCCvmError(.invalidParameterValue_VpcNotSupportIpv6Address)
    }
    
    /// 请求不支持该可用区
    public static var invalidParameterValue_ZoneNotSupported: TCCvmError {
        TCCvmError(.invalidParameterValue_ZoneNotSupported)
    }
    
    /// 最多指定一个参数。
    public static var invalidParameter_AtMostOne: TCCvmError {
        TCCvmError(.invalidParameter_AtMostOne)
    }
    
    /// DataDiskIds不应该传入RootDisk的Id。
    public static var invalidParameter_DataDiskIdContainsRootDisk: TCCvmError {
        TCCvmError(.invalidParameter_DataDiskIdContainsRootDisk)
    }
    
    /// 指定的数据盘不属于指定的实例。
    public static var invalidParameter_DataDiskNotBelongSpecifiedInstance: TCCvmError {
        TCCvmError(.invalidParameter_DataDiskNotBelongSpecifiedInstance)
    }
    
    /// 只能包含一个系统盘快照。
    public static var invalidParameter_DuplicateSystemSnapshots: TCCvmError {
        TCCvmError(.invalidParameter_DuplicateSystemSnapshots)
    }
    
    /// 该主机当前状态不支持该操作。
    public static var invalidParameter_HostIdStatusNotSupport: TCCvmError {
        TCCvmError(.invalidParameter_HostIdStatusNotSupport)
    }
    
    /// 指定的hostName不符合规范。
    public static var invalidParameter_HostNameIllegal: TCCvmError {
        TCCvmError(.invalidParameter_HostNameIllegal)
    }
    
    /// 参数ImageIds和SnapshotIds必须有且仅有一个。
    public static var invalidParameter_ImageIdsSnapshotIdsMustOne: TCCvmError {
        TCCvmError(.invalidParameter_ImageIdsSnapshotIdsMustOne)
    }
    
    /// 当前接口不支持实例镜像。
    public static var invalidParameter_InstanceImageNotSupport: TCCvmError {
        TCCvmError(.invalidParameter_InstanceImageNotSupport)
    }
    
    public static var invalidParameter_InternetAccessibleNotSupported: TCCvmError {
        TCCvmError(.invalidParameter_InternetAccessibleNotSupported)
    }
    
    /// 云盘资源售罄。
    public static var invalidParameter_InvalidCloudDiskSoldOut: TCCvmError {
        TCCvmError(.invalidParameter_InvalidCloudDiskSoldOut)
    }
    
    /// 参数依赖不正确。
    public static var invalidParameter_InvalidDependence: TCCvmError {
        TCCvmError(.invalidParameter_InvalidDependence)
    }
    
    /// 当前操作不支持该类型实例。
    public static var invalidParameter_InvalidInstanceNotSupported: TCCvmError {
        TCCvmError(.invalidParameter_InvalidInstanceNotSupported)
    }
    
    /// 指定的私有网络ip格式不正确。
    public static var invalidParameter_InvalidIpFormat: TCCvmError {
        TCCvmError(.invalidParameter_InvalidIpFormat)
    }
    
    /// 不能同时指定ImageIds和Filters。
    public static var invalidParameter_InvalidParameterCoexistImageIdsFilters: TCCvmError {
        TCCvmError(.invalidParameter_InvalidParameterCoexistImageIdsFilters)
    }
    
    /// 错误的url地址。
    public static var invalidParameter_InvalidParameterUrlError: TCCvmError {
        TCCvmError(.invalidParameter_InvalidParameterUrlError)
    }
    
    /// CoreCount和ThreadPerCore必须同时提供。
    public static var invalidParameter_LackCoreCountOrThreadPerCore: TCCvmError {
        TCCvmError(.invalidParameter_LackCoreCountOrThreadPerCore)
    }
    
    /// 本地数据盘不支持创建实例镜像。
    public static var invalidParameter_LocalDataDiskNotSupport: TCCvmError {
        TCCvmError(.invalidParameter_LocalDataDiskNotSupport)
    }
    
    /// 不支持同时指定密钥登陆和保持镜像登陆方式。
    public static var invalidParameter_ParameterConflict: TCCvmError {
        TCCvmError(.invalidParameter_ParameterConflict)
    }
    
    /// 不支持设置登陆密码。
    public static var invalidParameter_PasswordNotSupported: TCCvmError {
        TCCvmError(.invalidParameter_PasswordNotSupported)
    }
    
    /// 指定的快照不存在。
    public static var invalidParameter_SnapshotNotFound: TCCvmError {
        TCCvmError(.invalidParameter_SnapshotNotFound)
    }
    
    /// 多选一必选参数缺失。
    public static var invalidParameter_SpecifyOneParameter: TCCvmError {
        TCCvmError(.invalidParameter_SpecifyOneParameter)
    }
    
    /// 不支持Swap盘。
    public static var invalidParameter_SwapDiskNotSupport: TCCvmError {
        TCCvmError(.invalidParameter_SwapDiskNotSupport)
    }
    
    /// 参数不包含系统盘快照。
    public static var invalidParameter_SystemSnapshotNotFound: TCCvmError {
        TCCvmError(.invalidParameter_SystemSnapshotNotFound)
    }
    
    /// 参数长度超过限制。
    public static var invalidParameter_ValueTooLarge: TCCvmError {
        TCCvmError(.invalidParameter_ValueTooLarge)
    }
    
    /// 无效密码。指定的密码不符合密码复杂度限制。例如密码长度不符合限制等。
    public static var invalidPassword: TCCvmError {
        TCCvmError(.invalidPassword)
    }
    
    /// 无效时长。目前只支持时长：[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36]，单位：月。
    public static var invalidPeriod: TCCvmError {
        TCCvmError(.invalidPeriod)
    }
    
    /// 账户不支持该操作。
    public static var invalidPermission: TCCvmError {
        TCCvmError(.invalidPermission)
    }
    
    /// 无效的项目ID，指定的项目ID不存在。
    public static var invalidProjectId_NotFound: TCCvmError {
        TCCvmError(.invalidProjectId_NotFound)
    }
    
    /// 无效密钥公钥。指定公钥已经存在。
    public static var invalidPublicKey_Duplicate: TCCvmError {
        TCCvmError(.invalidPublicKey_Duplicate)
    }
    
    /// 无效密钥公钥。指定公钥格式错误，不符合<code>OpenSSH RSA</code>格式要求。
    public static var invalidPublicKey_Malformed: TCCvmError {
        TCCvmError(.invalidPublicKey_Malformed)
    }
    
    /// 未找到该区域。
    public static var invalidRegion_NotFound: TCCvmError {
        TCCvmError(.invalidRegion_NotFound)
    }
    
    /// 该区域目前不支持同步镜像。
    public static var invalidRegion_Unavailable: TCCvmError {
        TCCvmError(.invalidRegion_Unavailable)
    }
    
    /// 指定的<code>安全组ID</code>不存在。
    public static var invalidSecurityGroupId_NotFound: TCCvmError {
        TCCvmError(.invalidSecurityGroupId_NotFound)
    }
    
    /// 指定的<code>安全组ID</code>格式错误，例如<code>实例ID</code>长度错误<code>sg-ide32</code>。
    public static var invalidSgId_Malformed: TCCvmError {
        TCCvmError(.invalidSgId_Malformed)
    }
    
    /// 指定的<code>zone</code>不存在。
    public static var invalidZone_MismatchRegion: TCCvmError {
        TCCvmError(.invalidZone_MismatchRegion)
    }
    
    /// 一个实例绑定安全组数量不能超过5个
    public static var limitExceeded_AssociateUSGLimitExceeded: TCCvmError {
        TCCvmError(.limitExceeded_AssociateUSGLimitExceeded)
    }
    
    /// 安全组关联云主机弹性网卡配额超限。
    public static var limitExceeded_CvmsVifsPerSecGroupLimitExceeded: TCCvmError {
        TCCvmError(.limitExceeded_CvmsVifsPerSecGroupLimitExceeded)
    }
    
    /// 指定置放群组配额不足。
    public static var limitExceeded_DisasterRecoverGroup: TCCvmError {
        TCCvmError(.limitExceeded_DisasterRecoverGroup)
    }
    
    /// 特定实例包含的某个ENI的EIP数量已超过目标实例类型的EIP允许的最大值，请删除部分EIP后重试。
    public static var limitExceeded_EipNumLimit: TCCvmError {
        TCCvmError(.limitExceeded_EipNumLimit)
    }
    
    /// 特定实例当前ENI数量已超过目标实例类型的ENI允许的最大值，需删除部分ENI后重试。
    public static var limitExceeded_EniNumLimit: TCCvmError {
        TCCvmError(.limitExceeded_EniNumLimit)
    }
    
    /// 正在运行中的镜像导出任务已达上限，请等待已有任务完成后，再次发起重试。
    public static var limitExceeded_ExportImageTaskLimitExceeded: TCCvmError {
        TCCvmError(.limitExceeded_ExportImageTaskLimitExceeded)
    }
    
    /// 已达创建高性能计算集群数的上限。
    public static var limitExceeded_HpcClusterQuota: TCCvmError {
        TCCvmError(.limitExceeded_HpcClusterQuota)
    }
    
    /// IP数量超过网卡上限。
    public static var limitExceeded_IPv6AddressNum: TCCvmError {
        TCCvmError(.limitExceeded_IPv6AddressNum)
    }
    
    /// 实例指定的弹性网卡数目超过了实例弹性网卡数目配额。
    public static var limitExceeded_InstanceEniNumLimit: TCCvmError {
        TCCvmError(.limitExceeded_InstanceEniNumLimit)
    }
    
    /// 当前配额不足够生产指定数量的实例
    public static var limitExceeded_InstanceQuota: TCCvmError {
        TCCvmError(.limitExceeded_InstanceQuota)
    }
    
    /// 目标实例规格不支持当前规格的外网带宽上限，不支持调整。具体可参考<a href="https://cloud.tencent.com/document/product/213/12523">公网网络带宽上限</a>。
    public static var limitExceeded_InstanceTypeBandwidth: TCCvmError {
        TCCvmError(.limitExceeded_InstanceTypeBandwidth)
    }
    
    /// 实例启动模板数量超限。
    public static var limitExceeded_LaunchTemplateQuota: TCCvmError {
        TCCvmError(.limitExceeded_LaunchTemplateQuota)
    }
    
    /// 实例启动模板版本数量超限。
    public static var limitExceeded_LaunchTemplateVersionQuota: TCCvmError {
        TCCvmError(.limitExceeded_LaunchTemplateVersionQuota)
    }
    
    /// 预付费实例已购买数量已达到最大配额，请提升配额后重试。
    public static var limitExceeded_PrepayQuota: TCCvmError {
        TCCvmError(.limitExceeded_PrepayQuota)
    }
    
    /// 安全组限额不足
    public static var limitExceeded_SingleUSGQuota: TCCvmError {
        TCCvmError(.limitExceeded_SingleUSGQuota)
    }
    
    /// 竞价实例类型配额不足
    public static var limitExceeded_SpotQuota: TCCvmError {
        TCCvmError(.limitExceeded_SpotQuota)
    }
    
    public static var limitExceeded_TagResourceQuota: TCCvmError {
        TCCvmError(.limitExceeded_TagResourceQuota)
    }
    
    /// 退还失败，退还配额已达上限。
    public static var limitExceeded_UserReturnQuota: TCCvmError {
        TCCvmError(.limitExceeded_UserReturnQuota)
    }
    
    /// 竞价实例配额不足
    public static var limitExceeded_UserSpotQuota: TCCvmError {
        TCCvmError(.limitExceeded_UserSpotQuota)
    }
    
    /// 子网IP不足
    public static var limitExceeded_VpcSubnetNum: TCCvmError {
        TCCvmError(.limitExceeded_VpcSubnetNum)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCvmError {
        TCCvmError(.missingParameter)
    }
    
    /// 缺少必要参数，请至少提供一个参数。
    public static var missingParameter_AtLeastOne: TCCvmError {
        TCCvmError(.missingParameter_AtLeastOne)
    }
    
    /// DPDK实例机型要求VPC网络
    public static var missingParameter_DPDKInstanceTypeRequiredVPC: TCCvmError {
        TCCvmError(.missingParameter_DPDKInstanceTypeRequiredVPC)
    }
    
    /// 该实例类型必须开启云监控服务
    public static var missingParameter_MonitorService: TCCvmError {
        TCCvmError(.missingParameter_MonitorService)
    }
    
    /// 同样的任务正在运行。
    public static var mutexOperation_TaskRunning: TCCvmError {
        TCCvmError(.mutexOperation_TaskRunning)
    }
    
    /// 不允许未配置部署网络的CHC安装云上镜像。
    public static var operationDenied_ChcInstallCloudImageWithoutDeployNetwork: TCCvmError {
        TCCvmError(.operationDenied_ChcInstallCloudImageWithoutDeployNetwork)
    }
    
    public static var operationDenied_InnerUserProhibitAction: TCCvmError {
        TCCvmError(.operationDenied_InnerUserProhibitAction)
    }
    
    /// 实例正在执行其他操作，请稍后再试。
    public static var operationDenied_InstanceOperationInProgress: TCCvmError {
        TCCvmError(.operationDenied_InstanceOperationInProgress)
    }
    
    /// 镜像共享超过配额。
    public static var overQuota: TCCvmError {
        TCCvmError(.overQuota)
    }
    
    /// 该地域不支持导入镜像。
    public static var regionAbilityLimit_UnsupportedToImportImage: TCCvmError {
        TCCvmError(.regionAbilityLimit_UnsupportedToImportImage)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCvmError {
        TCCvmError(.resourceInUse)
    }
    
    /// 高性能计算集群使用中。
    public static var resourceInUse_HpcCluster: TCCvmError {
        TCCvmError(.resourceInUse_HpcCluster)
    }
    
    /// 该可用区已售罄
    public static var resourceInsufficient_AvailabilityZoneSoldOut: TCCvmError {
        TCCvmError(.resourceInsufficient_AvailabilityZoneSoldOut)
    }
    
    /// 指定的云盘规格已售罄
    public static var resourceInsufficient_CloudDiskSoldOut: TCCvmError {
        TCCvmError(.resourceInsufficient_CloudDiskSoldOut)
    }
    
    /// 云盘参数不符合规范
    public static var resourceInsufficient_CloudDiskUnavailable: TCCvmError {
        TCCvmError(.resourceInsufficient_CloudDiskUnavailable)
    }
    
    /// 实例个数超过容灾组的配额
    public static var resourceInsufficient_DisasterRecoverGroupCvmQuota: TCCvmError {
        TCCvmError(.resourceInsufficient_DisasterRecoverGroupCvmQuota)
    }
    
    /// 指定的实例类型库存不足。
    public static var resourceInsufficient_SpecifiedInstanceType: TCCvmError {
        TCCvmError(.resourceInsufficient_SpecifiedInstanceType)
    }
    
    /// 指定的实例类型在选择的可用区已售罄。
    public static var resourceInsufficient_ZoneSoldOutForSpecifiedInstance: TCCvmError {
        TCCvmError(.resourceInsufficient_ZoneSoldOutForSpecifiedInstance)
    }
    
    /// 高性能计算集群不存在。
    public static var resourceNotFound_HpcCluster: TCCvmError {
        TCCvmError(.resourceNotFound_HpcCluster)
    }
    
    /// 指定的置放群组不存在。
    public static var resourceNotFound_InvalidPlacementSet: TCCvmError {
        TCCvmError(.resourceNotFound_InvalidPlacementSet)
    }
    
    public static var resourceNotFound_InvalidZoneInstanceType: TCCvmError {
        TCCvmError(.resourceNotFound_InvalidZoneInstanceType)
    }
    
    /// 无可用的缺省类型的CBS资源。
    public static var resourceNotFound_NoDefaultCbs: TCCvmError {
        TCCvmError(.resourceNotFound_NoDefaultCbs)
    }
    
    /// 无可用的缺省类型的CBS资源。
    public static var resourceNotFound_NoDefaultCbsWithReason: TCCvmError {
        TCCvmError(.resourceNotFound_NoDefaultCbsWithReason)
    }
    
    /// 该可用区不售卖此机型
    public static var resourceUnavailable_InstanceType: TCCvmError {
        TCCvmError(.resourceUnavailable_InstanceType)
    }
    
    /// 快照正在创建过程中。
    public static var resourceUnavailable_SnapshotCreating: TCCvmError {
        TCCvmError(.resourceUnavailable_SnapshotCreating)
    }
    
    /// 该可用区已售罄
    public static var resourcesSoldOut_AvailableZone: TCCvmError {
        TCCvmError(.resourcesSoldOut_AvailableZone)
    }
    
    /// 公网IP已售罄。
    public static var resourcesSoldOut_EipInsufficient: TCCvmError {
        TCCvmError(.resourcesSoldOut_EipInsufficient)
    }
    
    /// 指定的实例类型已售罄。
    public static var resourcesSoldOut_SpecifiedInstanceType: TCCvmError {
        TCCvmError(.resourcesSoldOut_SpecifiedInstanceType)
    }
    
    /// 安全组服务接口调用通用错误。
    public static var secGroupActionFailure: TCCvmError {
        TCCvmError(.secGroupActionFailure)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCvmError {
        TCCvmError(.unauthorizedOperation)
    }
    
    /// 指定的镜像不属于用户。
    public static var unauthorizedOperation_ImageNotBelongToAccount: TCCvmError {
        TCCvmError(.unauthorizedOperation_ImageNotBelongToAccount)
    }
    
    /// 请确认Token是否有效。
    public static var unauthorizedOperation_InvalidToken: TCCvmError {
        TCCvmError(.unauthorizedOperation_InvalidToken)
    }
    
    /// 您无法进行当前操作，请确认多因子认证（MFA）是否失效。
    public static var unauthorizedOperation_MFAExpired: TCCvmError {
        TCCvmError(.unauthorizedOperation_MFAExpired)
    }
    
    /// 没有权限进行此操作，请确认是否存在多因子认证（MFA）。
    public static var unauthorizedOperation_MFANotFound: TCCvmError {
        TCCvmError(.unauthorizedOperation_MFANotFound)
    }
    
    /// 无权操作指定的资源，请正确配置CAM策略。
    public static var unauthorizedOperation_PermissionDenied: TCCvmError {
        TCCvmError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCvmError {
        TCCvmError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCvmError {
        TCCvmError(.unsupportedOperation)
    }
    
    /// 指定的实例付费模式或者网络付费模式不支持共享带宽包
    public static var unsupportedOperation_BandwidthPackageIdNotSupported: TCCvmError {
        TCCvmError(.unsupportedOperation_BandwidthPackageIdNotSupported)
    }
    
    public static var unsupportedOperation_EdgeZoneNotSupportCloudDisk: TCCvmError {
        TCCvmError(.unsupportedOperation_EdgeZoneNotSupportCloudDisk)
    }
    
    public static var unsupportedOperation_ElasticNetworkInterface: TCCvmError {
        TCCvmError(.unsupportedOperation_ElasticNetworkInterface)
    }
    
    public static var unsupportedOperation_EncryptedImagesNotSupported: TCCvmError {
        TCCvmError(.unsupportedOperation_EncryptedImagesNotSupported)
    }
    
    /// 异构机型不支持跨机型调整。
    public static var unsupportedOperation_HeterogeneousChangeInstanceFamily: TCCvmError {
        TCCvmError(.unsupportedOperation_HeterogeneousChangeInstanceFamily)
    }
    
    /// IPv6实例不支持VPC迁移
    public static var unsupportedOperation_IPv6NotSupportVpcMigrate: TCCvmError {
        TCCvmError(.unsupportedOperation_IPv6NotSupportVpcMigrate)
    }
    
    /// 镜像大小超出限制，不支持导出。
    public static var unsupportedOperation_ImageTooLargeExportUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_ImageTooLargeExportUnsupported)
    }
    
    /// 请求不支持该实例计费模式
    public static var unsupportedOperation_InstanceChargeType: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceChargeType)
    }
    
    /// 不支持混合付费模式。
    public static var unsupportedOperation_InstanceMixedPricingModel: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceMixedPricingModel)
    }
    
    public static var unsupportedOperation_InstanceMixedZoneType: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceMixedZoneType)
    }
    
    /// 请求不支持操作系统为<code>Xserver windows2012cndatacenterx86_64</code>的实例<code>ins-xxxxxx</code> 。
    public static var unsupportedOperation_InstanceOsWindows: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceOsWindows)
    }
    
    /// 该子机处于封禁状态，请联系相关人员处理。
    public static var unsupportedOperation_InstanceStateBanning: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateBanning)
    }
    
    /// 请求不支持永久故障的实例。
    public static var unsupportedOperation_InstanceStateCorrupted: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateCorrupted)
    }
    
    /// 请求不支持进入救援模式的实例
    public static var unsupportedOperation_InstanceStateEnterRescueMode: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateEnterRescueMode)
    }
    
    /// 不支持状态为 <code>ENTER_SERVICE_LIVE_MIGRATE</code>.的实例 <code>ins-xxxxxx</code> 。
    public static var unsupportedOperation_InstanceStateEnterServiceLiveMigrate: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateEnterServiceLiveMigrate)
    }
    
    /// 请求不支持正在退出救援模式的实例
    public static var unsupportedOperation_InstanceStateExitRescueMode: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateExitRescueMode)
    }
    
    /// 不支持状态为 <code>EXIT_SERVICE_LIVE_MIGRATE</code>.的实例 <code>ins-xxxxxx</code> 。
    public static var unsupportedOperation_InstanceStateExitServiceLiveMigrate: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateExitServiceLiveMigrate)
    }
    
    /// 操作不支持已冻结的实例。
    public static var unsupportedOperation_InstanceStateFreezing: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateFreezing)
    }
    
    /// 请求不支持正在隔离状态的实例。
    public static var unsupportedOperation_InstanceStateIsolating: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateIsolating)
    }
    
    public static var unsupportedOperation_InstanceStateLaunchFailed: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateLaunchFailed)
    }
    
    /// 请求不支持创建未完成的实例
    public static var unsupportedOperation_InstanceStatePending: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStatePending)
    }
    
    /// 请求不支持正在重启的实例
    public static var unsupportedOperation_InstanceStateRebooting: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateRebooting)
    }
    
    /// 请求不支持救援模式的实例
    public static var unsupportedOperation_InstanceStateRescueMode: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateRescueMode)
    }
    
    /// 请求不支持开机状态的实例
    public static var unsupportedOperation_InstanceStateRunning: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateRunning)
    }
    
    /// 不支持正在服务迁移的实例，请稍后再试
    public static var unsupportedOperation_InstanceStateServiceLiveMigrate: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateServiceLiveMigrate)
    }
    
    /// 请求不支持隔离状态的实例
    public static var unsupportedOperation_InstanceStateShutdown: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateShutdown)
    }
    
    /// 实例开机中，不允许该操作。
    public static var unsupportedOperation_InstanceStateStarting: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateStarting)
    }
    
    /// 请求不支持已关机的实例
    public static var unsupportedOperation_InstanceStateStopped: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateStopped)
    }
    
    /// 请求不支持正在关机的实例
    public static var unsupportedOperation_InstanceStateStopping: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateStopping)
    }
    
    /// 不支持已销毁的实例
    public static var unsupportedOperation_InstanceStateTerminated: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateTerminated)
    }
    
    /// 请求不支持正在销毁的实例
    public static var unsupportedOperation_InstanceStateTerminating: TCCvmError {
        TCCvmError(.unsupportedOperation_InstanceStateTerminating)
    }
    
    /// 不支持已启用销毁保护的实例，请先到设置实例销毁保护，关闭实例销毁保护，然后重试。
    public static var unsupportedOperation_InstancesProtected: TCCvmError {
        TCCvmError(.unsupportedOperation_InstancesProtected)
    }
    
    /// 用户创建高性能集群配额已达上限。
    public static var unsupportedOperation_InsufficientClusterQuota: TCCvmError {
        TCCvmError(.unsupportedOperation_InsufficientClusterQuota)
    }
    
    /// 不支持调整数据盘。
    public static var unsupportedOperation_InvalidDataDisk: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidDataDisk)
    }
    
    /// 不支持指定的磁盘
    public static var unsupportedOperation_InvalidDisk: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidDisk)
    }
    
    public static var unsupportedOperation_InvalidImageLicenseTypeForReset: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidImageLicenseTypeForReset)
    }
    
    /// 不支持已经设置了释放时间的实例，请在实例详情页撤销实例定时销毁后再试。
    public static var unsupportedOperation_InvalidInstanceNotSupportedProtectedInstance: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidInstanceNotSupportedProtectedInstance)
    }
    
    /// 当前操作只支持国际版用户。
    public static var unsupportedOperation_InvalidPermissionNonInternationalAccount: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidPermissionNonInternationalAccount)
    }
    
    /// 指定的地域不支持加密盘。
    public static var unsupportedOperation_InvalidRegionDiskEncrypt: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidRegionDiskEncrypt)
    }
    
    public static var unsupportedOperation_InvalidZone: TCCvmError {
        TCCvmError(.unsupportedOperation_InvalidZone)
    }
    
    /// 密钥不支持Windows操作系统
    public static var unsupportedOperation_KeyPairUnsupportedWindows: TCCvmError {
        TCCvmError(.unsupportedOperation_KeyPairUnsupportedWindows)
    }
    
    /// 机型数据盘全为本地盘不支持跨机型调整。
    public static var unsupportedOperation_LocalDataDiskChangeInstanceFamily: TCCvmError {
        TCCvmError(.unsupportedOperation_LocalDataDiskChangeInstanceFamily)
    }
    
    /// 不支持正在本地盘转云盘的磁盘，请稍后发起请求。
    public static var unsupportedOperation_LocalDiskMigratingToCloudDisk: TCCvmError {
        TCCvmError(.unsupportedOperation_LocalDiskMigratingToCloudDisk)
    }
    
    /// 从市场镜像创建的自定义镜像不支持导出。
    public static var unsupportedOperation_MarketImageExportUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_MarketImageExportUnsupported)
    }
    
    public static var unsupportedOperation_ModifyEncryptionNotSupported: TCCvmError {
        TCCvmError(.unsupportedOperation_ModifyEncryptionNotSupported)
    }
    
    /// 绑定负载均衡的实例，不支持修改vpc属性。
    public static var unsupportedOperation_ModifyVPCWithCLB: TCCvmError {
        TCCvmError(.unsupportedOperation_ModifyVPCWithCLB)
    }
    
    /// 该实例类型不支持竞价计费
    public static var unsupportedOperation_NoInstanceTypeSupportSpot: TCCvmError {
        TCCvmError(.unsupportedOperation_NoInstanceTypeSupportSpot)
    }
    
    /// 不支持物理网络的实例。
    public static var unsupportedOperation_NoVpcNetwork: TCCvmError {
        TCCvmError(.unsupportedOperation_NoVpcNetwork)
    }
    
    /// 当前实例不是FPGA机型。
    public static var unsupportedOperation_NotFpgaInstance: TCCvmError {
        TCCvmError(.unsupportedOperation_NotFpgaInstance)
    }
    
    /// 针对当前实例设置定时任务失败。
    public static var unsupportedOperation_NotSupportImportInstancesActionTimer: TCCvmError {
        TCCvmError(.unsupportedOperation_NotSupportImportInstancesActionTimer)
    }
    
    /// 操作不支持当前实例
    public static var unsupportedOperation_NotSupportInstanceImage: TCCvmError {
        TCCvmError(.unsupportedOperation_NotSupportInstanceImage)
    }
    
    /// 该操作仅支持预付费账户
    public static var unsupportedOperation_OnlyForPrepaidAccount: TCCvmError {
        TCCvmError(.unsupportedOperation_OnlyForPrepaidAccount)
    }
    
    /// 无效的原机型。
    public static var unsupportedOperation_OriginalInstanceTypeInvalid: TCCvmError {
        TCCvmError(.unsupportedOperation_OriginalInstanceTypeInvalid)
    }
    
    /// 公共镜像或市场镜像不支持导出。
    public static var unsupportedOperation_PublicImageExportUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_PublicImageExportUnsupported)
    }
    
    /// 当前镜像不支持对该实例的重装操作。
    public static var unsupportedOperation_RawLocalDiskInsReinstalltoQcow2: TCCvmError {
        TCCvmError(.unsupportedOperation_RawLocalDiskInsReinstalltoQcow2)
    }
    
    public static var unsupportedOperation_RedHatInstanceTerminateUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_RedHatInstanceTerminateUnsupported)
    }
    
    public static var unsupportedOperation_RedHatInstanceUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_RedHatInstanceUnsupported)
    }
    
    /// 不支持该地域
    public static var unsupportedOperation_Region: TCCvmError {
        TCCvmError(.unsupportedOperation_Region)
    }
    
    /// 当前用户暂不支持购买预留实例计费。
    public static var unsupportedOperation_ReservedInstanceInvisibleForUser: TCCvmError {
        TCCvmError(.unsupportedOperation_ReservedInstanceInvisibleForUser)
    }
    
    /// 用户预留实例计费配额已达上限。
    public static var unsupportedOperation_ReservedInstanceOutofQuata: TCCvmError {
        TCCvmError(.unsupportedOperation_ReservedInstanceOutofQuata)
    }
    
    /// 共享镜像不支持导出。
    public static var unsupportedOperation_SharedImageExportUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_SharedImageExportUnsupported)
    }
    
    /// 请求不支持特殊机型的实例
    public static var unsupportedOperation_SpecialInstanceType: TCCvmError {
        TCCvmError(.unsupportedOperation_SpecialInstanceType)
    }
    
    public static var unsupportedOperation_SpotUnsupportedRegion: TCCvmError {
        TCCvmError(.unsupportedOperation_SpotUnsupportedRegion)
    }
    
    /// 不支持关机不收费特性
    public static var unsupportedOperation_StoppedModeStopCharging: TCCvmError {
        TCCvmError(.unsupportedOperation_StoppedModeStopCharging)
    }
    
    /// 不支持关机不收费机器做同类型变配操作。
    public static var unsupportedOperation_StoppedModeStopChargingSameFamily: TCCvmError {
        TCCvmError(.unsupportedOperation_StoppedModeStopChargingSameFamily)
    }
    
    /// 该机型为包销机型，RenewFlag的值只允许设置为NOTIFY_AND_AUTO_RENEW。
    public static var unsupportedOperation_UnderwritingInstanceTypeOnlySupportAutoRenew: TCCvmError {
        TCCvmError(.unsupportedOperation_UnderwritingInstanceTypeOnlySupportAutoRenew)
    }
    
    /// 指定机型不支持跨机型调整配置。
    public static var unsupportedOperation_UnsupportedChangeInstanceFamily: TCCvmError {
        TCCvmError(.unsupportedOperation_UnsupportedChangeInstanceFamily)
    }
    
    /// 非ARM机型不支持调整到ARM机型。
    public static var unsupportedOperation_UnsupportedChangeInstanceFamilyToARM: TCCvmError {
        TCCvmError(.unsupportedOperation_UnsupportedChangeInstanceFamilyToARM)
    }
    
    /// 不支持实例变配到此类型机型。
    public static var unsupportedOperation_UnsupportedChangeInstanceToThisInstanceFamily: TCCvmError {
        TCCvmError(.unsupportedOperation_UnsupportedChangeInstanceToThisInstanceFamily)
    }
    
    /// 请求不支持国际版账号
    public static var unsupportedOperation_UnsupportedInternationalUser: TCCvmError {
        TCCvmError(.unsupportedOperation_UnsupportedInternationalUser)
    }
    
    /// 用户限额操作的配额不足。
    public static var unsupportedOperation_UserLimitOperationExceedQuota: TCCvmError {
        TCCvmError(.unsupportedOperation_UserLimitOperationExceedQuota)
    }
    
    /// Windows镜像不支持导出。
    public static var unsupportedOperation_WindowsImageExportUnsupported: TCCvmError {
        TCCvmError(.unsupportedOperation_WindowsImageExportUnsupported)
    }
    
    /// 私有网络ip不在子网内。
    public static var vpcAddrNotInSubNet: TCCvmError {
        TCCvmError(.vpcAddrNotInSubNet)
    }
    
    /// 私有网络ip已经被使用。
    public static var vpcIpIsUsed: TCCvmError {
        TCCvmError(.vpcIpIsUsed)
    }
}

extension TCCvmError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidAccount.self, InvalidAccountId.self, InvalidAccountIs.self, InvalidClientToken.self, InvalidFilterValue.self, InvalidHost.self, InvalidHostId.self, InvalidImageId.self, InvalidImageName.self, InvalidImageOsType.self, InvalidImageOsVersion.self, InvalidInstance.self, InvalidInstanceId.self, InvalidInstanceName.self, InvalidInstanceType.self, InvalidKeyPair.self, InvalidKeyPairId.self, InvalidKeyPairName.self, InvalidParameter.self, InvalidParameterValue.self, InvalidProjectId.self, InvalidPublicKey.self, InvalidRegion.self, InvalidSecurityGroupId.self, InvalidSgId.self, InvalidZone.self, LimitExceeded.self, MissingParameter.self, MutexOperation.self, OperationDenied.self, RegionAbilityLimit.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCCvmError: Equatable {
    public static func == (lhs: TCCvmError, rhs: TCCvmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}