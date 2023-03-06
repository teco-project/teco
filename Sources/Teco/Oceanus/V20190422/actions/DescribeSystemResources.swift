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

extension Oceanus {
    /// DescribeSystemResources请求参数结构体
    public struct DescribeSystemResourcesRequest: TCPaginatedRequest {
        /// 需要查询的资源ID数组
        public let resourceIds: [String]?

        /// 偏移量，仅当设置 Limit 参数时有效
        public let offset: Int64?

        /// 条数限制，默认返回 20 条
        public let limit: Int64?

        /// 查询资源配置列表， 如果不填写，返回该 ResourceIds.N 下所有作业配置列表
        public let filters: [Filter]?

        /// 集群ID
        public let clusterId: String?

        /// 查询对应Flink版本的内置connector
        public let flinkVersion: String?

        public init(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterId: String? = nil, flinkVersion: String? = nil) {
            self.resourceIds = resourceIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.clusterId = clusterId
            self.flinkVersion = flinkVersion
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case clusterId = "ClusterId"
            case flinkVersion = "FlinkVersion"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeSystemResourcesResponse) -> DescribeSystemResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSystemResourcesRequest(resourceIds: self.resourceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, clusterId: self.clusterId, flinkVersion: self.flinkVersion)
        }
    }

    /// DescribeSystemResources返回参数结构体
    public struct DescribeSystemResourcesResponse: TCPaginatedResponse {
        /// 资源详细信息集合
        public let resourceSet: [SystemResourceItem]

        /// 总数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resourceSet = "ResourceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SystemResourceItem] {
            self.resourceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResources(_ input: DescribeSystemResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSystemResourcesResponse> {
        self.client.execute(action: "DescribeSystemResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResources(_ input: DescribeSystemResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSystemResourcesResponse {
        try await self.client.execute(action: "DescribeSystemResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResources(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterId: String? = nil, flinkVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSystemResourcesResponse> {
        let input = DescribeSystemResourcesRequest(resourceIds: resourceIds, offset: offset, limit: limit, filters: filters, clusterId: clusterId, flinkVersion: flinkVersion)
        return self.client.execute(action: "DescribeSystemResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResources(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterId: String? = nil, flinkVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSystemResourcesResponse {
        let input = DescribeSystemResourcesRequest(resourceIds: resourceIds, offset: offset, limit: limit, filters: filters, clusterId: clusterId, flinkVersion: flinkVersion)
        return try await self.client.execute(action: "DescribeSystemResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResourcesPaginated(_ input: DescribeSystemResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SystemResourceItem])> {
        self.client.paginate(input: input, region: region, command: self.describeSystemResources, logger: logger, on: eventLoop)
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResourcesPaginated(_ input: DescribeSystemResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSystemResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSystemResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 描述系统资源接口
    @inlinable
    public func describeSystemResourcesPaginator(_ input: DescribeSystemResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeSystemResourcesRequest, DescribeSystemResourcesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeSystemResourcesRequest, DescribeSystemResourcesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeSystemResourcesRequest, DescribeSystemResourcesResponse>.ResultSequence(input: input, region: region, command: self.describeSystemResources, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeSystemResourcesRequest, DescribeSystemResourcesResponse>.ResponseSequence(input: input, region: region, command: self.describeSystemResources, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
