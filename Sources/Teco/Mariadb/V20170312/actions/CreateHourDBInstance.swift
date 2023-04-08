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

extension Mariadb {
    /// CreateHourDBInstance请求参数结构体
    public struct CreateHourDBInstanceRequest: TCRequestModel {
        /// 节点可用区分布，最多可填两个可用区。
        public let zones: [String]

        /// 节点个数
        public let nodeCount: Int64

        /// 内存大小，单位：GB
        public let memory: Int64

        /// 储存大小，单位：GB
        public let storage: Int64

        /// 购买实例数量
        public let count: Int64?

        /// 项目ID，不传表示默认项目
        public let projectId: Int64?

        /// 统一网络ID，不传表示基础网络
        public let vpcId: String?

        /// 统一子网ID，VpcId有值时需填写
        public let subnetId: String?

        /// 数据库引擎版本，当前可选：8.0，5.7，10.1，10.0。
        public let dbVersionId: String?

        /// 自定义实例名称
        public let instanceName: String?

        /// 安全组ID，不传表示不绑定安全组
        public let securityGroupIds: [String]?

        /// 是否支持IPv6
        public let ipv6Flag: Int64?

        /// 标签键值对数组
        public let resourceTags: [ResourceTag]?

        /// DCN源地域
        public let dcnRegion: String?

        /// DCN源实例ID
        public let dcnInstanceId: String?

        /// 参数列表。本接口的可选值为：
        /// character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），
        /// innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化，默认为强同步可退化）。
        public let initParams: [DBParamValue]?

        /// 回档源实例ID
        public let rollbackInstanceId: String?

        /// 回档时间
        public let rollbackTime: String?

        public init(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, initParams: [DBParamValue]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil) {
            self.zones = zones
            self.nodeCount = nodeCount
            self.memory = memory
            self.storage = storage
            self.count = count
            self.projectId = projectId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.dbVersionId = dbVersionId
            self.instanceName = instanceName
            self.securityGroupIds = securityGroupIds
            self.ipv6Flag = ipv6Flag
            self.resourceTags = resourceTags
            self.dcnRegion = dcnRegion
            self.dcnInstanceId = dcnInstanceId
            self.initParams = initParams
            self.rollbackInstanceId = rollbackInstanceId
            self.rollbackTime = rollbackTime
        }

        enum CodingKeys: String, CodingKey {
            case zones = "Zones"
            case nodeCount = "NodeCount"
            case memory = "Memory"
            case storage = "Storage"
            case count = "Count"
            case projectId = "ProjectId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case dbVersionId = "DbVersionId"
            case instanceName = "InstanceName"
            case securityGroupIds = "SecurityGroupIds"
            case ipv6Flag = "Ipv6Flag"
            case resourceTags = "ResourceTags"
            case dcnRegion = "DcnRegion"
            case dcnInstanceId = "DcnInstanceId"
            case initParams = "InitParams"
            case rollbackInstanceId = "RollbackInstanceId"
            case rollbackTime = "RollbackTime"
        }
    }

    /// CreateHourDBInstance返回参数结构体
    public struct CreateHourDBInstanceResponse: TCResponseModel {
        /// 订单号。可以据此调用 DescribeOrders
        ///  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        public let dealName: String

        /// 订单对应的实例 ID 列表，如果此处没有返回实例 ID，可以通过订单查询接口获取。还可通过实例查询接口查询实例是否创建完成。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceIds: [String]?

        /// 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/237/16177)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case instanceIds = "InstanceIds"
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建后付费实例
    @inlinable
    public func createHourDBInstance(_ input: CreateHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHourDBInstanceResponse> {
        self.client.execute(action: "CreateHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建后付费实例
    @inlinable
    public func createHourDBInstance(_ input: CreateHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHourDBInstanceResponse {
        try await self.client.execute(action: "CreateHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建后付费实例
    @inlinable
    public func createHourDBInstance(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, initParams: [DBParamValue]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHourDBInstanceResponse> {
        self.createHourDBInstance(.init(zones: zones, nodeCount: nodeCount, memory: memory, storage: storage, count: count, projectId: projectId, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, instanceName: instanceName, securityGroupIds: securityGroupIds, ipv6Flag: ipv6Flag, resourceTags: resourceTags, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId, initParams: initParams, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }

    /// 创建后付费实例
    @inlinable
    public func createHourDBInstance(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, initParams: [DBParamValue]? = nil, rollbackInstanceId: String? = nil, rollbackTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHourDBInstanceResponse {
        try await self.createHourDBInstance(.init(zones: zones, nodeCount: nodeCount, memory: memory, storage: storage, count: count, projectId: projectId, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, instanceName: instanceName, securityGroupIds: securityGroupIds, ipv6Flag: ipv6Flag, resourceTags: resourceTags, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId, initParams: initParams, rollbackInstanceId: rollbackInstanceId, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }
}
