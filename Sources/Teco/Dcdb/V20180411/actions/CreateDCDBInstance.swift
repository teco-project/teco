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

extension Dcdb {
    /// CreateDCDBInstance请求参数结构体
    public struct CreateDCDBInstanceRequest: TCRequestModel {
        /// 分片节点可用区分布，最多可填两个可用区。当分片规格为一主两从时，其中两个节点在第一个可用区。
        /// 注意当前可售卖的可用区需要通过DescribeDCDBSaleInfo接口拉取。
        public let zones: [String]

        /// 欲购买的时长，单位：月。
        public let period: Int64

        /// 分片内存大小，单位：GB，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardMemory: Int64

        /// 分片存储空间大小，单位：GB，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardStorage: Int64

        /// 单个分片节点个数，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardNodeCount: Int64

        /// 实例分片个数，可选范围2-8，可以通过升级实例进行新增分片到最多64个分片。
        public let shardCount: Int64

        /// 欲购买实例的数量
        public let count: Int64?

        /// 项目 ID，可以通过查看项目列表获取，不传则关联到默认项目
        public let projectId: Int64?

        /// 虚拟私有网络 ID，不传或传空表示创建为基础网络
        public let vpcId: String?

        /// 虚拟私有网络子网 ID，VpcId不为空时必填
        public let subnetId: String?

        /// 数据库引擎版本，当前可选：8.0.18，10.1.9，5.7.17。
        /// 8.0.18 - MySQL 8.0.18；
        /// 10.1.9 - Mariadb 10.1.9；
        /// 5.7.17 - Percona 5.7.17。
        /// 如果不填的话，默认为5.7.17，表示Percona 5.7.17。
        public let dbVersionId: String?

        /// 是否自动使用代金券进行支付，默认不使用。
        public let autoVoucher: Bool?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 安全组id
        public let securityGroupId: String?

        /// 实例名称， 可以通过该字段自主的设置实例的名字
        public let instanceName: String?

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

        /// 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费，用户开通了预付费不停服特权也会进行自动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)，若业务无续费概念或无需自动续费，需要设置为0
        public let autoRenewFlag: Int64?

        /// 安全组ids，安全组可以传数组形式，兼容之前SecurityGroupId参数
        public let securityGroupIds: [String]?

        public init(zones: [String], period: Int64, shardMemory: Int64, shardStorage: Int64, shardNodeCount: Int64, shardCount: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, securityGroupId: String? = nil, instanceName: String? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, autoRenewFlag: Int64? = nil, securityGroupIds: [String]? = nil) {
            self.zones = zones
            self.period = period
            self.shardMemory = shardMemory
            self.shardStorage = shardStorage
            self.shardNodeCount = shardNodeCount
            self.shardCount = shardCount
            self.count = count
            self.projectId = projectId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.dbVersionId = dbVersionId
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.securityGroupId = securityGroupId
            self.instanceName = instanceName
            self.ipv6Flag = ipv6Flag
            self.resourceTags = resourceTags
            self.initParams = initParams
            self.dcnRegion = dcnRegion
            self.dcnInstanceId = dcnInstanceId
            self.autoRenewFlag = autoRenewFlag
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case zones = "Zones"
            case period = "Period"
            case shardMemory = "ShardMemory"
            case shardStorage = "ShardStorage"
            case shardNodeCount = "ShardNodeCount"
            case shardCount = "ShardCount"
            case count = "Count"
            case projectId = "ProjectId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case dbVersionId = "DbVersionId"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case securityGroupId = "SecurityGroupId"
            case instanceName = "InstanceName"
            case ipv6Flag = "Ipv6Flag"
            case resourceTags = "ResourceTags"
            case initParams = "InitParams"
            case dcnRegion = "DcnRegion"
            case dcnInstanceId = "DcnInstanceId"
            case autoRenewFlag = "AutoRenewFlag"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// CreateDCDBInstance返回参数结构体
    public struct CreateDCDBInstanceResponse: TCResponseModel {
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

    /// 创建DCDB分布式实例
    ///
    /// 本接口（CreateDCDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。
    @inlinable
    public func createDCDBInstance(_ input: CreateDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDCDBInstanceResponse> {
        self.client.execute(action: "CreateDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建DCDB分布式实例
    ///
    /// 本接口（CreateDCDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。
    @inlinable
    public func createDCDBInstance(_ input: CreateDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDCDBInstanceResponse {
        try await self.client.execute(action: "CreateDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建DCDB分布式实例
    ///
    /// 本接口（CreateDCDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。
    @inlinable
    public func createDCDBInstance(zones: [String], period: Int64, shardMemory: Int64, shardStorage: Int64, shardNodeCount: Int64, shardCount: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, securityGroupId: String? = nil, instanceName: String? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, autoRenewFlag: Int64? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDCDBInstanceResponse> {
        self.createDCDBInstance(CreateDCDBInstanceRequest(zones: zones, period: period, shardMemory: shardMemory, shardStorage: shardStorage, shardNodeCount: shardNodeCount, shardCount: shardCount, count: count, projectId: projectId, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, autoVoucher: autoVoucher, voucherIds: voucherIds, securityGroupId: securityGroupId, instanceName: instanceName, ipv6Flag: ipv6Flag, resourceTags: resourceTags, initParams: initParams, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId, autoRenewFlag: autoRenewFlag, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建DCDB分布式实例
    ///
    /// 本接口（CreateDCDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。
    @inlinable
    public func createDCDBInstance(zones: [String], period: Int64, shardMemory: Int64, shardStorage: Int64, shardNodeCount: Int64, shardCount: Int64, count: Int64? = nil, projectId: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, dbVersionId: String? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, securityGroupId: String? = nil, instanceName: String? = nil, ipv6Flag: Int64? = nil, resourceTags: [ResourceTag]? = nil, initParams: [DBParamValue]? = nil, dcnRegion: String? = nil, dcnInstanceId: String? = nil, autoRenewFlag: Int64? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDCDBInstanceResponse {
        try await self.createDCDBInstance(CreateDCDBInstanceRequest(zones: zones, period: period, shardMemory: shardMemory, shardStorage: shardStorage, shardNodeCount: shardNodeCount, shardCount: shardCount, count: count, projectId: projectId, vpcId: vpcId, subnetId: subnetId, dbVersionId: dbVersionId, autoVoucher: autoVoucher, voucherIds: voucherIds, securityGroupId: securityGroupId, instanceName: instanceName, ipv6Flag: ipv6Flag, resourceTags: resourceTags, initParams: initParams, dcnRegion: dcnRegion, dcnInstanceId: dcnInstanceId, autoRenewFlag: autoRenewFlag, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
