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

extension Tsf {
    /// DescribeRepositories请求参数结构体
    public struct DescribeRepositoriesRequest: TCPaginatedRequest {
        /// 查询关键字（按照仓库名称搜索）
        public let searchWord: String?

        /// 查询起始偏移
        public let offset: UInt64?

        /// 返回数量限制
        public let limit: UInt64?

        /// 仓库类型（默认仓库：default，私有仓库：private）
        public let repositoryType: String?

        public init(searchWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.repositoryType = repositoryType
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case repositoryType = "RepositoryType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRepositoriesResponse) -> DescribeRepositoriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRepositoriesRequest(searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, repositoryType: self.repositoryType)
        }
    }

    /// DescribeRepositories返回参数结构体
    public struct DescribeRepositoriesResponse: TCPaginatedResponse {
        /// 符合查询仓库信息列表
        public let result: RepositoryList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RepositoryInfo`` list from the paginated response.
        public func getItems() -> [RepositoryInfo] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询仓库列表
    @inlinable
    public func describeRepositories(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        self.client.execute(action: "DescribeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询仓库列表
    @inlinable
    public func describeRepositories(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        try await self.client.execute(action: "DescribeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询仓库列表
    @inlinable
    public func describeRepositories(searchWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        self.describeRepositories(.init(searchWord: searchWord, offset: offset, limit: limit, repositoryType: repositoryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询仓库列表
    @inlinable
    public func describeRepositories(searchWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        try await self.describeRepositories(.init(searchWord: searchWord, offset: offset, limit: limit, repositoryType: repositoryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询仓库列表
    @inlinable
    public func describeRepositoriesPaginated(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RepositoryInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRepositories, logger: logger, on: eventLoop)
    }

    /// 查询仓库列表
    @inlinable @discardableResult
    public func describeRepositoriesPaginated(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRepositoriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRepositories, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询仓库列表
    ///
    /// - Returns: `AsyncSequence`s of `RepositoryInfo` and `DescribeRepositoriesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRepositoriesPaginator(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRepositoriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRepositories, logger: logger, on: eventLoop)
    }
}
