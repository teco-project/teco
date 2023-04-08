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

extension Omics {
    /// DescribeRuns请求参数结构体
    public struct DescribeRunsRequest: TCPaginatedRequest {
        /// 项目ID。
        public let projectId: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤器，支持过滤字段：
        /// - RunGroupId：任务批次ID
        /// - Status：任务状态
        /// - RunUuid：任务UUID
        /// - UserDefinedId：用户定义ID
        public let filters: [Filter]?

        public init(projectId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRunsResponse) -> DescribeRunsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRunsRequest(projectId: self.projectId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeRuns返回参数结构体
    public struct DescribeRunsResponse: TCPaginatedResponse {
        /// 符合条件的数量。
        public let totalCount: UInt64

        /// 任务列表。
        public let runs: [Run]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case runs = "Runs"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Run] {
            self.runs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable
    public func describeRuns(_ input: DescribeRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRunsResponse> {
        self.client.execute(action: "DescribeRuns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable
    public func describeRuns(_ input: DescribeRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRunsResponse {
        try await self.client.execute(action: "DescribeRuns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable
    public func describeRuns(projectId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRunsResponse> {
        self.describeRuns(.init(projectId: projectId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable
    public func describeRuns(projectId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRunsResponse {
        try await self.describeRuns(.init(projectId: projectId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable
    public func describeRunsPaginated(_ input: DescribeRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Run])> {
        self.client.paginate(input: input, region: region, command: self.describeRuns, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    @inlinable @discardableResult
    public func describeRunsPaginated(_ input: DescribeRunsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRunsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuns, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询任务列表。
    ///
    /// - Returns: `AsyncSequence`s of `Run` and `DescribeRunsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRunsPaginator(_ input: DescribeRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRunsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRuns, logger: logger, on: eventLoop)
    }
}
