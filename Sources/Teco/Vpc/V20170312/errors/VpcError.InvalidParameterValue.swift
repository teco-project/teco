//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCVpcError {
    public struct InvalidParameterValue: TCVpcErrorType {
        enum Code: String {
            case addressAttacked = "InvalidParameterValue.AddressAttacked"
            case addressIdMalformed = "InvalidParameterValue.AddressIdMalformed"
            case addressInternetChargeTypeConflict = "InvalidParameterValue.AddressInternetChargeTypeConflict"
            case addressIpNotAvailable = "InvalidParameterValue.AddressIpNotAvailable"
            case addressIpNotFound = "InvalidParameterValue.AddressIpNotFound"
            case addressIpNotInVpc = "InvalidParameterValue.AddressIpNotInVpc"
            case addressIpNotPublic = "InvalidParameterValue.AddressIpNotPublic"
            case addressNotApplicable = "InvalidParameterValue.AddressNotApplicable"
            case addressNotCalcIP = "InvalidParameterValue.AddressNotCalcIP"
            case addressNotEIP = "InvalidParameterValue.AddressNotEIP"
            case addressNotFound = "InvalidParameterValue.AddressNotFound"
            case addressPublished = "InvalidParameterValue.AddressPublished"
            case bandwidthOutOfRange = "InvalidParameterValue.BandwidthOutOfRange"
            case bandwidthPackageIdMalformed = "InvalidParameterValue.BandwidthPackageIdMalformed"
            case bandwidthPackageInUse = "InvalidParameterValue.BandwidthPackageInUse"
            case bandwidthPackageNotFound = "InvalidParameterValue.BandwidthPackageNotFound"
            case bandwidthTooSmall = "InvalidParameterValue.BandwidthTooSmall"
            case ccnAttachBmvpcLimitExceeded = "InvalidParameterValue.CcnAttachBmvpcLimitExceeded"
            case cidrNotInPeerVpc = "InvalidParameterValue.CidrNotInPeerVpc"
            case cidrNotInSslVpnVpc = "InvalidParameterValue.CidrNotInSslVpnVpc"
            case combination = "InvalidParameterValue.Combination"
            case duplicate = "InvalidParameterValue.Duplicate"
            case duplicatePara = "InvalidParameterValue.DuplicatePara"
            case eipBrandWidthOutInvalid = "InvalidParameterValue.EIPBrandWidthOutInvalid"
            case empty = "InvalidParameterValue.Empty"
            case iPv6RuleNotChange = "InvalidParameterValue.IPv6RuleNotChange"
            case inconsistentInstanceInternetChargeType = "InvalidParameterValue.InconsistentInstanceInternetChargeType"
            case instanceDoesNotSupportAnycast = "InvalidParameterValue.InstanceDoesNotSupportAnycast"
            case instanceHasNoWanIP = "InvalidParameterValue.InstanceHasNoWanIP"
            case instanceHasWanIP = "InvalidParameterValue.InstanceHasWanIP"
            case instanceIdMalformed = "InvalidParameterValue.InstanceIdMalformed"
            case instanceNoCalcIP = "InvalidParameterValue.InstanceNoCalcIP"
            case instanceNoWanIP = "InvalidParameterValue.InstanceNoWanIP"
            case instanceNormalPublicIpBlocked = "InvalidParameterValue.InstanceNormalPublicIpBlocked"
            case instanceNotMatchAssociateEni = "InvalidParameterValue.InstanceNotMatchAssociateEni"
            case internetChargeTypeNotChanged = "InvalidParameterValue.InternetChargeTypeNotChanged"
            case invalidBandwidthPackageChargeType = "InvalidParameterValue.InvalidBandwidthPackageChargeType"
            case invalidBusiness = "InvalidParameterValue.InvalidBusiness"
            case invalidDedicatedClusterId = "InvalidParameterValue.InvalidDedicatedClusterId"
            case invalidInstanceInternetChargeType = "InvalidParameterValue.InvalidInstanceInternetChargeType"
            case invalidInstanceState = "InvalidParameterValue.InvalidInstanceState"
            case invalidIpv6 = "InvalidParameterValue.InvalidIpv6"
            case invalidTag = "InvalidParameterValue.InvalidTag"
            case lbAlreadyBindEip = "InvalidParameterValue.LBAlreadyBindEip"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case malformed = "InvalidParameterValue.Malformed"
            case missingAssociateEntity = "InvalidParameterValue.MissingAssociateEntity"
            case mixedAddressIpSetType = "InvalidParameterValue.MixedAddressIpSetType"
            case natGatewayDnatRuleExisted = "InvalidParameterValue.NatGatewayDnatRuleExisted"
            case natGatewayDnatRuleNotExists = "InvalidParameterValue.NatGatewayDnatRuleNotExists"
            case natGatewayDnatRulePipNeedVm = "InvalidParameterValue.NatGatewayDnatRulePipNeedVm"
            case natGatewaySnatRuleNotExists = "InvalidParameterValue.NatGatewaySnatRuleNotExists"
            case natSnatRuleExists = "InvalidParameterValue.NatSnatRuleExists"
            case netDetectInVpc = "InvalidParameterValue.NetDetectInVpc"
            case netDetectNotFoundIp = "InvalidParameterValue.NetDetectNotFoundIp"
            case netDetectSameIp = "InvalidParameterValue.NetDetectSameIp"
            case networkInterfaceIdMalformed = "InvalidParameterValue.NetworkInterfaceIdMalformed"
            case networkInterfaceNotFound = "InvalidParameterValue.NetworkInterfaceNotFound"
            case onlySupportedForMasterNetworkCard = "InvalidParameterValue.OnlySupportedForMasterNetworkCard"
            case range = "InvalidParameterValue.Range"
            case reserved = "InvalidParameterValue.Reserved"
            case resourceAlreadyExisted = "InvalidParameterValue.ResourceAlreadyExisted"
            case resourceExpired = "InvalidParameterValue.ResourceExpired"
            case resourceIdMalformed = "InvalidParameterValue.ResourceIdMalformed"
            case resourceNotExisted = "InvalidParameterValue.ResourceNotExisted"
            case resourceNotFound = "InvalidParameterValue.ResourceNotFound"
            case resourceNotSupport = "InvalidParameterValue.ResourceNotSupport"
            case subnetConflict = "InvalidParameterValue.SubnetConflict"
            case subnetOverlap = "InvalidParameterValue.SubnetOverlap"
            case subnetOverlapAssistCidr = "InvalidParameterValue.SubnetOverlapAssistCidr"
            case subnetRange = "InvalidParameterValue.SubnetRange"
            case tagDuplicateKey = "InvalidParameterValue.TagDuplicateKey"
            case tagDuplicateResourceType = "InvalidParameterValue.TagDuplicateResourceType"
            case tagInvalidKey = "InvalidParameterValue.TagInvalidKey"
            case tagInvalidKeyLen = "InvalidParameterValue.TagInvalidKeyLen"
            case tagInvalidVal = "InvalidParameterValue.TagInvalidVal"
            case tagKeyNotExists = "InvalidParameterValue.TagKeyNotExists"
            case tagNotAllocatedQuota = "InvalidParameterValue.TagNotAllocatedQuota"
            case tagNotExisted = "InvalidParameterValue.TagNotExisted"
            case tagNotSupportTag = "InvalidParameterValue.TagNotSupportTag"
            case tagResourceFormatError = "InvalidParameterValue.TagResourceFormatError"
            case tagTimestampExceeded = "InvalidParameterValue.TagTimestampExceeded"
            case tagValNotExists = "InvalidParameterValue.TagValNotExists"
            case tooLong = "InvalidParameterValue.TooLong"
            case trafficPackageIdMalformed = "InvalidParameterValue.TrafficPackageIdMalformed"
            case unavailableZone = "InvalidParameterValue.UnavailableZone"
            case vpcCidrConflict = "InvalidParameterValue.VpcCidrConflict"
            case vpgTypeNotMatch = "InvalidParameterValue.VpgTypeNotMatch"
            case vpnConnCidrConflict = "InvalidParameterValue.VpnConnCidrConflict"
            case vpnConnHealthCheckIpConflict = "InvalidParameterValue.VpnConnHealthCheckIpConflict"
            case zoneConflict = "InvalidParameterValue.ZoneConflict"
            case other = "InvalidParameterValue"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// ????????????IP?????????
        public static var addressAttacked: InvalidParameterValue {
            InvalidParameterValue(.addressAttacked)
        }

        /// ?????????ID????????????
        public static var addressIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.addressIdMalformed)
        }

        /// ?????????????????????????????????????????????
        public static var addressInternetChargeTypeConflict: InvalidParameterValue {
            InvalidParameterValue(.addressInternetChargeTypeConflict)
        }

        /// ???IP????????????????????????
        public static var addressIpNotAvailable: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotAvailable)
        }

        /// IP??????????????????
        public static var addressIpNotFound: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotFound)
        }

        /// VPC???????????????IP?????????
        public static var addressIpNotInVpc: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotInVpc)
        }

        /// ???IPv6??????????????????
        public static var addressIpNotPublic: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotPublic)
        }

        /// ????????????????????????????????????
        public static var addressNotApplicable: InvalidParameterValue {
            InvalidParameterValue(.addressNotApplicable)
        }

        /// ???????????????CalcIP???
        public static var addressNotCalcIP: InvalidParameterValue {
            InvalidParameterValue(.addressNotCalcIP)
        }

        /// ???????????????EIP???
        public static var addressNotEIP: InvalidParameterValue {
            InvalidParameterValue(.addressNotEIP)
        }

        /// ?????????????????????
        public static var addressNotFound: InvalidParameterValue {
            InvalidParameterValue(.addressNotFound)
        }

        /// ???IPv6?????????????????????
        public static var addressPublished: InvalidParameterValue {
            InvalidParameterValue(.addressPublished)
        }

        /// ?????????????????????
        ///
        /// ????????????????????????????????????
        public static var bandwidthOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.bandwidthOutOfRange)
        }

        /// ?????????ID????????????
        public static var bandwidthPackageIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageIdMalformed)
        }

        /// ??????????????????????????????
        public static var bandwidthPackageInUse: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageInUse)
        }

        /// ???????????????????????????
        public static var bandwidthPackageNotFound: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageNotFound)
        }

        /// ?????????????????????????????????????????????
        public static var bandwidthTooSmall: InvalidParameterValue {
            InvalidParameterValue(.bandwidthTooSmall)
        }

        /// ????????????????????????????????????????????????????????????
        public static var ccnAttachBmvpcLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.ccnAttachBmvpcLimitExceeded)
        }

        /// ????????????????????????VPC???CIDR????????????
        public static var cidrNotInPeerVpc: InvalidParameterValue {
            InvalidParameterValue(.cidrNotInPeerVpc)
        }

        /// ??????CIDR??????SSL-VPN??????????????????CIDR??????
        public static var cidrNotInSslVpnVpc: InvalidParameterValue {
            InvalidParameterValue(.cidrNotInSslVpnVpc)
        }

        /// ?????????????????????
        public static var combination: InvalidParameterValue {
            InvalidParameterValue(.combination)
        }

        /// ???????????????
        public static var duplicate: InvalidParameterValue {
            InvalidParameterValue(.duplicate)
        }

        /// ????????????????????????
        public static var duplicatePara: InvalidParameterValue {
            InvalidParameterValue(.duplicatePara)
        }

        /// ??????????????????
        ///
        /// ???????????????
        public static var eipBrandWidthOutInvalid: InvalidParameterValue {
            InvalidParameterValue(.eipBrandWidthOutInvalid)
        }

        /// ???????????????
        public static var empty: InvalidParameterValue {
            InvalidParameterValue(.empty)
        }

        /// IPv6?????????????????????
        public static var iPv6RuleNotChange: InvalidParameterValue {
            InvalidParameterValue(.iPv6RuleNotChange)
        }

        /// ????????????????????????????????????????????????
        public static var inconsistentInstanceInternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.inconsistentInstanceInternetChargeType)
        }

        /// ??????????????????AnycastEIP???
        public static var instanceDoesNotSupportAnycast: InvalidParameterValue {
            InvalidParameterValue(.instanceDoesNotSupportAnycast)
        }

        public static var instanceHasNoWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceHasNoWanIP)
        }

        /// ???????????????WanIP???
        public static var instanceHasWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceHasWanIP)
        }

        /// ??????ID?????????
        public static var instanceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.instanceIdMalformed)
        }

        /// ???????????????CalcIP????????????????????????
        public static var instanceNoCalcIP: InvalidParameterValue {
            InvalidParameterValue(.instanceNoCalcIP)
        }

        /// ???????????????WanIP????????????????????????
        public static var instanceNoWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceNoWanIP)
        }

        /// ?????????IP????????????????????????????????????
        public static var instanceNormalPublicIpBlocked: InvalidParameterValue {
            InvalidParameterValue(.instanceNormalPublicIpBlocked)
        }

        /// ???????????????????????????????????????????????????????????????
        public static var instanceNotMatchAssociateEni: InvalidParameterValue {
            InvalidParameterValue(.instanceNotMatchAssociateEni)
        }

        /// ?????????????????????????????????
        public static var internetChargeTypeNotChanged: InvalidParameterValue {
            InvalidParameterValue(.internetChargeTypeNotChanged)
        }

        /// ?????????????????????????????????
        public static var invalidBandwidthPackageChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidBandwidthPackageChargeType)
        }

        /// ????????????????????????????????????
        public static var invalidBusiness: InvalidParameterValue {
            InvalidParameterValue(.invalidBusiness)
        }

        /// ?????????DedicatedClusterId?????????
        public static var invalidDedicatedClusterId: InvalidParameterValue {
            InvalidParameterValue(.invalidDedicatedClusterId)
        }

        /// ???IP??????????????????????????????????????????????????????
        public static var invalidInstanceInternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceInternetChargeType)
        }

        /// ????????????????????????????????????
        public static var invalidInstanceState: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceState)
        }

        /// ?????????IPv6?????????
        public static var invalidIpv6: InvalidParameterValue {
            InvalidParameterValue(.invalidIpv6)
        }

        /// ???Tag????????????
        public static var invalidTag: InvalidParameterValue {
            InvalidParameterValue(.invalidTag)
        }

        /// ?????????????????????????????????EIP???
        public static var lbAlreadyBindEip: InvalidParameterValue {
            InvalidParameterValue(.lbAlreadyBindEip)
        }

        /// ????????????????????????
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// ????????????????????????
        public static var malformed: InvalidParameterValue {
            InvalidParameterValue(.malformed)
        }

        /// ????????????????????????
        public static var missingAssociateEntity: InvalidParameterValue {
            InvalidParameterValue(.missingAssociateEntity)
        }

        /// ?????????????????????IP???????????????????????????
        public static var mixedAddressIpSetType: InvalidParameterValue {
            InvalidParameterValue(.mixedAddressIpSetType)
        }

        /// NAT?????????DNAT????????????????????????
        public static var natGatewayDnatRuleExisted: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRuleExisted)
        }

        /// NAT?????????DNAT????????????????????????
        public static var natGatewayDnatRuleNotExists: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRuleNotExists)
        }

        /// DNAT?????????????????????IP?????????????????????????????????IP???
        public static var natGatewayDnatRulePipNeedVm: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRulePipNeedVm)
        }

        /// NAT?????????SNAT????????????????????????
        public static var natGatewaySnatRuleNotExists: InvalidParameterValue {
            InvalidParameterValue(.natGatewaySnatRuleNotExists)
        }

        /// NAT?????????SNAT?????????????????????
        public static var natSnatRuleExists: InvalidParameterValue {
            InvalidParameterValue(.natSnatRuleExists)
        }

        /// ????????????IP???????????????????????????VPC??????
        public static var netDetectInVpc: InvalidParameterValue {
            InvalidParameterValue(.netDetectInVpc)
        }

        /// ????????????IP?????????????????????????????????????????????????????????
        public static var netDetectNotFoundIp: InvalidParameterValue {
            InvalidParameterValue(.netDetectNotFoundIp)
        }

        /// ????????????IP????????????????????????????????????????????????????????????????????????????????????IP?????????
        public static var netDetectSameIp: InvalidParameterValue {
            InvalidParameterValue(.netDetectSameIp)
        }

        /// ????????????ID????????????
        public static var networkInterfaceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.networkInterfaceIdMalformed)
        }

        /// ?????????????????????ID????????????IP?????????????????????????????????
        public static var networkInterfaceNotFound: InvalidParameterValue {
            InvalidParameterValue(.networkInterfaceNotFound)
        }

        /// ?????????????????????????????????
        public static var onlySupportedForMasterNetworkCard: InvalidParameterValue {
            InvalidParameterValue(.onlySupportedForMasterNetworkCard)
        }

        /// ??????????????????????????????
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }

        /// ???????????????????????????????????????
        public static var reserved: InvalidParameterValue {
            InvalidParameterValue(.reserved)
        }

        /// ????????????????????????????????????
        public static var resourceAlreadyExisted: InvalidParameterValue {
            InvalidParameterValue(.resourceAlreadyExisted)
        }

        /// ?????????????????????
        public static var resourceExpired: InvalidParameterValue {
            InvalidParameterValue(.resourceExpired)
        }

        /// ??????ID????????????
        public static var resourceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.resourceIdMalformed)
        }

        /// ?????????????????????????????????
        public static var resourceNotExisted: InvalidParameterValue {
            InvalidParameterValue(.resourceNotExisted)
        }

        /// ????????????????????????
        public static var resourceNotFound: InvalidParameterValue {
            InvalidParameterValue(.resourceNotFound)
        }

        /// ??????????????????????????????
        public static var resourceNotSupport: InvalidParameterValue {
            InvalidParameterValue(.resourceNotSupport)
        }

        /// ??????CIDR?????????
        public static var subnetConflict: InvalidParameterValue {
            InvalidParameterValue(.subnetConflict)
        }

        public static var subnetOverlap: InvalidParameterValue {
            InvalidParameterValue(.subnetOverlap)
        }

        /// ???????????????Cidr???????????????
        public static var subnetOverlapAssistCidr: InvalidParameterValue {
            InvalidParameterValue(.subnetOverlapAssistCidr)
        }

        /// ??????CIDR????????????
        public static var subnetRange: InvalidParameterValue {
            InvalidParameterValue(.subnetRange)
        }

        public static var tagDuplicateKey: InvalidParameterValue {
            InvalidParameterValue(.tagDuplicateKey)
        }

        public static var tagDuplicateResourceType: InvalidParameterValue {
            InvalidParameterValue(.tagDuplicateResourceType)
        }

        public static var tagInvalidKey: InvalidParameterValue {
            InvalidParameterValue(.tagInvalidKey)
        }

        public static var tagInvalidKeyLen: InvalidParameterValue {
            InvalidParameterValue(.tagInvalidKeyLen)
        }

        public static var tagInvalidVal: InvalidParameterValue {
            InvalidParameterValue(.tagInvalidVal)
        }

        public static var tagKeyNotExists: InvalidParameterValue {
            InvalidParameterValue(.tagKeyNotExists)
        }

        public static var tagNotAllocatedQuota: InvalidParameterValue {
            InvalidParameterValue(.tagNotAllocatedQuota)
        }

        /// ???????????????????????????
        public static var tagNotExisted: InvalidParameterValue {
            InvalidParameterValue(.tagNotExisted)
        }

        public static var tagNotSupportTag: InvalidParameterValue {
            InvalidParameterValue(.tagNotSupportTag)
        }

        public static var tagResourceFormatError: InvalidParameterValue {
            InvalidParameterValue(.tagResourceFormatError)
        }

        public static var tagTimestampExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagTimestampExceeded)
        }

        public static var tagValNotExists: InvalidParameterValue {
            InvalidParameterValue(.tagValNotExists)
        }

        /// ????????????????????????????????????
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }

        /// ????????????ID????????????
        public static var trafficPackageIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.trafficPackageIdMalformed)
        }

        /// ????????????????????????
        public static var unavailableZone: InvalidParameterValue {
            InvalidParameterValue(.unavailableZone)
        }

        /// ?????????????????????VPC???CIDR?????????
        public static var vpcCidrConflict: InvalidParameterValue {
            InvalidParameterValue(.vpcCidrConflict)
        }

        /// ???????????????????????????????????????
        ///
        /// ??????????????????????????????????????????????????????VXLAN???HYBIRD?????????????????????
        public static var vpgTypeNotMatch: InvalidParameterValue {
            InvalidParameterValue(.vpgTypeNotMatch)
        }

        /// ?????????????????????VPN?????????CIDR?????????
        public static var vpnConnCidrConflict: InvalidParameterValue {
            InvalidParameterValue(.vpnConnCidrConflict)
        }

        /// VPN????????????ip?????????
        public static var vpnConnHealthCheckIpConflict: InvalidParameterValue {
            InvalidParameterValue(.vpnConnHealthCheckIpConflict)
        }

        /// ??????Zone?????????CDC??????Zone?????????
        public static var zoneConflict: InvalidParameterValue {
            InvalidParameterValue(.zoneConflict)
        }

        /// ?????????????????????
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .addressAttacked: 
                code = .invalidParameterValue_AddressAttacked
            case .addressIdMalformed: 
                code = .invalidParameterValue_AddressIdMalformed
            case .addressInternetChargeTypeConflict: 
                code = .invalidParameterValue_AddressInternetChargeTypeConflict
            case .addressIpNotAvailable: 
                code = .invalidParameterValue_AddressIpNotAvailable
            case .addressIpNotFound: 
                code = .invalidParameterValue_AddressIpNotFound
            case .addressIpNotInVpc: 
                code = .invalidParameterValue_AddressIpNotInVpc
            case .addressIpNotPublic: 
                code = .invalidParameterValue_AddressIpNotPublic
            case .addressNotApplicable: 
                code = .invalidParameterValue_AddressNotApplicable
            case .addressNotCalcIP: 
                code = .invalidParameterValue_AddressNotCalcIP
            case .addressNotEIP: 
                code = .invalidParameterValue_AddressNotEIP
            case .addressNotFound: 
                code = .invalidParameterValue_AddressNotFound
            case .addressPublished: 
                code = .invalidParameterValue_AddressPublished
            case .bandwidthOutOfRange: 
                code = .invalidParameterValue_BandwidthOutOfRange
            case .bandwidthPackageIdMalformed: 
                code = .invalidParameterValue_BandwidthPackageIdMalformed
            case .bandwidthPackageInUse: 
                code = .invalidParameterValue_BandwidthPackageInUse
            case .bandwidthPackageNotFound: 
                code = .invalidParameterValue_BandwidthPackageNotFound
            case .bandwidthTooSmall: 
                code = .invalidParameterValue_BandwidthTooSmall
            case .ccnAttachBmvpcLimitExceeded: 
                code = .invalidParameterValue_CcnAttachBmvpcLimitExceeded
            case .cidrNotInPeerVpc: 
                code = .invalidParameterValue_CidrNotInPeerVpc
            case .cidrNotInSslVpnVpc: 
                code = .invalidParameterValue_CidrNotInSslVpnVpc
            case .combination: 
                code = .invalidParameterValue_Combination
            case .duplicate: 
                code = .invalidParameterValue_Duplicate
            case .duplicatePara: 
                code = .invalidParameterValue_DuplicatePara
            case .eipBrandWidthOutInvalid: 
                code = .invalidParameterValue_EIPBrandWidthOutInvalid
            case .empty: 
                code = .invalidParameterValue_Empty
            case .iPv6RuleNotChange: 
                code = .invalidParameterValue_IPv6RuleNotChange
            case .inconsistentInstanceInternetChargeType: 
                code = .invalidParameterValue_InconsistentInstanceInternetChargeType
            case .instanceDoesNotSupportAnycast: 
                code = .invalidParameterValue_InstanceDoesNotSupportAnycast
            case .instanceHasNoWanIP: 
                code = .invalidParameterValue_InstanceHasNoWanIP
            case .instanceHasWanIP: 
                code = .invalidParameterValue_InstanceHasWanIP
            case .instanceIdMalformed: 
                code = .invalidParameterValue_InstanceIdMalformed
            case .instanceNoCalcIP: 
                code = .invalidParameterValue_InstanceNoCalcIP
            case .instanceNoWanIP: 
                code = .invalidParameterValue_InstanceNoWanIP
            case .instanceNormalPublicIpBlocked: 
                code = .invalidParameterValue_InstanceNormalPublicIpBlocked
            case .instanceNotMatchAssociateEni: 
                code = .invalidParameterValue_InstanceNotMatchAssociateEni
            case .internetChargeTypeNotChanged: 
                code = .invalidParameterValue_InternetChargeTypeNotChanged
            case .invalidBandwidthPackageChargeType: 
                code = .invalidParameterValue_InvalidBandwidthPackageChargeType
            case .invalidBusiness: 
                code = .invalidParameterValue_InvalidBusiness
            case .invalidDedicatedClusterId: 
                code = .invalidParameterValue_InvalidDedicatedClusterId
            case .invalidInstanceInternetChargeType: 
                code = .invalidParameterValue_InvalidInstanceInternetChargeType
            case .invalidInstanceState: 
                code = .invalidParameterValue_InvalidInstanceState
            case .invalidIpv6: 
                code = .invalidParameterValue_InvalidIpv6
            case .invalidTag: 
                code = .invalidParameterValue_InvalidTag
            case .lbAlreadyBindEip: 
                code = .invalidParameterValue_LBAlreadyBindEip
            case .limitExceeded: 
                code = .invalidParameterValue_LimitExceeded
            case .malformed: 
                code = .invalidParameterValue_Malformed
            case .missingAssociateEntity: 
                code = .invalidParameterValue_MissingAssociateEntity
            case .mixedAddressIpSetType: 
                code = .invalidParameterValue_MixedAddressIpSetType
            case .natGatewayDnatRuleExisted: 
                code = .invalidParameterValue_NatGatewayDnatRuleExisted
            case .natGatewayDnatRuleNotExists: 
                code = .invalidParameterValue_NatGatewayDnatRuleNotExists
            case .natGatewayDnatRulePipNeedVm: 
                code = .invalidParameterValue_NatGatewayDnatRulePipNeedVm
            case .natGatewaySnatRuleNotExists: 
                code = .invalidParameterValue_NatGatewaySnatRuleNotExists
            case .natSnatRuleExists: 
                code = .invalidParameterValue_NatSnatRuleExists
            case .netDetectInVpc: 
                code = .invalidParameterValue_NetDetectInVpc
            case .netDetectNotFoundIp: 
                code = .invalidParameterValue_NetDetectNotFoundIp
            case .netDetectSameIp: 
                code = .invalidParameterValue_NetDetectSameIp
            case .networkInterfaceIdMalformed: 
                code = .invalidParameterValue_NetworkInterfaceIdMalformed
            case .networkInterfaceNotFound: 
                code = .invalidParameterValue_NetworkInterfaceNotFound
            case .onlySupportedForMasterNetworkCard: 
                code = .invalidParameterValue_OnlySupportedForMasterNetworkCard
            case .range: 
                code = .invalidParameterValue_Range
            case .reserved: 
                code = .invalidParameterValue_Reserved
            case .resourceAlreadyExisted: 
                code = .invalidParameterValue_ResourceAlreadyExisted
            case .resourceExpired: 
                code = .invalidParameterValue_ResourceExpired
            case .resourceIdMalformed: 
                code = .invalidParameterValue_ResourceIdMalformed
            case .resourceNotExisted: 
                code = .invalidParameterValue_ResourceNotExisted
            case .resourceNotFound: 
                code = .invalidParameterValue_ResourceNotFound
            case .resourceNotSupport: 
                code = .invalidParameterValue_ResourceNotSupport
            case .subnetConflict: 
                code = .invalidParameterValue_SubnetConflict
            case .subnetOverlap: 
                code = .invalidParameterValue_SubnetOverlap
            case .subnetOverlapAssistCidr: 
                code = .invalidParameterValue_SubnetOverlapAssistCidr
            case .subnetRange: 
                code = .invalidParameterValue_SubnetRange
            case .tagDuplicateKey: 
                code = .invalidParameterValue_TagDuplicateKey
            case .tagDuplicateResourceType: 
                code = .invalidParameterValue_TagDuplicateResourceType
            case .tagInvalidKey: 
                code = .invalidParameterValue_TagInvalidKey
            case .tagInvalidKeyLen: 
                code = .invalidParameterValue_TagInvalidKeyLen
            case .tagInvalidVal: 
                code = .invalidParameterValue_TagInvalidVal
            case .tagKeyNotExists: 
                code = .invalidParameterValue_TagKeyNotExists
            case .tagNotAllocatedQuota: 
                code = .invalidParameterValue_TagNotAllocatedQuota
            case .tagNotExisted: 
                code = .invalidParameterValue_TagNotExisted
            case .tagNotSupportTag: 
                code = .invalidParameterValue_TagNotSupportTag
            case .tagResourceFormatError: 
                code = .invalidParameterValue_TagResourceFormatError
            case .tagTimestampExceeded: 
                code = .invalidParameterValue_TagTimestampExceeded
            case .tagValNotExists: 
                code = .invalidParameterValue_TagValNotExists
            case .tooLong: 
                code = .invalidParameterValue_TooLong
            case .trafficPackageIdMalformed: 
                code = .invalidParameterValue_TrafficPackageIdMalformed
            case .unavailableZone: 
                code = .invalidParameterValue_UnavailableZone
            case .vpcCidrConflict: 
                code = .invalidParameterValue_VpcCidrConflict
            case .vpgTypeNotMatch: 
                code = .invalidParameterValue_VpgTypeNotMatch
            case .vpnConnCidrConflict: 
                code = .invalidParameterValue_VpnConnCidrConflict
            case .vpnConnHealthCheckIpConflict: 
                code = .invalidParameterValue_VpnConnHealthCheckIpConflict
            case .zoneConflict: 
                code = .invalidParameterValue_ZoneConflict
            case .other: 
                code = .invalidParameterValue
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
