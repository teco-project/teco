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

extension Mongodb {
    /// 客户端连接信息，包括客户端IP和连接数
    public struct ClientConnection: TCOutputModel {
        /// 连接的客户端IP
        public let ip: String

        /// 对应客户端IP的连接数
        public let count: UInt64

        enum CodingKeys: String, CodingKey {
            case ip = "IP"
            case count = "Count"
        }
    }

    /// 实例信息
    public struct MongoDBInstance: TCOutputModel {
        /// 实例ID
        public let instanceId: String

        /// 地域信息
        public let region: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case region = "Region"
        }
    }

    /// 实例详情
    public struct MongoDBInstanceDetail: TCOutputModel {
        /// 实例ID
        public let instanceId: String

        /// 实例名称
        public let instanceName: String

        /// 付费类型，可能的返回值：1-包年包月；0-按量计费
        public let payMode: UInt64

        /// 项目ID
        public let projectId: UInt64

        /// 集群类型，可能的返回值：0-副本集实例，1-分片实例，
        public let clusterType: UInt64

        /// 地域信息
        public let region: String

        /// 可用区信息
        public let zone: String

        /// 网络类型，可能的返回值：0-基础网络，1-私有网络
        public let netType: UInt64

        /// 私有网络的ID
        public let vpcId: String

        /// 私有网络的子网ID
        public let subnetId: String

        /// 实例状态，可能的返回值：0-待初始化，1-流程处理中，2-运行中，-2-实例已过期
        public let status: Int64

        /// 实例IP
        public let vip: String

        /// 端口号
        public let vport: UInt64

        /// 实例创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 实例到期时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadLine: Date

        /// 实例版本信息
        public let mongoVersion: String

        /// 实例内存规格，单位为MB
        public let memory: UInt64

        /// 实例磁盘规格，单位为MB
        public let volume: UInt64

        /// 实例CPU核心数
        public let cpuNum: UInt64

        /// 实例机器类型
        public let machineType: String

        /// 实例从节点数
        public let secondaryNum: UInt64

        /// 实例分片数
        public let replicationSetNum: UInt64

        /// 实例自动续费标志，可能的返回值：0-手动续费，1-自动续费，2-确认不续费
        public let autoRenewFlag: Int64

        /// 已用容量，单位MB
        public let usedVolume: UInt64

        /// 维护窗口起始时间
        public let maintenanceStart: String

        /// 维护窗口结束时间
        public let maintenanceEnd: String

        /// 分片信息
        public let replicaSets: [MongodbShardInfo]

        /// 只读实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let readonlyInstances: [MongoDBInstance]?

        /// 灾备实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let standbyInstances: [MongoDBInstance]?

        /// 临时实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cloneInstances: [MongoDBInstance]?

        /// 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let relatedInstance: MongoDBInstance?

        /// 实例标签信息集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [TagInfo]?

        /// 实例标记
        public let instanceVer: UInt64

        /// 实例标记
        public let clusterVer: UInt64

        /// 协议信息，可能的返回值：1-mongodb，2-dynamodb
        public let `protocol`: UInt64

        /// 实例类型，可能的返回值，1-正式实例，2-临时实例，3-只读实例，4-灾备实例
        public let instanceType: UInt64

        /// 实例状态描述
        public let instanceStatusDesc: String

        /// 实例对应的物理实例ID，回档并替换过的实例有不同的InstanceId和RealInstanceId，从barad获取监控数据等场景下需要用物理id获取
        public let realInstanceId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case payMode = "PayMode"
            case projectId = "ProjectId"
            case clusterType = "ClusterType"
            case region = "Region"
            case zone = "Zone"
            case netType = "NetType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case status = "Status"
            case vip = "Vip"
            case vport = "Vport"
            case createTime = "CreateTime"
            case deadLine = "DeadLine"
            case mongoVersion = "MongoVersion"
            case memory = "Memory"
            case volume = "Volume"
            case cpuNum = "CpuNum"
            case machineType = "MachineType"
            case secondaryNum = "SecondaryNum"
            case replicationSetNum = "ReplicationSetNum"
            case autoRenewFlag = "AutoRenewFlag"
            case usedVolume = "UsedVolume"
            case maintenanceStart = "MaintenanceStart"
            case maintenanceEnd = "MaintenanceEnd"
            case replicaSets = "ReplicaSets"
            case readonlyInstances = "ReadonlyInstances"
            case standbyInstances = "StandbyInstances"
            case cloneInstances = "CloneInstances"
            case relatedInstance = "RelatedInstance"
            case tags = "Tags"
            case instanceVer = "InstanceVer"
            case clusterVer = "ClusterVer"
            case `protocol` = "Protocol"
            case instanceType = "InstanceType"
            case instanceStatusDesc = "InstanceStatusDesc"
            case realInstanceId = "RealInstanceId"
        }
    }

    /// 实例分片详情
    public struct MongodbShardInfo: TCOutputModel {
        /// 分片已使用容量
        public let usedVolume: Float

        /// 分片ID
        public let replicaSetId: String

        /// 分片名
        public let replicaSetName: String

        /// 分片内存规格，单位为MB
        public let memory: UInt64

        /// 分片磁盘规格，单位为MB
        public let volume: UInt64

        /// 分片Oplog大小，单位为MB
        public let oplogSize: UInt64

        /// 分片从节点数
        public let secondaryNum: UInt64

        /// 分片物理ID
        public let realReplicaSetId: String

        enum CodingKeys: String, CodingKey {
            case usedVolume = "UsedVolume"
            case replicaSetId = "ReplicaSetId"
            case replicaSetName = "ReplicaSetName"
            case memory = "Memory"
            case volume = "Volume"
            case oplogSize = "OplogSize"
            case secondaryNum = "SecondaryNum"
            case realReplicaSetId = "RealReplicaSetId"
        }
    }

    /// mongodb售卖规格
    public struct SpecItem: TCInputModel {
        /// 规格信息标识
        public let specCode: String

        /// 规格有效标志，取值：0-停止售卖，1-开放售卖
        public let status: UInt64

        /// 机器类型，取值：0-HIO，4-HIO10G
        public let machineType: String

        /// cpu核心数
        public let cpu: UInt64

        /// 内存规格，单位为MB
        public let memory: UInt64

        /// 默认磁盘规格，单位MB
        public let defaultStorage: UInt64

        /// 最大磁盘规格，单位MB
        public let maxStorage: UInt64

        /// 最小磁盘规格，单位MB
        public let minStorage: UInt64

        /// 可承载qps信息
        public let qps: UInt64

        /// 连接数限制
        public let conns: UInt64

        /// 实例mongodb版本信息
        public let mongoVersionCode: String

        /// 实例mongodb版本号
        public let mongoVersionValue: UInt64

        /// 实例mongodb版本号（短）
        public let version: String

        /// 存储引擎
        public let engineName: String

        /// 集群类型，取值：1-分片集群，0-副本集集群
        public let clusterType: UInt64

        /// 最小副本集从节点数
        public let minNodeNum: UInt64

        /// 最大副本集从节点数
        public let maxNodeNum: UInt64

        /// 最小分片数
        public let minReplicateSetNum: UInt64

        /// 最大分片数
        public let maxReplicateSetNum: UInt64

        /// 最小分片从节点数
        public let minReplicateSetNodeNum: UInt64

        /// 最大分片从节点数
        public let maxReplicateSetNodeNum: UInt64

        public init(specCode: String, status: UInt64, machineType: String, cpu: UInt64, memory: UInt64, defaultStorage: UInt64, maxStorage: UInt64, minStorage: UInt64, qps: UInt64, conns: UInt64, mongoVersionCode: String, mongoVersionValue: UInt64, version: String, engineName: String, clusterType: UInt64, minNodeNum: UInt64, maxNodeNum: UInt64, minReplicateSetNum: UInt64, maxReplicateSetNum: UInt64, minReplicateSetNodeNum: UInt64, maxReplicateSetNodeNum: UInt64) {
            self.specCode = specCode
            self.status = status
            self.machineType = machineType
            self.cpu = cpu
            self.memory = memory
            self.defaultStorage = defaultStorage
            self.maxStorage = maxStorage
            self.minStorage = minStorage
            self.qps = qps
            self.conns = conns
            self.mongoVersionCode = mongoVersionCode
            self.mongoVersionValue = mongoVersionValue
            self.version = version
            self.engineName = engineName
            self.clusterType = clusterType
            self.minNodeNum = minNodeNum
            self.maxNodeNum = maxNodeNum
            self.minReplicateSetNum = minReplicateSetNum
            self.maxReplicateSetNum = maxReplicateSetNum
            self.minReplicateSetNodeNum = minReplicateSetNodeNum
            self.maxReplicateSetNodeNum = maxReplicateSetNodeNum
        }

        enum CodingKeys: String, CodingKey {
            case specCode = "SpecCode"
            case status = "Status"
            case machineType = "MachineType"
            case cpu = "Cpu"
            case memory = "Memory"
            case defaultStorage = "DefaultStorage"
            case maxStorage = "MaxStorage"
            case minStorage = "MinStorage"
            case qps = "Qps"
            case conns = "Conns"
            case mongoVersionCode = "MongoVersionCode"
            case mongoVersionValue = "MongoVersionValue"
            case version = "Version"
            case engineName = "EngineName"
            case clusterType = "ClusterType"
            case minNodeNum = "MinNodeNum"
            case maxNodeNum = "MaxNodeNum"
            case minReplicateSetNum = "MinReplicateSetNum"
            case maxReplicateSetNum = "MaxReplicateSetNum"
            case minReplicateSetNodeNum = "MinReplicateSetNodeNum"
            case maxReplicateSetNodeNum = "MaxReplicateSetNodeNum"
        }
    }

    /// 实例规格信息
    public struct SpecificationInfo: TCOutputModel {
        /// 地域信息
        public let region: String

        /// 可用区信息
        public let zone: String

        /// 售卖规格信息
        public let specItems: [SpecItem]

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case zone = "Zone"
            case specItems = "SpecItems"
        }
    }

    /// 实例标签信息
    public struct TagInfo: TCOutputModel {
        /// 标签Key值
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
}
