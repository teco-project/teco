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
import TecoPaginationHelpers

extension Sqlserver {
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: UInt64?

        /// 实例状态。取值范围：
        /// <li>1：申请中</li>
        /// <li>2：运行中</li>
        /// <li>3：受限运行中 (主备切换中)</li>
        /// <li>4：已隔离</li>
        /// <li>5：回收中</li>
        /// <li>6：已回收</li>
        /// <li>7：任务执行中 (实例做备份、回档等操作)</li>
        /// <li>8：已下线</li>
        /// <li>9：实例扩容中</li>
        /// <li>10：实例迁移中</li>
        /// <li>11：只读</li>
        /// <li>12：重启中</li>
        public let status: Int64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: Int64?

        /// 分页返回，每页返回的数目，取值为1-100，默认值为100
        public let limit: Int64?

        /// 一个或者多个实例ID。实例ID，格式如：mssql-si2823jyl
        public let instanceIdSet: [String]?

        /// 付费类型检索 1-包年包月，0-按量计费
        public let payMode: Int64?

        /// 实例所属VPC的唯一字符串ID，格式如：vpc-xxx，传空字符串(“”)则按照基础网络筛选。
        public let vpcId: String?

        /// 实例所属子网的唯一字符串ID，格式如： subnet-xxx，传空字符串(“”)则按照基础网络筛选。
        public let subnetId: String?

        /// 实例内网地址列表，格式如：172.1.0.12
        public let vipSet: [String]?

        /// 实例名称列表，模糊查询
        public let instanceNameSet: [String]?

        /// 实例版本代号列表，格式如：2008R2，2012SP3等
        public let versionSet: [String]?

        /// 实例可用区，格式如：ap-guangzhou-2
        public let zone: String?

        /// 实例标签列表
        public let tagKeys: [String]?

        /// 模糊查询关键字，支持实例id、实例名、内网ip
        public let searchKey: String?

        /// 实例唯一Uid列表
        public let uidSet: [String]?

        /// 实例类型 HA-高可用 RO-只读实例 SI-基础版 BI-商业智能服务
        public let instanceType: String?

        public init(projectId: UInt64? = nil, status: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, instanceIdSet: [String]? = nil, payMode: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, vipSet: [String]? = nil, instanceNameSet: [String]? = nil, versionSet: [String]? = nil, zone: String? = nil, tagKeys: [String]? = nil, searchKey: String? = nil, uidSet: [String]? = nil, instanceType: String? = nil) {
            self.projectId = projectId
            self.status = status
            self.offset = offset
            self.limit = limit
            self.instanceIdSet = instanceIdSet
            self.payMode = payMode
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.vipSet = vipSet
            self.instanceNameSet = instanceNameSet
            self.versionSet = versionSet
            self.zone = zone
            self.tagKeys = tagKeys
            self.searchKey = searchKey
            self.uidSet = uidSet
            self.instanceType = instanceType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case instanceIdSet = "InstanceIdSet"
            case payMode = "PayMode"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case vipSet = "VipSet"
            case instanceNameSet = "InstanceNameSet"
            case versionSet = "VersionSet"
            case zone = "Zone"
            case tagKeys = "TagKeys"
            case searchKey = "SearchKey"
            case uidSet = "UidSet"
            case instanceType = "InstanceType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBInstancesResponse) -> DescribeDBInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBInstancesRequest(projectId: self.projectId, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, instanceIdSet: self.instanceIdSet, payMode: self.payMode, vpcId: self.vpcId, subnetId: self.subnetId, vipSet: self.vipSet, instanceNameSet: self.instanceNameSet, versionSet: self.versionSet, zone: self.zone, tagKeys: self.tagKeys, searchKey: self.searchKey, uidSet: self.uidSet, instanceType: self.instanceType)
        }
    }

    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCPaginatedResponse {
        /// 符合条件的实例总数。分页返回的话，这个值指的是所有符合条件的实例的个数，而非当前根据Limit和Offset值返回的实例个数
        public let totalCount: Int64

        /// 实例列表
        public let dbInstances: [DBInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbInstances = "DBInstances"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DBInstance`` list from the paginated response.
        public func getItems() -> [DBInstance] {
            self.dbInstances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable
    public func describeDBInstances(projectId: UInt64? = nil, status: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, instanceIdSet: [String]? = nil, payMode: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, vipSet: [String]? = nil, instanceNameSet: [String]? = nil, versionSet: [String]? = nil, zone: String? = nil, tagKeys: [String]? = nil, searchKey: String? = nil, uidSet: [String]? = nil, instanceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.describeDBInstances(.init(projectId: projectId, status: status, offset: offset, limit: limit, instanceIdSet: instanceIdSet, payMode: payMode, vpcId: vpcId, subnetId: subnetId, vipSet: vipSet, instanceNameSet: instanceNameSet, versionSet: versionSet, zone: zone, tagKeys: tagKeys, searchKey: searchKey, uidSet: uidSet, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable
    public func describeDBInstances(projectId: UInt64? = nil, status: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, instanceIdSet: [String]? = nil, payMode: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, vipSet: [String]? = nil, instanceNameSet: [String]? = nil, versionSet: [String]? = nil, zone: String? = nil, tagKeys: [String]? = nil, searchKey: String? = nil, uidSet: [String]? = nil, instanceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.describeDBInstances(.init(projectId: projectId, status: status, offset: offset, limit: limit, instanceIdSet: instanceIdSet, payMode: payMode, vpcId: vpcId, subnetId: subnetId, vipSet: vipSet, instanceNameSet: instanceNameSet, versionSet: versionSet, zone: zone, tagKeys: tagKeys, searchKey: searchKey, uidSet: uidSet, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DBInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    @inlinable @discardableResult
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询实例列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DBInstance`` and ``DescribeDBInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }
}
