//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Bmvpc {
    /// 对端网关
    public struct CustomerGateway: TCOutputModel {
        /// 用户网关唯一ID
        public let customerGatewayId: String

        /// 网关名称
        public let customerGatewayName: String

        /// 公网地址
        public let ipAddress: String

        /// 创建时间
        public let createTime: String

        /// VPN通道引用个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpnConnNum: UInt64?

        enum CodingKeys: String, CodingKey {
            case customerGatewayId = "CustomerGatewayId"
            case customerGatewayName = "CustomerGatewayName"
            case ipAddress = "IpAddress"
            case createTime = "CreateTime"
            case vpnConnNum = "VpnConnNum"
        }
    }

    /// 过滤器
    public struct Filter: TCInputModel {
        /// 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        public let name: String

        /// 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议
    public struct IKEOptionsSpecification: TCInputModel {
        /// 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBC-192', 'AES-CBC-256', 'DES-CBC'，默认为3DES-CBC
        public let propoEncryAlgorithm: String?

        /// 认证算法：可选值：'MD5', 'SHA1'，默认为MD5
        public let propoAuthenAlgorithm: String?

        /// 协商模式：可选值：'AGGRESSIVE', 'MAIN'，默认为MAIN
        public let exchangeMode: String?

        /// 本端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        public let localIdentity: String?

        /// 对端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        public let remoteIdentity: String?

        /// 本端标识，当LocalIdentity选为ADDRESS时，LocalAddress必填。localAddress默认为vpn网关公网IP
        public let localAddress: String?

        /// 对端标识，当RemoteIdentity选为ADDRESS时，RemoteAddress必填
        public let remoteAddress: String?

        /// 本端标识，当LocalIdentity选为FQDN时，LocalFqdnName必填
        public let localFqdnName: String?

        /// 对端标识，当remoteIdentity选为FQDN时，RemoteFqdnName必填
        public let remoteFqdnName: String?

        /// DH group，指定IKE交换密钥时使用的DH组，可选值：'GROUP1', 'GROUP2', 'GROUP5', 'GROUP14', 'GROUP24'，
        public let dhGroupName: String?

        /// IKE SA Lifetime，单位：秒，设置IKE SA的生存周期，取值范围：60-604800
        public let ikeSaLifetimeSeconds: UInt64?

        /// IKE版本
        public let ikeVersion: String?

        public init(propoEncryAlgorithm: String? = nil, propoAuthenAlgorithm: String? = nil, exchangeMode: String? = nil, localIdentity: String? = nil, remoteIdentity: String? = nil, localAddress: String? = nil, remoteAddress: String? = nil, localFqdnName: String? = nil, remoteFqdnName: String? = nil, dhGroupName: String? = nil, ikeSaLifetimeSeconds: UInt64? = nil, ikeVersion: String? = nil) {
            self.propoEncryAlgorithm = propoEncryAlgorithm
            self.propoAuthenAlgorithm = propoAuthenAlgorithm
            self.exchangeMode = exchangeMode
            self.localIdentity = localIdentity
            self.remoteIdentity = remoteIdentity
            self.localAddress = localAddress
            self.remoteAddress = remoteAddress
            self.localFqdnName = localFqdnName
            self.remoteFqdnName = remoteFqdnName
            self.dhGroupName = dhGroupName
            self.ikeSaLifetimeSeconds = ikeSaLifetimeSeconds
            self.ikeVersion = ikeVersion
        }

        enum CodingKeys: String, CodingKey {
            case propoEncryAlgorithm = "PropoEncryAlgorithm"
            case propoAuthenAlgorithm = "PropoAuthenAlgorithm"
            case exchangeMode = "ExchangeMode"
            case localIdentity = "LocalIdentity"
            case remoteIdentity = "RemoteIdentity"
            case localAddress = "LocalAddress"
            case remoteAddress = "RemoteAddress"
            case localFqdnName = "LocalFqdnName"
            case remoteFqdnName = "RemoteFqdnName"
            case dhGroupName = "DhGroupName"
            case ikeSaLifetimeSeconds = "IKESaLifetimeSeconds"
            case ikeVersion = "IKEVersion"
        }
    }

    /// IPSec配置，腾讯云提供IPSec安全会话设置
    public struct IPSECOptionsSpecification: TCInputModel {
        /// PFS：可选值：'NULL', 'DH-GROUP1', 'DH-GROUP2', 'DH-GROUP5', 'DH-GROUP14', 'DH-GROUP24'，默认为NULL
        public let pfsDhGroup: String

        /// IPsec SA lifetime(KB)：单位KB，取值范围：2560-604800
        public let ipsecSaLifetimeTraffic: UInt64

        /// 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBC-192', 'AES-CBC-256', 'DES-CBC', 'NULL'， 默认为AES-CBC-128
        public let encryptAlgorithm: String?

        /// 认证算法：可选值：'MD5', 'SHA1'，默认为
        public let integrityAlgorith: String?

        /// IPsec SA lifetime(s)：单位秒，取值范围：180-604800
        public let ipsecSaLifetimeSeconds: UInt64?

        /// 安全协议，默认为ESP
        public let securityProto: String?

        /// 报文封装模式:默认为Tunnel
        public let encapMode: String?

        public init(pfsDhGroup: String, ipsecSaLifetimeTraffic: UInt64, encryptAlgorithm: String? = nil, integrityAlgorith: String? = nil, ipsecSaLifetimeSeconds: UInt64? = nil, securityProto: String? = nil, encapMode: String? = nil) {
            self.pfsDhGroup = pfsDhGroup
            self.ipsecSaLifetimeTraffic = ipsecSaLifetimeTraffic
            self.encryptAlgorithm = encryptAlgorithm
            self.integrityAlgorith = integrityAlgorith
            self.ipsecSaLifetimeSeconds = ipsecSaLifetimeSeconds
            self.securityProto = securityProto
            self.encapMode = encapMode
        }

        enum CodingKeys: String, CodingKey {
            case pfsDhGroup = "PfsDhGroup"
            case ipsecSaLifetimeTraffic = "IPSECSaLifetimeTraffic"
            case encryptAlgorithm = "EncryptAlgorithm"
            case integrityAlgorith = "IntegrityAlgorith"
            case ipsecSaLifetimeSeconds = "IPSECSaLifetimeSeconds"
            case securityProto = "SecurityProto"
            case encapMode = "EncapMode"
        }
    }

    /// NAT IP信息
    public struct IpInfo: TCInputModel, TCOutputModel {
        /// 子网ID
        public let subnetId: String

        /// IP列表
        public let ips: [String]

        public init(subnetId: String, ips: [String]) {
            self.subnetId = subnetId
            self.ips = ips
        }

        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case ips = "Ips"
        }
    }

    /// NAT详情
    public struct NatGatewayInfo: TCOutputModel {
        /// NAT网关ID
        public let natId: String

        /// 网关名称
        public let natName: String

        /// 私有网络ID
        public let vpcId: String

        /// 私有网络名称
        public let vpcName: String

        /// 网关创建状态，其中0表示创建中，1表示运行中，2表示创建失败
        public let productionStatus: UInt64

        /// EIP列表
        public let eips: [String]

        /// 并发连接数规格，取值为1000000, 3000000, 10000000
        public let maxConcurrent: UInt64

        /// 可用区
        public let zone: String

        /// 独占标识，其中0表示共享，1表示独占，默认值为0
        public let exclusive: UInt64

        /// 转发模式，其中0表示IP方式，1表示网段方式
        public let forwardMode: UInt64

        /// 私有网络网段
        public let vpcCidrBlock: String

        /// 网关类型，取值为 small，middle，big，分别对应小型、中型、大型
        public let type: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 网关启用状态，1为禁用，0为启用。
        public let state: UInt64

        /// 私有网络整型ID
        public let intVpcId: UInt64

        /// NAT资源ID
        public let natResourceId: UInt64

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case natName = "NatName"
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case productionStatus = "ProductionStatus"
            case eips = "Eips"
            case maxConcurrent = "MaxConcurrent"
            case zone = "Zone"
            case exclusive = "Exclusive"
            case forwardMode = "ForwardMode"
            case vpcCidrBlock = "VpcCidrBlock"
            case type = "Type"
            case createTime = "CreateTime"
            case state = "State"
            case intVpcId = "IntVpcId"
            case natResourceId = "NatResourceId"
        }
    }

    /// NAT子网信息
    public struct NatSubnetInfo: TCOutputModel {
        /// 子网名称
        public let name: String

        /// 子网ID
        public let subnetId: String

        /// NAT子网类型，其中0表示绑定部分IP的NAT子网，1表示绑定全部IP的NAT子网，2表示绑定网关方式的NAT子网
        public let subnetNatType: UInt64

        /// 子网网段
        public let cidrBlock: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subnetId = "SubnetId"
            case subnetNatType = "SubnetNatType"
            case cidrBlock = "CidrBlock"
        }
    }

    /// 路由条目
    public struct RoutePolicy: TCInputModel, TCOutputModel {
        /// 目的网段
        public let destinationCidrBlock: String?

        /// 下一跳类型，目前我们支持的类型有：
        /// LOCAL：物理机默认路由；
        /// VPN：VPN网关；
        /// PEERCONNECTION：对等连接；
        /// CPM：物理机自定义路由；
        /// CCN：云联网；
        /// TGW：公网默认路由；
        /// SSLVPN : SSH SSL VPN网关。
        public let gatewayType: String?

        /// 下一跳地址，这里只需要指定不同下一跳类型的网关ID，系统会自动匹配到下一跳地址。
        public let gatewayId: String?

        /// 路由策略描述。
        public let routeDescription: String?

        /// 路由策略ID
        public let routePolicyId: String?

        /// 路由类型，目前我们支持的类型有：
        /// USER：用户自定义路由；
        /// NETD：网络探测路由，创建网络探测实例时，系统默认下发，不可编辑与删除；
        /// CCN：云联网路由，系统默认下发，不可编辑与删除。
        /// 用户只能添加和编辑USER 类型的路由。
        public let routePolicyType: String?

        /// 是否启用
        public let enabled: Bool?

        public init(destinationCidrBlock: String? = nil, gatewayType: String? = nil, gatewayId: String? = nil, routeDescription: String? = nil, routePolicyId: String? = nil, routePolicyType: String? = nil, enabled: Bool? = nil) {
            self.destinationCidrBlock = destinationCidrBlock
            self.gatewayType = gatewayType
            self.gatewayId = gatewayId
            self.routeDescription = routeDescription
            self.routePolicyId = routePolicyId
            self.routePolicyType = routePolicyType
            self.enabled = enabled
        }

        enum CodingKeys: String, CodingKey {
            case destinationCidrBlock = "DestinationCidrBlock"
            case gatewayType = "GatewayType"
            case gatewayId = "GatewayId"
            case routeDescription = "RouteDescription"
            case routePolicyId = "RoutePolicyId"
            case routePolicyType = "RoutePolicyType"
            case enabled = "Enabled"
        }
    }

    /// 路由表对象
    public struct RouteTable: TCOutputModel {
        /// VPC实例ID。
        public let vpcId: String

        /// VPC的名称
        public let vpcName: String

        /// VPC的CIDR
        public let vpcCidrBlock: String

        /// 可用区
        public let zone: String

        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String

        /// 路由表名称。
        public let routeTableName: String

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case vpcCidrBlock = "VpcCidrBlock"
            case zone = "Zone"
            case routeTableId = "RouteTableId"
            case routeTableName = "RouteTableName"
            case createTime = "CreateTime"
        }
    }

    /// SecurityPolicyDatabase策略
    public struct SecurityPolicyDatabase: TCInputModel {
        /// 本端网段
        public let localCidrBlock: String

        /// 对端网段
        public let remoteCidrBlock: [String]

        public init(localCidrBlock: String, remoteCidrBlock: [String]) {
            self.localCidrBlock = localCidrBlock
            self.remoteCidrBlock = remoteCidrBlock
        }

        enum CodingKeys: String, CodingKey {
            case localCidrBlock = "LocalCidrBlock"
            case remoteCidrBlock = "RemoteCidrBlock"
        }
    }

    /// 创建子网时的子网类型
    public struct SubnetCreateInputInfo: TCInputModel {
        /// 子网名称，可任意命名，但不得超过60个字符
        public let subnetName: String

        /// 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠
        public let cidrBlock: String

        /// 是否开启子网分布式网关，默认传1，传0为关闭子网分布式网关。关闭分布式网关子网用于云服务器化子网，此子网中只能有一台物理机，同时此物理机及其上子机只能在此子网中
        public let distributedFlag: UInt64?

        /// 是否开启dhcp relay ，关闭为0，开启为1。默认为0
        public let dhcpEnable: UInt64?

        /// DHCP SERVER 的IP地址数组。IP地址为相同VPC的子网内分配的IP
        public let dhcpServerIp: [String]?

        /// 预留的IP个数。从该子网的最大可分配IP倒序分配N个IP 用于DHCP 动态分配使用的地址段
        public let ipReserve: UInt64?

        /// 子网绑定的vlanId。VlanId取值范围为2000-2999。创建物理机子网，VlanId默认为5; 创建docker子网或者虚拟子网，VlanId默认会分配2000--2999未使用的数值。
        public let vlanId: UInt64?

        /// 黑石子网的可用区
        public let zone: String?

        /// 是否25G子网，1为是，0为否。
        public let isSmartNic: UInt64?

        public init(subnetName: String, cidrBlock: String, distributedFlag: UInt64? = nil, dhcpEnable: UInt64? = nil, dhcpServerIp: [String]? = nil, ipReserve: UInt64? = nil, vlanId: UInt64? = nil, zone: String? = nil, isSmartNic: UInt64? = nil) {
            self.subnetName = subnetName
            self.cidrBlock = cidrBlock
            self.distributedFlag = distributedFlag
            self.dhcpEnable = dhcpEnable
            self.dhcpServerIp = dhcpServerIp
            self.ipReserve = ipReserve
            self.vlanId = vlanId
            self.zone = zone
            self.isSmartNic = isSmartNic
        }

        enum CodingKeys: String, CodingKey {
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case distributedFlag = "DistributedFlag"
            case dhcpEnable = "DhcpEnable"
            case dhcpServerIp = "DhcpServerIp"
            case ipReserve = "IpReserve"
            case vlanId = "VlanId"
            case zone = "Zone"
            case isSmartNic = "IsSmartNic"
        }
    }

    /// 黑石子网的信息
    public struct SubnetInfo: TCOutputModel {
        /// 私有网络的唯一ID。
        public let vpcId: String

        /// VPC的名称。
        public let vpcName: String

        /// VPC的CIDR。
        public let vpcCidrBlock: String

        /// 私有网络的唯一ID
        public let subnetId: String

        /// 子网名称。
        public let subnetName: String

        /// 子网CIDR。
        public let cidrBlock: String

        /// 子网类型。0: 黑石物理机子网; 6: ccs子网; 7 Docker子网; 8: 虚拟机子网
        public let type: UInt64

        /// 子网可用区ID。
        public let zoneId: UInt64

        /// 子网物理机的个数
        public let cpmNum: UInt64

        /// 子网的VlanId。
        public let vlanId: UInt64

        /// 是否开启分布式网关 ，关闭为0，开启为1。
        public let distributedFlag: UInt64

        /// 是否开启dhcp relay ，关闭为0，开启为1。默认为0。
        public let dhcpEnable: UInt64

        /// DHCP SERVER 的IP地址数组。IP地址为相同VPC的子网内分配的IP。
        public let dhcpServerIp: [String]

        /// 预留的IP个数。从该子网的最大可分配IP倒序分配N个IP 用于DHCP 动态分配使用的地址段。
        public let ipReserve: UInt64

        /// 子网中可用的IP个数
        public let availableIpNum: UInt64

        /// 子网中总共的IP个数
        public let totalIpNum: UInt64

        /// 子网创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var subnetCreateTime: Date

        /// 25G子网标识
        public let isSmartNic: UInt64

        /// 子网可用区。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// VPC所在可用区ID
        public let vpcZoneId: UInt64

        /// VPC所在可用区
        public let vpcZone: String

        /// 是否开启广播，关闭为0，开启为1。
        public let broadcastFlag: UInt64

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case vpcCidrBlock = "VpcCidrBlock"
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case type = "Type"
            case zoneId = "ZoneId"
            case cpmNum = "CpmNum"
            case vlanId = "VlanId"
            case distributedFlag = "DistributedFlag"
            case dhcpEnable = "DhcpEnable"
            case dhcpServerIp = "DhcpServerIp"
            case ipReserve = "IpReserve"
            case availableIpNum = "AvailableIpNum"
            case totalIpNum = "TotalIpNum"
            case subnetCreateTime = "SubnetCreateTime"
            case isSmartNic = "IsSmartNic"
            case zone = "Zone"
            case vpcZoneId = "VpcZoneId"
            case vpcZone = "VpcZone"
            case broadcastFlag = "BroadcastFlag"
        }
    }

    /// VPC信息
    public struct VpcInfo: TCOutputModel {
        /// 私有网络的唯一ID。
        public let vpcId: String

        /// VPC的名称。
        public let vpcName: String

        /// VPC的CIDR。
        public let cidrBlock: String

        /// 可用区
        public let zone: String

        /// VPC状态
        public let state: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 整型私有网络ID。
        public let intVpcId: UInt64

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
            case state = "State"
            case createTime = "CreateTime"
            case intVpcId = "IntVpcId"
        }
    }

    /// 对等连接对象
    public struct VpcPeerConnection: TCOutputModel {
        /// 本端VPC唯一ID
        public let vpcId: String

        /// 对端VPC唯一ID
        public let peerVpcId: String

        /// 本端APPID
        public let appId: String

        /// 对端APPID
        public let peerAppId: String

        /// 对等连接唯一ID
        public let vpcPeerConnectionId: String

        /// 对等连接名称
        public let vpcPeerConnectionName: String

        /// 对等连接状态。pending:申请中,available:运行中,expired:已过期,rejected:已拒绝,deleted:已删除
        public let state: String

        /// 本端VPC所属可用区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcZone: String?

        /// 对端VPC所属可用区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let peerVpcZone: String?

        /// 本端Uin
        public let uin: UInt64

        /// 对端Uin
        public let peerUin: UInt64

        /// 对等连接类型
        public let peerType: UInt64

        /// 对等连接带宽
        public let bandwidth: UInt64

        /// 本端VPC地域
        public let region: String

        /// 对端VPC地域
        public let peerRegion: String

        /// 是否允许删除
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deleteFlag: UInt64?

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case peerVpcId = "PeerVpcId"
            case appId = "AppId"
            case peerAppId = "PeerAppId"
            case vpcPeerConnectionId = "VpcPeerConnectionId"
            case vpcPeerConnectionName = "VpcPeerConnectionName"
            case state = "State"
            case vpcZone = "VpcZone"
            case peerVpcZone = "PeerVpcZone"
            case uin = "Uin"
            case peerUin = "PeerUin"
            case peerType = "PeerType"
            case bandwidth = "Bandwidth"
            case region = "Region"
            case peerRegion = "PeerRegion"
            case deleteFlag = "DeleteFlag"
            case createTime = "CreateTime"
        }
    }

    /// VPC限额信息
    public struct VpcQuota: TCOutputModel {
        /// 配额类型ID
        public let typeId: UInt64

        /// 配额
        public let quota: UInt64

        enum CodingKeys: String, CodingKey {
            case typeId = "TypeId"
            case quota = "Quota"
        }
    }

    /// VPC占用资源
    public struct VpcResource: TCOutputModel {
        /// 私有网络ID
        public let vpcId: String

        /// 私有网络名称
        public let vpcName: String

        /// 私有网络的CIDR
        public let cidrBlock: String

        /// 子网个数
        public let subnetNum: UInt64

        /// NAT个数
        public let natNum: UInt64

        /// VPC状态
        public let state: String

        /// 是否开启监控
        public let monitorFlag: Bool

        /// 物理机个数
        public let cpmNum: UInt64

        /// 可用IP个数
        public let leaveIpNum: UInt64

        /// 负载均衡个数
        public let lbNum: UInt64

        /// 流量镜像网关个数
        public let trafficMirrorNum: UInt64

        /// 弹性IP个数
        public let eipNum: UInt64

        /// 专线网关个数
        public let plgwNum: UInt64

        /// 专线通道个数
        public let plvpNum: UInt64

        /// ssl vpn网关个数
        public let sslVpnGwNum: UInt64

        /// 对等链接个数
        public let vpcPeerNum: UInt64

        /// ipsec vpn网关个数
        public let ipsecVpnGwNum: UInt64

        /// 可用区
        public let zone: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 是否老专区VPC
        public let isOld: Bool

        /// 云联网服务个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ccnServiceNum: UInt64?

        /// VPC允许创建的对等连接个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcPeerLimitToAllRegion: UInt64?

        /// VPC允许创建的同地域的对等连接的个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcPeerLimitToSameRegion: UInt64?

        /// 整型私有网络ID
        public let intVpcId: UInt64

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case subnetNum = "SubnetNum"
            case natNum = "NatNum"
            case state = "State"
            case monitorFlag = "MonitorFlag"
            case cpmNum = "CpmNum"
            case leaveIpNum = "LeaveIpNum"
            case lbNum = "LbNum"
            case trafficMirrorNum = "TrafficMirrorNum"
            case eipNum = "EipNum"
            case plgwNum = "PlgwNum"
            case plvpNum = "PlvpNum"
            case sslVpnGwNum = "SslVpnGwNum"
            case vpcPeerNum = "VpcPeerNum"
            case ipsecVpnGwNum = "IpsecVpnGwNum"
            case zone = "Zone"
            case createTime = "CreateTime"
            case isOld = "IsOld"
            case ccnServiceNum = "CcnServiceNum"
            case vpcPeerLimitToAllRegion = "VpcPeerLimitToAllRegion"
            case vpcPeerLimitToSameRegion = "VpcPeerLimitToSameRegion"
            case intVpcId = "IntVpcId"
        }
    }

    /// 创建VPC下默认子网
    public struct VpcSubnetCreateInfo: TCInputModel {
        /// 子网名称
        public let subnetName: String

        /// 子网的CIDR
        public let cidrBlock: String

        /// 子网的可用区
        public let zone: String?

        public init(subnetName: String, cidrBlock: String, zone: String? = nil) {
            self.subnetName = subnetName
            self.cidrBlock = cidrBlock
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
        }
    }

    /// VPC视图子网信息
    public struct VpcSubnetViewInfo: TCOutputModel {
        /// 子网ID
        public let subnetId: String

        /// 子网名称
        public let subnetName: String

        /// 子网CIDR
        public let cidrBlock: String

        /// 子网下设备个数
        public let cpmNum: UInt64

        /// 内网负载均衡个数
        public let lbNum: UInt64

        /// 子网所在可用区
        public let zone: String

        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case cpmNum = "CpmNum"
            case lbNum = "LbNum"
            case zone = "Zone"
        }
    }

    /// VPC视图信息
    public struct VpcViewInfo: TCOutputModel {
        /// 私有网络ID
        public let vpcId: String

        /// 私有网络名称
        public let vpcName: String

        /// 私有网络CIDR
        public let cidrBlock: String

        /// 私有网络所在可用区
        public let zone: String

        /// 外网负载均衡个数
        public let lbNum: UInt64

        /// 弹性公网IP个数
        public let eipNum: UInt64

        /// NAT网关个数
        public let natNum: UInt64

        /// 子网列表
        public let subnetSet: [VpcSubnetViewInfo]

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
            case lbNum = "LbNum"
            case eipNum = "EipNum"
            case natNum = "NatNum"
            case subnetSet = "SubnetSet"
        }
    }

    /// VPN通道对象。
    public struct VpnConnection: TCOutputModel {
        /// 通道实例ID。
        public let vpnConnectionId: String

        /// 通道名称。
        public let vpnConnectionName: String

        /// VPC实例ID。
        public let vpcId: String

        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// 对端网关实例ID。
        public let customerGatewayId: String

        /// 预共享密钥。
        public let preShareKey: String

        /// 通道传输协议。
        public let vpnProto: String

        /// 创建时间。
        public let createTime: String

        /// 通道的生产状态
        public let state: String

        /// 通道连接状态
        public let netStatus: String

        /// SPD。
        public let securityPolicyDatabaseSet: [SecurityPolicyDatabase]

        /// IKE选项。
        public let ikeOptionsSpecification: IKEOptionsSpecification

        /// IPSEC选项。
        public let ipsecOptionsSpecification: IPSECOptionsSpecification

        /// 可用区
        public let zone: String

        /// VPC网段
        public let vpcCidrBlock: String

        /// VPC名称
        public let vpcName: String

        /// VPN网关名称
        public let vpnGatewayName: String

        /// 对端网关名称
        public let customerGatewayName: String

        /// IPSEC VPN通道路由策略目的端地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let destinationCidr: [String]?

        /// IPSEC VPN通道路由策略源端地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceCidr: [String]?

        enum CodingKeys: String, CodingKey {
            case vpnConnectionId = "VpnConnectionId"
            case vpnConnectionName = "VpnConnectionName"
            case vpcId = "VpcId"
            case vpnGatewayId = "VpnGatewayId"
            case customerGatewayId = "CustomerGatewayId"
            case preShareKey = "PreShareKey"
            case vpnProto = "VpnProto"
            case createTime = "CreateTime"
            case state = "State"
            case netStatus = "NetStatus"
            case securityPolicyDatabaseSet = "SecurityPolicyDatabaseSet"
            case ikeOptionsSpecification = "IKEOptionsSpecification"
            case ipsecOptionsSpecification = "IPSECOptionsSpecification"
            case zone = "Zone"
            case vpcCidrBlock = "VpcCidrBlock"
            case vpcName = "VpcName"
            case vpnGatewayName = "VpnGatewayName"
            case customerGatewayName = "CustomerGatewayName"
            case destinationCidr = "DestinationCidr"
            case sourceCidr = "SourceCidr"
        }
    }

    /// VPN网关对象。
    public struct VpnGateway: TCOutputModel {
        /// 网关实例ID。
        public let vpnGatewayId: String

        /// VPC实例ID。
        public let vpcId: String

        /// 网关实例名称。
        public let vpnGatewayName: String

        /// VPC网段
        public let vpcCidrBlock: String

        /// VPC名称
        public let vpcName: String

        /// 网关出带宽。
        public let internetMaxBandwidthOut: UInt64

        /// 网关实例状态
        public let state: String

        /// 网关公网IP。
        public let publicIpAddress: String

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 可用区，如：ap-guangzhou
        public let zone: String

        /// VPN网关的通道数
        public let vpnConnNum: UInt64

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case vpcId = "VpcId"
            case vpnGatewayName = "VpnGatewayName"
            case vpcCidrBlock = "VpcCidrBlock"
            case vpcName = "VpcName"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case state = "State"
            case publicIpAddress = "PublicIpAddress"
            case createTime = "CreateTime"
            case zone = "Zone"
            case vpnConnNum = "VpnConnNum"
        }
    }
}
