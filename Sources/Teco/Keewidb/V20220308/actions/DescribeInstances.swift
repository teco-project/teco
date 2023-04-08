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

import TecoCore
import TecoPaginationHelpers

extension Keewidb {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 每页输出的实例列表的大小，即每页输出的实例数量，默认值20，取值范围为[1,1000]。
        public let limit: UInt64?

        /// 分页偏移量，取Limit整数倍。
        /// 计算公式为offset=limit*(页码-1)。例如 limit=10，第1页offset就为0，第2页offset就为10，依次类推。
        public let offset: UInt64?

        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String?

        /// 排序依据。枚举范围如下所示。 <ul><li>projectId：实例按照项目ID排序。</li><li>createtime：实例按照创建时间排序。</li><li>instancename：实例按照实例名称排序。</li><li>type：实例按照类型排序。</li><li>curDeadline：实例按照到期时间排序。</li></ul>
        public let orderBy: String?

        /// 排序方式。<ul><li>1：倒序。默认为倒序。</li><li>0：顺序。</li></ul>
        public let orderType: Int64?

        /// 私有网络ID数组。数组下标从0开始，如果不传则默认选择基础网络，如：47525
        public let vpcIds: [String]?

        /// 子网ID数组，数组下标从0开始，如：56854
        public let subnetIds: [String]?

        /// 项目ID 组成的数组，数组下标从0开始
        public let projectIds: [Int64]?

        /// 查找关键字，可输入实例的ID或者实例名称。
        public let searchKey: String?

        /// 实例名称。
        public let instanceName: String?

        /// 私有网络ID数组，数组下标从0开始，如果不传则默认选择基础网络，如：vpc-sad23jfdfk
        public let uniqVpcIds: [String]?

        /// 子网ID数组，数组下标从0开始，如：subnet-fdj24n34j2
        public let uniqSubnetIds: [String]?

        /// 实例状态。<ul><li>0：待初始化。</li><li>1：流程中。</li><li>2：运行中。</li><li>-2：已隔离。</li><li>-3：待删除。</li></ul>
        public let status: [Int64]?

        /// 包年包月计费的续费模式。<ul><li>0：默认状态，指手动续费。</li><li>1：自动续费。</li><li>2：到期不再续费。</ul>
        public let autoRenew: [Int64]?

        /// 计费模式。<ul><li>postpaid：按量计费。</li><li>prepaid：包年包月。</li></ul>
        public let billingMode: String?

        /// 实例类型。<ul><li>13：标准版。</li><li>14：集群版。</li></ul>
        public let type: Int64?

        /// 搜索关键词：支持实例 ID、实例名称、私有网络IP地址。
        public let searchKeys: [String]?

        /// 内部参数，用户可忽略。
        public let typeList: [Int64]?

        /// 内部参数，用户可忽略。
        public let monitorVersion: String?

        /// 根据标签的 Key 和 Value 筛选资源。该参数不配置或者数组设置为空值，则不根据标签进行过滤。
        public let instanceTags: InstanceTagInfo?

        /// 根据标签的 Key 筛选资源，该参数不配置或者数组设置为空值，则不根据标签Key进行过滤。
        public let tagKeys: [String]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, projectIds: [Int64]? = nil, searchKey: String? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, status: [Int64]? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: InstanceTagInfo? = nil, tagKeys: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.instanceId = instanceId
            self.orderBy = orderBy
            self.orderType = orderType
            self.vpcIds = vpcIds
            self.subnetIds = subnetIds
            self.projectIds = projectIds
            self.searchKey = searchKey
            self.instanceName = instanceName
            self.uniqVpcIds = uniqVpcIds
            self.uniqSubnetIds = uniqSubnetIds
            self.status = status
            self.autoRenew = autoRenew
            self.billingMode = billingMode
            self.type = type
            self.searchKeys = searchKeys
            self.typeList = typeList
            self.monitorVersion = monitorVersion
            self.instanceTags = instanceTags
            self.tagKeys = tagKeys
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case instanceId = "InstanceId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case vpcIds = "VpcIds"
            case subnetIds = "SubnetIds"
            case projectIds = "ProjectIds"
            case searchKey = "SearchKey"
            case instanceName = "InstanceName"
            case uniqVpcIds = "UniqVpcIds"
            case uniqSubnetIds = "UniqSubnetIds"
            case status = "Status"
            case autoRenew = "AutoRenew"
            case billingMode = "BillingMode"
            case type = "Type"
            case searchKeys = "SearchKeys"
            case typeList = "TypeList"
            case monitorVersion = "MonitorVersion"
            case instanceTags = "InstanceTags"
            case tagKeys = "TagKeys"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), instanceId: self.instanceId, orderBy: self.orderBy, orderType: self.orderType, vpcIds: self.vpcIds, subnetIds: self.subnetIds, projectIds: self.projectIds, searchKey: self.searchKey, instanceName: self.instanceName, uniqVpcIds: self.uniqVpcIds, uniqSubnetIds: self.uniqSubnetIds, status: self.status, autoRenew: self.autoRenew, billingMode: self.billingMode, type: self.type, searchKeys: self.searchKeys, typeList: self.typeList, monitorVersion: self.monitorVersion, instanceTags: self.instanceTags, tagKeys: self.tagKeys)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 实例数
        public let totalCount: Int64

        /// 实例详细信息列表
        public let instanceSet: [InstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceInfo] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable
    public func describeInstances(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, projectIds: [Int64]? = nil, searchKey: String? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, status: [Int64]? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: InstanceTagInfo? = nil, tagKeys: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(limit: limit, offset: offset, instanceId: instanceId, orderBy: orderBy, orderType: orderType, vpcIds: vpcIds, subnetIds: subnetIds, projectIds: projectIds, searchKey: searchKey, instanceName: instanceName, uniqVpcIds: uniqVpcIds, uniqSubnetIds: uniqSubnetIds, status: status, autoRenew: autoRenew, billingMode: billingMode, type: type, searchKeys: searchKeys, typeList: typeList, monitorVersion: monitorVersion, instanceTags: instanceTags, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable
    public func describeInstances(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, projectIds: [Int64]? = nil, searchKey: String? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, status: [Int64]? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: InstanceTagInfo? = nil, tagKeys: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(limit: limit, offset: offset, instanceId: instanceId, orderBy: orderBy, orderType: orderType, vpcIds: vpcIds, subnetIds: subnetIds, projectIds: projectIds, searchKey: searchKey, instanceName: instanceName, uniqVpcIds: uniqVpcIds, uniqSubnetIds: uniqSubnetIds, status: status, autoRenew: autoRenew, billingMode: billingMode, type: type, searchKeys: searchKeys, typeList: typeList, monitorVersion: monitorVersion, instanceTags: instanceTags, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。
    ///
    /// - Returns: `AsyncSequence`s of `InstanceInfo` and `DescribeInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}