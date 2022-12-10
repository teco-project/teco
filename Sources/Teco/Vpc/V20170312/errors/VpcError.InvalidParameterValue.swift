//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCVpcError {
    public struct InvalidParameterValue: TCErrorType {
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
        
        /// 被攻击的IP地址。
        public static var addressAttacked: InvalidParameterValue {
            InvalidParameterValue(.addressAttacked)
        }
        
        /// 该地址ID不合法。
        public static var addressIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.addressIdMalformed)
        }
        
        /// 该地址计费方式与其他地址冲突。
        public static var addressInternetChargeTypeConflict: InvalidParameterValue {
            InvalidParameterValue(.addressInternetChargeTypeConflict)
        }
        
        /// 该IP地址现在不可用。
        public static var addressIpNotAvailable: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotAvailable)
        }
        
        /// IP地址未找到。
        public static var addressIpNotFound: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotFound)
        }
        
        /// VPC中不存在此IP地址。
        public static var addressIpNotInVpc: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotInVpc)
        }
        
        /// 此IPv6地址未发布。
        public static var addressIpNotPublic: InvalidParameterValue {
            InvalidParameterValue(.addressIpNotPublic)
        }
        
        /// 该地址不可与此实例申请。
        public static var addressNotApplicable: InvalidParameterValue {
            InvalidParameterValue(.addressNotApplicable)
        }
        
        /// 该地址不是CalcIP。
        public static var addressNotCalcIP: InvalidParameterValue {
            InvalidParameterValue(.addressNotCalcIP)
        }
        
        /// 该地址不是EIP。
        public static var addressNotEIP: InvalidParameterValue {
            InvalidParameterValue(.addressNotEIP)
        }
        
        /// 未找到该地址。
        public static var addressNotFound: InvalidParameterValue {
            InvalidParameterValue(.addressNotFound)
        }
        
        /// 该IPv6地址已经发布。
        public static var addressPublished: InvalidParameterValue {
            InvalidParameterValue(.addressPublished)
        }
        
        /// 带宽超出限制。
        public static var bandwidthOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.bandwidthOutOfRange)
        }
        
        /// 带宽包ID不正确。
        public static var bandwidthPackageIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageIdMalformed)
        }
        
        /// 该带宽包正在被使用。
        public static var bandwidthPackageInUse: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageInUse)
        }
        
        /// 未查询到该带宽包。
        public static var bandwidthPackageNotFound: InvalidParameterValue {
            InvalidParameterValue(.bandwidthPackageNotFound)
        }
        
        /// 选择带宽低于可允许的最小范围。
        public static var bandwidthTooSmall: InvalidParameterValue {
            InvalidParameterValue(.bandwidthTooSmall)
        }
        
        /// 指定云联网关联黑石私有网络数量达到上限。
        public static var ccnAttachBmvpcLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.ccnAttachBmvpcLimitExceeded)
        }
        
        /// 目的网段不在对端VPC的CIDR范围内。
        public static var cidrNotInPeerVpc: InvalidParameterValue {
            InvalidParameterValue(.cidrNotInPeerVpc)
        }
        
        /// 指定CIDR不在SSL-VPN所属私有网络CIDR内。
        public static var cidrNotInSslVpnVpc: InvalidParameterValue {
            InvalidParameterValue(.cidrNotInSslVpnVpc)
        }
        
        /// 非法入参组合。
        public static var combination: InvalidParameterValue {
            InvalidParameterValue(.combination)
        }
        
        /// 入参重复。
        public static var duplicate: InvalidParameterValue {
            InvalidParameterValue(.duplicate)
        }
        
        /// 参数值存在重复。
        public static var duplicatePara: InvalidParameterValue {
            InvalidParameterValue(.duplicatePara)
        }
        
        /// 值超过上限。
        public static var eipBrandWidthOutInvalid: InvalidParameterValue {
            InvalidParameterValue(.eipBrandWidthOutInvalid)
        }
        
        /// 缺少参数。
        public static var empty: InvalidParameterValue {
            InvalidParameterValue(.empty)
        }
        
        /// IPv6规则没有更改。
        public static var iPv6RuleNotChange: InvalidParameterValue {
            InvalidParameterValue(.iPv6RuleNotChange)
        }
        
        /// 该实例的计费方式与其他实例不同。
        public static var inconsistentInstanceInternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.inconsistentInstanceInternetChargeType)
        }
        
        /// 该实例不支持AnycastEIP。
        public static var instanceDoesNotSupportAnycast: InvalidParameterValue {
            InvalidParameterValue(.instanceDoesNotSupportAnycast)
        }
        
        public static var instanceHasNoWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceHasNoWanIP)
        }
        
        /// 该实例已有WanIP。
        public static var instanceHasWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceHasWanIP)
        }
        
        /// 实例ID错误。
        public static var instanceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.instanceIdMalformed)
        }
        
        /// 该实例没有CalcIP，无法完成请求。
        public static var instanceNoCalcIP: InvalidParameterValue {
            InvalidParameterValue(.instanceNoCalcIP)
        }
        
        /// 该实例没有WanIP，无法完成请求。
        public static var instanceNoWanIP: InvalidParameterValue {
            InvalidParameterValue(.instanceNoWanIP)
        }
        
        /// 由于该IP被禁用，无法绑定该实例。
        public static var instanceNormalPublicIpBlocked: InvalidParameterValue {
            InvalidParameterValue(.instanceNormalPublicIpBlocked)
        }
        
        /// 弹性网卡绑定的实例与地址绑定的实例不一致。
        public static var instanceNotMatchAssociateEni: InvalidParameterValue {
            InvalidParameterValue(.instanceNotMatchAssociateEni)
        }
        
        /// 网络计费模式没有更改。
        public static var internetChargeTypeNotChanged: InvalidParameterValue {
            InvalidParameterValue(.internetChargeTypeNotChanged)
        }
        
        /// 无效的带宽包计费方式。
        public static var invalidBandwidthPackageChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidBandwidthPackageChargeType)
        }
        
        /// 参数的值不存在或不支持。
        public static var invalidBusiness: InvalidParameterValue {
            InvalidParameterValue(.invalidBusiness)
        }
        
        /// 传入的DedicatedClusterId有误。
        public static var invalidDedicatedClusterId: InvalidParameterValue {
            InvalidParameterValue(.invalidDedicatedClusterId)
        }
        
        /// 该IP只能绑定小时流量后付费和带宽包实例。
        public static var invalidInstanceInternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceInternetChargeType)
        }
        
        /// 该实例状态无法完成操作。
        public static var invalidInstanceState: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceState)
        }
        
        /// 无效的IPv6地址。
        public static var invalidIpv6: InvalidParameterValue {
            InvalidParameterValue(.invalidIpv6)
        }
        
        /// 该Tag不合法。
        public static var invalidTag: InvalidParameterValue {
            InvalidParameterValue(.invalidTag)
        }
        
        /// 负载均衡实例已经绑定了EIP。
        public static var lbAlreadyBindEip: InvalidParameterValue {
            InvalidParameterValue(.lbAlreadyBindEip)
        }
        
        /// 参数值超出限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }
        
        /// 入参格式不合法。
        public static var malformed: InvalidParameterValue {
            InvalidParameterValue(.malformed)
        }
        
        /// 缺少绑定的实例。
        public static var missingAssociateEntity: InvalidParameterValue {
            InvalidParameterValue(.missingAssociateEntity)
        }
        
        /// 集群类型不同的IP不可在同一请求中。
        public static var mixedAddressIpSetType: InvalidParameterValue {
            InvalidParameterValue(.mixedAddressIpSetType)
        }
        
        /// NAT网关的DNAT转换规则已存在。
        public static var natGatewayDnatRuleExisted: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRuleExisted)
        }
        
        /// NAT网关的DNAT转换规则不存在。
        public static var natGatewayDnatRuleNotExists: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRuleNotExists)
        }
        
        /// DNAT转换规则的内网IP需为虚拟机上网卡所用的IP。
        public static var natGatewayDnatRulePipNeedVm: InvalidParameterValue {
            InvalidParameterValue(.natGatewayDnatRulePipNeedVm)
        }
        
        /// NAT网关的SNAT转换规则不存在。
        public static var natGatewaySnatRuleNotExists: InvalidParameterValue {
            InvalidParameterValue(.natGatewaySnatRuleNotExists)
        }
        
        /// NAT网关的SNAT规则已经存在。
        public static var natSnatRuleExists: InvalidParameterValue {
            InvalidParameterValue(.natSnatRuleExists)
        }
        
        /// 探测目的IP和网络探测在同一个VPC内。
        public static var netDetectInVpc: InvalidParameterValue {
            InvalidParameterValue(.netDetectInVpc)
        }
        
        /// 探测目的IP在云联网的路由表中找不到匹配的下一跳。
        public static var netDetectNotFoundIp: InvalidParameterValue {
            InvalidParameterValue(.netDetectNotFoundIp)
        }
        
        /// 探测目的IP与同一个私有网络内的同一个子网下的其他网络探测的探测目的IP相同。
        public static var netDetectSameIp: InvalidParameterValue {
            InvalidParameterValue(.netDetectSameIp)
        }
        
        /// 网络接口ID不正确。
        public static var networkInterfaceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.networkInterfaceIdMalformed)
        }
        
        /// 未找到网络接口ID，或私有IP地址未在网络接口配置。
        public static var networkInterfaceNotFound: InvalidParameterValue {
            InvalidParameterValue(.networkInterfaceNotFound)
        }
        
        /// 该操作仅对主网卡支持。
        public static var onlySupportedForMasterNetworkCard: InvalidParameterValue {
            InvalidParameterValue(.onlySupportedForMasterNetworkCard)
        }
        
        /// 参数值不在指定范围。
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }
        
        /// 参数值是一个系统保留对象。
        public static var reserved: InvalidParameterValue {
            InvalidParameterValue(.reserved)
        }
        
        /// 该资源已加入其他带宽包。
        public static var resourceAlreadyExisted: InvalidParameterValue {
            InvalidParameterValue(.resourceAlreadyExisted)
        }
        
        /// 该资源已过期。
        public static var resourceExpired: InvalidParameterValue {
            InvalidParameterValue(.resourceExpired)
        }
        
        /// 资源ID不正确。
        public static var resourceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.resourceIdMalformed)
        }
        
        /// 该资源不在此带宽包中。
        public static var resourceNotExisted: InvalidParameterValue {
            InvalidParameterValue(.resourceNotExisted)
        }
        
        /// 未查询到该资源。
        public static var resourceNotFound: InvalidParameterValue {
            InvalidParameterValue(.resourceNotFound)
        }
        
        /// 该资源不支持此操作。
        public static var resourceNotSupport: InvalidParameterValue {
            InvalidParameterValue(.resourceNotSupport)
        }
        
        /// 子网CIDR冲突。
        public static var subnetConflict: InvalidParameterValue {
            InvalidParameterValue(.subnetConflict)
        }
        
        public static var subnetOverlap: InvalidParameterValue {
            InvalidParameterValue(.subnetOverlap)
        }
        
        /// 子网与辅助Cidr网段重叠。
        public static var subnetOverlapAssistCidr: InvalidParameterValue {
            InvalidParameterValue(.subnetOverlapAssistCidr)
        }
        
        /// 子网CIDR不合法。
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
        
        /// 该标签和值不存在。
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
        
        /// 无效参数值。参数值太长。
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }
        
        /// 该流量包ID不合法。
        public static var trafficPackageIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.trafficPackageIdMalformed)
        }
        
        /// 该可用区不可用。
        public static var unavailableZone: InvalidParameterValue {
            InvalidParameterValue(.unavailableZone)
        }
        
        /// 目的网段和当前VPC的CIDR冲突。
        public static var vpcCidrConflict: InvalidParameterValue {
            InvalidParameterValue(.vpcCidrConflict)
        }
        
        /// 当前功能不支持此专线网关。
        public static var vpgTypeNotMatch: InvalidParameterValue {
            InvalidParameterValue(.vpgTypeNotMatch)
        }
        
        /// 目的网段和当前VPN通道的CIDR冲突。
        public static var vpnConnCidrConflict: InvalidParameterValue {
            InvalidParameterValue(.vpnConnCidrConflict)
        }
        
        /// VPN通道探测ip冲突。
        public static var vpnConnHealthCheckIpConflict: InvalidParameterValue {
            InvalidParameterValue(.vpnConnHealthCheckIpConflict)
        }
        
        /// 参数Zone的值与CDC所在Zone冲突。
        public static var zoneConflict: InvalidParameterValue {
            InvalidParameterValue(.zoneConflict)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCVpcError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCVpcError.InvalidParameterValue, rhs: TCVpcError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVpcError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVpcError.InvalidParameterValue {
    public func toVpcError() -> TCVpcError {
        guard let code = TCVpcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVpcError(code, context: self.context)
    }
}