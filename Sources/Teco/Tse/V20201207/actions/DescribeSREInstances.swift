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

extension Tse {
    /// DescribeSREInstances请求参数结构体
    public struct DescribeSREInstancesRequest: TCPaginatedRequest {
        /// 请求过滤参数
        public let filters: [Filter]?

        /// 翻页单页查询限制数量[0,1000], 默认值0
        public let limit: Int64?

        /// 翻页单页偏移量，默认值0
        public let offset: Int64?

        /// 查询类型
        public let queryType: String?

        /// 调用方来源
        public let querySource: String?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.queryType = queryType
            self.querySource = querySource
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case queryType = "QueryType"
            case querySource = "QuerySource"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSREInstancesResponse) -> DescribeSREInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), queryType: self.queryType, querySource: self.querySource)
        }
    }

    /// DescribeSREInstances返回参数结构体
    public struct DescribeSREInstancesResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 实例记录
        public let content: [SREInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case content = "Content"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SREInstance`` list from the paginated response.
        public func getItems() -> [SREInstance] {
            self.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstancesResponse> {
        self.client.execute(action: "DescribeSREInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstancesResponse {
        try await self.client.execute(action: "DescribeSREInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstancesResponse> {
        self.describeSREInstances(.init(filters: filters, limit: limit, offset: offset, queryType: queryType, querySource: querySource), region: region, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstancesResponse {
        try await self.describeSREInstances(.init(filters: filters, limit: limit, offset: offset, queryType: queryType, querySource: querySource), region: region, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstancesPaginated(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SREInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeSREInstances, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable @discardableResult
    public func describeSREInstancesPaginated(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSREInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSREInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``SREInstance`` and ``DescribeSREInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSREInstancesPaginator(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSREInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSREInstances, logger: logger, on: eventLoop)
    }
}
