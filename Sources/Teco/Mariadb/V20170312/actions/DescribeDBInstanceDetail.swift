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
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Mariadb {
    /// DescribeDBInstanceDetail请求参数结构体
    public struct DescribeDBInstanceDetailRequest: TCRequest {
        /// 实例Id形如：tdsql-ow728lmc。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBInstanceDetail返回参数结构体
    public struct DescribeDBInstanceDetailResponse: TCResponse {
        /// 实例Id
        public let instanceId: String

        /// 实例名称
        public let instanceName: String

        /// 实例状态
        public let status: Int64

        /// 实例目前运行状态描述
        public let statusDesc: String

        /// 内网 IP 地址
        public let vip: String

        /// 内网端口
        public let vport: Int64

        /// 是否临时实例，0为否，非0为是
        public let isTmp: Int64

        /// 节点数，2为一主一从，3为一主二从
        public let nodeCount: Int64

        /// 实例所在地域名称，如 ap-shanghai
        public let region: String

        /// 实例所在可用区名称，如 ap-shanghai-1
        public let zone: String

        /// 字符串型的私有网络Id
        public let vpcId: String

        /// 字符串型的私有网络子网Id
        public let subnetId: String

        /// 外网状态，0-未开通；1-已开通；2-关闭；3-开通中；4-关闭中
        public let wanStatus: Int64

        /// 外网访问的域名，公网可解析
        public let wanDomain: String

        /// 外网 IP 地址，公网可访问
        public let wanVip: String

        /// 外网端口
        public let wanPort: Int64

        /// 实例所属项目 Id
        public let projectId: Int64

        /// TDSQL 版本信息
        public let tdsqlVersion: String

        /// 实例内存大小，单位 GB
        public let memory: Int64

        /// 实例存储大小，单位 GB
        public let storage: Int64

        /// 主可用区，如 ap-shanghai-1
        public let masterZone: String

        /// 从可用区列表，如 [ap-shanghai-2]
        public let slaveZones: [String]

        /// 自动续费标志：0 否，1 是
        public let autoRenewFlag: Int64

        /// 独享集群Id，普通实例为空
        public let exclusterId: String

        /// 付费模式：prepaid 表示预付费
        public let payMode: String

        /// 实例创建时间，格式为 2006-01-02 15:04:05
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 实例是否支持审计
        public let isAuditSupported: Bool

        /// 实例到期时间，格式为 2006-01-02 15:04:05
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$periodEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var periodEndTime: Date

        /// 机型信息
        public let machine: String

        /// 存储空间使用率
        public let storageUsage: String

        /// 日志存储空间大小，单位 GB
        public let logStorage: Int64

        /// 是否支持数据加密。1-支持；0-不支持
        public let isEncryptSupported: Int64

        /// 内网IPv6
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip6: String?

        /// 实例Cpu核数
        public let cpu: Int64

        /// 产品类型ID
        public let pid: Int64

        /// 最大QPS
        public let qps: Int64

        /// 是否支持IPv6
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipv6Flag: Int64?

        /// 外网IPv6地址，公网可访问
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wanVipv6: String?

        /// 外网状态，0-未开通；1-已开通；2-关闭；3-开通中；4-关闭中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wanStatusIpv6: Int64?

        /// 外网IPv6端口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wanPortIpv6: Int64?

        /// 数据库引擎
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbEngine: String?

        /// 数据库版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbVersion: String?

        /// 标签信息
        public let resourceTags: [ResourceTag]

        /// DCN标志，0-无，1-主实例，2-灾备实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dcnFlag: Int64?

        /// DCN状态，0-无，1-创建中，2-同步中，3-已断开
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dcnStatus: Int64?

        /// DCN灾备实例数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dcnDstNum: Int64?

        /// 1： 主实例（独享型）, 2: 主实例, 3： 灾备实例, 4： 灾备实例（独享型）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceType: Int64?

        /// 实例的各个DB节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodesInfo: [NodeInfo]?

        /// 实例是否支持设置用户连接数限制，内核为10.1暂不支持。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isMaxUserConnectionsSupported: Bool?

        /// 对外显示的数据库版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbVersionId: String?

        /// 加密状态, 0-未开启，1-已开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptStatus: Int64?

        /// DCN的配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicaConfig: DCNReplicaConfig?

        /// DCN的运行状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicaStatus: DCNReplicaStatus?

        /// 独享集群类型，0:公有云, 1:金融围笼, 2:CDC集群
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exclusterType: Int64?

        /// VPC就近访问
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rsAccessStrategy: Int64?

        /// 尚未回收的网络资源
        public let reservedNetResources: [ReservedNetResource]

        /// 是否支持物理复制
        public let isPhysicalReplicationSupported: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case vip = "Vip"
            case vport = "Vport"
            case isTmp = "IsTmp"
            case nodeCount = "NodeCount"
            case region = "Region"
            case zone = "Zone"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case wanStatus = "WanStatus"
            case wanDomain = "WanDomain"
            case wanVip = "WanVip"
            case wanPort = "WanPort"
            case projectId = "ProjectId"
            case tdsqlVersion = "TdsqlVersion"
            case memory = "Memory"
            case storage = "Storage"
            case masterZone = "MasterZone"
            case slaveZones = "SlaveZones"
            case autoRenewFlag = "AutoRenewFlag"
            case exclusterId = "ExclusterId"
            case payMode = "PayMode"
            case createTime = "CreateTime"
            case isAuditSupported = "IsAuditSupported"
            case periodEndTime = "PeriodEndTime"
            case machine = "Machine"
            case storageUsage = "StorageUsage"
            case logStorage = "LogStorage"
            case isEncryptSupported = "IsEncryptSupported"
            case vip6 = "Vip6"
            case cpu = "Cpu"
            case pid = "Pid"
            case qps = "Qps"
            case ipv6Flag = "Ipv6Flag"
            case wanVipv6 = "WanVipv6"
            case wanStatusIpv6 = "WanStatusIpv6"
            case wanPortIpv6 = "WanPortIpv6"
            case dbEngine = "DbEngine"
            case dbVersion = "DbVersion"
            case resourceTags = "ResourceTags"
            case dcnFlag = "DcnFlag"
            case dcnStatus = "DcnStatus"
            case dcnDstNum = "DcnDstNum"
            case instanceType = "InstanceType"
            case nodesInfo = "NodesInfo"
            case isMaxUserConnectionsSupported = "IsMaxUserConnectionsSupported"
            case dbVersionId = "DbVersionId"
            case encryptStatus = "EncryptStatus"
            case replicaConfig = "ReplicaConfig"
            case replicaStatus = "ReplicaStatus"
            case exclusterType = "ExclusterType"
            case rsAccessStrategy = "RsAccessStrategy"
            case reservedNetResources = "ReservedNetResources"
            case isPhysicalReplicationSupported = "IsPhysicalReplicationSupported"
            case requestId = "RequestId"
        }
    }

    /// 查询实例详细信息
    ///
    /// 本接口(DescribeDBInstanceDetail)用于查询指定实例的详细信息。
    @inlinable
    public func describeDBInstanceDetail(_ input: DescribeDBInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceDetailResponse> {
        self.client.execute(action: "DescribeDBInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例详细信息
    ///
    /// 本接口(DescribeDBInstanceDetail)用于查询指定实例的详细信息。
    @inlinable
    public func describeDBInstanceDetail(_ input: DescribeDBInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceDetailResponse {
        try await self.client.execute(action: "DescribeDBInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例详细信息
    ///
    /// 本接口(DescribeDBInstanceDetail)用于查询指定实例的详细信息。
    @inlinable
    public func describeDBInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceDetailResponse> {
        self.describeDBInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例详细信息
    ///
    /// 本接口(DescribeDBInstanceDetail)用于查询指定实例的详细信息。
    @inlinable
    public func describeDBInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceDetailResponse {
        try await self.describeDBInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
