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

extension Apigateway {
    /// DescribeUpstreams请求参数结构体
    public struct DescribeUpstreamsRequest: TCPaginatedRequest {
        /// 分页大小
        public let limit: UInt64

        /// 分页起始位置
        public let offset: UInt64

        /// 过滤条件，支持后端通道ID（UpstreamId）、后端通道名字（UpstreamName）过滤查询
        public let filters: [Filter]?

        public init(limit: UInt64, offset: UInt64, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUpstreamsResponse) -> DescribeUpstreamsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUpstreamsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeUpstreams返回参数结构体
    public struct DescribeUpstreamsResponse: TCPaginatedResponse {
        /// 查询结果
        public let result: DescribeUpstreamInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UpstreamInfo] {
            self.result.upstreamSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 查询后端通道列表详情
    @inlinable
    public func describeUpstreams(_ input: DescribeUpstreamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpstreamsResponse> {
        self.client.execute(action: "DescribeUpstreams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询后端通道列表详情
    @inlinable
    public func describeUpstreams(_ input: DescribeUpstreamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpstreamsResponse {
        try await self.client.execute(action: "DescribeUpstreams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询后端通道列表详情
    @inlinable
    public func describeUpstreams(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpstreamsResponse> {
        self.describeUpstreams(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询后端通道列表详情
    @inlinable
    public func describeUpstreams(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpstreamsResponse {
        try await self.describeUpstreams(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询后端通道列表详情
    @inlinable
    public func describeUpstreamsPaginated(_ input: DescribeUpstreamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UpstreamInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUpstreams, logger: logger, on: eventLoop)
    }

    /// 查询后端通道列表详情
    @inlinable @discardableResult
    public func describeUpstreamsPaginated(_ input: DescribeUpstreamsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUpstreamsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUpstreams, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询后端通道列表详情
    ///
    /// - Returns: `AsyncSequence`s of `UpstreamInfo` and `DescribeUpstreamsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUpstreamsPaginator(_ input: DescribeUpstreamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUpstreamsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUpstreams, logger: logger, on: eventLoop)
    }
}
