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

extension Dcdb {
    /// DescribeDCDBInstanceDetail请求参数结构体
    public struct DescribeDCDBInstanceDetailRequest: TCRequestModel {
        /// 实例ID，形如dcdbt-7oaxtcb7
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDCDBInstanceDetail返回参数结构体
    public struct DescribeDCDBInstanceDetailResponse: TCResponseModel {
        /// 实例ID，形如dcdbt-7oaxtcb7
        public let instanceId: String

        /// 实例名称
        public let instanceName: String

        /// 实例状态。0-实例创建中；1-异步任务处理中；2-运行中；3-实例未初始化；-1-实例已隔离
        public let status: Int64

        /// 实例目前运行状态描述
        public let statusDesc: String

        /// 实例内网IP地址
        public let vip: String

        /// 实例内网端口
        public let vport: Int64

        /// 实例节点数。值为2时表示一主一从，值为3时表示一主二从
        public let nodeCount: Int64

        /// 实例所在地域名称，形如ap-guangzhou
        public let region: String

        /// 实例私有网络ID，形如vpc-r9jr0de3
        public let vpcId: String

        /// 实例私有网络子网ID，形如subnet-6rqs61o2
        public let subnetId: String

        /// 外网状态，0-未开通；1-已开通；2-关闭；3-开通中；4-关闭中
        public let wanStatus: Int64

        /// 外网访问的域名，公网可解析
        public let wanDomain: String

        /// 外网IP地址，公网可访问
        public let wanVip: String

        /// 外网访问端口
        public let wanPort: Int64

        /// 实例所属项目ID
        public let projectId: Int64

        /// 实例自动续费标志。0-正常续费；1-自动续费；2-到期不续费
        public let autoRenewFlag: Int64

        /// 独享集群ID
        public let exclusterId: String

        /// 付费模式。prepaid-预付费；postpaid-按量计费
        public let payMode: String

        /// 实例创建时间，格式为 2006-01-02 15:04:05
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 实例到期时间，格式为 2006-01-02 15:04:05
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var periodEndTime: Date

        /// 数据库版本信息
        public let dbVersion: String

        /// 实例是否支持审计。0-不支持；1-支持
        public let isAuditSupported: Int64

        /// 实例是否支持数据加密。0-不支持；1-支持
        public let isEncryptSupported: Int64

        /// 实例母机机器型号
        public let machine: String

        /// 实例内存大小，单位 GB，各个分片的内存大小的和
        public let memory: Int64

        /// 实例磁盘存储大小，单位 GB，各个分片的磁盘大小的和
        public let storage: Int64

        /// 实例存储空间使用率，计算方式为：各个分片已经使用的磁盘大小的和/各个分片的磁盘大小的和。
        public let storageUsage: Float

        /// 日志存储空间大小，单位GB
        public let logStorage: Int64

        /// 产品类型ID
        public let pid: Int64

        /// 主DB可用区
        public let masterZone: String

        /// 从DB可用区
        public let slaveZones: [String]

        /// 分片信息
        public let shards: [ShardBriefInfo]

        /// 内网IPv6
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip6: String?

        /// 实例Cpu核数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cpu: Int64?

        /// 实例QPS
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qps: Int64?

        /// DB引擎
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbEngine: String?

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

        /// 实例是否支持设置用户连接数限制，内核为10.1暂不支持。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isMaxUserConnectionsSupported: Bool?

        /// 对外显示的数据库版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbVersionId: String?

        /// 加密状态, 0-未开启，1-已开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptStatus: Int64?

        /// 独享集群类型，0:公有云, 1:金融围笼, 2:CDC集群
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exclusterType: Int64?

        /// VPC就近访问
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rsAccessStrategy: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case vip = "Vip"
            case vport = "Vport"
            case nodeCount = "NodeCount"
            case region = "Region"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case wanStatus = "WanStatus"
            case wanDomain = "WanDomain"
            case wanVip = "WanVip"
            case wanPort = "WanPort"
            case projectId = "ProjectId"
            case autoRenewFlag = "AutoRenewFlag"
            case exclusterId = "ExclusterId"
            case payMode = "PayMode"
            case createTime = "CreateTime"
            case periodEndTime = "PeriodEndTime"
            case dbVersion = "DbVersion"
            case isAuditSupported = "IsAuditSupported"
            case isEncryptSupported = "IsEncryptSupported"
            case machine = "Machine"
            case memory = "Memory"
            case storage = "Storage"
            case storageUsage = "StorageUsage"
            case logStorage = "LogStorage"
            case pid = "Pid"
            case masterZone = "MasterZone"
            case slaveZones = "SlaveZones"
            case shards = "Shards"
            case vip6 = "Vip6"
            case cpu = "Cpu"
            case qps = "Qps"
            case dbEngine = "DbEngine"
            case ipv6Flag = "Ipv6Flag"
            case wanVipv6 = "WanVipv6"
            case wanStatusIpv6 = "WanStatusIpv6"
            case wanPortIpv6 = "WanPortIpv6"
            case resourceTags = "ResourceTags"
            case dcnFlag = "DcnFlag"
            case dcnStatus = "DcnStatus"
            case dcnDstNum = "DcnDstNum"
            case instanceType = "InstanceType"
            case isMaxUserConnectionsSupported = "IsMaxUserConnectionsSupported"
            case dbVersionId = "DbVersionId"
            case encryptStatus = "EncryptStatus"
            case exclusterType = "ExclusterType"
            case rsAccessStrategy = "RsAccessStrategy"
            case requestId = "RequestId"
        }
    }

    /// 获取DCDB实例详情
    ///
    /// 本接口（DescribeDCDBInstanceDetail）用于获取DCDB实例详情
    @inlinable
    public func describeDCDBInstanceDetail(_ input: DescribeDCDBInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBInstanceDetailResponse> {
        self.client.execute(action: "DescribeDCDBInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DCDB实例详情
    ///
    /// 本接口（DescribeDCDBInstanceDetail）用于获取DCDB实例详情
    @inlinable
    public func describeDCDBInstanceDetail(_ input: DescribeDCDBInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBInstanceDetailResponse {
        try await self.client.execute(action: "DescribeDCDBInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DCDB实例详情
    ///
    /// 本接口（DescribeDCDBInstanceDetail）用于获取DCDB实例详情
    @inlinable
    public func describeDCDBInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBInstanceDetailResponse> {
        self.describeDCDBInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DCDB实例详情
    ///
    /// 本接口（DescribeDCDBInstanceDetail）用于获取DCDB实例详情
    @inlinable
    public func describeDCDBInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBInstanceDetailResponse {
        try await self.describeDCDBInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
