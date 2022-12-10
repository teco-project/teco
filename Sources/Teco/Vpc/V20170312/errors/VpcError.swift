public struct TCVpcError: TCErrorType {
    enum Code: String {
        case addressQuotaLimitExceeded = "AddressQuotaLimitExceeded"
        case addressQuotaLimitExceeded_DailyAllocate = "AddressQuotaLimitExceeded.DailyAllocate"
        case authFailure = "AuthFailure"
        case failedOperation_AddressEniInfoNotFound = "FailedOperation.AddressEniInfoNotFound"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_InvalidRegion = "FailedOperation.InvalidRegion"
        case failedOperation_MasterEniNotFound = "FailedOperation.MasterEniNotFound"
        case failedOperation_NetDetectTimeOut = "FailedOperation.NetDetectTimeOut"
        case failedOperation_TaskFailed = "FailedOperation.TaskFailed"
        case internalError = "InternalError"
        case internalError_CreateCkafkaRouteError = "InternalError.CreateCkafkaRouteError"
        case internalError_ModuleError = "InternalError.ModuleError"
        case internalServerError = "InternalServerError"
        case invalidAccount_NotSupported = "InvalidAccount.NotSupported"
        case invalidAddressIdState_InArrears = "InvalidAddressIdState.InArrears"
        case invalidAddressIdStatus_NotPermit = "InvalidAddressIdStatus.NotPermit"
        case invalidAddressId_Blocked = "InvalidAddressId.Blocked"
        case invalidAddressId_NotFound = "InvalidAddressId.NotFound"
        case invalidAddressState = "InvalidAddressState"
        case invalidInstanceId_AlreadyBindEip = "InvalidInstanceId.AlreadyBindEip"
        case invalidInstanceId_NotFound = "InvalidInstanceId.NotFound"
        case invalidInstance_NotSupported = "InvalidInstance.NotSupported"
        case invalidNetworkInterfaceId_NotFound = "InvalidNetworkInterfaceId.NotFound"
        case invalidParameter = "InvalidParameter"
        case invalidParameterConflict = "InvalidParameterConflict"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AddressAttacked = "InvalidParameterValue.AddressAttacked"
        case invalidParameterValue_AddressIdMalformed = "InvalidParameterValue.AddressIdMalformed"
        case invalidParameterValue_AddressInternetChargeTypeConflict = "InvalidParameterValue.AddressInternetChargeTypeConflict"
        case invalidParameterValue_AddressIpNotAvailable = "InvalidParameterValue.AddressIpNotAvailable"
        case invalidParameterValue_AddressIpNotFound = "InvalidParameterValue.AddressIpNotFound"
        case invalidParameterValue_AddressIpNotInVpc = "InvalidParameterValue.AddressIpNotInVpc"
        case invalidParameterValue_AddressIpNotPublic = "InvalidParameterValue.AddressIpNotPublic"
        case invalidParameterValue_AddressNotApplicable = "InvalidParameterValue.AddressNotApplicable"
        case invalidParameterValue_AddressNotCalcIP = "InvalidParameterValue.AddressNotCalcIP"
        case invalidParameterValue_AddressNotEIP = "InvalidParameterValue.AddressNotEIP"
        case invalidParameterValue_AddressNotFound = "InvalidParameterValue.AddressNotFound"
        case invalidParameterValue_AddressPublished = "InvalidParameterValue.AddressPublished"
        case invalidParameterValue_BandwidthOutOfRange = "InvalidParameterValue.BandwidthOutOfRange"
        case invalidParameterValue_BandwidthPackageIdMalformed = "InvalidParameterValue.BandwidthPackageIdMalformed"
        case invalidParameterValue_BandwidthPackageInUse = "InvalidParameterValue.BandwidthPackageInUse"
        case invalidParameterValue_BandwidthPackageNotFound = "InvalidParameterValue.BandwidthPackageNotFound"
        case invalidParameterValue_BandwidthTooSmall = "InvalidParameterValue.BandwidthTooSmall"
        case invalidParameterValue_CcnAttachBmvpcLimitExceeded = "InvalidParameterValue.CcnAttachBmvpcLimitExceeded"
        case invalidParameterValue_CidrNotInPeerVpc = "InvalidParameterValue.CidrNotInPeerVpc"
        case invalidParameterValue_CidrNotInSslVpnVpc = "InvalidParameterValue.CidrNotInSslVpnVpc"
        case invalidParameterValue_Combination = "InvalidParameterValue.Combination"
        case invalidParameterValue_Duplicate = "InvalidParameterValue.Duplicate"
        case invalidParameterValue_DuplicatePara = "InvalidParameterValue.DuplicatePara"
        case invalidParameterValue_EIPBrandWidthOutInvalid = "InvalidParameterValue.EIPBrandWidthOutInvalid"
        case invalidParameterValue_Empty = "InvalidParameterValue.Empty"
        case invalidParameterValue_IPv6RuleNotChange = "InvalidParameterValue.IPv6RuleNotChange"
        case invalidParameterValue_InconsistentInstanceInternetChargeType = "InvalidParameterValue.InconsistentInstanceInternetChargeType"
        case invalidParameterValue_InstanceDoesNotSupportAnycast = "InvalidParameterValue.InstanceDoesNotSupportAnycast"
        case invalidParameterValue_InstanceHasNoWanIP = "InvalidParameterValue.InstanceHasNoWanIP"
        case invalidParameterValue_InstanceHasWanIP = "InvalidParameterValue.InstanceHasWanIP"
        case invalidParameterValue_InstanceIdMalformed = "InvalidParameterValue.InstanceIdMalformed"
        case invalidParameterValue_InstanceNoCalcIP = "InvalidParameterValue.InstanceNoCalcIP"
        case invalidParameterValue_InstanceNoWanIP = "InvalidParameterValue.InstanceNoWanIP"
        case invalidParameterValue_InstanceNormalPublicIpBlocked = "InvalidParameterValue.InstanceNormalPublicIpBlocked"
        case invalidParameterValue_InstanceNotMatchAssociateEni = "InvalidParameterValue.InstanceNotMatchAssociateEni"
        case invalidParameterValue_InternetChargeTypeNotChanged = "InvalidParameterValue.InternetChargeTypeNotChanged"
        case invalidParameterValue_InvalidBandwidthPackageChargeType = "InvalidParameterValue.InvalidBandwidthPackageChargeType"
        case invalidParameterValue_InvalidBusiness = "InvalidParameterValue.InvalidBusiness"
        case invalidParameterValue_InvalidDedicatedClusterId = "InvalidParameterValue.InvalidDedicatedClusterId"
        case invalidParameterValue_InvalidInstanceInternetChargeType = "InvalidParameterValue.InvalidInstanceInternetChargeType"
        case invalidParameterValue_InvalidInstanceState = "InvalidParameterValue.InvalidInstanceState"
        case invalidParameterValue_InvalidIpv6 = "InvalidParameterValue.InvalidIpv6"
        case invalidParameterValue_InvalidTag = "InvalidParameterValue.InvalidTag"
        case invalidParameterValue_LBAlreadyBindEip = "InvalidParameterValue.LBAlreadyBindEip"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_Malformed = "InvalidParameterValue.Malformed"
        case invalidParameterValue_MissingAssociateEntity = "InvalidParameterValue.MissingAssociateEntity"
        case invalidParameterValue_MixedAddressIpSetType = "InvalidParameterValue.MixedAddressIpSetType"
        case invalidParameterValue_NatGatewayDnatRuleExisted = "InvalidParameterValue.NatGatewayDnatRuleExisted"
        case invalidParameterValue_NatGatewayDnatRuleNotExists = "InvalidParameterValue.NatGatewayDnatRuleNotExists"
        case invalidParameterValue_NatGatewayDnatRulePipNeedVm = "InvalidParameterValue.NatGatewayDnatRulePipNeedVm"
        case invalidParameterValue_NatGatewaySnatRuleNotExists = "InvalidParameterValue.NatGatewaySnatRuleNotExists"
        case invalidParameterValue_NatSnatRuleExists = "InvalidParameterValue.NatSnatRuleExists"
        case invalidParameterValue_NetDetectInVpc = "InvalidParameterValue.NetDetectInVpc"
        case invalidParameterValue_NetDetectNotFoundIp = "InvalidParameterValue.NetDetectNotFoundIp"
        case invalidParameterValue_NetDetectSameIp = "InvalidParameterValue.NetDetectSameIp"
        case invalidParameterValue_NetworkInterfaceIdMalformed = "InvalidParameterValue.NetworkInterfaceIdMalformed"
        case invalidParameterValue_NetworkInterfaceNotFound = "InvalidParameterValue.NetworkInterfaceNotFound"
        case invalidParameterValue_OnlySupportedForMasterNetworkCard = "InvalidParameterValue.OnlySupportedForMasterNetworkCard"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameterValue_Reserved = "InvalidParameterValue.Reserved"
        case invalidParameterValue_ResourceAlreadyExisted = "InvalidParameterValue.ResourceAlreadyExisted"
        case invalidParameterValue_ResourceExpired = "InvalidParameterValue.ResourceExpired"
        case invalidParameterValue_ResourceIdMalformed = "InvalidParameterValue.ResourceIdMalformed"
        case invalidParameterValue_ResourceNotExisted = "InvalidParameterValue.ResourceNotExisted"
        case invalidParameterValue_ResourceNotFound = "InvalidParameterValue.ResourceNotFound"
        case invalidParameterValue_ResourceNotSupport = "InvalidParameterValue.ResourceNotSupport"
        case invalidParameterValue_SubnetConflict = "InvalidParameterValue.SubnetConflict"
        case invalidParameterValue_SubnetOverlap = "InvalidParameterValue.SubnetOverlap"
        case invalidParameterValue_SubnetOverlapAssistCidr = "InvalidParameterValue.SubnetOverlapAssistCidr"
        case invalidParameterValue_SubnetRange = "InvalidParameterValue.SubnetRange"
        case invalidParameterValue_TagDuplicateKey = "InvalidParameterValue.TagDuplicateKey"
        case invalidParameterValue_TagDuplicateResourceType = "InvalidParameterValue.TagDuplicateResourceType"
        case invalidParameterValue_TagInvalidKey = "InvalidParameterValue.TagInvalidKey"
        case invalidParameterValue_TagInvalidKeyLen = "InvalidParameterValue.TagInvalidKeyLen"
        case invalidParameterValue_TagInvalidVal = "InvalidParameterValue.TagInvalidVal"
        case invalidParameterValue_TagKeyNotExists = "InvalidParameterValue.TagKeyNotExists"
        case invalidParameterValue_TagNotAllocatedQuota = "InvalidParameterValue.TagNotAllocatedQuota"
        case invalidParameterValue_TagNotExisted = "InvalidParameterValue.TagNotExisted"
        case invalidParameterValue_TagNotSupportTag = "InvalidParameterValue.TagNotSupportTag"
        case invalidParameterValue_TagResourceFormatError = "InvalidParameterValue.TagResourceFormatError"
        case invalidParameterValue_TagTimestampExceeded = "InvalidParameterValue.TagTimestampExceeded"
        case invalidParameterValue_TagValNotExists = "InvalidParameterValue.TagValNotExists"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_TrafficPackageIdMalformed = "InvalidParameterValue.TrafficPackageIdMalformed"
        case invalidParameterValue_UnavailableZone = "InvalidParameterValue.UnavailableZone"
        case invalidParameterValue_VpcCidrConflict = "InvalidParameterValue.VpcCidrConflict"
        case invalidParameterValue_VpgTypeNotMatch = "InvalidParameterValue.VpgTypeNotMatch"
        case invalidParameterValue_VpnConnCidrConflict = "InvalidParameterValue.VpnConnCidrConflict"
        case invalidParameterValue_VpnConnHealthCheckIpConflict = "InvalidParameterValue.VpnConnHealthCheckIpConflict"
        case invalidParameterValue_ZoneConflict = "InvalidParameterValue.ZoneConflict"
        case invalidParameter_Coexist = "InvalidParameter.Coexist"
        case invalidParameter_FilterInvalidKey = "InvalidParameter.FilterInvalidKey"
        case invalidParameter_FilterNotDict = "InvalidParameter.FilterNotDict"
        case invalidParameter_FilterValuesNotList = "InvalidParameter.FilterValuesNotList"
        case invalidParameter_InvalidFilter = "InvalidParameter.InvalidFilter"
        case invalidParameter_NextHopMismatch = "InvalidParameter.NextHopMismatch"
        case invalidParameter_VpgHaGroupNotFound = "InvalidParameter.VpgHaGroupNotFound"
        case invalidPrivateIpAddress_AlreadyBindEip = "InvalidPrivateIpAddress.AlreadyBindEip"
        case invalidRouteId_NotFound = "InvalidRouteId.NotFound"
        case invalidRouteTableId_Malformed = "InvalidRouteTableId.Malformed"
        case invalidRouteTableId_NotFound = "InvalidRouteTableId.NotFound"
        case invalidSecurityGroupID_Malformed = "InvalidSecurityGroupID.Malformed"
        case invalidSecurityGroupID_NotFound = "InvalidSecurityGroupID.NotFound"
        case invalidVpcId_Malformed = "InvalidVpcId.Malformed"
        case invalidVpcId_NotFound = "InvalidVpcId.NotFound"
        case invalidVpnGatewayId_Malformed = "InvalidVpnGatewayId.Malformed"
        case invalidVpnGatewayId_NotFound = "InvalidVpnGatewayId.NotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AccountReturnQuota = "LimitExceeded.AccountReturnQuota"
        case limitExceeded_Address = "LimitExceeded.Address"
        case limitExceeded_AddressQuotaLimitExceeded = "LimitExceeded.AddressQuotaLimitExceeded"
        case limitExceeded_BandwidthPackageQuota = "LimitExceeded.BandwidthPackageQuota"
        case limitExceeded_ChangeAddressQuota = "LimitExceeded.ChangeAddressQuota"
        case limitExceeded_CidrBlock = "LimitExceeded.CidrBlock"
        case limitExceeded_DailyAllocateAddressQuotaLimitExceeded = "LimitExceeded.DailyAllocateAddressQuotaLimitExceeded"
        case limitExceeded_DailyChangeAddressQuota = "LimitExceeded.DailyChangeAddressQuota"
        case limitExceeded_InstanceAddressQuota = "LimitExceeded.InstanceAddressQuota"
        case limitExceeded_ModifyAddressInternetChargeTypeQuota = "LimitExceeded.ModifyAddressInternetChargeTypeQuota"
        case limitExceeded_MonthlyAddressRecoveryQuota = "LimitExceeded.MonthlyAddressRecoveryQuota"
        case limitExceeded_NatGatewayLimitExceeded = "LimitExceeded.NatGatewayLimitExceeded"
        case limitExceeded_NatGatewayPerVpcLimitExceeded = "LimitExceeded.NatGatewayPerVpcLimitExceeded"
        case limitExceeded_NumberOfFilters = "LimitExceeded.NumberOfFilters"
        case limitExceeded_PublicIpAddressPerNatGatewayLimitExceeded = "LimitExceeded.PublicIpAddressPerNatGatewayLimitExceeded"
        case limitExceeded_SecurityGroupPolicySet = "LimitExceeded.SecurityGroupPolicySet"
        case limitExceeded_SubnetCidrBlock = "LimitExceeded.SubnetCidrBlock"
        case limitExceeded_TagKeyExceeded = "LimitExceeded.TagKeyExceeded"
        case limitExceeded_TagKeyPerResourceExceeded = "LimitExceeded.TagKeyPerResourceExceeded"
        case limitExceeded_TagNotEnoughQuota = "LimitExceeded.TagNotEnoughQuota"
        case limitExceeded_TagQuota = "LimitExceeded.TagQuota"
        case limitExceeded_TagQuotaExceeded = "LimitExceeded.TagQuotaExceeded"
        case limitExceeded_TagTagsExceeded = "LimitExceeded.TagTagsExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied_AddressInArrears = "OperationDenied.AddressInArrears"
        case operationDenied_MutexTaskRunning = "OperationDenied.MutexTaskRunning"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_Address = "ResourceInUse.Address"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_CidrBlock = "ResourceInsufficient.CidrBlock"
        case resourceInsufficient_Subnet = "ResourceInsufficient.Subnet"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_SvcNotExist = "ResourceNotFound.SvcNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_ServiceWhiteListNotAdded = "ResourceUnavailable.ServiceWhiteListNotAdded"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AnycastEip = "UnauthorizedOperation.AnycastEip"
        case unauthorizedOperation_AttachmentNotFound = "UnauthorizedOperation.AttachmentNotFound"
        case unauthorizedOperation_InvalidAccount = "UnauthorizedOperation.InvalidAccount"
        case unauthorizedOperation_NoRealNameAuthentication = "UnauthorizedOperation.NoRealNameAuthentication"
        case unauthorizedOperation_PrimaryIp = "UnauthorizedOperation.PrimaryIp"
        case unknownParameter = "UnknownParameter"
        case unknownParameter_WithGuess = "UnknownParameter.WithGuess"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ActionNotFound = "UnsupportedOperation.ActionNotFound"
        case unsupportedOperation_AddressIpInArrear = "UnsupportedOperation.AddressIpInArrear"
        case unsupportedOperation_AddressIpInternetChargeTypeNotPermit = "UnsupportedOperation.AddressIpInternetChargeTypeNotPermit"
        case unsupportedOperation_AddressIpNotSupportInstance = "UnsupportedOperation.AddressIpNotSupportInstance"
        case unsupportedOperation_AddressIpStatusNotPermit = "UnsupportedOperation.AddressIpStatusNotPermit"
        case unsupportedOperation_AddressStatusNotPermit = "UnsupportedOperation.AddressStatusNotPermit"
        case unsupportedOperation_AppIdMismatch = "UnsupportedOperation.AppIdMismatch"
        case unsupportedOperation_AppIdNotFound = "UnsupportedOperation.AppIdNotFound"
        case unsupportedOperation_AttachmentAlreadyExists = "UnsupportedOperation.AttachmentAlreadyExists"
        case unsupportedOperation_AttachmentNotFound = "UnsupportedOperation.AttachmentNotFound"
        case unsupportedOperation_BandwidthNotExpired = "UnsupportedOperation.BandwidthNotExpired"
        case unsupportedOperation_BandwidthPackageIdNotSupported = "UnsupportedOperation.BandwidthPackageIdNotSupported"
        case unsupportedOperation_BindEIP = "UnsupportedOperation.BindEIP"
        case unsupportedOperation_CIDRUnSupportedClassicLink = "UnsupportedOperation.CIDRUnSupportedClassicLink"
        case unsupportedOperation_CcnAttached = "UnsupportedOperation.CcnAttached"
        case unsupportedOperation_CcnHasFlowLog = "UnsupportedOperation.CcnHasFlowLog"
        case unsupportedOperation_CcnInstanceAccountNotApprovedByUnicom = "UnsupportedOperation.CcnInstanceAccountNotApprovedByUnicom"
        case unsupportedOperation_CcnNotAttached = "UnsupportedOperation.CcnNotAttached"
        case unsupportedOperation_CcnOrdinaryAccountRefuseAttach = "UnsupportedOperation.CcnOrdinaryAccountRefuseAttach"
        case unsupportedOperation_CcnRouteTableNotExist = "UnsupportedOperation.CcnRouteTableNotExist"
        case unsupportedOperation_CdcSubnetNotSupportUnLocalGateway = "UnsupportedOperation.CdcSubnetNotSupportUnLocalGateway"
        case unsupportedOperation_ClassicInstanceIdAlreadyExists = "UnsupportedOperation.ClassicInstanceIdAlreadyExists"
        case unsupportedOperation_ClbPolicyLimit = "UnsupportedOperation.ClbPolicyLimit"
        case unsupportedOperation_ConflictWithDockerRoute = "UnsupportedOperation.ConflictWithDockerRoute"
        case unsupportedOperation_CurrentAccountIsNotUnicomAccount = "UnsupportedOperation.CurrentAccountIsNotUnicomAccount"
        case unsupportedOperation_CurrentQueryRegionIsNotCrossBorder = "UnsupportedOperation.CurrentQueryRegionIsNotCrossBorder"
        case unsupportedOperation_DCGatewayNatRuleExists = "UnsupportedOperation.DCGatewayNatRuleExists"
        case unsupportedOperation_DcGatewaysNotFoundInVpc = "UnsupportedOperation.DcGatewaysNotFoundInVpc"
        case unsupportedOperation_DelDefaultRoute = "UnsupportedOperation.DelDefaultRoute"
        case unsupportedOperation_DelRouteWithSubnet = "UnsupportedOperation.DelRouteWithSubnet"
        case unsupportedOperation_DirectConnectGatewayIsUpdatingCommunity = "UnsupportedOperation.DirectConnectGatewayIsUpdatingCommunity"
        case unsupportedOperation_DisabledNotifyCcn = "UnsupportedOperation.DisabledNotifyCcn"
        case unsupportedOperation_DuplicatePolicy = "UnsupportedOperation.DuplicatePolicy"
        case unsupportedOperation_Ecmp = "UnsupportedOperation.Ecmp"
        case unsupportedOperation_EcmpWithCcnRoute = "UnsupportedOperation.EcmpWithCcnRoute"
        case unsupportedOperation_EcmpWithUserRoute = "UnsupportedOperation.EcmpWithUserRoute"
        case unsupportedOperation_EndPointService = "UnsupportedOperation.EndPointService"
        case unsupportedOperation_FlowLogsNotSupportKoInstanceEni = "UnsupportedOperation.FlowLogsNotSupportKoInstanceEni"
        case unsupportedOperation_FlowLogsNotSupportNullInstanceEni = "UnsupportedOperation.FlowLogsNotSupportNullInstanceEni"
        case unsupportedOperation_IncorrectAddressResourceType = "UnsupportedOperation.IncorrectAddressResourceType"
        case unsupportedOperation_InstanceAndRtbNotMatch = "UnsupportedOperation.InstanceAndRtbNotMatch"
        case unsupportedOperation_InstanceMismatch = "UnsupportedOperation.InstanceMismatch"
        case unsupportedOperation_InstanceOrdinaryAccountRefuseAttach = "UnsupportedOperation.InstanceOrdinaryAccountRefuseAttach"
        case unsupportedOperation_InstanceStateNotSupported = "UnsupportedOperation.InstanceStateNotSupported"
        case unsupportedOperation_InsufficientFunds = "UnsupportedOperation.InsufficientFunds"
        case unsupportedOperation_InvalidAction = "UnsupportedOperation.InvalidAction"
        case unsupportedOperation_InvalidAddressInternetChargeType = "UnsupportedOperation.InvalidAddressInternetChargeType"
        case unsupportedOperation_InvalidAddressState = "UnsupportedOperation.InvalidAddressState"
        case unsupportedOperation_InvalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
        case unsupportedOperation_InvalidResourceInternetChargeType = "UnsupportedOperation.InvalidResourceInternetChargeType"
        case unsupportedOperation_InvalidResourceProtocol = "UnsupportedOperation.InvalidResourceProtocol"
        case unsupportedOperation_InvalidState = "UnsupportedOperation.InvalidState"
        case unsupportedOperation_InvalidStatusNotifyCcn = "UnsupportedOperation.InvalidStatusNotifyCcn"
        case unsupportedOperation_IsNotFinanceAccount = "UnsupportedOperation.IsNotFinanceAccount"
        case unsupportedOperation_IspNotSupported = "UnsupportedOperation.IspNotSupported"
        case unsupportedOperation_LocalGatewayAlreadyExists = "UnsupportedOperation.LocalGatewayAlreadyExists"
        case unsupportedOperation_ModifyAddressAttribute = "UnsupportedOperation.ModifyAddressAttribute"
        case unsupportedOperation_MutexOperationTaskRunning = "UnsupportedOperation.MutexOperationTaskRunning"
        case unsupportedOperation_NatGatewayEipNotExists = "UnsupportedOperation.NatGatewayEipNotExists"
        case unsupportedOperation_NatGatewayRulePipExists = "UnsupportedOperation.NatGatewayRulePipExists"
        case unsupportedOperation_NatGatewaySnatPipNeedVm = "UnsupportedOperation.NatGatewaySnatPipNeedVm"
        case unsupportedOperation_NatGatewayTypeNotSupportSNAT = "UnsupportedOperation.NatGatewayTypeNotSupportSNAT"
        case unsupportedOperation_NatNotSupported = "UnsupportedOperation.NatNotSupported"
        case unsupportedOperation_NormalSubnetNotSupportLocalGateway = "UnsupportedOperation.NormalSubnetNotSupportLocalGateway"
        case unsupportedOperation_NotLockedInstanceOperation = "UnsupportedOperation.NotLockedInstanceOperation"
        case unsupportedOperation_NotPendingCcnInstance = "UnsupportedOperation.NotPendingCcnInstance"
        case unsupportedOperation_NotPostpaidCcnOperation = "UnsupportedOperation.NotPostpaidCcnOperation"
        case unsupportedOperation_NotSupportAttachEdgeAndCrossBorderInstance = "UnsupportedOperation.NotSupportAttachEdgeAndCrossBorderInstance"
        case unsupportedOperation_NotSupportDeleteDefaultRouteTable = "UnsupportedOperation.NotSupportDeleteDefaultRouteTable"
        case unsupportedOperation_NotSupportedUpdateCcnRoutePublish = "UnsupportedOperation.NotSupportedUpdateCcnRoutePublish"
        case unsupportedOperation_NotifyCcn = "UnsupportedOperation.NotifyCcn"
        case unsupportedOperation_OfflineChargeType = "UnsupportedOperation.OfflineChargeType"
        case unsupportedOperation_OnlySupportProfessionKafka = "UnsupportedOperation.OnlySupportProfessionKafka"
        case unsupportedOperation_PrepaidCcnOnlySupportInterRegionLimit = "UnsupportedOperation.PrepaidCcnOnlySupportInterRegionLimit"
        case unsupportedOperation_PrimaryIp = "UnsupportedOperation.PrimaryIp"
        case unsupportedOperation_PublicIpAddressDisassociate = "UnsupportedOperation.PublicIpAddressDisassociate"
        case unsupportedOperation_PublicIpAddressIsNotBGPIp = "UnsupportedOperation.PublicIpAddressIsNotBGPIp"
        case unsupportedOperation_PublicIpAddressIsNotExisted = "UnsupportedOperation.PublicIpAddressIsNotExisted"
        case unsupportedOperation_PublicIpAddressNotBilledByTraffic = "UnsupportedOperation.PublicIpAddressNotBilledByTraffic"
        case unsupportedOperation_PurchaseLimit = "UnsupportedOperation.PurchaseLimit"
        case unsupportedOperation_RecordExists = "UnsupportedOperation.RecordExists"
        case unsupportedOperation_RecordNotExists = "UnsupportedOperation.RecordNotExists"
        case unsupportedOperation_ResourceMismatch = "UnsupportedOperation.ResourceMismatch"
        case unsupportedOperation_RoleNotFound = "UnsupportedOperation.RoleNotFound"
        case unsupportedOperation_RouteTableHasSubnetRule = "UnsupportedOperation.RouteTableHasSubnetRule"
        case unsupportedOperation_SnatSubnet = "UnsupportedOperation.SnatSubnet"
        case unsupportedOperation_SpecialEndPointService = "UnsupportedOperation.SpecialEndPointService"
        case unsupportedOperation_SslVpnClientIdNotFound = "UnsupportedOperation.SslVpnClientIdNotFound"
        case unsupportedOperation_SubEniNotSupportTrunking = "UnsupportedOperation.SubEniNotSupportTrunking"
        case unsupportedOperation_SystemRoute = "UnsupportedOperation.SystemRoute"
        case unsupportedOperation_TagAllocate = "UnsupportedOperation.TagAllocate"
        case unsupportedOperation_TagFree = "UnsupportedOperation.TagFree"
        case unsupportedOperation_TagNotPermit = "UnsupportedOperation.TagNotPermit"
        case unsupportedOperation_TagSystemReservedTagKey = "UnsupportedOperation.TagSystemReservedTagKey"
        case unsupportedOperation_UinNotFound = "UnsupportedOperation.UinNotFound"
        case unsupportedOperation_UnableCrossBorder = "UnsupportedOperation.UnableCrossBorder"
        case unsupportedOperation_UnableCrossFinance = "UnsupportedOperation.UnableCrossFinance"
        case unsupportedOperation_UnassignCidrBlock = "UnsupportedOperation.UnassignCidrBlock"
        case unsupportedOperation_UnbindEIP = "UnsupportedOperation.UnbindEIP"
        case unsupportedOperation_UnpaidOrderAlreadyExists = "UnsupportedOperation.UnpaidOrderAlreadyExists"
        case unsupportedOperation_UnsupportedBindLocalZoneEIP = "UnsupportedOperation.UnsupportedBindLocalZoneEIP"
        case unsupportedOperation_UnsupportedInstanceFamily = "UnsupportedOperation.UnsupportedInstanceFamily"
        case unsupportedOperation_UnsupportedRegion = "UnsupportedOperation.UnsupportedRegion"
        case unsupportedOperation_UserAndCcnChargeTypeNotMatch = "UnsupportedOperation.UserAndCcnChargeTypeNotMatch"
        case unsupportedOperation_VersionMismatch = "UnsupportedOperation.VersionMismatch"
        case unsupportedOperation_VpcMismatch = "UnsupportedOperation.VpcMismatch"
        case unsupportedOperation_ZoneMismatch = "UnsupportedOperation.ZoneMismatch"
        case vpcLimitExceeded = "VpcLimitExceeded"
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
    
    /// 账户配额不足，每个腾讯云账户每个地域下最多可创建 20 个 EIP。
    public static var addressQuotaLimitExceeded: TCVpcError {
        TCVpcError(.addressQuotaLimitExceeded)
    }
    
    /// 申购次数不足，每个腾讯云账户每个地域每天申购次数为配额数*2 次。
    public static var addressQuotaLimitExceeded_DailyAllocate: TCVpcError {
        TCVpcError(.addressQuotaLimitExceeded_DailyAllocate)
    }
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCVpcError {
        TCVpcError(.authFailure)
    }
    
    /// 地址没有弹性网卡信息。
    public static var failedOperation_AddressEniInfoNotFound: TCVpcError {
        TCVpcError(.failedOperation_AddressEniInfoNotFound)
    }
    
    public static var failedOperation_BalanceInsufficient: TCVpcError {
        TCVpcError(.failedOperation_BalanceInsufficient)
    }
    
    /// 不支持的地域。
    public static var failedOperation_InvalidRegion: TCVpcError {
        TCVpcError(.failedOperation_InvalidRegion)
    }
    
    /// 未找到实例的主网卡。
    public static var failedOperation_MasterEniNotFound: TCVpcError {
        TCVpcError(.failedOperation_MasterEniNotFound)
    }
    
    /// 网络探测超时，请稍后重试。
    public static var failedOperation_NetDetectTimeOut: TCVpcError {
        TCVpcError(.failedOperation_NetDetectTimeOut)
    }
    
    /// DES任务失败。
    public static var failedOperation_TaskFailed: TCVpcError {
        TCVpcError(.failedOperation_TaskFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCVpcError {
        TCVpcError(.internalError)
    }
    
    /// 创建Ckafka路由失败，请稍后重试。
    public static var internalError_CreateCkafkaRouteError: TCVpcError {
        TCVpcError(.internalError_CreateCkafkaRouteError)
    }
    
    public static var internalError_ModuleError: TCVpcError {
        TCVpcError(.internalError_ModuleError)
    }
    
    /// 操作内部错误。
    public static var internalServerError: TCVpcError {
        TCVpcError(.internalServerError)
    }
    
    /// 不支持此账户。
    public static var invalidAccount_NotSupported: TCVpcError {
        TCVpcError(.invalidAccount_NotSupported)
    }
    
    /// 指定EIP处于欠费状态。
    public static var invalidAddressIdState_InArrears: TCVpcError {
        TCVpcError(.invalidAddressIdState_InArrears)
    }
    
    /// 指定 EIP 当前状态不能进行绑定操作。只有 EIP 的状态是 UNBIND 时才能进行绑定操作。
    public static var invalidAddressIdStatus_NotPermit: TCVpcError {
        TCVpcError(.invalidAddressIdStatus_NotPermit)
    }
    
    /// 指定EIP处于被封堵状态。当EIP处于封堵状态的时候是不能够进行绑定操作的，需要先进行解封。
    public static var invalidAddressId_Blocked: TCVpcError {
        TCVpcError(.invalidAddressId_Blocked)
    }
    
    /// 指定的EIP不存在。
    public static var invalidAddressId_NotFound: TCVpcError {
        TCVpcError(.invalidAddressId_NotFound)
    }
    
    /// 指定EIP的当前状态不允许进行该操作。
    public static var invalidAddressState: TCVpcError {
        TCVpcError(.invalidAddressState)
    }
    
    /// 指定实例已经绑定了EIP。需先解绑当前的EIP才能再次进行绑定操作。
    public static var invalidInstanceId_AlreadyBindEip: TCVpcError {
        TCVpcError(.invalidInstanceId_AlreadyBindEip)
    }
    
    /// 无效实例ID。指定的实例ID不存在。
    public static var invalidInstanceId_NotFound: TCVpcError {
        TCVpcError(.invalidInstanceId_NotFound)
    }
    
    /// 不被支持的实例。
    public static var invalidInstance_NotSupported: TCVpcError {
        TCVpcError(.invalidInstance_NotSupported)
    }
    
    /// 指定 NetworkInterfaceId 不存在或指定的PrivateIpAddress不在NetworkInterfaceId上。
    public static var invalidNetworkInterfaceId_NotFound: TCVpcError {
        TCVpcError(.invalidNetworkInterfaceId_NotFound)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCVpcError {
        TCVpcError(.invalidParameter)
    }
    
    /// 指定的两个参数冲突，不能同时存在。 EIP只能绑定在实例上或指定网卡的指定内网 IP 上。
    public static var invalidParameterConflict: TCVpcError {
        TCVpcError(.invalidParameterConflict)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCVpcError {
        TCVpcError(.invalidParameterValue)
    }
    
    /// 被攻击的IP地址。
    public static var invalidParameterValue_AddressAttacked: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressAttacked)
    }
    
    /// 该地址ID不合法。
    public static var invalidParameterValue_AddressIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressIdMalformed)
    }
    
    /// 该地址计费方式与其他地址冲突。
    public static var invalidParameterValue_AddressInternetChargeTypeConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressInternetChargeTypeConflict)
    }
    
    /// 该IP地址现在不可用。
    public static var invalidParameterValue_AddressIpNotAvailable: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressIpNotAvailable)
    }
    
    /// IP地址未找到。
    public static var invalidParameterValue_AddressIpNotFound: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressIpNotFound)
    }
    
    /// VPC中不存在此IP地址。
    public static var invalidParameterValue_AddressIpNotInVpc: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressIpNotInVpc)
    }
    
    /// 此IPv6地址未发布。
    public static var invalidParameterValue_AddressIpNotPublic: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressIpNotPublic)
    }
    
    /// 该地址不可与此实例申请。
    public static var invalidParameterValue_AddressNotApplicable: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressNotApplicable)
    }
    
    /// 该地址不是CalcIP。
    public static var invalidParameterValue_AddressNotCalcIP: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressNotCalcIP)
    }
    
    /// 该地址不是EIP。
    public static var invalidParameterValue_AddressNotEIP: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressNotEIP)
    }
    
    /// 未找到该地址。
    public static var invalidParameterValue_AddressNotFound: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressNotFound)
    }
    
    /// 该IPv6地址已经发布。
    public static var invalidParameterValue_AddressPublished: TCVpcError {
        TCVpcError(.invalidParameterValue_AddressPublished)
    }
    
    /// 带宽超出限制。
    public static var invalidParameterValue_BandwidthOutOfRange: TCVpcError {
        TCVpcError(.invalidParameterValue_BandwidthOutOfRange)
    }
    
    /// 带宽包ID不正确。
    public static var invalidParameterValue_BandwidthPackageIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_BandwidthPackageIdMalformed)
    }
    
    /// 该带宽包正在被使用。
    public static var invalidParameterValue_BandwidthPackageInUse: TCVpcError {
        TCVpcError(.invalidParameterValue_BandwidthPackageInUse)
    }
    
    /// 未查询到该带宽包。
    public static var invalidParameterValue_BandwidthPackageNotFound: TCVpcError {
        TCVpcError(.invalidParameterValue_BandwidthPackageNotFound)
    }
    
    /// 选择带宽低于可允许的最小范围。
    public static var invalidParameterValue_BandwidthTooSmall: TCVpcError {
        TCVpcError(.invalidParameterValue_BandwidthTooSmall)
    }
    
    /// 指定云联网关联黑石私有网络数量达到上限。
    public static var invalidParameterValue_CcnAttachBmvpcLimitExceeded: TCVpcError {
        TCVpcError(.invalidParameterValue_CcnAttachBmvpcLimitExceeded)
    }
    
    /// 目的网段不在对端VPC的CIDR范围内。
    public static var invalidParameterValue_CidrNotInPeerVpc: TCVpcError {
        TCVpcError(.invalidParameterValue_CidrNotInPeerVpc)
    }
    
    /// 指定CIDR不在SSL-VPN所属私有网络CIDR内。
    public static var invalidParameterValue_CidrNotInSslVpnVpc: TCVpcError {
        TCVpcError(.invalidParameterValue_CidrNotInSslVpnVpc)
    }
    
    /// 非法入参组合。
    public static var invalidParameterValue_Combination: TCVpcError {
        TCVpcError(.invalidParameterValue_Combination)
    }
    
    /// 入参重复。
    public static var invalidParameterValue_Duplicate: TCVpcError {
        TCVpcError(.invalidParameterValue_Duplicate)
    }
    
    /// 参数值存在重复。
    public static var invalidParameterValue_DuplicatePara: TCVpcError {
        TCVpcError(.invalidParameterValue_DuplicatePara)
    }
    
    /// 值超过上限。
    public static var invalidParameterValue_EIPBrandWidthOutInvalid: TCVpcError {
        TCVpcError(.invalidParameterValue_EIPBrandWidthOutInvalid)
    }
    
    /// 缺少参数。
    public static var invalidParameterValue_Empty: TCVpcError {
        TCVpcError(.invalidParameterValue_Empty)
    }
    
    /// IPv6规则没有更改。
    public static var invalidParameterValue_IPv6RuleNotChange: TCVpcError {
        TCVpcError(.invalidParameterValue_IPv6RuleNotChange)
    }
    
    /// 该实例的计费方式与其他实例不同。
    public static var invalidParameterValue_InconsistentInstanceInternetChargeType: TCVpcError {
        TCVpcError(.invalidParameterValue_InconsistentInstanceInternetChargeType)
    }
    
    /// 该实例不支持AnycastEIP。
    public static var invalidParameterValue_InstanceDoesNotSupportAnycast: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceDoesNotSupportAnycast)
    }
    
    public static var invalidParameterValue_InstanceHasNoWanIP: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceHasNoWanIP)
    }
    
    /// 该实例已有WanIP。
    public static var invalidParameterValue_InstanceHasWanIP: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceHasWanIP)
    }
    
    /// 实例ID错误。
    public static var invalidParameterValue_InstanceIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceIdMalformed)
    }
    
    /// 该实例没有CalcIP，无法完成请求。
    public static var invalidParameterValue_InstanceNoCalcIP: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceNoCalcIP)
    }
    
    /// 该实例没有WanIP，无法完成请求。
    public static var invalidParameterValue_InstanceNoWanIP: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceNoWanIP)
    }
    
    /// 由于该IP被禁用，无法绑定该实例。
    public static var invalidParameterValue_InstanceNormalPublicIpBlocked: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceNormalPublicIpBlocked)
    }
    
    /// 弹性网卡绑定的实例与地址绑定的实例不一致。
    public static var invalidParameterValue_InstanceNotMatchAssociateEni: TCVpcError {
        TCVpcError(.invalidParameterValue_InstanceNotMatchAssociateEni)
    }
    
    /// 网络计费模式没有更改。
    public static var invalidParameterValue_InternetChargeTypeNotChanged: TCVpcError {
        TCVpcError(.invalidParameterValue_InternetChargeTypeNotChanged)
    }
    
    /// 无效的带宽包计费方式。
    public static var invalidParameterValue_InvalidBandwidthPackageChargeType: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidBandwidthPackageChargeType)
    }
    
    /// 参数的值不存在或不支持。
    public static var invalidParameterValue_InvalidBusiness: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidBusiness)
    }
    
    /// 传入的DedicatedClusterId有误。
    public static var invalidParameterValue_InvalidDedicatedClusterId: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidDedicatedClusterId)
    }
    
    /// 该IP只能绑定小时流量后付费和带宽包实例。
    public static var invalidParameterValue_InvalidInstanceInternetChargeType: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidInstanceInternetChargeType)
    }
    
    /// 该实例状态无法完成操作。
    public static var invalidParameterValue_InvalidInstanceState: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidInstanceState)
    }
    
    /// 无效的IPv6地址。
    public static var invalidParameterValue_InvalidIpv6: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidIpv6)
    }
    
    /// 该Tag不合法。
    public static var invalidParameterValue_InvalidTag: TCVpcError {
        TCVpcError(.invalidParameterValue_InvalidTag)
    }
    
    /// 负载均衡实例已经绑定了EIP。
    public static var invalidParameterValue_LBAlreadyBindEip: TCVpcError {
        TCVpcError(.invalidParameterValue_LBAlreadyBindEip)
    }
    
    /// 参数值超出限制。
    public static var invalidParameterValue_LimitExceeded: TCVpcError {
        TCVpcError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 入参格式不合法。
    public static var invalidParameterValue_Malformed: TCVpcError {
        TCVpcError(.invalidParameterValue_Malformed)
    }
    
    /// 缺少绑定的实例。
    public static var invalidParameterValue_MissingAssociateEntity: TCVpcError {
        TCVpcError(.invalidParameterValue_MissingAssociateEntity)
    }
    
    /// 集群类型不同的IP不可在同一请求中。
    public static var invalidParameterValue_MixedAddressIpSetType: TCVpcError {
        TCVpcError(.invalidParameterValue_MixedAddressIpSetType)
    }
    
    /// NAT网关的DNAT转换规则已存在。
    public static var invalidParameterValue_NatGatewayDnatRuleExisted: TCVpcError {
        TCVpcError(.invalidParameterValue_NatGatewayDnatRuleExisted)
    }
    
    /// NAT网关的DNAT转换规则不存在。
    public static var invalidParameterValue_NatGatewayDnatRuleNotExists: TCVpcError {
        TCVpcError(.invalidParameterValue_NatGatewayDnatRuleNotExists)
    }
    
    /// DNAT转换规则的内网IP需为虚拟机上网卡所用的IP。
    public static var invalidParameterValue_NatGatewayDnatRulePipNeedVm: TCVpcError {
        TCVpcError(.invalidParameterValue_NatGatewayDnatRulePipNeedVm)
    }
    
    /// NAT网关的SNAT转换规则不存在。
    public static var invalidParameterValue_NatGatewaySnatRuleNotExists: TCVpcError {
        TCVpcError(.invalidParameterValue_NatGatewaySnatRuleNotExists)
    }
    
    /// NAT网关的SNAT规则已经存在。
    public static var invalidParameterValue_NatSnatRuleExists: TCVpcError {
        TCVpcError(.invalidParameterValue_NatSnatRuleExists)
    }
    
    /// 探测目的IP和网络探测在同一个VPC内。
    public static var invalidParameterValue_NetDetectInVpc: TCVpcError {
        TCVpcError(.invalidParameterValue_NetDetectInVpc)
    }
    
    /// 探测目的IP在云联网的路由表中找不到匹配的下一跳。
    public static var invalidParameterValue_NetDetectNotFoundIp: TCVpcError {
        TCVpcError(.invalidParameterValue_NetDetectNotFoundIp)
    }
    
    /// 探测目的IP与同一个私有网络内的同一个子网下的其他网络探测的探测目的IP相同。
    public static var invalidParameterValue_NetDetectSameIp: TCVpcError {
        TCVpcError(.invalidParameterValue_NetDetectSameIp)
    }
    
    /// 网络接口ID不正确。
    public static var invalidParameterValue_NetworkInterfaceIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_NetworkInterfaceIdMalformed)
    }
    
    /// 未找到网络接口ID，或私有IP地址未在网络接口配置。
    public static var invalidParameterValue_NetworkInterfaceNotFound: TCVpcError {
        TCVpcError(.invalidParameterValue_NetworkInterfaceNotFound)
    }
    
    /// 该操作仅对主网卡支持。
    public static var invalidParameterValue_OnlySupportedForMasterNetworkCard: TCVpcError {
        TCVpcError(.invalidParameterValue_OnlySupportedForMasterNetworkCard)
    }
    
    /// 参数值不在指定范围。
    public static var invalidParameterValue_Range: TCVpcError {
        TCVpcError(.invalidParameterValue_Range)
    }
    
    /// 参数值是一个系统保留对象。
    public static var invalidParameterValue_Reserved: TCVpcError {
        TCVpcError(.invalidParameterValue_Reserved)
    }
    
    /// 该资源已加入其他带宽包。
    public static var invalidParameterValue_ResourceAlreadyExisted: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceAlreadyExisted)
    }
    
    /// 该资源已过期。
    public static var invalidParameterValue_ResourceExpired: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceExpired)
    }
    
    /// 资源ID不正确。
    public static var invalidParameterValue_ResourceIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceIdMalformed)
    }
    
    /// 该资源不在此带宽包中。
    public static var invalidParameterValue_ResourceNotExisted: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceNotExisted)
    }
    
    /// 未查询到该资源。
    public static var invalidParameterValue_ResourceNotFound: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceNotFound)
    }
    
    /// 该资源不支持此操作。
    public static var invalidParameterValue_ResourceNotSupport: TCVpcError {
        TCVpcError(.invalidParameterValue_ResourceNotSupport)
    }
    
    /// 子网CIDR冲突。
    public static var invalidParameterValue_SubnetConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_SubnetConflict)
    }
    
    public static var invalidParameterValue_SubnetOverlap: TCVpcError {
        TCVpcError(.invalidParameterValue_SubnetOverlap)
    }
    
    /// 子网与辅助Cidr网段重叠。
    public static var invalidParameterValue_SubnetOverlapAssistCidr: TCVpcError {
        TCVpcError(.invalidParameterValue_SubnetOverlapAssistCidr)
    }
    
    /// 子网CIDR不合法。
    public static var invalidParameterValue_SubnetRange: TCVpcError {
        TCVpcError(.invalidParameterValue_SubnetRange)
    }
    
    public static var invalidParameterValue_TagDuplicateKey: TCVpcError {
        TCVpcError(.invalidParameterValue_TagDuplicateKey)
    }
    
    public static var invalidParameterValue_TagDuplicateResourceType: TCVpcError {
        TCVpcError(.invalidParameterValue_TagDuplicateResourceType)
    }
    
    public static var invalidParameterValue_TagInvalidKey: TCVpcError {
        TCVpcError(.invalidParameterValue_TagInvalidKey)
    }
    
    public static var invalidParameterValue_TagInvalidKeyLen: TCVpcError {
        TCVpcError(.invalidParameterValue_TagInvalidKeyLen)
    }
    
    public static var invalidParameterValue_TagInvalidVal: TCVpcError {
        TCVpcError(.invalidParameterValue_TagInvalidVal)
    }
    
    public static var invalidParameterValue_TagKeyNotExists: TCVpcError {
        TCVpcError(.invalidParameterValue_TagKeyNotExists)
    }
    
    public static var invalidParameterValue_TagNotAllocatedQuota: TCVpcError {
        TCVpcError(.invalidParameterValue_TagNotAllocatedQuota)
    }
    
    /// 该标签和值不存在。
    public static var invalidParameterValue_TagNotExisted: TCVpcError {
        TCVpcError(.invalidParameterValue_TagNotExisted)
    }
    
    public static var invalidParameterValue_TagNotSupportTag: TCVpcError {
        TCVpcError(.invalidParameterValue_TagNotSupportTag)
    }
    
    public static var invalidParameterValue_TagResourceFormatError: TCVpcError {
        TCVpcError(.invalidParameterValue_TagResourceFormatError)
    }
    
    public static var invalidParameterValue_TagTimestampExceeded: TCVpcError {
        TCVpcError(.invalidParameterValue_TagTimestampExceeded)
    }
    
    public static var invalidParameterValue_TagValNotExists: TCVpcError {
        TCVpcError(.invalidParameterValue_TagValNotExists)
    }
    
    /// 无效参数值。参数值太长。
    public static var invalidParameterValue_TooLong: TCVpcError {
        TCVpcError(.invalidParameterValue_TooLong)
    }
    
    /// 该流量包ID不合法。
    public static var invalidParameterValue_TrafficPackageIdMalformed: TCVpcError {
        TCVpcError(.invalidParameterValue_TrafficPackageIdMalformed)
    }
    
    /// 该可用区不可用。
    public static var invalidParameterValue_UnavailableZone: TCVpcError {
        TCVpcError(.invalidParameterValue_UnavailableZone)
    }
    
    /// 目的网段和当前VPC的CIDR冲突。
    public static var invalidParameterValue_VpcCidrConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_VpcCidrConflict)
    }
    
    /// 当前功能不支持此专线网关。
    public static var invalidParameterValue_VpgTypeNotMatch: TCVpcError {
        TCVpcError(.invalidParameterValue_VpgTypeNotMatch)
    }
    
    /// 目的网段和当前VPN通道的CIDR冲突。
    public static var invalidParameterValue_VpnConnCidrConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_VpnConnCidrConflict)
    }
    
    /// VPN通道探测ip冲突。
    public static var invalidParameterValue_VpnConnHealthCheckIpConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_VpnConnHealthCheckIpConflict)
    }
    
    /// 参数Zone的值与CDC所在Zone冲突。
    public static var invalidParameterValue_ZoneConflict: TCVpcError {
        TCVpcError(.invalidParameterValue_ZoneConflict)
    }
    
    /// 参数不支持同时指定。
    public static var invalidParameter_Coexist: TCVpcError {
        TCVpcError(.invalidParameter_Coexist)
    }
    
    /// 指定过滤条件不存在。
    public static var invalidParameter_FilterInvalidKey: TCVpcError {
        TCVpcError(.invalidParameter_FilterInvalidKey)
    }
    
    /// 指定过滤条件不是键值对。
    public static var invalidParameter_FilterNotDict: TCVpcError {
        TCVpcError(.invalidParameter_FilterNotDict)
    }
    
    /// 指定过滤选项值不是列表。
    public static var invalidParameter_FilterValuesNotList: TCVpcError {
        TCVpcError(.invalidParameter_FilterValuesNotList)
    }
    
    /// 该过滤规则不合法。
    public static var invalidParameter_InvalidFilter: TCVpcError {
        TCVpcError(.invalidParameter_InvalidFilter)
    }
    
    /// 下一跳类型与下一跳网关不匹配。
    public static var invalidParameter_NextHopMismatch: TCVpcError {
        TCVpcError(.invalidParameter_NextHopMismatch)
    }
    
    /// 专线网关跨可用区容灾组不存在。
    public static var invalidParameter_VpgHaGroupNotFound: TCVpcError {
        TCVpcError(.invalidParameter_VpgHaGroupNotFound)
    }
    
    /// 指定弹性网卡的指定内网IP已经绑定了EIP，不能重复绑定。
    public static var invalidPrivateIpAddress_AlreadyBindEip: TCVpcError {
        TCVpcError(.invalidPrivateIpAddress_AlreadyBindEip)
    }
    
    /// 无效的路由策略ID（RouteId）。
    public static var invalidRouteId_NotFound: TCVpcError {
        TCVpcError(.invalidRouteId_NotFound)
    }
    
    /// 无效的路由表,路由表实例ID不合法。
    public static var invalidRouteTableId_Malformed: TCVpcError {
        TCVpcError(.invalidRouteTableId_Malformed)
    }
    
    /// 无效的路由表,路由表资源不存在，请再次核实您输入的资源信息是否正确。
    public static var invalidRouteTableId_NotFound: TCVpcError {
        TCVpcError(.invalidRouteTableId_NotFound)
    }
    
    /// 无效的安全组,安全组实例ID不合法。
    public static var invalidSecurityGroupID_Malformed: TCVpcError {
        TCVpcError(.invalidSecurityGroupID_Malformed)
    }
    
    /// 无效的安全组,安全组实例ID不存在。
    public static var invalidSecurityGroupID_NotFound: TCVpcError {
        TCVpcError(.invalidSecurityGroupID_NotFound)
    }
    
    /// 无效的VPC,VPC实例ID不合法。
    public static var invalidVpcId_Malformed: TCVpcError {
        TCVpcError(.invalidVpcId_Malformed)
    }
    
    /// 无效的VPC,VPC资源不存在。
    public static var invalidVpcId_NotFound: TCVpcError {
        TCVpcError(.invalidVpcId_NotFound)
    }
    
    /// 无效的VPN网关,VPN实例ID不合法。
    public static var invalidVpnGatewayId_Malformed: TCVpcError {
        TCVpcError(.invalidVpnGatewayId_Malformed)
    }
    
    /// 无效的VPN网关,VPN实例不存在，请再次核实您输入的资源信息是否正确。
    public static var invalidVpnGatewayId_NotFound: TCVpcError {
        TCVpcError(.invalidVpnGatewayId_NotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCVpcError {
        TCVpcError(.limitExceeded)
    }
    
    /// 账号退还配额超过限制。
    public static var limitExceeded_AccountReturnQuota: TCVpcError {
        TCVpcError(.limitExceeded_AccountReturnQuota)
    }
    
    /// 分配IP地址数量达到上限。
    public static var limitExceeded_Address: TCVpcError {
        TCVpcError(.limitExceeded_Address)
    }
    
    /// 租户申请的弹性IP超过上限。
    public static var limitExceeded_AddressQuotaLimitExceeded: TCVpcError {
        TCVpcError(.limitExceeded_AddressQuotaLimitExceeded)
    }
    
    /// 带宽包配额超过限制。
    public static var limitExceeded_BandwidthPackageQuota: TCVpcError {
        TCVpcError(.limitExceeded_BandwidthPackageQuota)
    }
    
    /// 超过更换IP配额。
    public static var limitExceeded_ChangeAddressQuota: TCVpcError {
        TCVpcError(.limitExceeded_ChangeAddressQuota)
    }
    
    /// VPC分配网段数量达到上限。
    public static var limitExceeded_CidrBlock: TCVpcError {
        TCVpcError(.limitExceeded_CidrBlock)
    }
    
    /// 租户每天申请的弹性IP超过上限。
    public static var limitExceeded_DailyAllocateAddressQuotaLimitExceeded: TCVpcError {
        TCVpcError(.limitExceeded_DailyAllocateAddressQuotaLimitExceeded)
    }
    
    /// 超过每日更换IP配额。
    public static var limitExceeded_DailyChangeAddressQuota: TCVpcError {
        TCVpcError(.limitExceeded_DailyChangeAddressQuota)
    }
    
    /// 实例绑定的弹性IP超过配额。
    public static var limitExceeded_InstanceAddressQuota: TCVpcError {
        TCVpcError(.limitExceeded_InstanceAddressQuota)
    }
    
    /// 修改地址网络计费模式配额超过限制。
    public static var limitExceeded_ModifyAddressInternetChargeTypeQuota: TCVpcError {
        TCVpcError(.limitExceeded_ModifyAddressInternetChargeTypeQuota)
    }
    
    /// 每月地址找回配额超过限制。
    public static var limitExceeded_MonthlyAddressRecoveryQuota: TCVpcError {
        TCVpcError(.limitExceeded_MonthlyAddressRecoveryQuota)
    }
    
    /// NAT网关数量已达到上限。
    public static var limitExceeded_NatGatewayLimitExceeded: TCVpcError {
        TCVpcError(.limitExceeded_NatGatewayLimitExceeded)
    }
    
    /// 私有网络创建的NAT网关超过上限。
    public static var limitExceeded_NatGatewayPerVpcLimitExceeded: TCVpcError {
        TCVpcError(.limitExceeded_NatGatewayPerVpcLimitExceeded)
    }
    
    /// 过滤参数名称超过限制。
    public static var limitExceeded_NumberOfFilters: TCVpcError {
        TCVpcError(.limitExceeded_NumberOfFilters)
    }
    
    /// NAT网关绑定的弹性IP超过上限。
    public static var limitExceeded_PublicIpAddressPerNatGatewayLimitExceeded: TCVpcError {
        TCVpcError(.limitExceeded_PublicIpAddressPerNatGatewayLimitExceeded)
    }
    
    /// 安全组规则数量超过上限。
    public static var limitExceeded_SecurityGroupPolicySet: TCVpcError {
        TCVpcError(.limitExceeded_SecurityGroupPolicySet)
    }
    
    /// 子网分配子网段数量达到上限。
    public static var limitExceeded_SubnetCidrBlock: TCVpcError {
        TCVpcError(.limitExceeded_SubnetCidrBlock)
    }
    
    public static var limitExceeded_TagKeyExceeded: TCVpcError {
        TCVpcError(.limitExceeded_TagKeyExceeded)
    }
    
    public static var limitExceeded_TagKeyPerResourceExceeded: TCVpcError {
        TCVpcError(.limitExceeded_TagKeyPerResourceExceeded)
    }
    
    public static var limitExceeded_TagNotEnoughQuota: TCVpcError {
        TCVpcError(.limitExceeded_TagNotEnoughQuota)
    }
    
    public static var limitExceeded_TagQuota: TCVpcError {
        TCVpcError(.limitExceeded_TagQuota)
    }
    
    public static var limitExceeded_TagQuotaExceeded: TCVpcError {
        TCVpcError(.limitExceeded_TagQuotaExceeded)
    }
    
    public static var limitExceeded_TagTagsExceeded: TCVpcError {
        TCVpcError(.limitExceeded_TagTagsExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCVpcError {
        TCVpcError(.missingParameter)
    }
    
    public static var operationDenied_AddressInArrears: TCVpcError {
        TCVpcError(.operationDenied_AddressInArrears)
    }
    
    public static var operationDenied_MutexTaskRunning: TCVpcError {
        TCVpcError(.operationDenied_MutexTaskRunning)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCVpcError {
        TCVpcError(.resourceInUse)
    }
    
    /// 指定IP地址已经在使用中。
    public static var resourceInUse_Address: TCVpcError {
        TCVpcError(.resourceInUse_Address)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCVpcError {
        TCVpcError(.resourceInsufficient)
    }
    
    /// 网段资源不足。
    public static var resourceInsufficient_CidrBlock: TCVpcError {
        TCVpcError(.resourceInsufficient_CidrBlock)
    }
    
    public static var resourceInsufficient_Subnet: TCVpcError {
        TCVpcError(.resourceInsufficient_Subnet)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCVpcError {
        TCVpcError(.resourceNotFound)
    }
    
    /// Svc不存在。
    public static var resourceNotFound_SvcNotExist: TCVpcError {
        TCVpcError(.resourceNotFound_SvcNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCVpcError {
        TCVpcError(.resourceUnavailable)
    }
    
    /// 当前用户不在指定终端节点服务的白名单内。
    public static var resourceUnavailable_ServiceWhiteListNotAdded: TCVpcError {
        TCVpcError(.resourceUnavailable_ServiceWhiteListNotAdded)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCVpcError {
        TCVpcError(.unauthorizedOperation)
    }
    
    /// 无权限申请AnycastEip资源。
    public static var unauthorizedOperation_AnycastEip: TCVpcError {
        TCVpcError(.unauthorizedOperation_AnycastEip)
    }
    
    /// 绑定关系不存在。
    public static var unauthorizedOperation_AttachmentNotFound: TCVpcError {
        TCVpcError(.unauthorizedOperation_AttachmentNotFound)
    }
    
    /// 未授权的用户。
    public static var unauthorizedOperation_InvalidAccount: TCVpcError {
        TCVpcError(.unauthorizedOperation_InvalidAccount)
    }
    
    /// 账号未实名。
    public static var unauthorizedOperation_NoRealNameAuthentication: TCVpcError {
        TCVpcError(.unauthorizedOperation_NoRealNameAuthentication)
    }
    
    /// 主IP不支持指定操作。
    public static var unauthorizedOperation_PrimaryIp: TCVpcError {
        TCVpcError(.unauthorizedOperation_PrimaryIp)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCVpcError {
        TCVpcError(.unknownParameter)
    }
    
    /// 参数无法识别，可以尝试相似参数代替。
    public static var unknownParameter_WithGuess: TCVpcError {
        TCVpcError(.unknownParameter_WithGuess)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCVpcError {
        TCVpcError(.unsupportedOperation)
    }
    
    /// 接口不存在。
    public static var unsupportedOperation_ActionNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_ActionNotFound)
    }
    
    /// 欠费状态不支持该操作。
    public static var unsupportedOperation_AddressIpInArrear: TCVpcError {
        TCVpcError(.unsupportedOperation_AddressIpInArrear)
    }
    
    /// 此付费模式的IP地址不支持该操作。
    public static var unsupportedOperation_AddressIpInternetChargeTypeNotPermit: TCVpcError {
        TCVpcError(.unsupportedOperation_AddressIpInternetChargeTypeNotPermit)
    }
    
    /// 绑定此实例的IP地址不支持该操作。
    public static var unsupportedOperation_AddressIpNotSupportInstance: TCVpcError {
        TCVpcError(.unsupportedOperation_AddressIpNotSupportInstance)
    }
    
    /// 此IP地址状态不支持该操作。
    public static var unsupportedOperation_AddressIpStatusNotPermit: TCVpcError {
        TCVpcError(.unsupportedOperation_AddressIpStatusNotPermit)
    }
    
    /// 该地址状态不支持此操作。
    public static var unsupportedOperation_AddressStatusNotPermit: TCVpcError {
        TCVpcError(.unsupportedOperation_AddressStatusNotPermit)
    }
    
    /// 资源不在指定的AppId下。
    public static var unsupportedOperation_AppIdMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_AppIdMismatch)
    }
    
    /// APPId不存在。
    public static var unsupportedOperation_AppIdNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_AppIdNotFound)
    }
    
    /// 绑定关系已存在。
    public static var unsupportedOperation_AttachmentAlreadyExists: TCVpcError {
        TCVpcError(.unsupportedOperation_AttachmentAlreadyExists)
    }
    
    /// 绑定关系不存在。
    public static var unsupportedOperation_AttachmentNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_AttachmentNotFound)
    }
    
    /// 当前云联网还有预付费带宽未到期，不支持主动删除。
    public static var unsupportedOperation_BandwidthNotExpired: TCVpcError {
        TCVpcError(.unsupportedOperation_BandwidthNotExpired)
    }
    
    /// 该带宽包不支持此操作。
    public static var unsupportedOperation_BandwidthPackageIdNotSupported: TCVpcError {
        TCVpcError(.unsupportedOperation_BandwidthPackageIdNotSupported)
    }
    
    /// 已绑定EIP。
    public static var unsupportedOperation_BindEIP: TCVpcError {
        TCVpcError(.unsupportedOperation_BindEIP)
    }
    
    /// 指定VPC CIDR范围不支持私有网络和基础网络设备互通。
    public static var unsupportedOperation_CIDRUnSupportedClassicLink: TCVpcError {
        TCVpcError(.unsupportedOperation_CIDRUnSupportedClassicLink)
    }
    
    /// 实例已关联CCN。
    public static var unsupportedOperation_CcnAttached: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnAttached)
    }
    
    /// 当前云联网有流日志，不支持删除。
    public static var unsupportedOperation_CcnHasFlowLog: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnHasFlowLog)
    }
    
    public static var unsupportedOperation_CcnInstanceAccountNotApprovedByUnicom: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnInstanceAccountNotApprovedByUnicom)
    }
    
    /// 实例未关联CCN。
    public static var unsupportedOperation_CcnNotAttached: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnNotAttached)
    }
    
    /// 跨账号场景下不支持自驾云账号实例 关联普通账号云联网。
    public static var unsupportedOperation_CcnOrdinaryAccountRefuseAttach: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnOrdinaryAccountRefuseAttach)
    }
    
    /// 指定的路由表不存在。
    public static var unsupportedOperation_CcnRouteTableNotExist: TCVpcError {
        TCVpcError(.unsupportedOperation_CcnRouteTableNotExist)
    }
    
    /// CDC子网不支持创建非本地网关类型的路由。
    public static var unsupportedOperation_CdcSubnetNotSupportUnLocalGateway: TCVpcError {
        TCVpcError(.unsupportedOperation_CdcSubnetNotSupportUnLocalGateway)
    }
    
    /// 实例已经和VPC绑定。
    public static var unsupportedOperation_ClassicInstanceIdAlreadyExists: TCVpcError {
        TCVpcError(.unsupportedOperation_ClassicInstanceIdAlreadyExists)
    }
    
    /// 公网Clb不支持该规则。
    public static var unsupportedOperation_ClbPolicyLimit: TCVpcError {
        TCVpcError(.unsupportedOperation_ClbPolicyLimit)
    }
    
    /// 与该VPC下的TKE容器的网段重叠。
    public static var unsupportedOperation_ConflictWithDockerRoute: TCVpcError {
        TCVpcError(.unsupportedOperation_ConflictWithDockerRoute)
    }
    
    public static var unsupportedOperation_CurrentAccountIsNotUnicomAccount: TCVpcError {
        TCVpcError(.unsupportedOperation_CurrentAccountIsNotUnicomAccount)
    }
    
    public static var unsupportedOperation_CurrentQueryRegionIsNotCrossBorder: TCVpcError {
        TCVpcError(.unsupportedOperation_CurrentQueryRegionIsNotCrossBorder)
    }
    
    public static var unsupportedOperation_DCGatewayNatRuleExists: TCVpcError {
        TCVpcError(.unsupportedOperation_DCGatewayNatRuleExists)
    }
    
    /// 指定的VPC未发现专线网关。
    public static var unsupportedOperation_DcGatewaysNotFoundInVpc: TCVpcError {
        TCVpcError(.unsupportedOperation_DcGatewaysNotFoundInVpc)
    }
    
    /// 禁止删除默认路由表。
    public static var unsupportedOperation_DelDefaultRoute: TCVpcError {
        TCVpcError(.unsupportedOperation_DelDefaultRoute)
    }
    
    /// 禁止删除已关联子网的路由表。
    public static var unsupportedOperation_DelRouteWithSubnet: TCVpcError {
        TCVpcError(.unsupportedOperation_DelRouteWithSubnet)
    }
    
    /// 专线网关正在更新BGP Community属性。
    public static var unsupportedOperation_DirectConnectGatewayIsUpdatingCommunity: TCVpcError {
        TCVpcError(.unsupportedOperation_DirectConnectGatewayIsUpdatingCommunity)
    }
    
    /// 指定的路由策略已发布至云联网，请先撤销。
    public static var unsupportedOperation_DisabledNotifyCcn: TCVpcError {
        TCVpcError(.unsupportedOperation_DisabledNotifyCcn)
    }
    
    /// 安全组规则重复。
    public static var unsupportedOperation_DuplicatePolicy: TCVpcError {
        TCVpcError(.unsupportedOperation_DuplicatePolicy)
    }
    
    /// 不支持ECMP。
    public static var unsupportedOperation_Ecmp: TCVpcError {
        TCVpcError(.unsupportedOperation_Ecmp)
    }
    
    /// 和云联网的路由形成ECMP。
    public static var unsupportedOperation_EcmpWithCcnRoute: TCVpcError {
        TCVpcError(.unsupportedOperation_EcmpWithCcnRoute)
    }
    
    /// 和用户自定义的路由形成ECMP。
    public static var unsupportedOperation_EcmpWithUserRoute: TCVpcError {
        TCVpcError(.unsupportedOperation_EcmpWithUserRoute)
    }
    
    /// 终端节点服务本身不能是终端节点。
    public static var unsupportedOperation_EndPointService: TCVpcError {
        TCVpcError(.unsupportedOperation_EndPointService)
    }
    
    /// 不支持创建流日志：当前弹性网卡绑定的是KO机型。
    public static var unsupportedOperation_FlowLogsNotSupportKoInstanceEni: TCVpcError {
        TCVpcError(.unsupportedOperation_FlowLogsNotSupportKoInstanceEni)
    }
    
    /// 不支持创建流日志：当前弹性网卡未绑定实例。
    public static var unsupportedOperation_FlowLogsNotSupportNullInstanceEni: TCVpcError {
        TCVpcError(.unsupportedOperation_FlowLogsNotSupportNullInstanceEni)
    }
    
    /// 该种类型地址不支持此操作。
    public static var unsupportedOperation_IncorrectAddressResourceType: TCVpcError {
        TCVpcError(.unsupportedOperation_IncorrectAddressResourceType)
    }
    
    /// 用户配置的实例和路由表不匹配。
    public static var unsupportedOperation_InstanceAndRtbNotMatch: TCVpcError {
        TCVpcError(.unsupportedOperation_InstanceAndRtbNotMatch)
    }
    
    public static var unsupportedOperation_InstanceMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_InstanceMismatch)
    }
    
    /// 跨账号场景下不支持普通账号实例关联自驾云账号云联网。
    public static var unsupportedOperation_InstanceOrdinaryAccountRefuseAttach: TCVpcError {
        TCVpcError(.unsupportedOperation_InstanceOrdinaryAccountRefuseAttach)
    }
    
    /// 该地址绑定的实例状态不支持此操作。
    public static var unsupportedOperation_InstanceStateNotSupported: TCVpcError {
        TCVpcError(.unsupportedOperation_InstanceStateNotSupported)
    }
    
    /// 账户余额不足。
    public static var unsupportedOperation_InsufficientFunds: TCVpcError {
        TCVpcError(.unsupportedOperation_InsufficientFunds)
    }
    
    /// 不支持该操作。
    public static var unsupportedOperation_InvalidAction: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidAction)
    }
    
    /// 该地址的网络付费方式不支持此操作。
    public static var unsupportedOperation_InvalidAddressInternetChargeType: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidAddressInternetChargeType)
    }
    
    /// 该地址状态不支持此操作。
    public static var unsupportedOperation_InvalidAddressState: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidAddressState)
    }
    
    /// 无效的实例状态。
    public static var unsupportedOperation_InvalidInstanceState: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidInstanceState)
    }
    
    /// 该计费方式不支持此操作。
    public static var unsupportedOperation_InvalidResourceInternetChargeType: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidResourceInternetChargeType)
    }
    
    /// 不支持加入此协议的带宽包。
    public static var unsupportedOperation_InvalidResourceProtocol: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidResourceProtocol)
    }
    
    /// 资源状态不合法。
    public static var unsupportedOperation_InvalidState: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidState)
    }
    
    /// 当前状态不支持发布至云联网，请重试。
    public static var unsupportedOperation_InvalidStatusNotifyCcn: TCVpcError {
        TCVpcError(.unsupportedOperation_InvalidStatusNotifyCcn)
    }
    
    /// 关联当前云联网的实例的账号存在不是金融云账号。
    public static var unsupportedOperation_IsNotFinanceAccount: TCVpcError {
        TCVpcError(.unsupportedOperation_IsNotFinanceAccount)
    }
    
    /// 该ISP不支持此操作。
    public static var unsupportedOperation_IspNotSupported: TCVpcError {
        TCVpcError(.unsupportedOperation_IspNotSupported)
    }
    
    /// 指定的CDC已存在本地网关。
    public static var unsupportedOperation_LocalGatewayAlreadyExists: TCVpcError {
        TCVpcError(.unsupportedOperation_LocalGatewayAlreadyExists)
    }
    
    public static var unsupportedOperation_ModifyAddressAttribute: TCVpcError {
        TCVpcError(.unsupportedOperation_ModifyAddressAttribute)
    }
    
    /// 资源互斥操作任务正在执行。
    public static var unsupportedOperation_MutexOperationTaskRunning: TCVpcError {
        TCVpcError(.unsupportedOperation_MutexOperationTaskRunning)
    }
    
    /// NAT网关的公网IP不存在。
    public static var unsupportedOperation_NatGatewayEipNotExists: TCVpcError {
        TCVpcError(.unsupportedOperation_NatGatewayEipNotExists)
    }
    
    /// SNAT/DNAT转换规则所指定的内网IP已绑定了其他的规则，无法重复绑定。
    public static var unsupportedOperation_NatGatewayRulePipExists: TCVpcError {
        TCVpcError(.unsupportedOperation_NatGatewayRulePipExists)
    }
    
    /// SNAT转换规则的内网IP需为虚拟机上网卡所用的IP。
    public static var unsupportedOperation_NatGatewaySnatPipNeedVm: TCVpcError {
        TCVpcError(.unsupportedOperation_NatGatewaySnatPipNeedVm)
    }
    
    /// NAT网关类型不支持SNAT规则。
    public static var unsupportedOperation_NatGatewayTypeNotSupportSNAT: TCVpcError {
        TCVpcError(.unsupportedOperation_NatGatewayTypeNotSupportSNAT)
    }
    
    /// NAT实例不支持该操作。
    public static var unsupportedOperation_NatNotSupported: TCVpcError {
        TCVpcError(.unsupportedOperation_NatNotSupported)
    }
    
    /// 指定的子网不支持创建本地网关类型的路由。
    public static var unsupportedOperation_NormalSubnetNotSupportLocalGateway: TCVpcError {
        TCVpcError(.unsupportedOperation_NormalSubnetNotSupportLocalGateway)
    }
    
    /// 当前实例已被封禁，无法进行此操作。
    public static var unsupportedOperation_NotLockedInstanceOperation: TCVpcError {
        TCVpcError(.unsupportedOperation_NotLockedInstanceOperation)
    }
    
    /// 当前云联网实例未处于申请中状态，无法进行操作。
    public static var unsupportedOperation_NotPendingCcnInstance: TCVpcError {
        TCVpcError(.unsupportedOperation_NotPendingCcnInstance)
    }
    
    /// 当前云联网为非后付费类型，无法进行此操作。
    public static var unsupportedOperation_NotPostpaidCcnOperation: TCVpcError {
        TCVpcError(.unsupportedOperation_NotPostpaidCcnOperation)
    }
    
    public static var unsupportedOperation_NotSupportAttachEdgeAndCrossBorderInstance: TCVpcError {
        TCVpcError(.unsupportedOperation_NotSupportAttachEdgeAndCrossBorderInstance)
    }
    
    public static var unsupportedOperation_NotSupportDeleteDefaultRouteTable: TCVpcError {
        TCVpcError(.unsupportedOperation_NotSupportDeleteDefaultRouteTable)
    }
    
    public static var unsupportedOperation_NotSupportedUpdateCcnRoutePublish: TCVpcError {
        TCVpcError(.unsupportedOperation_NotSupportedUpdateCcnRoutePublish)
    }
    
    /// 指定的路由策略不支持发布或撤销至云联网。
    public static var unsupportedOperation_NotifyCcn: TCVpcError {
        TCVpcError(.unsupportedOperation_NotifyCcn)
    }
    
    /// 此产品计费方式已下线，请尝试其他计费方式。
    public static var unsupportedOperation_OfflineChargeType: TCVpcError {
        TCVpcError(.unsupportedOperation_OfflineChargeType)
    }
    
    /// 仅支持专业版Ckafka。
    public static var unsupportedOperation_OnlySupportProfessionKafka: TCVpcError {
        TCVpcError(.unsupportedOperation_OnlySupportProfessionKafka)
    }
    
    /// 预付费云联网只支持地域间限速。
    public static var unsupportedOperation_PrepaidCcnOnlySupportInterRegionLimit: TCVpcError {
        TCVpcError(.unsupportedOperation_PrepaidCcnOnlySupportInterRegionLimit)
    }
    
    /// 指定的值是主IP。
    public static var unsupportedOperation_PrimaryIp: TCVpcError {
        TCVpcError(.unsupportedOperation_PrimaryIp)
    }
    
    /// Nat网关至少存在一个弹性IP，弹性IP不能解绑。
    public static var unsupportedOperation_PublicIpAddressDisassociate: TCVpcError {
        TCVpcError(.unsupportedOperation_PublicIpAddressDisassociate)
    }
    
    /// 绑定NAT网关的弹性IP不是BGP性质的IP。
    public static var unsupportedOperation_PublicIpAddressIsNotBGPIp: TCVpcError {
        TCVpcError(.unsupportedOperation_PublicIpAddressIsNotBGPIp)
    }
    
    /// 绑定NAT网关的弹性IP不存在。
    public static var unsupportedOperation_PublicIpAddressIsNotExisted: TCVpcError {
        TCVpcError(.unsupportedOperation_PublicIpAddressIsNotExisted)
    }
    
    /// 绑定NAT网关的弹性IP不是按流量计费的。
    public static var unsupportedOperation_PublicIpAddressNotBilledByTraffic: TCVpcError {
        TCVpcError(.unsupportedOperation_PublicIpAddressNotBilledByTraffic)
    }
    
    /// 当前账号不能在该地域使用产品。
    public static var unsupportedOperation_PurchaseLimit: TCVpcError {
        TCVpcError(.unsupportedOperation_PurchaseLimit)
    }
    
    public static var unsupportedOperation_RecordExists: TCVpcError {
        TCVpcError(.unsupportedOperation_RecordExists)
    }
    
    public static var unsupportedOperation_RecordNotExists: TCVpcError {
        TCVpcError(.unsupportedOperation_RecordNotExists)
    }
    
    /// 输入的资源ID与IP绑定的资源不匹配，请检查。
    public static var unsupportedOperation_ResourceMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_ResourceMismatch)
    }
    
    /// 未找到相关角色，请确认角色是否授权。
    public static var unsupportedOperation_RoleNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_RoleNotFound)
    }
    
    public static var unsupportedOperation_RouteTableHasSubnetRule: TCVpcError {
        TCVpcError(.unsupportedOperation_RouteTableHasSubnetRule)
    }
    
    public static var unsupportedOperation_SnatSubnet: TCVpcError {
        TCVpcError(.unsupportedOperation_SnatSubnet)
    }
    
    /// 指定的终端节点服务所创建的终端节点不支持绑定安全组。
    public static var unsupportedOperation_SpecialEndPointService: TCVpcError {
        TCVpcError(.unsupportedOperation_SpecialEndPointService)
    }
    
    public static var unsupportedOperation_SslVpnClientIdNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_SslVpnClientIdNotFound)
    }
    
    /// 中继网卡不支持该操作。
    public static var unsupportedOperation_SubEniNotSupportTrunking: TCVpcError {
        TCVpcError(.unsupportedOperation_SubEniNotSupportTrunking)
    }
    
    /// 系统路由，禁止操作。
    public static var unsupportedOperation_SystemRoute: TCVpcError {
        TCVpcError(.unsupportedOperation_SystemRoute)
    }
    
    public static var unsupportedOperation_TagAllocate: TCVpcError {
        TCVpcError(.unsupportedOperation_TagAllocate)
    }
    
    public static var unsupportedOperation_TagFree: TCVpcError {
        TCVpcError(.unsupportedOperation_TagFree)
    }
    
    public static var unsupportedOperation_TagNotPermit: TCVpcError {
        TCVpcError(.unsupportedOperation_TagNotPermit)
    }
    
    public static var unsupportedOperation_TagSystemReservedTagKey: TCVpcError {
        TCVpcError(.unsupportedOperation_TagSystemReservedTagKey)
    }
    
    /// 账号ID不存在。
    public static var unsupportedOperation_UinNotFound: TCVpcError {
        TCVpcError(.unsupportedOperation_UinNotFound)
    }
    
    /// 不支持跨境。
    public static var unsupportedOperation_UnableCrossBorder: TCVpcError {
        TCVpcError(.unsupportedOperation_UnableCrossBorder)
    }
    
    /// 当前云联网无法关联金融云实例。
    public static var unsupportedOperation_UnableCrossFinance: TCVpcError {
        TCVpcError(.unsupportedOperation_UnableCrossFinance)
    }
    
    /// 未分配IPv6网段。
    public static var unsupportedOperation_UnassignCidrBlock: TCVpcError {
        TCVpcError(.unsupportedOperation_UnassignCidrBlock)
    }
    
    /// 未绑定EIP。
    public static var unsupportedOperation_UnbindEIP: TCVpcError {
        TCVpcError(.unsupportedOperation_UnbindEIP)
    }
    
    /// 账户还有未支付订单，请先完成付款。
    public static var unsupportedOperation_UnpaidOrderAlreadyExists: TCVpcError {
        TCVpcError(.unsupportedOperation_UnpaidOrderAlreadyExists)
    }
    
    public static var unsupportedOperation_UnsupportedBindLocalZoneEIP: TCVpcError {
        TCVpcError(.unsupportedOperation_UnsupportedBindLocalZoneEIP)
    }
    
    /// 指定机型不支持弹性网卡。
    public static var unsupportedOperation_UnsupportedInstanceFamily: TCVpcError {
        TCVpcError(.unsupportedOperation_UnsupportedInstanceFamily)
    }
    
    /// 暂无法在此国家/地区提供该服务。
    public static var unsupportedOperation_UnsupportedRegion: TCVpcError {
        TCVpcError(.unsupportedOperation_UnsupportedRegion)
    }
    
    /// 当前用户付费类型不支持创建所选付费类型的云联网。
    public static var unsupportedOperation_UserAndCcnChargeTypeNotMatch: TCVpcError {
        TCVpcError(.unsupportedOperation_UserAndCcnChargeTypeNotMatch)
    }
    
    /// 指定安全组规则版本号和当前最新版本不一致。
    public static var unsupportedOperation_VersionMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_VersionMismatch)
    }
    
    /// 资源不属于同一个VPC。
    public static var unsupportedOperation_VpcMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_VpcMismatch)
    }
    
    /// 指定资源在不同的可用区。
    public static var unsupportedOperation_ZoneMismatch: TCVpcError {
        TCVpcError(.unsupportedOperation_ZoneMismatch)
    }
    
    /// 已经达到指定区域vpc资源申请数量上限。
    public static var vpcLimitExceeded: TCVpcError {
        TCVpcError(.vpcLimitExceeded)
    }
}

extension TCVpcError {
    public static var domains: [TCErrorType.Type] {
        return [AddressQuotaLimitExceeded.self, FailedOperation.self, InternalError.self, InvalidAccount.self, InvalidAddressId.self, InvalidAddressIdState.self, InvalidAddressIdStatus.self, InvalidInstance.self, InvalidInstanceId.self, InvalidNetworkInterfaceId.self, InvalidParameter.self, InvalidParameterValue.self, InvalidPrivateIpAddress.self, InvalidRouteId.self, InvalidRouteTableId.self, InvalidSecurityGroupID.self, InvalidVpcId.self, InvalidVpnGatewayId.self, LimitExceeded.self, OperationDenied.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self, UnsupportedOperation.self]
    }
}

extension TCVpcError: Equatable {
    public static func == (lhs: TCVpcError, rhs: TCVpcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVpcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}