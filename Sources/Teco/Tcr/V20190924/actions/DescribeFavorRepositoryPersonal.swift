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

extension Tcr {
    /// DescribeFavorRepositoryPersonal请求参数结构体
    public struct DescribeFavorRepositoryPersonalRequest: TCPaginatedRequest {
        /// 仓库名称
        public let repoName: String

        /// 分页Limit
        public let limit: Int64

        /// Offset用于分页
        public let offset: Int64

        public init(repoName: String, limit: Int64, offset: Int64) {
            self.repoName = repoName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFavorRepositoryPersonalResponse) -> DescribeFavorRepositoryPersonalRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFavorRepositoryPersonalRequest(repoName: self.repoName, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeFavorRepositoryPersonal返回参数结构体
    public struct DescribeFavorRepositoryPersonalResponse: TCPaginatedResponse {
        /// 个人收藏仓库列表返回信息
        public let data: FavorResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Favors] {
            self.data.repoInfo ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询个人收藏仓库
    @inlinable
    public func describeFavorRepositoryPersonal(_ input: DescribeFavorRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFavorRepositoryPersonalResponse> {
        self.client.execute(action: "DescribeFavorRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人收藏仓库
    @inlinable
    public func describeFavorRepositoryPersonal(_ input: DescribeFavorRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFavorRepositoryPersonalResponse {
        try await self.client.execute(action: "DescribeFavorRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人收藏仓库
    @inlinable
    public func describeFavorRepositoryPersonal(repoName: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFavorRepositoryPersonalResponse> {
        let input = DescribeFavorRepositoryPersonalRequest(repoName: repoName, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeFavorRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人收藏仓库
    @inlinable
    public func describeFavorRepositoryPersonal(repoName: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFavorRepositoryPersonalResponse {
        let input = DescribeFavorRepositoryPersonalRequest(repoName: repoName, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeFavorRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人收藏仓库
    @inlinable
    public func describeFavorRepositoryPersonalPaginated(_ input: DescribeFavorRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Favors])> {
        self.client.paginate(input: input, region: region, command: self.describeFavorRepositoryPersonal, logger: logger, on: eventLoop)
    }

    /// 查询个人收藏仓库
    @inlinable @discardableResult
    public func describeFavorRepositoryPersonalPaginated(_ input: DescribeFavorRepositoryPersonalRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFavorRepositoryPersonalResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFavorRepositoryPersonal, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询个人收藏仓库
    ///
    /// - Returns: `AsyncSequence`s of `Favors` and `DescribeFavorRepositoryPersonalResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFavorRepositoryPersonalPaginator(_ input: DescribeFavorRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFavorRepositoryPersonalRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFavorRepositoryPersonal, logger: logger, on: eventLoop)
    }
}
