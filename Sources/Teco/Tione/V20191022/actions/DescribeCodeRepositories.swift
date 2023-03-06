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

extension Tione {
    /// DescribeCodeRepositories请求参数结构体
    public struct DescribeCodeRepositoriesRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20
        public let limit: Int64?

        /// 过滤条件。
        /// instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        /// search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        public let filters: [Filter]?

        /// 排序规则。默认取Descending
        /// Descending 按更新时间降序
        /// Ascending 按更新时间升序
        public let sortOrder: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.sortOrder = sortOrder
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case sortOrder = "SortOrder"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCodeRepositoriesResponse) -> DescribeCodeRepositoriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCodeRepositoriesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, sortOrder: self.sortOrder)
        }
    }

    /// DescribeCodeRepositories返回参数结构体
    public struct DescribeCodeRepositoriesResponse: TCPaginatedResponse {
        /// 存储库总数目
        public let totalCount: Int64

        /// 存储库列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeRepoSet: [CodeRepoSummary]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case codeRepoSet = "CodeRepoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CodeRepoSummary] {
            self.codeRepoSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询存储库列表
    @inlinable
    public func describeCodeRepositories(_ input: DescribeCodeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeRepositoriesResponse> {
        self.client.execute(action: "DescribeCodeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询存储库列表
    @inlinable
    public func describeCodeRepositories(_ input: DescribeCodeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeRepositoriesResponse {
        try await self.client.execute(action: "DescribeCodeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询存储库列表
    @inlinable
    public func describeCodeRepositories(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeRepositoriesResponse> {
        let input = DescribeCodeRepositoriesRequest(offset: offset, limit: limit, filters: filters, sortOrder: sortOrder)
        return self.client.execute(action: "DescribeCodeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询存储库列表
    @inlinable
    public func describeCodeRepositories(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeRepositoriesResponse {
        let input = DescribeCodeRepositoriesRequest(offset: offset, limit: limit, filters: filters, sortOrder: sortOrder)
        return try await self.client.execute(action: "DescribeCodeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询存储库列表
    @inlinable
    public func describeCodeRepositoriesPaginated(_ input: DescribeCodeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CodeRepoSummary])> {
        self.client.paginate(input: input, region: region, command: self.describeCodeRepositories, logger: logger, on: eventLoop)
    }

    /// 查询存储库列表
    @inlinable @discardableResult
    public func describeCodeRepositoriesPaginated(_ input: DescribeCodeRepositoriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCodeRepositoriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCodeRepositories, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询存储库列表
    ///
    /// - Returns: `AsyncSequence`s of `CodeRepoSummary` and `DescribeCodeRepositoriesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCodeRepositoriesPaginator(_ input: DescribeCodeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCodeRepositoriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCodeRepositories, logger: logger, on: eventLoop)
    }
}
