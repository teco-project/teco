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

import Logging
import NIOCore
import TecoCore

extension Mongodb {
    /// CreateDBInstance请求参数结构体
    public struct CreateDBInstanceRequest: TCRequest {
        /// 指每个副本集内节点个数。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        public let nodeNum: UInt64

        /// 实例内存大小，单位：GB。
        public let memory: UInt64

        /// 实例硬盘大小，单位：GB。
        public let volume: UInt64

        /// 指版本信息。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        /// - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        /// - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        /// - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        /// - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        public let mongoVersion: String

        /// 实例数量, 最小值1，最大值为10。
        public let goodsNum: UInt64

        /// 可用区信息，输入格式如：ap-guangzhou-2。
        /// - 具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        /// - 该参数为主可用区，如果多可用区部署，Zone必须是AvailabilityZoneList中的一个。
        public let zone: String

        /// 实例时长，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        public let period: UInt64

        /// 机器类型。
        /// - HIO：高IO型。
        /// - HIO10G：高IO万兆。
        public let machineCode: String

        /// 实例架构类型。
        /// - REPLSET：副本集。
        /// - SHARD：分片集群。
        public let clusterType: String

        /// 指副本集数量。
        /// - 创建副本集实例，该参数只能为1。
        /// - 创建分片实例，指分片的数量。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        public let replicateSetNum: UInt64

        /// 项目ID。若不设置该参数，则为默认项目。
        public let projectId: Int64?

        /// 私有网络ID。如果不设置该参数，则默认选择基础网络。
        public let vpcId: String?

        /// 私有网络下的子网 ID，如果配置参数 VpcId，则 SubnetId必须配置。
        public let subnetId: String?

        /// 实例密码。自定义密码长度为8-32个字符，至少包含字母、数字和字符（!@#%^*()_）中的两种。
        public let password: String?

        /// 实例标签信息。
        public let tags: [TagInfo]?

        /// 自动续费标记。
        /// - 0：不自动续费。默认为不自动续费。
        /// - 1：自动续费。
        public let autoRenewFlag: UInt64?

        /// 是否自动选择代金券。
        /// - 1：是。
        /// - 0：否。默认为0。
        public let autoVoucher: UInt64?

        /// 实例类型。
        /// - 1：正式实例。
        /// - 3：只读实例。
        /// - 4：灾备实例。
        public let clone: Int64?

        /// 父实例 ID。当参数**Clone**为3或者4时，即实例为只读或灾备实例时，该参数必须配置。
        public let father: String?

        /// 安全组。
        public let securityGroup: [String]?

        /// 克隆实例回档时间。
        /// - 若为克隆实例，则必须配置该参数。输入格式示例：2021-08-13 16:30:00。
        /// - 回档时间范围：仅能回档7天内时间点的数据。
        public let restoreTime: String?

        /// 实例名称。仅支持长度为60个字符的中文、英文、数字、下划线_、分隔符- 。
        public let instanceName: String?

        /// 多可用区部署的节点列表。具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)获取。
        /// - 多可用区部署节点只能部署在3个不同可用区。不支持将集群的大多数节点部署在同一个可用区。例如：3节点集群不支持2个节点部署在同一个区。
        /// - 不支持4.2及以上版本。
        /// - 不支持只读灾备实例。
        /// - 不能选择基础网络。
        public let availabilityZoneList: [String]?

        /// Mongos CPU 核数，购买MongoDB 4.2 及以上WiredTiger存储引擎版本的分片集群时，必须填写。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        public let mongosCpu: UInt64?

        /// Mongos 内存大小。购买MongoDB 4.2 及以上WiredTiger存储引擎版本的分片集群时，必须填写。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        public let mongosMemory: UInt64?

        /// Mongos 数量。购买MongoDB 4.2 及以上WiredTiger存储引擎版本的分片集群时，必须填写。具体售卖规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。为了保障高可用，取值范围为[3,32]。
        public let mongosNodeNum: UInt64?

        /// 只读节点数量，取值范围[0,5]。
        public let readonlyNodeNum: UInt64?

        /// 指只读节点所属可用区。跨可用区部署实例，参数**ReadonlyNodeNum**不为**0**时，必须配置该参数。
        public let readonlyNodeAvailabilityZoneList: [String]?

        /// Hidden节点所属可用区。跨可用区部署实例，必须配置该参数。
        public let hiddenZone: String?

        public init(nodeNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, goodsNum: UInt64, zone: String, period: UInt64, machineCode: String, clusterType: String, replicateSetNum: UInt64, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, tags: [TagInfo]? = nil, autoRenewFlag: UInt64? = nil, autoVoucher: UInt64? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil, readonlyNodeNum: UInt64? = nil, readonlyNodeAvailabilityZoneList: [String]? = nil, hiddenZone: String? = nil) {
            self.nodeNum = nodeNum
            self.memory = memory
            self.volume = volume
            self.mongoVersion = mongoVersion
            self.goodsNum = goodsNum
            self.zone = zone
            self.period = period
            self.machineCode = machineCode
            self.clusterType = clusterType
            self.replicateSetNum = replicateSetNum
            self.projectId = projectId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.password = password
            self.tags = tags
            self.autoRenewFlag = autoRenewFlag
            self.autoVoucher = autoVoucher
            self.clone = clone
            self.father = father
            self.securityGroup = securityGroup
            self.restoreTime = restoreTime
            self.instanceName = instanceName
            self.availabilityZoneList = availabilityZoneList
            self.mongosCpu = mongosCpu
            self.mongosMemory = mongosMemory
            self.mongosNodeNum = mongosNodeNum
            self.readonlyNodeNum = readonlyNodeNum
            self.readonlyNodeAvailabilityZoneList = readonlyNodeAvailabilityZoneList
            self.hiddenZone = hiddenZone
        }

        enum CodingKeys: String, CodingKey {
            case nodeNum = "NodeNum"
            case memory = "Memory"
            case volume = "Volume"
            case mongoVersion = "MongoVersion"
            case goodsNum = "GoodsNum"
            case zone = "Zone"
            case period = "Period"
            case machineCode = "MachineCode"
            case clusterType = "ClusterType"
            case replicateSetNum = "ReplicateSetNum"
            case projectId = "ProjectId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case password = "Password"
            case tags = "Tags"
            case autoRenewFlag = "AutoRenewFlag"
            case autoVoucher = "AutoVoucher"
            case clone = "Clone"
            case father = "Father"
            case securityGroup = "SecurityGroup"
            case restoreTime = "RestoreTime"
            case instanceName = "InstanceName"
            case availabilityZoneList = "AvailabilityZoneList"
            case mongosCpu = "MongosCpu"
            case mongosMemory = "MongosMemory"
            case mongosNodeNum = "MongosNodeNum"
            case readonlyNodeNum = "ReadonlyNodeNum"
            case readonlyNodeAvailabilityZoneList = "ReadonlyNodeAvailabilityZoneList"
            case hiddenZone = "HiddenZone"
        }
    }

    /// CreateDBInstance返回参数结构体
    public struct CreateDBInstanceResponse: TCResponse {
        /// 订单ID
        public let dealId: String

        /// 创建的实例ID列表
        public let instanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。
    @inlinable
    public func createDBInstance(nodeNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, goodsNum: UInt64, zone: String, period: UInt64, machineCode: String, clusterType: String, replicateSetNum: UInt64, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, tags: [TagInfo]? = nil, autoRenewFlag: UInt64? = nil, autoVoucher: UInt64? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil, readonlyNodeNum: UInt64? = nil, readonlyNodeAvailabilityZoneList: [String]? = nil, hiddenZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.createDBInstance(.init(nodeNum: nodeNum, memory: memory, volume: volume, mongoVersion: mongoVersion, goodsNum: goodsNum, zone: zone, period: period, machineCode: machineCode, clusterType: clusterType, replicateSetNum: replicateSetNum, projectId: projectId, vpcId: vpcId, subnetId: subnetId, password: password, tags: tags, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, clone: clone, father: father, securityGroup: securityGroup, restoreTime: restoreTime, instanceName: instanceName, availabilityZoneList: availabilityZoneList, mongosCpu: mongosCpu, mongosMemory: mongosMemory, mongosNodeNum: mongosNodeNum, readonlyNodeNum: readonlyNodeNum, readonlyNodeAvailabilityZoneList: readonlyNodeAvailabilityZoneList, hiddenZone: hiddenZone), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。
    @inlinable
    public func createDBInstance(nodeNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, goodsNum: UInt64, zone: String, period: UInt64, machineCode: String, clusterType: String, replicateSetNum: UInt64, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, tags: [TagInfo]? = nil, autoRenewFlag: UInt64? = nil, autoVoucher: UInt64? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil, readonlyNodeNum: UInt64? = nil, readonlyNodeAvailabilityZoneList: [String]? = nil, hiddenZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.createDBInstance(.init(nodeNum: nodeNum, memory: memory, volume: volume, mongoVersion: mongoVersion, goodsNum: goodsNum, zone: zone, period: period, machineCode: machineCode, clusterType: clusterType, replicateSetNum: replicateSetNum, projectId: projectId, vpcId: vpcId, subnetId: subnetId, password: password, tags: tags, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, clone: clone, father: father, securityGroup: securityGroup, restoreTime: restoreTime, instanceName: instanceName, availabilityZoneList: availabilityZoneList, mongosCpu: mongosCpu, mongosMemory: mongosMemory, mongosNodeNum: mongosNodeNum, readonlyNodeNum: readonlyNodeNum, readonlyNodeAvailabilityZoneList: readonlyNodeAvailabilityZoneList, hiddenZone: hiddenZone), region: region, logger: logger, on: eventLoop)
    }
}
