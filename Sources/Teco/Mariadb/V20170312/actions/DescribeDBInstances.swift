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

import TecoPaginationHelpers

extension Mariadb {
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCPaginatedRequest {
        /// 按照一个或者多个实例 ID 查询。实例 ID 形如：tdsql-ow728lmc。每次请求的实例的上限为100。
        public let instanceIds: [String]?

        /// 搜索的字段名，当前支持的值有：instancename、vip、all。传 instancename 表示按实例名进行搜索；传 vip 表示按内网IP进行搜索；传 all 将会按实例ID、实例名和内网IP进行搜索。
        public let searchName: String?

        /// 搜索的关键字，支持模糊搜索。多个关键字使用换行符（'\n'）分割。
        public let searchKey: String?

        /// 按项目 ID 查询
        public let projectIds: [Int64]?

        /// 是否根据 VPC 网络来搜索
        public let isFilterVpc: Bool?

        /// 私有网络 ID， IsFilterVpc 为 1 时有效
        public let vpcId: String?

        /// 私有网络的子网 ID， IsFilterVpc 为 1 时有效
        public let subnetId: String?

        /// 排序字段， projectId， createtime， instancename 三者之一
        public let orderBy: String?

        /// 排序类型， desc 或者 asc
        public let orderByType: String?

        /// 偏移量，默认为 0
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 按 OriginSerialId 查询
        public let originSerialIds: [String]?

        /// 标识是否使用ExclusterType字段, false不使用，true使用
        public let isFilterExcluster: Bool?

        /// 实例所属独享集群类型。取值范围：1-非独享集群，2-独享集群， 0-全部
        public let exclusterType: Int64?

        /// 按独享集群ID过滤实例，独享集群ID形如dbdc-4ih6uct9
        public let exclusterIds: [String]?

        /// 按标签key查询
        public let tagKeys: [String]?

        /// 实例类型过滤，1-独享实例，2-主实例，3-灾备实例，多个按逗号分隔
        public let filterInstanceType: String?

        /// 按照实例状态进行筛选
        public let status: [Int64]?

        /// 排除实例状态
        public let excludeStatus: [Int64]?

        public init(instanceIds: [String]? = nil, searchName: String? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, isFilterVpc: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, orderBy: String? = nil, orderByType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, originSerialIds: [String]? = nil, isFilterExcluster: Bool? = nil, exclusterType: Int64? = nil, exclusterIds: [String]? = nil, tagKeys: [String]? = nil, filterInstanceType: String? = nil, status: [Int64]? = nil, excludeStatus: [Int64]? = nil) {
            self.instanceIds = instanceIds
            self.searchName = searchName
            self.searchKey = searchKey
            self.projectIds = projectIds
            self.isFilterVpc = isFilterVpc
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.offset = offset
            self.limit = limit
            self.originSerialIds = originSerialIds
            self.isFilterExcluster = isFilterExcluster
            self.exclusterType = exclusterType
            self.exclusterIds = exclusterIds
            self.tagKeys = tagKeys
            self.filterInstanceType = filterInstanceType
            self.status = status
            self.excludeStatus = excludeStatus
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case searchName = "SearchName"
            case searchKey = "SearchKey"
            case projectIds = "ProjectIds"
            case isFilterVpc = "IsFilterVpc"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case offset = "Offset"
            case limit = "Limit"
            case originSerialIds = "OriginSerialIds"
            case isFilterExcluster = "IsFilterExcluster"
            case exclusterType = "ExclusterType"
            case exclusterIds = "ExclusterIds"
            case tagKeys = "TagKeys"
            case filterInstanceType = "FilterInstanceType"
            case status = "Status"
            case excludeStatus = "ExcludeStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBInstancesResponse) -> DescribeDBInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBInstancesRequest(instanceIds: self.instanceIds, searchName: self.searchName, searchKey: self.searchKey, projectIds: self.projectIds, isFilterVpc: self.isFilterVpc, vpcId: self.vpcId, subnetId: self.subnetId, orderBy: self.orderBy, orderByType: self.orderByType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, originSerialIds: self.originSerialIds, isFilterExcluster: self.isFilterExcluster, exclusterType: self.exclusterType, exclusterIds: self.exclusterIds, tagKeys: self.tagKeys, filterInstanceType: self.filterInstanceType, status: self.status, excludeStatus: self.excludeStatus)
        }
    }

    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCPaginatedResponse {
        /// 符合条件的实例数量
        public let totalCount: UInt64

        /// 实例详细信息列表
        public let instances: [DBInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DBInstance] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable
    public func describeDBInstances(instanceIds: [String]? = nil, searchName: String? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, isFilterVpc: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, orderBy: String? = nil, orderByType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, originSerialIds: [String]? = nil, isFilterExcluster: Bool? = nil, exclusterType: Int64? = nil, exclusterIds: [String]? = nil, tagKeys: [String]? = nil, filterInstanceType: String? = nil, status: [Int64]? = nil, excludeStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        let input = DescribeDBInstancesRequest(instanceIds: instanceIds, searchName: searchName, searchKey: searchKey, projectIds: projectIds, isFilterVpc: isFilterVpc, vpcId: vpcId, subnetId: subnetId, orderBy: orderBy, orderByType: orderByType, offset: offset, limit: limit, originSerialIds: originSerialIds, isFilterExcluster: isFilterExcluster, exclusterType: exclusterType, exclusterIds: exclusterIds, tagKeys: tagKeys, filterInstanceType: filterInstanceType, status: status, excludeStatus: excludeStatus)
        return self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable
    public func describeDBInstances(instanceIds: [String]? = nil, searchName: String? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, isFilterVpc: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, orderBy: String? = nil, orderByType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, originSerialIds: [String]? = nil, isFilterExcluster: Bool? = nil, exclusterType: Int64? = nil, exclusterIds: [String]? = nil, tagKeys: [String]? = nil, filterInstanceType: String? = nil, status: [Int64]? = nil, excludeStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        let input = DescribeDBInstancesRequest(instanceIds: instanceIds, searchName: searchName, searchKey: searchKey, projectIds: projectIds, isFilterVpc: isFilterVpc, vpcId: vpcId, subnetId: subnetId, orderBy: orderBy, orderByType: orderByType, offset: offset, limit: limit, originSerialIds: originSerialIds, isFilterExcluster: isFilterExcluster, exclusterType: exclusterType, exclusterIds: exclusterIds, tagKeys: tagKeys, filterInstanceType: filterInstanceType, status: status, excludeStatus: excludeStatus)
        return try await self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DBInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    @inlinable @discardableResult
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
    /// 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。
    ///
    /// - Returns: `AsyncSequence`s of `DBInstance` and `DescribeDBInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }
}
