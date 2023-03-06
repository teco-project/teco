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

extension Tdcpg {
    /// DescribeClusterInstances请求参数结构体
    public struct DescribeClusterInstancesRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 页码，取值范围为[1,INF)，默认值为1
        public let pageNumber: UInt64?

        /// 每页个数，取值范围为默认为[1,100]，默认值为20
        public let pageSize: UInt64?

        /// 目前支持查询条件包括：
        ///  - InstanceId : 实例ID
        ///  - InstanceName : 实例名
        ///  - EndpointId : 接入点ID
        ///  - Status : 实例状态
        ///  - InstanceType : 实例类型
        public let filters: [Filter]?

        /// 排序字段，可选字段：
        /// - CreateTime : 实例创建时间(默认值)
        /// - PayPeriodEndTime : 实例过期时间
        public let orderBy: String?

        /// 排序方式，可选字段：
        /// - DESC : 降序(默认值)
        /// - ASC : 升序
        public let orderByType: String?

        public init(clusterId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.clusterId = clusterId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClusterInstancesResponse) -> DescribeClusterInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterInstancesRequest(clusterId: self.clusterId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeClusterInstances返回参数结构体
    public struct DescribeClusterInstancesResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 实例列表信息
        public let instanceSet: [Instance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Instance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstances(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterInstancesResponse> {
        self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstances(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterInstancesResponse {
        try await self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstances(clusterId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterInstancesResponse> {
        let input = DescribeClusterInstancesRequest(clusterId: clusterId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstances(clusterId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterInstancesResponse {
        let input = DescribeClusterInstancesRequest(clusterId: clusterId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstancesPaginated(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例
    @inlinable @discardableResult
    public func describeClusterInstancesPaginated(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例
    @inlinable
    public func describeClusterInstancesPaginator(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterInstances, logger: logger, on: eventLoop)
    }
}
