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

extension Tsf {
    /// DescribePrograms请求参数结构体
    public struct DescribeProgramsRequest: TCPaginatedRequest {
        /// 模糊查询数据集ID，数据集名称，不传入时查询全量
        public let searchWord: String?

        /// 每页数量
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        public init(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.searchWord = searchWord
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProgramsResponse) -> DescribeProgramsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(searchWord: self.searchWord, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribePrograms返回参数结构体
    public struct DescribeProgramsResponse: TCPaginatedResponse {
        /// 数据集列表
        public let result: PagedProgram

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Program`` list from the paginated response.
        public func getItems() -> [Program] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProgramsResponse> {
        self.client.execute(action: "DescribePrograms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramsResponse {
        try await self.client.execute(action: "DescribePrograms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProgramsResponse> {
        self.describePrograms(.init(searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramsResponse {
        try await self.describePrograms(.init(searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describeProgramsPaginated(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Program])> {
        self.client.paginate(input: input, region: region, command: self.describePrograms, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable @discardableResult
    public func describeProgramsPaginated(_ input: DescribeProgramsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProgramsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrograms, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    ///
    /// - Returns: `AsyncSequence`s of ``Program`` and ``DescribeProgramsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProgramsPaginator(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProgramsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrograms, logger: logger, on: eventLoop)
    }
}
