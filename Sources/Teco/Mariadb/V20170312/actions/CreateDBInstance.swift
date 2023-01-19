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
    /// CreateDBInstance请求参数结构体
    public struct CreateDBInstanceRequest: TCRequestModel {
        /// 实例节点可用区分布，最多可填两个可用区。当分片规格为一主两从时，其中两个节点在第一个可用区。
        public let zones: [String]

        /// 节点个数大小，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let nodeCount: Int64

        /// 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let memory: Int64

        /// 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        public let storage: Int64

        /// 欲购买的时长，单位：月。
        public let period: Int64?

        /// 欲购买的数量，默认查询购买1个实例的价格。
        public let count: Int64?

        /// 是否自动使用代金券进行支付，默认不使用。
        public let autoVoucher: Bool?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 虚拟私有网络 ID，不传表示创建为基础网络
        public let vpcId: String?

        /// 虚拟私有网络子网 ID，VpcId 不为空时必填
        public let subnetId: String?

        /// 项目 ID，可以通过查看项目列表获取，不传则关联到默认项目
        public let projectId: Int64?

        /// 数据库引擎版本，当前可选：8.0.18，10.1.9，5.7.17。如果不传的话，默认为 Percona 5.7.17。
        public let dbVersionId: String?

        /// 实例名称， 可以通过该字段自主的设置实例的名字
        public let instanceName: String?

        /// 安全组ID列表
        public let securityGroupIds: [String]?

        /// 自动续费标志，1:自动续费，2:不自动续费
        public let autoRenewFlag: Int64?

        /// 是否支持IPv6
        public let ipv6Flag: Int64?

        /// 标签键值对数组
        public let resourceTags: [ResourceTag]?

        /// 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        public let initParams: [DBParamValue]?

        /// DCN源地域
        public let dcnRegion: String?

        /// DCN源实例ID
        public let dcnInstanceId: String?

        public init(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, autoRenewFlag: Int64? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil) {
            self.zones = zones
            self.nodeCount = nodeCount
            self.memory = memory
            self.storage = storage
            self.period = period
            self.count = count
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.projectId = projectId
            self.dbVersionId = dbVersionId
            self.instanceName = instanceName
            self.securityGroupIds = securityGroupIds
            self.autoRenewFlag = autoRenewFlag
            self.ipv6Flag = ipv6Flag
            self.resourceTags = resourceTags
            self.initParams = initParams
            self.dcnRegion = dcnRegion
            self.dcnInstanceId = dcnInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case zones = "Zones"
            case nodeCount = "NodeCount"
            case memory = "Memory"
            case storage = "Storage"
            case period = "Period"
            case count = "Count"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case dbVersionId = "DbVersionId"
            case instanceName = "InstanceName"
            case securityGroupIds = "SecurityGroupIds"
            case autoRenewFlag = "AutoRenewFlag"
            case ipv6Flag = "Ipv6Flag"
            case resourceTags = "ResourceTags"
            case initParams = "InitParams"
            case dcnRegion = "DcnRegion"
            case dcnInstanceId = "DcnInstanceId"
        }
    }

    /// CreateDBInstance返回参数结构体
    public struct CreateDBInstanceResponse: TCResponseModel {
        /// 长订单号。可以据此调用 DescribeOrders
        ///  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        public let dealName: String

        /// 订单对应的实例 ID 列表，如果此处没有返回实例 ID，可以通过订单查询接口获取。还可通过实例查询接口查询实例是否创建完成。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 创建实例（包年包月）
    ///
    /// 本接口（CreateDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例（包年包月）
    ///
    /// 本接口（CreateDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例（包年包月）
    ///
    /// 本接口（CreateDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstance(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, autoRenewFlag: Int64? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.createDBInstance(CreateDBInstanceRequest(zones: zones, nodeCount: nodeCount, memory: memory, storage: storage, period: period, count: count, autoVoucher: autoVoucher, voucherIds: voucherIds, vpcId: vpcId, subnetId: subnetId, projectId: projectId, dbVersionId: dbVersionId, instanceName: instanceName, securityGroupIds: securityGroupIds, autoRenewFlag: autoRenewFlag, ipv6Flag: ipv6Flag, resourceTags: resourceTags, initParams: initParams, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例（包年包月）
    ///
    /// 本接口（CreateDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstance(zones: [String], nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, dbVersionId: String? = nil, instanceName: String? = nil, securityGroupIds: [String]? = nil, autoRenewFlag: Int64? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.createDBInstance(CreateDBInstanceRequest(zones: zones, nodeCount: nodeCount, memory: memory, storage: storage, period: period, count: count, autoVoucher: autoVoucher, voucherIds: voucherIds, vpcId: vpcId, subnetId: subnetId, projectId: projectId, dbVersionId: dbVersionId, instanceName: instanceName, securityGroupIds: securityGroupIds, autoRenewFlag: autoRenewFlag, ipv6Flag: ipv6Flag, resourceTags: resourceTags, initParams: initParams, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
