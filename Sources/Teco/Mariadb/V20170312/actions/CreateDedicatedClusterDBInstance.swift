//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mariadb {
    /// CreateDedicatedClusterDBInstance请求参数结构体
    public struct CreateDedicatedClusterDBInstanceRequest: TCRequestModel {
        /// 分配实例个数
        public let goodsNum: Int64

        /// 內存大小，单位GB
        public let memory: Int64

        /// 磁盘大小，单位GB
        public let storage: Int64

        /// 独享集群集群uuid
        public let clusterId: String

        /// （废弃）可用区
        public let zone: String?

        /// 项目ID
        public let projectId: Int64?

        /// （废弃）Pid，可通过获取独享集群售卖配置接口得到
        public let pid: Int64?

        /// （废弃）机型
        public let machine: String?

        /// 网络Id
        public let vpcId: String?

        /// 子网Id
        public let subnetId: String?

        /// db类型，不传默认0
        public let dbVersionId: String?

        /// （废弃）是否手动指定一组服务器分配, 运维使用
        public let manual: Int64?

        /// （废弃）DeviceNo参数
        public let deviceNo: String?

        /// 安全组ID
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

        /// 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        public let initParams: [DBParamValue]?

        /// 实例节点数
        public let nodeNum: Int64?

        /// 指定主节点uuid，不填随机分配
        public let masterHostId: String?

        /// 指定从节点uuid，不填随机分配
        public let slaveHostIds: [String]?

        /// 需要回档的源实例ID
        public let rollbackInstanceId: String?

        /// 回档时间
        public let rollbackTime: String?

        public init(goodsNum: Int64, memory: Int64, storage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, pid: Int64? = nil, machine: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, manual: Int64? = nil, deviceNo: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, initParams: [DBParamValue]? = nil, nodeNum: Int64? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil) {
            self.goodsNum = goodsNum
            self.memory = memory
            self.storage = storage
            self.clusterId = clusterId
            self.zone = zone
            self.projectId = projectId
            self.pid = pid
            self.machine = machine
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.dbVersionId = dbVersionId
            self.manual = manual
            self.deviceNo = deviceNo
            self.securityGroupIds = securityGroupIds
            self.dcnInstanceId = dcnInstanceId
            self.dcnRegion = dcnRegion
            self.instanceName = instanceName
            self.resourceTags = resourceTags
            self.ipv6Flag = ipv6Flag
            self.initParams = initParams
            self.nodeNum = nodeNum
            self.masterHostId = masterHostId
            self.slaveHostIds = slaveHostIds
            self.rollbackInstanceId = rollbackInstanceId
            self.rollbackTime = rollbackTime
        }

        enum CodingKeys: String, CodingKey {
            case goodsNum = "GoodsNum"
            case memory = "Memory"
            case storage = "Storage"
            case clusterId = "ClusterId"
            case zone = "Zone"
            case projectId = "ProjectId"
            case pid = "Pid"
            case machine = "Machine"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case dbVersionId = "DbVersionId"
            case manual = "Manual"
            case deviceNo = "DeviceNo"
            case securityGroupIds = "SecurityGroupIds"
            case dcnInstanceId = "DcnInstanceId"
            case dcnRegion = "DcnRegion"
            case instanceName = "InstanceName"
            case resourceTags = "ResourceTags"
            case ipv6Flag = "Ipv6Flag"
            case initParams = "InitParams"
            case nodeNum = "NodeNum"
            case masterHostId = "MasterHostId"
            case slaveHostIds = "SlaveHostIds"
            case rollbackInstanceId = "RollbackInstanceId"
            case rollbackTime = "RollbackTime"
        }
    }

    /// CreateDedicatedClusterDBInstance返回参数结构体
    public struct CreateDedicatedClusterDBInstanceResponse: TCResponseModel {
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

    /// 创建独享集群Mariadb实例
    @inlinable
    public func createDedicatedClusterDBInstance(_ input: CreateDedicatedClusterDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterDBInstanceResponse> {
        self.client.execute(action: "CreateDedicatedClusterDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建独享集群Mariadb实例
    @inlinable
    public func createDedicatedClusterDBInstance(_ input: CreateDedicatedClusterDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterDBInstanceResponse {
        try await self.client.execute(action: "CreateDedicatedClusterDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建独享集群Mariadb实例
    @inlinable
    public func createDedicatedClusterDBInstance(goodsNum: Int64, memory: Int64, storage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, pid: Int64? = nil, machine: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, manual: Int64? = nil, deviceNo: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, initParams: [DBParamValue]? = nil, nodeNum: Int64? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterDBInstanceResponse> {
        self.createDedicatedClusterDBInstance(CreateDedicatedClusterDBInstanceRequest(goodsNum: goodsNum, memory: memory, storage: storage, clusterId: clusterId, zone: zone, projectId: projectId, pid: pid, machine: machine, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, manual: manual, deviceNo: deviceNo, securityGroupIds: securityGroupIds, dcnInstanceId: dcnInstanceId, dcnRegion: dcnRegion, instanceName: instanceName, resourceTags: resourceTags, ipv6Flag: ipv6Flag, initParams: initParams, nodeNum: nodeNum, masterHostId: masterHostId, slaveHostIds: slaveHostIds, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }

    /// 创建独享集群Mariadb实例
    @inlinable
    public func createDedicatedClusterDBInstance(goodsNum: Int64, memory: Int64, storage: Int64, clusterId: String, zone: String? = nil, projectId: Int64? = nil, pid: Int64? = nil, machine: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, manual: Int64? = nil, deviceNo: String? = nil, securityGroupIds: [String]? = nil, dcnInstanceId: String? = nil, dcnRegion: String? = nil, instanceName: String? = nil, resourceTags: [ResourceTag]? = nil, ipv6Flag: Int64? = nil, initParams: [DBParamValue]? = nil, nodeNum: Int64? = nil, masterHostId: String? = nil, slaveHostIds: [String]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterDBInstanceResponse {
        try await self.createDedicatedClusterDBInstance(CreateDedicatedClusterDBInstanceRequest(goodsNum: goodsNum, memory: memory, storage: storage, clusterId: clusterId, zone: zone, projectId: projectId, pid: pid, machine: machine, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, manual: manual, deviceNo: deviceNo, securityGroupIds: securityGroupIds, dcnInstanceId: dcnInstanceId, dcnRegion: dcnRegion, instanceName: instanceName, resourceTags: resourceTags, ipv6Flag: ipv6Flag, initParams: initParams, nodeNum: nodeNum, masterHostId: masterHostId, slaveHostIds: slaveHostIds, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }
}
