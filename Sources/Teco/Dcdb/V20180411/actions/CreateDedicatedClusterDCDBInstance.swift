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

extension Dcdb {
    /// CreateDedicatedClusterDCDBInstance请求参数结构体
    public struct CreateDedicatedClusterDCDBInstanceRequest: TCRequestModel {
        /// 分配实例个数
        public let goodsNum: Int64

        /// 分片数量
        public let shardNum: Int64

        /// 分片內存大小, 单位GB
        public let shardMemory: Int64

        /// 分片磁盘大小, 单位GB
        public let shardStorage: Int64

        /// 独享集群集群uuid
        public let clusterId: String

        /// （废弃）可用区
        public let zone: String?

        /// 项目ID
        public let projectId: Int64?

        /// （废弃）cpu大小，单位：核
        public let cpu: Int64?

        /// 网络ID
        public let vpcId: String?

        /// 子网ID
        public let subnetId: String?

        /// （废弃）分片机型
        public let shardMachine: String?

        /// 分片的节点个数
        public let shardNodeNum: Int64?

        /// （废弃）节点cpu核数，单位：1/100核
        public let shardNodeCpu: Int64?

        /// （废弃）节点內存大小，单位：GB
        public let shardNodeMemory: Int64?

        /// （废弃）节点磁盘大小，单位：GB
        public let shardNodeStorage: Int64?

        /// db版本
        public let dbVersionId: String?

        /// 安全组ID
        public let securityGroupId: String?

        /// 安全组ID列表
        public let securityGroupIds: [String]?

        /// DCN源实例ID
        public let dcnInstanceId: String?

        /// DCN源实例地域名
        public let dcnRegion: String?

        /// 自定义实例名称
        public let instanceName: String?

        /// 标签
        public let resourceTags: [ResourceTag]?

        /// 支持IPv6标志：1 支持， 0 不支持
        public let ipv6Flag: Int64?

        /// （废弃）Pid，可通过获取独享集群售卖配置接口得到
        public let pid: Int64?

        /// 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        public let initParams: [DBParamValue]?

        /// 指定主节点uuid，不填随机分配
        public let masterHostId: String?

        /// 指定从节点uuid，不填随机分配
        public let slaveHostIds: [String]?

        /// 需要回档的源实例ID
        public let rollbackInstanceId: String?

        /// 回档时间
        public let rollbackTime: String?

        public init(goodsNum: Int64, shardNum: Int64, shardMemory: Int64, shardStorage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, cpu: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, shardMachine: String? = nil, shardNodeNum: Int64? = nil, shardNodeCpu: Int64? = nil, shardNodeMemory: Int64? = nil, shardNodeStorage: Int64? = nil, dbVersionId: String? = nil, securityGroupId: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, pid: Int64? = nil, initParams: [DBParamValue]? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil) {
            self.goodsNum = goodsNum
            self.shardNum = shardNum
            self.shardMemory = shardMemory
            self.shardStorage = shardStorage
            self.clusterId = clusterId
            self.zone = zone
            self.projectId = projectId
            self.cpu = cpu
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.shardMachine = shardMachine
            self.shardNodeNum = shardNodeNum
            self.shardNodeCpu = shardNodeCpu
            self.shardNodeMemory = shardNodeMemory
            self.shardNodeStorage = shardNodeStorage
            self.dbVersionId = dbVersionId
            self.securityGroupId = securityGroupId
            self.securityGroupIds = securityGroupIds
            self.dcnInstanceId = dcnInstanceId
            self.dcnRegion = dcnRegion
            self.instanceName = instanceName
            self.resourceTags = resourceTags
            self.ipv6Flag = ipv6Flag
            self.pid = pid
            self.initParams = initParams
            self.masterHostId = masterHostId
            self.slaveHostIds = slaveHostIds
            self.rollbackInstanceId = rollbackInstanceId
            self.rollbackTime = rollbackTime
        }

        enum CodingKeys: String, CodingKey {
            case goodsNum = "GoodsNum"
            case shardNum = "ShardNum"
            case shardMemory = "ShardMemory"
            case shardStorage = "ShardStorage"
            case clusterId = "ClusterId"
            case zone = "Zone"
            case projectId = "ProjectId"
            case cpu = "Cpu"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case shardMachine = "ShardMachine"
            case shardNodeNum = "ShardNodeNum"
            case shardNodeCpu = "ShardNodeCpu"
            case shardNodeMemory = "ShardNodeMemory"
            case shardNodeStorage = "ShardNodeStorage"
            case dbVersionId = "DbVersionId"
            case securityGroupId = "SecurityGroupId"
            case securityGroupIds = "SecurityGroupIds"
            case dcnInstanceId = "DcnInstanceId"
            case dcnRegion = "DcnRegion"
            case instanceName = "InstanceName"
            case resourceTags = "ResourceTags"
            case ipv6Flag = "Ipv6Flag"
            case pid = "Pid"
            case initParams = "InitParams"
            case masterHostId = "MasterHostId"
            case slaveHostIds = "SlaveHostIds"
            case rollbackInstanceId = "RollbackInstanceId"
            case rollbackTime = "RollbackTime"
        }
    }

    /// CreateDedicatedClusterDCDBInstance返回参数结构体
    public struct CreateDedicatedClusterDCDBInstanceResponse: TCResponseModel {
        /// 分配资源ID数组
        public let instanceIds: [String]

        /// 流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建TDSQL独享集群实例
    @inlinable
    public func createDedicatedClusterDCDBInstance(_ input: CreateDedicatedClusterDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterDCDBInstanceResponse> {
        self.client.execute(action: "CreateDedicatedClusterDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建TDSQL独享集群实例
    @inlinable
    public func createDedicatedClusterDCDBInstance(_ input: CreateDedicatedClusterDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterDCDBInstanceResponse {
        try await self.client.execute(action: "CreateDedicatedClusterDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建TDSQL独享集群实例
    @inlinable
    public func createDedicatedClusterDCDBInstance(goodsNum: Int64, shardNum: Int64, shardMemory: Int64, shardStorage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, cpu: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, shardMachine: String? = nil, shardNodeNum: Int64? = nil, shardNodeCpu: Int64? = nil, shardNodeMemory: Int64? = nil, shardNodeStorage: Int64? = nil, dbVersionId: String? = nil, securityGroupId: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, pid: Int64? = nil, initParams: [DBParamValue]? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterDCDBInstanceResponse> {
        self.createDedicatedClusterDCDBInstance(.init(goodsNum: goodsNum, shardNum: shardNum, shardMemory: shardMemory, shardStorage: shardStorage, clusterId: clusterId, zone: zone, projectId: projectId, cpu: cpu, vpcId: vpcId, subnetId: subnetId, shardMachine: shardMachine, shardNodeNum: shardNodeNum, shardNodeCpu: shardNodeCpu, shardNodeMemory: shardNodeMemory, shardNodeStorage: shardNodeStorage, dbVersionId: dbVersionId, securityGroupId: securityGroupId, securityGroupIds: securityGroupIds, dcnInstanceId: dcnInstanceId, dcnRegion: dcnRegion, instanceName: instanceName, resourceTags: resourceTags, ipv6Flag: ipv6Flag, pid: pid, initParams: initParams, masterHostId: masterHostId, slaveHostIds: slaveHostIds, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }

    /// 创建TDSQL独享集群实例
    @inlinable
    public func createDedicatedClusterDCDBInstance(goodsNum: Int64, shardNum: Int64, shardMemory: Int64, shardStorage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, cpu: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, shardMachine: String? = nil, shardNodeNum: Int64? = nil, shardNodeCpu: Int64? = nil, shardNodeMemory: Int64? = nil, shardNodeStorage: Int64? = nil, dbVersionId: String? = nil, securityGroupId: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, pid: Int64? = nil, initParams: [DBParamValue]? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterDCDBInstanceResponse {
        try await self.createDedicatedClusterDCDBInstance(.init(goodsNum: goodsNum, shardNum: shardNum, shardMemory: shardMemory, shardStorage: shardStorage, clusterId: clusterId, zone: zone, projectId: projectId, cpu: cpu, vpcId: vpcId, subnetId: subnetId, shardMachine: shardMachine, shardNodeNum: shardNodeNum, shardNodeCpu: shardNodeCpu, shardNodeMemory: shardNodeMemory, shardNodeStorage: shardNodeStorage, dbVersionId: dbVersionId, securityGroupId: securityGroupId, securityGroupIds: securityGroupIds, dcnInstanceId: dcnInstanceId, dcnRegion: dcnRegion, instanceName: instanceName, resourceTags: resourceTags, ipv6Flag: ipv6Flag, pid: pid, initParams: initParams, masterHostId: masterHostId, slaveHostIds: slaveHostIds, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }
}