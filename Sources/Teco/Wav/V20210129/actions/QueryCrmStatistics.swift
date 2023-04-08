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

extension Wav {
    /// QueryCrmStatistics请求参数结构体
    public struct QueryCrmStatisticsRequest: TCPaginatedRequest {
        /// 查询开始时间， 单位秒
        public let beginTime: UInt64

        /// 查询结束时间， 单位秒
        public let endTime: UInt64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        /// 请求的企业成员id，为空时默认全租户
        public let salesId: String?

        /// 请求的部门id，为空时默认全租户
        public let orgId: UInt64?

        public init(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, salesId: String? = nil, orgId: UInt64? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.cursor = cursor
            self.limit = limit
            self.salesId = salesId
            self.orgId = orgId
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case cursor = "Cursor"
            case limit = "Limit"
            case salesId = "SalesId"
            case orgId = "OrgId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryCrmStatisticsResponse) -> QueryCrmStatisticsRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryCrmStatisticsRequest(beginTime: self.beginTime, endTime: self.endTime, cursor: response.nextCursor, limit: self.limit, salesId: self.salesId, orgId: self.orgId)
        }
    }

    /// QueryCrmStatistics返回参数结构体
    public struct QueryCrmStatisticsResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// CRM统计响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [CrmStatisticsData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CrmStatisticsData] {
            self.pageData ?? []
        }
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable
    public func queryCrmStatistics(_ input: QueryCrmStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCrmStatisticsResponse> {
        self.client.execute(action: "QueryCrmStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable
    public func queryCrmStatistics(_ input: QueryCrmStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCrmStatisticsResponse {
        try await self.client.execute(action: "QueryCrmStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable
    public func queryCrmStatistics(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, salesId: String? = nil, orgId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCrmStatisticsResponse> {
        self.queryCrmStatistics(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit, salesId: salesId, orgId: orgId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable
    public func queryCrmStatistics(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, salesId: String? = nil, orgId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCrmStatisticsResponse {
        try await self.queryCrmStatistics(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit, salesId: salesId, orgId: orgId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable
    public func queryCrmStatisticsPaginated(_ input: QueryCrmStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [CrmStatisticsData])> {
        self.client.paginate(input: input, region: region, command: self.queryCrmStatistics, logger: logger, on: eventLoop)
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    @inlinable @discardableResult
    public func queryCrmStatisticsPaginated(_ input: QueryCrmStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (QueryCrmStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryCrmStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询CRM统计数据接口
    ///
    /// 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据
    ///
    /// - Returns: `AsyncSequence`s of `CrmStatisticsData` and `QueryCrmStatisticsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryCrmStatisticsPaginator(_ input: QueryCrmStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryCrmStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryCrmStatistics, logger: logger, on: eventLoop)
    }
}
