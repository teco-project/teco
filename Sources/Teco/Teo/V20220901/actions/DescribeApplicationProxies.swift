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

extension Teo {
    /// DescribeApplicationProxies请求参数结构体
    public struct DescribeApplicationProxiesRequest: TCPaginatedRequest {
        /// 分页查询偏移量。默认为0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>proxy-id
        ///
        /// 按照【<strong>代理ID</strong>】进行过滤。代理ID形如：proxy-ev2sawbwfd。
        ///
        /// 类型：String
        ///
        /// 必选：否</li><li>zone-id
        ///
        /// 按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-vawer2vadg。
        ///
        /// 类型：String
        ///
        /// 必选：否</li>
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationProxiesResponse) -> DescribeApplicationProxiesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationProxiesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeApplicationProxies返回参数结构体
    public struct DescribeApplicationProxiesResponse: TCPaginatedResponse {
        /// 应用代理列表。
        public let applicationProxies: [ApplicationProxy]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationProxies = "ApplicationProxies"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApplicationProxy] {
            self.applicationProxies
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxiesResponse> {
        self.client.execute(action: "DescribeApplicationProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxiesResponse {
        try await self.client.execute(action: "DescribeApplicationProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxiesResponse> {
        self.describeApplicationProxies(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxiesResponse {
        try await self.describeApplicationProxies(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxiesPaginated(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ApplicationProxy])> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationProxies, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable @discardableResult
    public func describeApplicationProxiesPaginated(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationProxiesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationProxies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    ///
    /// - Returns: `AsyncSequence`s of `ApplicationProxy` and `DescribeApplicationProxiesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationProxiesPaginator(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationProxiesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplicationProxies, logger: logger, on: eventLoop)
    }
}
