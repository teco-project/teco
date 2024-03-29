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

extension Csip {
    /// DescribeListenerList请求参数结构体
    public struct DescribeListenerListRequest: TCPaginatedRequest {
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeListenerListResponse) -> DescribeListenerListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.filter?.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(
                filter: {
                if let filter = self.filter {
                    return .init(limit: filter.limit, offset: (filter.offset ?? 0) + .init(response.getItems().count), order: filter.order, by: filter.by, filters: filter.filters, startTime: filter.startTime, endTime: filter.endTime)
                } else {
                    return .init(offset: .init(response.getItems().count))
                }
                }()
            )
        }
    }

    /// DescribeListenerList返回参数结构体
    public struct DescribeListenerListResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 监听器列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ClbListenerListInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClbListenerListInfo`` list from the paginated response.
        public func getItems() -> [ClbListenerListInfo] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询clb监听器列表
    @inlinable
    public func describeListenerList(_ input: DescribeListenerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerListResponse> {
        self.client.execute(action: "DescribeListenerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询clb监听器列表
    @inlinable
    public func describeListenerList(_ input: DescribeListenerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerListResponse {
        try await self.client.execute(action: "DescribeListenerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询clb监听器列表
    @inlinable
    public func describeListenerList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerListResponse> {
        self.describeListenerList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询clb监听器列表
    @inlinable
    public func describeListenerList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerListResponse {
        try await self.describeListenerList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询clb监听器列表
    @inlinable
    public func describeListenerListPaginated(_ input: DescribeListenerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClbListenerListInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeListenerList, logger: logger, on: eventLoop)
    }

    /// 查询clb监听器列表
    @inlinable @discardableResult
    public func describeListenerListPaginated(_ input: DescribeListenerListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListenerListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListenerList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询clb监听器列表
    ///
    /// - Returns: `AsyncSequence`s of ``ClbListenerListInfo`` and ``DescribeListenerListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListenerListPaginator(_ input: DescribeListenerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListenerListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListenerList, logger: logger, on: eventLoop)
    }
}
