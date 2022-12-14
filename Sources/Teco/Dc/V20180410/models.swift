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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dc {
    /// 接入点信息。
    public struct AccessPoint: TCOutputModel {
        /// 接入点的名称。
        public let accessPointName: String
        
        /// 接入点唯一ID。
        public let accessPointId: String
        
        /// 接入点的状态。可用，不可用。
        public let state: String
        
        /// 接入点的位置。
        public let location: String
        
        /// 接入点支持的运营商列表。
        public let lineOperator: [String]
        
        /// 接入点管理的大区ID。
        public let regionId: String
        
        /// 接入点可用的端口类型列表。1000BASE-T代表千兆电口，1000BASE-LX代表千兆单模光口10km，1000BASE-ZX代表千兆单模光口80km,10GBASE-LR代表万兆单模光口10km,10GBASE-ZR代表万兆单模光口80km,10GBASE-LH代表万兆单模光口40km,100GBASE-LR4代表100G单模光口10km
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let availablePortType: [String]?
        
        /// 接入点经纬度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let coordinate: Coordinate?
        
        /// 接入点所在城市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let city: String?
        
        /// 接入点地域名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let area: String?
        
        /// 接入点类型。VXLAN/QCPL/QCAR
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessPointType: String?
        
        enum CodingKeys: String, CodingKey {
            case accessPointName = "AccessPointName"
            case accessPointId = "AccessPointId"
            case state = "State"
            case location = "Location"
            case lineOperator = "LineOperator"
            case regionId = "RegionId"
            case availablePortType = "AvailablePortType"
            case coordinate = "Coordinate"
            case city = "City"
            case area = "Area"
            case accessPointType = "AccessPointType"
        }
    }
    
    /// BFD配置信息
    public struct BFDInfo: TCInputModel, TCOutputModel {
        /// 健康检查次数
        public let probeFailedTimes: Int64?
        
        /// 健康检查间隔
        public let interval: Int64?
        
        public init (probeFailedTimes: Int64? = nil, interval: Int64? = nil) {
            self.probeFailedTimes = probeFailedTimes
            self.interval = interval
        }
        
        enum CodingKeys: String, CodingKey {
            case probeFailedTimes = "ProbeFailedTimes"
            case interval = "Interval"
        }
    }
    
    /// bgp状态信息
    public struct BGPStatus: TCOutputModel {
        /// 腾讯侧主互联IP BGP状态
        public let tencentAddressBgpState: String
        
        /// 腾讯侧备互联IP BGP状态
        public let tencentBackupAddressBgpState: String
        
        enum CodingKeys: String, CodingKey {
            case tencentAddressBgpState = "TencentAddressBgpState"
            case tencentBackupAddressBgpState = "TencentBackupAddressBgpState"
        }
    }
    
    /// bgp参数，包括Asn，AuthKey
    public struct BgpPeer: TCInputModel {
        /// 用户侧，BGP Asn
        public let asn: Int64?
        
        /// 用户侧BGP密钥
        public let authKey: String?
        
        public init (asn: Int64? = nil, authKey: String? = nil) {
            self.asn = asn
            self.authKey = authKey
        }
        
        enum CodingKeys: String, CodingKey {
            case asn = "Asn"
            case authKey = "AuthKey"
        }
    }
    
    /// 坐标，经维度描述
    public struct Coordinate: TCOutputModel {
        /// 纬度
        public let lat: Float
        
        /// 经度
        public let lng: Float
        
        enum CodingKeys: String, CodingKey {
            case lat = "Lat"
            case lng = "Lng"
        }
    }
    
    /// 物理专线信息列表
    public struct DirectConnect: TCOutputModel {
        /// 物理专线ID。
        public let directConnectId: String
        
        /// 物理专线的名称。
        public let directConnectName: String
        
        /// 物理专线的接入点ID。
        public let accessPointId: String
        
        /// 物理专线的状态。
        /// 申请中：PENDING 
        /// 申请驳回：REJECTED   
        /// 待付款：TOPAY 
        /// 已付款：PAID 
        /// 建设中：ALLOCATED   
        /// 已开通：AVAILABLE  
        /// 删除中 ：DELETING
        /// 已删除：DELETED 。
        public let state: String
        
        /// 物理专线创建时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var createdTime: Date
        
        /// 物理专线的开通时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var enabledTime: Date
        
        /// 提供接入物理专线的运营商。ChinaTelecom：中国电信， ChinaMobile：中国移动，ChinaUnicom：中国联通， In-houseWiring：楼内线，ChinaOther：中国其他， InternationalOperator：境外其他。
        public let lineOperator: String
        
        /// 本地数据中心的地理位置。
        public let location: String
        
        /// 物理专线接入接口带宽，单位为Mbps。
        public let bandwidth: Int64
        
        /// 用户侧物理专线接入端口类型,取值：100Base-T：百兆电口,1000Base-T（默认值）：千兆电口,1000Base-LX：千兆单模光口（10千米）,10GBase-T：万兆电口10GBase-LR：万兆单模光口（10千米），默认值，千兆单模光口（10千米）
        public let portType: String
        
        /// 运营商或者服务商为物理专线提供的电路编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let circuitCode: String?
        
        /// 冗余物理专线的ID。
        public let redundantDirectConnectId: String
        
        /// 物理专线调试VLAN。默认开启VLAN，自动分配VLAN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vlan: Int64?
        
        /// 物理专线调试腾讯侧互联IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tencentAddress: String?
        
        /// 物理专线调试用户侧互联IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerAddress: String?
        
        /// 物理专线申请者姓名。默认从账户体系获取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerName: String?
        
        /// 物理专线申请者联系邮箱。默认从账户体系获取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerContactMail: String?
        
        /// 物理专线申请者联系号码。默认从账户体系获取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerContactNumber: String?
        
        /// 物理专线的过期时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var expiredTime: Date?
        
        /// 物理专线计费类型。 NON_RECURRING_CHARGE：一次性接入费用；PREPAID_BY_YEAR：按年预付费。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeType: String?
        
        /// 报障联系人。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faultReportContactPerson: String?
        
        /// 报障联系电话。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faultReportContactNumber: String?
        
        /// 标签键值对
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagSet: [Tag]?
        
        /// 物理专线的接入点类型。
        public let accessPointType: String
        
        /// IDC所在城市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idcCity: String?
        
        /// 计费状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeState: String?
        
        /// 物理专线开通时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?
        
        /// 物理专线是否已签署用户协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signLaw: Bool?
        
        /// 物理专线是否为LocalZone
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let localZone: Bool?
        
        /// 该物理专线下vlan 0的专用通道数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vlanZeroDirectConnectTunnelCount: UInt64?
        
        /// 该物理专线下非vlan 0的专用通道数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otherVlanDirectConnectTunnelCount: UInt64?
        
        /// 物理专线最小带宽
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let minBandwidth: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case directConnectId = "DirectConnectId"
            case directConnectName = "DirectConnectName"
            case accessPointId = "AccessPointId"
            case state = "State"
            case createdTime = "CreatedTime"
            case enabledTime = "EnabledTime"
            case lineOperator = "LineOperator"
            case location = "Location"
            case bandwidth = "Bandwidth"
            case portType = "PortType"
            case circuitCode = "CircuitCode"
            case redundantDirectConnectId = "RedundantDirectConnectId"
            case vlan = "Vlan"
            case tencentAddress = "TencentAddress"
            case customerAddress = "CustomerAddress"
            case customerName = "CustomerName"
            case customerContactMail = "CustomerContactMail"
            case customerContactNumber = "CustomerContactNumber"
            case expiredTime = "ExpiredTime"
            case chargeType = "ChargeType"
            case faultReportContactPerson = "FaultReportContactPerson"
            case faultReportContactNumber = "FaultReportContactNumber"
            case tagSet = "TagSet"
            case accessPointType = "AccessPointType"
            case idcCity = "IdcCity"
            case chargeState = "ChargeState"
            case startTime = "StartTime"
            case signLaw = "SignLaw"
            case localZone = "LocalZone"
            case vlanZeroDirectConnectTunnelCount = "VlanZeroDirectConnectTunnelCount"
            case otherVlanDirectConnectTunnelCount = "OtherVlanDirectConnectTunnelCount"
            case minBandwidth = "MinBandwidth"
        }
    }
    
    /// 专用通道信息列表
    public struct DirectConnectTunnel: TCOutputModel {
        /// 专用通道ID
        public let directConnectTunnelId: String
        
        /// 物理专线ID
        public let directConnectId: String
        
        /// 专用通道状态
        /// AVAILABLE:就绪或者已连接
        /// PENDING:申请中
        /// ALLOCATING:配置中
        /// ALLOCATED:配置完成
        /// ALTERING:修改中
        /// DELETING:删除中
        /// DELETED:删除完成
        /// COMFIRMING:待接受
        /// REJECTED:拒绝
        public let state: String
        
        /// 物理专线的拥有者，开发商账号 ID
        public let directConnectOwnerAccount: String
        
        /// 专用通道的拥有者，开发商账号 ID
        public let ownerAccount: String
        
        /// 网络类型，分别为VPC、BMVPC、CCN
        ///  VPC：私有网络 ，BMVPC：黑石网络，CCN：云联网
        public let networkType: String
        
        /// VPC地域对应的网络名，如ap-guangzhou
        public let networkRegion: String
        
        /// 私有网络统一 ID 或者黑石网络统一 ID
        public let vpcId: String
        
        /// 专线网关 ID
        public let directConnectGatewayId: String
        
        /// BGP ：BGP路由 STATIC：静态 默认为 BGP 路由
        public let routeType: String
        
        /// 用户侧BGP，Asn，AuthKey
        public let bgpPeer: BgpPeer
        
        /// 用户侧网段地址
        public let routeFilterPrefixes: [RouteFilterPrefix]
        
        /// 专用通道的Vlan
        public let vlan: Int64
        
        /// TencentAddress，腾讯侧互联 IP
        public let tencentAddress: String
        
        /// CustomerAddress，用户侧互联 IP
        public let customerAddress: String
        
        /// 专用通道名称
        public let directConnectTunnelName: String
        
        /// 专用通道创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var createdTime: Date
        
        /// 专用通道带宽值
        public let bandwidth: Int64
        
        /// 专用通道标签值
        public let tagSet: [Tag]
        
        /// 关联的网络自定义探测ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netDetectId: String?
        
        /// BGP community开关
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableBGPCommunity: Bool?
        
        /// 是否为Nat通道
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let natType: Int64?
        
        /// VPC地域简码，如gz、cd
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcRegion: String?
        
        /// 是否开启BFD
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bfdEnable: Int64?
        
        /// 专用通道接入点类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessPointType: String?
        
        /// 专线网关名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let directConnectGatewayName: String?
        
        /// VPC名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcName: String?
        
        /// TencentBackupAddress，腾讯侧备用互联 IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tencentBackupAddress: String?
        
        /// 专用通道关联的物理专线是否签署了用户协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signLaw: Bool?
        
        /// 高速上云服务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cloudAttachId: String?
        
        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
            case directConnectId = "DirectConnectId"
            case state = "State"
            case directConnectOwnerAccount = "DirectConnectOwnerAccount"
            case ownerAccount = "OwnerAccount"
            case networkType = "NetworkType"
            case networkRegion = "NetworkRegion"
            case vpcId = "VpcId"
            case directConnectGatewayId = "DirectConnectGatewayId"
            case routeType = "RouteType"
            case bgpPeer = "BgpPeer"
            case routeFilterPrefixes = "RouteFilterPrefixes"
            case vlan = "Vlan"
            case tencentAddress = "TencentAddress"
            case customerAddress = "CustomerAddress"
            case directConnectTunnelName = "DirectConnectTunnelName"
            case createdTime = "CreatedTime"
            case bandwidth = "Bandwidth"
            case tagSet = "TagSet"
            case netDetectId = "NetDetectId"
            case enableBGPCommunity = "EnableBGPCommunity"
            case natType = "NatType"
            case vpcRegion = "VpcRegion"
            case bfdEnable = "BfdEnable"
            case accessPointType = "AccessPointType"
            case directConnectGatewayName = "DirectConnectGatewayName"
            case vpcName = "VpcName"
            case tencentBackupAddress = "TencentBackupAddress"
            case signLaw = "SignLaw"
            case cloudAttachId = "CloudAttachId"
        }
    }
    
    /// 专用通道扩展信息
    public struct DirectConnectTunnelExtra: TCOutputModel {
        /// 专用通道ID
        public let directConnectTunnelId: String
        
        /// 物理专线ID
        public let directConnectId: String
        
        /// 专用通道状态
        /// AVAILABLE:就绪或者已连接
        /// PENDING:申请中
        /// ALLOCATING:配置中
        /// ALLOCATED:配置完成
        /// ALTERING:修改中
        /// DELETING:删除中
        /// DELETED:删除完成
        /// COMFIRMING:待接受
        /// REJECTED:拒绝
        public let state: String
        
        /// 物理专线的拥有者，开发商账号 ID
        public let directConnectOwnerAccount: String
        
        /// 专用通道的拥有者，开发商账号 ID
        public let ownerAccount: String
        
        /// 网络类型，分别为VPC、BMVPC、CCN
        ///  VPC：私有网络 ，BMVPC：黑石网络，CCN：云联网
        public let networkType: String
        
        /// VPC地域对应的网络名，如ap-guangzhou
        public let networkRegion: String
        
        /// 私有网络统一 ID 或者黑石网络统一 ID
        public let vpcId: String
        
        /// 专线网关 ID
        public let directConnectGatewayId: String
        
        /// BGP ：BGP路由 STATIC：静态 默认为 BGP 路由
        public let routeType: String
        
        /// 用户侧BGP，Asn，AuthKey
        public let bgpPeer: BgpPeer
        
        /// 用户侧网段地址
        public let routeFilterPrefixes: [RouteFilterPrefix]
        
        /// 互联网通道公网网段地址
        public let publicAddresses: [RouteFilterPrefix]
        
        /// 专用通道的Vlan
        public let vlan: Int64
        
        /// 腾讯侧互联 IP
        public let tencentAddress: String
        
        /// 腾讯侧备用互联IP
        public let tencentBackupAddress: String
        
        /// 用户侧互联 IP
        public let customerAddress: String
        
        /// 专用通道名称
        public let directConnectTunnelName: String
        
        /// 专用通道创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var createdTime: Date
        
        /// 专用通道带宽值
        public let bandwidth: Int64
        
        /// 关联的网络自定义探测ID
        public let netDetectId: String
        
        /// BGP community开关
        public let enableBGPCommunity: Bool
        
        /// 是否为Nat通道
        public let natType: Int64
        
        /// VPC地域简码，如gz、cd
        public let vpcRegion: String
        
        /// 是否开启BFD
        public let bfdEnable: Int64
        
        /// 是否开启NQA
        public let nqaEnable: Int64
        
        /// 专用通道接入点类型
        public let accessPointType: String
        
        /// 专线网关名称
        public let directConnectGatewayName: String
        
        /// VPC名称
        public let vpcName: String
        
        /// 专用通道关联的物理专线是否签署了用户协议
        public let signLaw: Bool
        
        /// BFD配置信息
        public let bfdInfo: BFDInfo
        
        /// NQA配置信息
        public let nqaInfo: NQAInfo
        
        /// BGP状态
        public let bgpStatus: BGPStatus
        
        /// 是否开启IPv6
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iPv6Enable: Int64?
        
        /// 腾讯侧互联IPv6地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tencentIPv6Address: String?
        
        /// 腾讯侧备用互联IPv6地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tencentBackupIPv6Address: String?
        
        /// BGPv6状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bgpIPv6Status: BGPStatus?
        
        /// 用户侧互联IPv6地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerIPv6Address: String?
        
        /// 专用通道是否支持巨帧。1 支持，0 不支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jumboEnable: Int64?
        
        /// 专用通道是否支持高精度BFD。1支持，0不支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let highPrecisionBFDEnable: Int64?
        
        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
            case directConnectId = "DirectConnectId"
            case state = "State"
            case directConnectOwnerAccount = "DirectConnectOwnerAccount"
            case ownerAccount = "OwnerAccount"
            case networkType = "NetworkType"
            case networkRegion = "NetworkRegion"
            case vpcId = "VpcId"
            case directConnectGatewayId = "DirectConnectGatewayId"
            case routeType = "RouteType"
            case bgpPeer = "BgpPeer"
            case routeFilterPrefixes = "RouteFilterPrefixes"
            case publicAddresses = "PublicAddresses"
            case vlan = "Vlan"
            case tencentAddress = "TencentAddress"
            case tencentBackupAddress = "TencentBackupAddress"
            case customerAddress = "CustomerAddress"
            case directConnectTunnelName = "DirectConnectTunnelName"
            case createdTime = "CreatedTime"
            case bandwidth = "Bandwidth"
            case netDetectId = "NetDetectId"
            case enableBGPCommunity = "EnableBGPCommunity"
            case natType = "NatType"
            case vpcRegion = "VpcRegion"
            case bfdEnable = "BfdEnable"
            case nqaEnable = "NqaEnable"
            case accessPointType = "AccessPointType"
            case directConnectGatewayName = "DirectConnectGatewayName"
            case vpcName = "VpcName"
            case signLaw = "SignLaw"
            case bfdInfo = "BfdInfo"
            case nqaInfo = "NqaInfo"
            case bgpStatus = "BgpStatus"
            case iPv6Enable = "IPv6Enable"
            case tencentIPv6Address = "TencentIPv6Address"
            case tencentBackupIPv6Address = "TencentBackupIPv6Address"
            case bgpIPv6Status = "BgpIPv6Status"
            case customerIPv6Address = "CustomerIPv6Address"
            case jumboEnable = "JumboEnable"
            case highPrecisionBFDEnable = "HighPrecisionBFDEnable"
        }
    }
    
    /// 专用通道路由
    public struct DirectConnectTunnelRoute: TCOutputModel {
        /// 专用通道路由ID
        public let routeId: String
        
        /// 网段CIDR
        public let destinationCidrBlock: String
        
        /// 路由类型：BGP/STATIC路由
        public let routeType: String
        
        /// ENABLE：路由启用，DISABLE：路由禁用
        public let status: String
        
        /// ASPath信息
        public let asPath: [String]
        
        /// 路由下一跳IP
        public let nextHop: String
        
        enum CodingKeys: String, CodingKey {
            case routeId = "RouteId"
            case destinationCidrBlock = "DestinationCidrBlock"
            case routeType = "RouteType"
            case status = "Status"
            case asPath = "ASPath"
            case nextHop = "NextHop"
        }
    }
    
    /// 用于条件过滤查询
    public struct Filter: TCInputModel {
        /// 需要过滤的字段。
        public let name: String
        
        /// 字段的过滤值。
        public let values: [String]
        
        public init (name: String, values: [String]) {
            self.name = name
            self.values = values
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }
    
    /// 互联网地址详细信息
    public struct InternetAddressDetail: TCOutputModel {
        /// 互联网地址ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?
        
        /// 互联网网络地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnet: String?
        
        /// 网络地址掩码长度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maskLen: Int64?
        
        /// 0:BGP
        /// 1:电信
        /// 2:移动
        /// 3:联通
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addrType: Int64?
        
        /// 0:使用中
        /// 1:已停用
        /// 2:已退还
        public let status: Int64
        
        /// 申请时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applyTime: String?
        
        /// 停用时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stopTime: String?
        
        /// 退还时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let releaseTime: String?
        
        /// 地域信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?
        
        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: Int64?
        
        /// 0:IPv4 1:IPv6
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addrProto: Int64?
        
        /// 释放状态的IP地址保留的天数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reserveTime: Int64?
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case subnet = "Subnet"
            case maskLen = "MaskLen"
            case addrType = "AddrType"
            case status = "Status"
            case applyTime = "ApplyTime"
            case stopTime = "StopTime"
            case releaseTime = "ReleaseTime"
            case region = "Region"
            case appId = "AppId"
            case addrProto = "AddrProto"
            case reserveTime = "ReserveTime"
        }
    }
    
    /// 互联网公网地址统计
    public struct InternetAddressStatistics: TCOutputModel {
        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?
        
        /// 互联网公网地址数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetNum: Int64?
        
        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case subnetNum = "SubnetNum"
        }
    }
    
    /// nqa配置信息
    public struct NQAInfo: TCInputModel, TCOutputModel {
        /// 健康检查次数
        public let probeFailedTimes: Int64?
        
        /// 健康检查间隔
        public let interval: Int64?
        
        /// 健康检查地址
        public let destinationIp: String?
        
        public init (probeFailedTimes: Int64? = nil, interval: Int64? = nil, destinationIp: String? = nil) {
            self.probeFailedTimes = probeFailedTimes
            self.interval = interval
            self.destinationIp = destinationIp
        }
        
        enum CodingKeys: String, CodingKey {
            case probeFailedTimes = "ProbeFailedTimes"
            case interval = "Interval"
            case destinationIp = "DestinationIp"
        }
    }
    
    /// 用户侧网段地址
    public struct RouteFilterPrefix: TCInputModel {
        /// 用户侧网段地址
        public let cidr: String?
        
        public init (cidr: String? = nil) {
            self.cidr = cidr
        }
        
        enum CodingKeys: String, CodingKey {
            case cidr = "Cidr"
        }
    }
    
    /// 标签键值对
    public struct Tag: TCOutputModel {
        /// 标签键
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?
        
        /// 标签值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?
        
        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
}
