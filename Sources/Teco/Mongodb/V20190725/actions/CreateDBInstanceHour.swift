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

extension Mongodb {
    /// CreateDBInstanceHour请求参数结构体
    public struct CreateDBInstanceHourRequest: TCRequestModel {
        /// 实例内存大小，单位：GB
        public let memory: UInt64

        /// 实例硬盘大小，单位：GB
        public let volume: UInt64

        /// 副本集个数，创建副本集实例时，该参数必须设置为1；创建分片实例时，具体参照查询云数据库的售卖规格返回参数
        public let replicateSetNum: UInt64

        /// 每个副本集内节点个数，具体参照查询云数据库的售卖规格返回参数
        public let nodeNum: UInt64

        /// 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本
        public let mongoVersion: String

        /// 机器类型，HIO：高IO型；HIO10G：高IO万兆
        public let machineCode: String

        /// 实例数量，最小值1，最大值为10
        public let goodsNum: UInt64

        /// 可用区信息，格式如：ap-guangzhou-2。注：此参数填写的是主可用区，如果选择多可用区部署，Zone必须是AvailabilityZoneList中的一个
        public let zone: String

        /// 实例类型，REPLSET-副本集，SHARD-分片集群
        public let clusterType: String

        /// 私有网络ID，如果不设置该参数则默认选择基础网络
        public let vpcId: String?

        /// 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        public let subnetId: String?

        /// 实例密码，不设置该参数则默认密码规则为 实例ID+"@"+主账户uin。举例实例id为cmgo-higv73ed，uin为100000001，则默认密码为"cmgo-higv73ed@100000001"。密码必须是8-16位字符，且至少包含字母、数字和字符 !@#%^*() 中的两种
        public let password: String?

        /// 项目ID，不设置为默认项目
        public let projectId: Int64?

        /// 实例标签信息
        public let tags: [TagInfo]?

        /// 1:正式实例,2:临时实例,3:只读实例,4:灾备实例,5:克隆实例
        public let clone: Int64?

        /// 父实例Id，当Clone为3或者4时，这个必须填
        public let father: String?

        /// 安全组
        public let securityGroup: [String]?

        /// 克隆实例回档时间。若是克隆实例，则必须填写，示例：2021-08-13 16:30:00。注：只能回档7天内的时间点
        public let restoreTime: String?

        /// 实例名称。注：名称只支持长度为60个字符的中文、英文、数字、下划线_、分隔符-
        public let instanceName: String?

        /// 多可用区部署的节点列表，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：1、多可用区部署节点只能部署在3个不同可用区；2、为了保障跨可用区切换，不支持将集群的大多数节点部署在同一个可用区（如3节点集群不支持2个节点部署在同一个区）；3、不支持4.2及以上版本；4、不支持只读灾备实例；5、不能选择基础网络
        public let availabilityZoneList: [String]?

        /// mongos cpu数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        public let mongosCpu: UInt64?

        /// mongos 内存大小，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        public let mongosMemory: UInt64?

        /// mongos 数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：为了保障高可用，最低需要购买3个mongos，上限为32个
        public let mongosNodeNum: UInt64?

        public init(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, nodeNum: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, clusterType: String, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, projectId: Int64? = nil, tags: [TagInfo]? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil) {
            self.memory = memory
            self.volume = volume
            self.replicateSetNum = replicateSetNum
            self.nodeNum = nodeNum
            self.mongoVersion = mongoVersion
            self.machineCode = machineCode
            self.goodsNum = goodsNum
            self.zone = zone
            self.clusterType = clusterType
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.password = password
            self.projectId = projectId
            self.tags = tags
            self.clone = clone
            self.father = father
            self.securityGroup = securityGroup
            self.restoreTime = restoreTime
            self.instanceName = instanceName
            self.availabilityZoneList = availabilityZoneList
            self.mongosCpu = mongosCpu
            self.mongosMemory = mongosMemory
            self.mongosNodeNum = mongosNodeNum
        }

        enum CodingKeys: String, CodingKey {
            case memory = "Memory"
            case volume = "Volume"
            case replicateSetNum = "ReplicateSetNum"
            case nodeNum = "NodeNum"
            case mongoVersion = "MongoVersion"
            case machineCode = "MachineCode"
            case goodsNum = "GoodsNum"
            case zone = "Zone"
            case clusterType = "ClusterType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case password = "Password"
            case projectId = "ProjectId"
            case tags = "Tags"
            case clone = "Clone"
            case father = "Father"
            case securityGroup = "SecurityGroup"
            case restoreTime = "RestoreTime"
            case instanceName = "InstanceName"
            case availabilityZoneList = "AvailabilityZoneList"
            case mongosCpu = "MongosCpu"
            case mongosMemory = "MongosMemory"
            case mongosNodeNum = "MongosNodeNum"
        }
    }

    /// CreateDBInstanceHour返回参数结构体
    public struct CreateDBInstanceHourResponse: TCResponseModel {
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

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例。
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDBInstanceHourResponse > {
        self.client.execute(action: "CreateDBInstanceHour", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例。
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.client.execute(action: "CreateDBInstanceHour", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例。
    @inlinable
    public func createDBInstanceHour(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, nodeNum: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, clusterType: String, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, projectId: Int64? = nil, tags: [TagInfo]? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDBInstanceHourResponse > {
        self.createDBInstanceHour(CreateDBInstanceHourRequest(memory: memory, volume: volume, replicateSetNum: replicateSetNum, nodeNum: nodeNum, mongoVersion: mongoVersion, machineCode: machineCode, goodsNum: goodsNum, zone: zone, clusterType: clusterType, vpcId: vpcId, subnetId: subnetId, password: password, projectId: projectId, tags: tags, clone: clone, father: father, securityGroup: securityGroup, restoreTime: restoreTime, instanceName: instanceName, availabilityZoneList: availabilityZoneList, mongosCpu: mongosCpu, mongosMemory: mongosMemory, mongosNodeNum: mongosNodeNum), logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例。
    @inlinable
    public func createDBInstanceHour(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, nodeNum: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, clusterType: String, vpcId: String? = nil, subnetId: String? = nil, password: String? = nil, projectId: Int64? = nil, tags: [TagInfo]? = nil, clone: Int64? = nil, father: String? = nil, securityGroup: [String]? = nil, restoreTime: String? = nil, instanceName: String? = nil, availabilityZoneList: [String]? = nil, mongosCpu: UInt64? = nil, mongosMemory: UInt64? = nil, mongosNodeNum: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.createDBInstanceHour(CreateDBInstanceHourRequest(memory: memory, volume: volume, replicateSetNum: replicateSetNum, nodeNum: nodeNum, mongoVersion: mongoVersion, machineCode: machineCode, goodsNum: goodsNum, zone: zone, clusterType: clusterType, vpcId: vpcId, subnetId: subnetId, password: password, projectId: projectId, tags: tags, clone: clone, father: father, securityGroup: securityGroup, restoreTime: restoreTime, instanceName: instanceName, availabilityZoneList: availabilityZoneList, mongosCpu: mongosCpu, mongosMemory: mongosMemory, mongosNodeNum: mongosNodeNum), logger: logger, on: eventLoop)
    }
}
