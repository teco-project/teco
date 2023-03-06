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

extension Tcaplusdb {
    /// DescribeTablesInRecycle请求参数结构体
    public struct DescribeTablesInRecycleRequest: TCPaginatedRequest {
        /// 待查询表格所属集群ID
        public let clusterId: String?

        /// 待查询表格所属表格组ID列表
        public let tableGroupIds: [String]?

        /// 过滤条件，本接口支持：TableName，TableInstanceId
        public let filters: [Filter]?

        /// 查询结果偏移量
        public let offset: Int64?

        /// 查询结果返回记录数量
        public let limit: Int64?

        public init(clusterId: String? = nil, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTablesInRecycleResponse) -> DescribeTablesInRecycleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTablesInRecycleRequest(clusterId: self.clusterId, tableGroupIds: self.tableGroupIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTablesInRecycle返回参数结构体
    public struct DescribeTablesInRecycleResponse: TCPaginatedResponse {
        /// 表格数量
        public let totalCount: UInt64

        /// 表格详情结果列表
        public let tableInfos: [TableInfoNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableInfos = "TableInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TableInfoNew] {
            self.tableInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecycle(_ input: DescribeTablesInRecycleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesInRecycleResponse> {
        self.client.execute(action: "DescribeTablesInRecycle", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecycle(_ input: DescribeTablesInRecycleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesInRecycleResponse {
        try await self.client.execute(action: "DescribeTablesInRecycle", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecycle(clusterId: String? = nil, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesInRecycleResponse> {
        let input = DescribeTablesInRecycleRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeTablesInRecycle", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecycle(clusterId: String? = nil, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesInRecycleResponse {
        let input = DescribeTablesInRecycleRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeTablesInRecycle", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecyclePaginated(_ input: DescribeTablesInRecycleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TableInfoNew])> {
        self.client.paginate(input: input, region: region, command: self.describeTablesInRecycle, logger: logger, on: eventLoop)
    }

    /// 查询回收站中的表详情
    @inlinable @discardableResult
    public func describeTablesInRecyclePaginated(_ input: DescribeTablesInRecycleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTablesInRecycleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTablesInRecycle, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询回收站中的表详情
    @inlinable
    public func describeTablesInRecyclePaginator(_ input: DescribeTablesInRecycleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTablesInRecycleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTablesInRecycle, logger: logger, on: eventLoop)
    }
}
