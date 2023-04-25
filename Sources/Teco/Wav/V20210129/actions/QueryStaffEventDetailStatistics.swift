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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Wav {
    /// QueryStaffEventDetailStatistics请求参数结构体
    public struct QueryStaffEventDetailStatisticsRequest: TCPaginatedRequest {
        /// 查询开始时间， 单位秒
        public let beginTime: UInt64

        /// 查询结束时间， 单位秒
        public let endTime: UInt64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        public init(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryStaffEventDetailStatisticsResponse) -> QueryStaffEventDetailStatisticsRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryStaffEventDetailStatisticsRequest(beginTime: self.beginTime, endTime: self.endTime, cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryStaffEventDetailStatistics返回参数结构体
    public struct QueryStaffEventDetailStatisticsResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 企业成员SaaS使用明细统计响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [SalesActionEventDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SalesActionEventDetail] {
            self.pageData ?? []
        }
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable
    public func queryStaffEventDetailStatistics(_ input: QueryStaffEventDetailStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryStaffEventDetailStatisticsResponse> {
        self.client.execute(action: "QueryStaffEventDetailStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable
    public func queryStaffEventDetailStatistics(_ input: QueryStaffEventDetailStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryStaffEventDetailStatisticsResponse {
        try await self.client.execute(action: "QueryStaffEventDetailStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable
    public func queryStaffEventDetailStatistics(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryStaffEventDetailStatisticsResponse> {
        self.queryStaffEventDetailStatistics(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable
    public func queryStaffEventDetailStatistics(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryStaffEventDetailStatisticsResponse {
        try await self.queryStaffEventDetailStatistics(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable
    public func queryStaffEventDetailStatisticsPaginated(_ input: QueryStaffEventDetailStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [SalesActionEventDetail])> {
        self.client.paginate(input: input, region: region, command: self.queryStaffEventDetailStatistics, logger: logger, on: eventLoop)
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    @inlinable @discardableResult
    public func queryStaffEventDetailStatisticsPaginated(_ input: QueryStaffEventDetailStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (QueryStaffEventDetailStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryStaffEventDetailStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 企业成员SaaS使用明细数据接口
    ///
    /// 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。
    ///
    /// - Returns: `AsyncSequence`s of `SalesActionEventDetail` and `QueryStaffEventDetailStatisticsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryStaffEventDetailStatisticsPaginator(_ input: QueryStaffEventDetailStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryStaffEventDetailStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryStaffEventDetailStatistics, logger: logger, on: eventLoop)
    }
}
