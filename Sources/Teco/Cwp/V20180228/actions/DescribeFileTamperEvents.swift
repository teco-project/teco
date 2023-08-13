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

extension Cwp {
    /// DescribeFileTamperEvents请求参数结构体
    public struct DescribeFileTamperEventsRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - Status - String - 是否必填：否 - 处理状态  0 -- 待处理 1 -- 已加白 2 -- 已删除 3 - 已忽略
        /// - ModifyTime - String - 是否必填：否 - 最近发生时间
        /// - Uuid- String - 是否必填：否 - 主机uuid查询
        /// - RuleCategory- string - 是否必填：否 - 规则类别 0 系统规则 1 自定义规则
        /// - FileAction- string - 是否必填：否 - 威胁行为 read 读取文件 write 写文件
        public let filters: [Filters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式 ASC,DESC
        public let order: String?

        /// 排序字段 CreateTime、ModifyTime
        public let by: String?

        public init(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFileTamperEventsResponse) -> DescribeFileTamperEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFileTamperEventsRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeFileTamperEvents返回参数结构体
    public struct DescribeFileTamperEventsResponse: TCPaginatedResponse {
        /// 核心文件事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [FileTamperEvent]?

        /// 数据总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FileTamperEvent`` list from the paginated response.
        public func getItems() -> [FileTamperEvent] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 核心文件监控事件列表
    @inlinable
    public func describeFileTamperEvents(_ input: DescribeFileTamperEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileTamperEventsResponse> {
        self.client.execute(action: "DescribeFileTamperEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 核心文件监控事件列表
    @inlinable
    public func describeFileTamperEvents(_ input: DescribeFileTamperEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileTamperEventsResponse {
        try await self.client.execute(action: "DescribeFileTamperEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 核心文件监控事件列表
    @inlinable
    public func describeFileTamperEvents(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileTamperEventsResponse> {
        self.describeFileTamperEvents(.init(filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 核心文件监控事件列表
    @inlinable
    public func describeFileTamperEvents(filters: [Filters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileTamperEventsResponse {
        try await self.describeFileTamperEvents(.init(filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 核心文件监控事件列表
    @inlinable
    public func describeFileTamperEventsPaginated(_ input: DescribeFileTamperEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [FileTamperEvent])> {
        self.client.paginate(input: input, region: region, command: self.describeFileTamperEvents, logger: logger, on: eventLoop)
    }

    /// 核心文件监控事件列表
    @inlinable @discardableResult
    public func describeFileTamperEventsPaginated(_ input: DescribeFileTamperEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFileTamperEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFileTamperEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 核心文件监控事件列表
    ///
    /// - Returns: `AsyncSequence`s of ``FileTamperEvent`` and ``DescribeFileTamperEventsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFileTamperEventsPaginator(_ input: DescribeFileTamperEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFileTamperEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFileTamperEvents, logger: logger, on: eventLoop)
    }
}
