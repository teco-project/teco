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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Cdc {
    /// 购买的cbs信息
    public struct CbsInfo: TCInputModel {
        /// cbs存储大小，单位TB
        public let size: Int64

        /// cbs存储类型，默认为SSD
        public let type: String

        public init(size: Int64, type: String) {
            self.size = size
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case size = "Size"
            case type = "Type"
        }
    }

    /// CDC集群内cos的容量信息
    public struct CosCapacity: TCOutputModel {
        /// 已购cos的总容量大小，单位GB
        public let totalCapacity: Float

        /// 剩余可用cos的容量大小，单位GB
        public let totalFreeCapacity: Float

        /// 已用cos的容量大小，单位GB
        public let totalUsedCapacity: Float

        enum CodingKeys: String, CodingKey {
            case totalCapacity = "TotalCapacity"
            case totalFreeCapacity = "TotalFreeCapacity"
            case totalUsedCapacity = "TotalUsedCapacity"
        }
    }

    /// 用于购买页面添加cos信息
    public struct CosInfo: TCInputModel {
        /// COS存储大小，单位TB
        public let size: Int64

        /// COS存储类型，默认为cos
        public let type: String

        public init(size: Int64, type: String) {
            self.size = size
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case size = "Size"
            case type = "Type"
        }
    }

    /// 专用集群列表
    public struct DedicatedCluster: TCOutputModel {
        /// 专用集群id。如"cluster-xxxxx"。
        public let dedicatedClusterId: String

        /// 专用集群所属可用区名称。
        public let zone: String

        /// 专用集群的描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 专用集群的名称。
        public let name: String

        /// 专用集群的生命周期。如"PENDING"。
        public let lifecycleStatus: String

        /// 专用集群的创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 专用集群所属的站点id。
        public let siteId: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
            case zone = "Zone"
            case description = "Description"
            case name = "Name"
            case lifecycleStatus = "LifecycleStatus"
            case createTime = "CreateTime"
            case siteId = "SiteId"
        }
    }

    /// 专用宿主机支持的实例规格列表
    public struct DedicatedClusterInstanceType: TCOutputModel {
        /// 可用区
        public let zone: String

        /// 规格名称
        public let instanceType: String

        /// 网卡类型，例如：25代表25G网卡
        public let networkCard: Int64

        /// 实例的CPU核数，单位：核。
        public let cpu: Int64

        /// 实例内存容量，单位：`GB`。
        public let memory: Int64

        /// 实例机型系列。
        public let instanceFamily: String

        /// 机型名称。
        public let typeName: String

        /// 本地存储块数量。
        public let storageBlockAmount: Int64

        /// 内网带宽，单位Gbps。
        public let instanceBandwidth: Float

        /// 网络收发包能力，单位万PPS。
        public let instancePps: Int64

        /// 处理器型号。
        public let cpuType: String

        /// 实例的GPU数量。
        public let gpu: Int64

        /// 实例的FPGA数量。
        public let fpga: Int64

        /// 机型描述
        public let remark: String

        /// 实例是否售卖。取值范围：
        ///
        /// <li>SELL：表示实例可购买
        ///
        /// <li>SOLD_OUT：表示实例已售罄。
        public let status: String

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceType = "InstanceType"
            case networkCard = "NetworkCard"
            case cpu = "Cpu"
            case memory = "Memory"
            case instanceFamily = "InstanceFamily"
            case typeName = "TypeName"
            case storageBlockAmount = "StorageBlockAmount"
            case instanceBandwidth = "InstanceBandwidth"
            case instancePps = "InstancePps"
            case cpuType = "CpuType"
            case gpu = "Gpu"
            case fpga = "Fpga"
            case remark = "Remark"
            case status = "Status"
        }
    }

    /// 专用集群订单
    public struct DedicatedClusterOrder: TCOutputModel {
        /// 专用集群id
        public let dedicatedClusterId: String

        /// 专用集群类型id（移到下一层级，已经废弃，后续将删除）
        public let dedicatedClusterTypeId: String

        /// 支持的存储类型列表（移到下一层级，已经废弃，后续将删除）
        public let supportedStorageType: [String]

        /// 支持的上连交换机的链路传输速率(GiB)（移到下一层级，已经废弃，后续将删除）
        public let supportedUplinkSpeed: [Int64]

        /// 支持的实例族列表（移到下一层级，已经废弃，后续将删除）
        public let supportedInstanceFamily: [String]

        /// 地板承重要求(KG)
        public let weight: Int64

        /// 功率要求(KW)
        public let powerDraw: Float

        /// 订单状态
        public let orderStatus: String

        /// 订单创建的时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 大订单ID
        public let dedicatedClusterOrderId: String

        /// 订单类型，创建CREATE或扩容EXTEND
        public let action: String

        /// 子订单详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dedicatedClusterOrderItems: [DedicatedClusterOrderItem]?

        /// cpu值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cpu: Int64?

        /// mem值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mem: Int64?

        /// gpu值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gpu: Int64?

        /// 0代表未支付，1代表已支付
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payStatus: Int64?

        /// 支付方式，一次性、按月、按年
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payType: String?

        /// 购买时长的单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeUnit: String?

        /// 购买时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeSpan: Int64?

        /// 订单类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderType: String?

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
            case dedicatedClusterTypeId = "DedicatedClusterTypeId"
            case supportedStorageType = "SupportedStorageType"
            case supportedUplinkSpeed = "SupportedUplinkSpeed"
            case supportedInstanceFamily = "SupportedInstanceFamily"
            case weight = "Weight"
            case powerDraw = "PowerDraw"
            case orderStatus = "OrderStatus"
            case createTime = "CreateTime"
            case dedicatedClusterOrderId = "DedicatedClusterOrderId"
            case action = "Action"
            case dedicatedClusterOrderItems = "DedicatedClusterOrderItems"
            case cpu = "Cpu"
            case mem = "Mem"
            case gpu = "Gpu"
            case payStatus = "PayStatus"
            case payType = "PayType"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case orderType = "OrderType"
        }
    }

    /// 专用集群子订单
    public struct DedicatedClusterOrderItem: TCOutputModel {
        /// 专用集群类型id
        public let dedicatedClusterTypeId: String

        /// 支持的存储类型列表
        public let supportedStorageType: [String]

        /// 支持的上连交换机的链路传输速率(GiB)
        public let supportedUplinkSpeed: [Int64]

        /// 支持的实例族列表
        public let supportedInstanceFamily: [String]

        /// 地板承重要求(KG)
        public let weight: Int64

        /// 功率要求(KW)
        public let powerDraw: Float

        /// 订单状态
        public let subOrderStatus: String

        /// 订单创建的时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 子订单ID
        public let subOrderId: String

        /// 关联的集群规格数量
        public let count: Int64

        /// 规格简单描述
        public let name: String

        /// 规格详细描述
        public let description: String

        /// CPU数
        public let totalCpu: Int64

        /// 内存数
        public let totalMem: Int64

        /// GPU数
        public let totalGpu: Int64

        /// 规格英文名
        public let typeName: String

        /// 规格展示
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let computeFormat: String?

        /// 规格类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let typeFamily: String?

        /// 0未支付，1已支付
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subOrderPayStatus: Int64?

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterTypeId = "DedicatedClusterTypeId"
            case supportedStorageType = "SupportedStorageType"
            case supportedUplinkSpeed = "SupportedUplinkSpeed"
            case supportedInstanceFamily = "SupportedInstanceFamily"
            case weight = "Weight"
            case powerDraw = "PowerDraw"
            case subOrderStatus = "SubOrderStatus"
            case createTime = "CreateTime"
            case subOrderId = "SubOrderId"
            case count = "Count"
            case name = "Name"
            case description = "Description"
            case totalCpu = "TotalCpu"
            case totalMem = "TotalMem"
            case totalGpu = "TotalGpu"
            case typeName = "TypeName"
            case computeFormat = "ComputeFormat"
            case typeFamily = "TypeFamily"
            case subOrderPayStatus = "SubOrderPayStatus"
        }
    }

    /// 专用集群配置
    public struct DedicatedClusterType: TCOutputModel {
        /// 配置id
        public let dedicatedClusterTypeId: String

        /// 配置描述，对应描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 配置名称，对应计算资源类型
        public let name: String

        /// 创建配置的时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 支持的存储类型列表
        public let supportedStorageType: [String]

        /// 支持的上连交换机的链路传输速率
        public let supportedUplinkGiB: [Int64]

        /// 支持的实例族列表
        public let supportedInstanceFamily: [String]

        /// 地板承重要求(KG)
        public let weight: Int64

        /// 功率要求(KW)
        public let powerDrawKva: Float

        /// 显示计算资源规格详情，存储等资源不显示；对应规格
        public let computeFormatDesc: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterTypeId = "DedicatedClusterTypeId"
            case description = "Description"
            case name = "Name"
            case createTime = "CreateTime"
            case supportedStorageType = "SupportedStorageType"
            case supportedUplinkGiB = "SupportedUplinkGiB"
            case supportedInstanceFamily = "SupportedInstanceFamily"
            case weight = "Weight"
            case powerDrawKva = "PowerDrawKva"
            case computeFormatDesc = "ComputeFormatDesc"
        }
    }

    /// DedicatedClusterType => (Id, Count)
    public struct DedicatedClusterTypeInfo: TCInputModel {
        /// 集群类型Id
        public let id: String

        /// 集群类型个数
        public let count: Int64

        public init(id: String, count: Int64) {
            self.id = id
            self.count = count
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case count = "Count"
        }
    }

    /// CDC宿主机的详细信息
    public struct HostInfo: TCOutputModel {
        /// 宿主机IP
        public let hostIp: String

        /// 云服务类型
        public let serviceType: String

        /// 宿主机运行状态
        public let hostStatus: String

        /// 宿主机类型
        public let hostType: String

        /// cpu可用数
        public let cpuAvailable: UInt64

        /// cpu总数
        public let cpuTotal: UInt64

        /// 内存可用数
        public let memAvailable: UInt64

        /// 内存总数
        public let memTotal: UInt64

        /// 运行时间
        public let runTime: String

        /// 到期时间
        public let expireTime: String

        /// 宿主机id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostId: String?

        enum CodingKeys: String, CodingKey {
            case hostIp = "HostIp"
            case serviceType = "ServiceType"
            case hostStatus = "HostStatus"
            case hostType = "HostType"
            case cpuAvailable = "CpuAvailable"
            case cpuTotal = "CpuTotal"
            case memAvailable = "MemAvailable"
            case memTotal = "MemTotal"
            case runTime = "RunTime"
            case expireTime = "ExpireTime"
            case hostId = "HostId"
        }
    }

    /// CDC集群内宿主机的统计信息
    public struct HostStatistic: TCOutputModel {
        /// 宿主机规格
        public let hostType: String

        /// 宿主机机型系列
        public let hostFamily: String

        /// 宿主机的CPU核数，单位：核
        public let cpu: UInt64

        /// 宿主机内存大小，单位：GB
        public let memory: UInt64

        /// 该规格宿主机的数量
        public let count: UInt64

        enum CodingKeys: String, CodingKey {
            case hostType = "HostType"
            case hostFamily = "HostFamily"
            case cpu = "Cpu"
            case memory = "Memory"
            case count = "Count"
        }
    }

    /// 入带宽数据
    public struct InBandwidth: TCOutputModel {
        /// 时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timestamps: [Float]?

        /// 时间对应的值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let values: [Float]?

        enum CodingKeys: String, CodingKey {
            case timestamps = "Timestamps"
            case values = "Values"
        }
    }

    /// 本地网络信息
    public struct LocalNetInfo: TCOutputModel {
        /// 协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `protocol`: String?

        /// 网络id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 路由信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bgpRoute: String?

        /// 本地IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let localIp: String?

        enum CodingKeys: String, CodingKey {
            case `protocol` = "Protocol"
            case vpcId = "VpcId"
            case bgpRoute = "BGPRoute"
            case localIp = "LocalIp"
        }
    }

    /// 出带宽数据。
    public struct OutBandwidth: TCOutputModel {
        /// 时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timestamps: [Float]?

        /// 对应时间的值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let values: [Float]?

        enum CodingKeys: String, CodingKey {
            case timestamps = "Timestamps"
            case values = "Values"
        }
    }

    /// RegionZoneInfo信息
    public struct RegionZoneInfo: TCOutputModel {
        /// Region id
        public let regionId: Int64

        /// ZoneInfo数组
        public let zones: [ZoneInfo]

        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case zones = "Zones"
        }
    }

    /// 客户站点信息
    public struct Site: TCOutputModel {
        /// 站点名称
        public let name: String

        /// 站点id
        public let siteId: String

        /// 站点描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 站点创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case siteId = "SiteId"
            case description = "Description"
            case createTime = "CreateTime"
        }
    }

    /// 站点详情
    public struct SiteDetail: TCOutputModel {
        /// 站点id
        public let siteId: String

        /// 站点名称
        public let name: String

        /// 站点描述
        public let description: String

        /// 站点创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 光纤类型
        public let fiberType: String

        /// 网络到腾讯云Region区域的上行链路速度
        public let uplinkSpeedGbps: Int64

        /// 将CDC连接到网络时，每台CDC网络设备(每个机架 2 台设备)使用的上行链路数量。
        public let uplinkCount: Int64

        /// 将CDC连接到网络时采用的光学标准
        public let opticalStandard: String

        /// 是否提供冗余的上游设备(交换机或路由器)，以便两台  网络设备都能连接到网络设备。
        public let redundantNetworking: Bool

        /// 电源连接器类型
        public let powerConnectors: String

        /// 从机架上方还是下方供电。
        public let powerFeedDrop: String

        /// 功耗(KW)
        public let powerDrawKva: Float

        /// 是否满足下面环境条件：
        /// 1、场地没有材料要求或验收标准会影响 CDC 设备配送和安装。
        /// 2、确定的机架位置包含:
        /// 温度范围为 41 到 104°F (5 到 40°C)。
        /// 湿度范围为 10°F (-12°C)和 8% RH (相对湿度)到 70°F(21°C)和 80% RH。
        /// 机架位置的气流方向为从前向后，且应具有足够的 CFM (每分钟立方英尺)。CFM 必须是 CDC 配置的 kVA 功耗值的 145.8 倍。
        public let conditionRequirement: Bool

        /// 是否满足下面的尺寸条件：
        /// 您的装货站台可以容纳一个机架箱(高 x 宽 x 深 = 94" x 54" x 48")。
        /// 您可以提供从机架(高 x 宽 x 深 = 80" x 24" x 48")交货地点到机架最终安置位置的明确通道。测量深度时，应包括站台、走廊通道、门、转弯、坡道、货梯，并将其他通道限制考虑在内。
        /// 在最终的 CDC安置位置，前部间隙可以为 48" 或更大，后部间隙可以为 24" 或更大。
        public let dimensionRequirement: Bool

        /// 最大承重(KG)
        public let maxWeight: Int64

        /// 站点地址
        public let addressLine: String

        /// 站点所在地区的详细地址信息（补充）
        public let optionalAddressLine: String

        /// 是否需要腾讯云团队协助完成机架支撑工作
        public let needHelp: Bool

        /// 上游断路器是否具备
        public let breakerRequirement: Bool

        /// 是否电源冗余
        public let redundantPower: Bool

        /// 站点所在国家
        public let country: String

        /// 站点所在省份
        public let province: String

        /// 站点所在城市
        public let city: String

        /// 站点所在地区的邮编
        public let postalCode: Int64

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case name = "Name"
            case description = "Description"
            case createTime = "CreateTime"
            case fiberType = "FiberType"
            case uplinkSpeedGbps = "UplinkSpeedGbps"
            case uplinkCount = "UplinkCount"
            case opticalStandard = "OpticalStandard"
            case redundantNetworking = "RedundantNetworking"
            case powerConnectors = "PowerConnectors"
            case powerFeedDrop = "PowerFeedDrop"
            case powerDrawKva = "PowerDrawKva"
            case conditionRequirement = "ConditionRequirement"
            case dimensionRequirement = "DimensionRequirement"
            case maxWeight = "MaxWeight"
            case addressLine = "AddressLine"
            case optionalAddressLine = "OptionalAddressLine"
            case needHelp = "NeedHelp"
            case breakerRequirement = "BreakerRequirement"
            case redundantPower = "RedundantPower"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case postalCode = "PostalCode"
        }
    }

    /// VPN网关的流量监控数据。
    public struct VpngwBandwidthData: TCOutputModel {
        /// 出带宽流量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outBandwidth: OutBandwidth?

        /// 入带宽流量
        public let inBandwidth: InBandwidth

        enum CodingKeys: String, CodingKey {
            case outBandwidth = "OutBandwidth"
            case inBandwidth = "InBandwidth"
        }
    }

    /// 可用区信息
    public struct ZoneInfo: TCOutputModel {
        /// 可用区名称
        public let zone: String

        /// 可用区描述
        public let zoneName: String

        /// 可用区ID
        public let zoneId: Int64

        /// 可用区状态，包含AVAILABLE和UNAVAILABLE。AVAILABLE代表可用，UNAVAILABLE代表不可用。
        public let zoneState: String

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case zoneName = "ZoneName"
            case zoneId = "ZoneId"
            case zoneState = "ZoneState"
        }
    }
}
