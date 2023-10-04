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

extension Cwp {
    /// DescribeSecurityBroadcasts请求参数结构体
    public struct DescribeSecurityBroadcastsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10 ，0=全部
        public let limit: UInt64?

        /// 筛选发布日期：开始时间
        public let beginDate: String?

        /// 筛选发布日期：结束时间
        public let endDate: String?

        /// 过滤安全播报类型：0-紧急通知，1-功能更新，2-行业荣誉，3-版本发布
        public let broadcastType: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, beginDate: String? = nil, endDate: String? = nil, broadcastType: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.beginDate = beginDate
            self.endDate = endDate
            self.broadcastType = broadcastType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case broadcastType = "BroadcastType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSecurityBroadcastsResponse) -> DescribeSecurityBroadcastsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, beginDate: self.beginDate, endDate: self.endDate, broadcastType: self.broadcastType)
        }
    }

    /// DescribeSecurityBroadcasts返回参数结构体
    public struct DescribeSecurityBroadcastsResponse: TCPaginatedResponse {
        /// 列表
        public let list: [Broadcasts]

        /// 总共多少条
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Broadcasts`` list from the paginated response.
        public func getItems() -> [Broadcasts] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable
    public func describeSecurityBroadcasts(_ input: DescribeSecurityBroadcastsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityBroadcastsResponse> {
        self.client.execute(action: "DescribeSecurityBroadcasts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable
    public func describeSecurityBroadcasts(_ input: DescribeSecurityBroadcastsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityBroadcastsResponse {
        try await self.client.execute(action: "DescribeSecurityBroadcasts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable
    public func describeSecurityBroadcasts(offset: UInt64? = nil, limit: UInt64? = nil, beginDate: String? = nil, endDate: String? = nil, broadcastType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityBroadcastsResponse> {
        self.describeSecurityBroadcasts(.init(offset: offset, limit: limit, beginDate: beginDate, endDate: endDate, broadcastType: broadcastType), region: region, logger: logger, on: eventLoop)
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable
    public func describeSecurityBroadcasts(offset: UInt64? = nil, limit: UInt64? = nil, beginDate: String? = nil, endDate: String? = nil, broadcastType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityBroadcastsResponse {
        try await self.describeSecurityBroadcasts(.init(offset: offset, limit: limit, beginDate: beginDate, endDate: endDate, broadcastType: broadcastType), region: region, logger: logger, on: eventLoop)
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable
    public func describeSecurityBroadcastsPaginated(_ input: DescribeSecurityBroadcastsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Broadcasts])> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityBroadcasts, logger: logger, on: eventLoop)
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    @inlinable @discardableResult
    public func describeSecurityBroadcastsPaginated(_ input: DescribeSecurityBroadcastsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSecurityBroadcastsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityBroadcasts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全播报列表
    ///
    /// 安全播报列表页
    ///
    /// - Returns: `AsyncSequence`s of ``Broadcasts`` and ``DescribeSecurityBroadcastsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSecurityBroadcastsPaginator(_ input: DescribeSecurityBroadcastsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSecurityBroadcastsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSecurityBroadcasts, logger: logger, on: eventLoop)
    }
}
