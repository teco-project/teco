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
    /// DescribeResources请求参数结构体
    public struct DescribeResourcesRequest: TCPaginatedRequest {
        /// 需要查询的资源ID数组，数量不超过100个。如果填写了该参数则忽略Filters参数。
        public let resourceIds: [String]?

        /// 偏移量，仅当设置 Limit 参数时有效
        public let offset: Int64?

        /// 条数限制。如果不填，默认返回 20 条
        public let limit: Int64?

        /// <li><strong>ResourceName</strong></li>
        /// <p style="padding-left: 30px;">按照资源名字过滤，支持模糊过滤。传入的过滤名字不超过5个</p><p style="padding-left: 30px;">类型: String</p><p style="padding-left: 30px;">必选: 否</p>
        public let filters: [Filter]?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil) {
            self.resourceIds = resourceIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case workSpaceId = "WorkSpaceId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeResourcesResponse) -> DescribeResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourcesRequest(resourceIds: self.resourceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, workSpaceId: self.workSpaceId)
        }
    }

    /// DescribeResources返回参数结构体
    public struct DescribeResourcesResponse: TCPaginatedResponse {
        /// 资源详细信息集合
        public let resourceSet: [ResourceItem]

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
        public func getItems() -> [ResourceItem] {
            self.resourceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 描述资源接口
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesResponse> {
        self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述资源接口
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesResponse {
        try await self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述资源接口
    @inlinable
    public func describeResources(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesResponse> {
        let input = DescribeResourcesRequest(resourceIds: resourceIds, offset: offset, limit: limit, filters: filters, workSpaceId: workSpaceId)
        return self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述资源接口
    @inlinable
    public func describeResources(resourceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesResponse {
        let input = DescribeResourcesRequest(resourceIds: resourceIds, offset: offset, limit: limit, filters: filters, workSpaceId: workSpaceId)
        return try await self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述资源接口
    @inlinable
    public func describeResourcesPaginated(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResourceItem])> {
        self.client.paginate(input: input, region: region, command: self.describeResources, logger: logger, on: eventLoop)
    }

    /// 描述资源接口
    @inlinable @discardableResult
    public func describeResourcesPaginated(_ input: DescribeResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 描述资源接口
    @inlinable
    public func describeResourcesPaginator(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResources, logger: logger, on: eventLoop)
    }
}
