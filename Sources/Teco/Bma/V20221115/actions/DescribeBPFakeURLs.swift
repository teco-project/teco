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

extension Bma {
    /// DescribeBPFakeURLs请求参数结构体
    public struct DescribeBPFakeURLsRequest: TCPaginatedRequest {
        /// 过滤参数
        public let filters: [Filter]?

        /// 页数
        public let pageSize: Int64?

        /// 页码
        public let pageNumber: Int64?

        public init(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBPFakeURLsResponse) -> DescribeBPFakeURLsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBPFakeURLsRequest(filters: self.filters, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeBPFakeURLs返回参数结构体
    public struct DescribeBPFakeURLsResponse: TCPaginatedResponse {
        /// 仿冒网址列表
        public let fakeURLs: [FakeURLData]

        /// 仿冒网址总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fakeURLs = "FakeURLs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FakeURLData`` list from the paginated response.
        public func getItems() -> [FakeURLData] {
            self.fakeURLs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询仿冒网址列表
    @inlinable
    public func describeBPFakeURLs(_ input: DescribeBPFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPFakeURLsResponse> {
        self.client.execute(action: "DescribeBPFakeURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询仿冒网址列表
    @inlinable
    public func describeBPFakeURLs(_ input: DescribeBPFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPFakeURLsResponse {
        try await self.client.execute(action: "DescribeBPFakeURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询仿冒网址列表
    @inlinable
    public func describeBPFakeURLs(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPFakeURLsResponse> {
        self.describeBPFakeURLs(.init(filters: filters, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查询仿冒网址列表
    @inlinable
    public func describeBPFakeURLs(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPFakeURLsResponse {
        try await self.describeBPFakeURLs(.init(filters: filters, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查询仿冒网址列表
    @inlinable
    public func describeBPFakeURLsPaginated(_ input: DescribeBPFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FakeURLData])> {
        self.client.paginate(input: input, region: region, command: self.describeBPFakeURLs, logger: logger, on: eventLoop)
    }

    /// 查询仿冒网址列表
    @inlinable @discardableResult
    public func describeBPFakeURLsPaginated(_ input: DescribeBPFakeURLsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBPFakeURLsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBPFakeURLs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询仿冒网址列表
    ///
    /// - Returns: `AsyncSequence`s of `FakeURLData` and `DescribeBPFakeURLsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBPFakeURLsPaginator(_ input: DescribeBPFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBPFakeURLsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBPFakeURLs, logger: logger, on: eventLoop)
    }
}
