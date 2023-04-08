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

import TecoCore
import TecoPaginationHelpers

extension Wav {
    /// QueryClueInfoList请求参数结构体
    public struct QueryClueInfoListRequest: TCPaginatedRequest {
        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        /// 查询开始时间， 单位秒
        public let beginTime: UInt64?

        /// 查询结束时间， 单位秒
        public let endTime: UInt64?

        public init(cursor: String? = nil, limit: Int64? = nil, beginTime: UInt64? = nil, endTime: UInt64? = nil) {
            self.cursor = cursor
            self.limit = limit
            self.beginTime = beginTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case cursor = "Cursor"
            case limit = "Limit"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryClueInfoListResponse) -> QueryClueInfoListRequest? {
            guard response.hasMore == 1 else {
                return nil
            }
            return QueryClueInfoListRequest(cursor: response.nextCursor, limit: self.limit, beginTime: self.beginTime, endTime: self.endTime)
        }
    }

    /// QueryClueInfoList返回参数结构体
    public struct QueryClueInfoListResponse: TCPaginatedResponse {
        /// 线索信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ClueInfoDetail]?

        /// 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 是否还有更多数据。0-否；1-是。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hasMore: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageData = "PageData"
            case nextCursor = "NextCursor"
            case hasMore = "HasMore"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClueInfoDetail] {
            self.pageData ?? []
        }
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryClueInfoListResponse> {
        self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryClueInfoListResponse {
        try await self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(cursor: String? = nil, limit: Int64? = nil, beginTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryClueInfoListResponse> {
        self.queryClueInfoList(.init(cursor: cursor, limit: limit, beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(cursor: String? = nil, limit: Int64? = nil, beginTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryClueInfoListResponse {
        try await self.queryClueInfoList(.init(cursor: cursor, limit: limit, beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoListPaginated(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ClueInfoDetail])> {
        self.client.paginate(input: input, region: region, command: self.queryClueInfoList, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable @discardableResult
    public func queryClueInfoListPaginated(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryClueInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryClueInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    ///
    /// - Returns: `AsyncSequence`s of `ClueInfoDetail` and `QueryClueInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryClueInfoListPaginator(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryClueInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryClueInfoList, logger: logger, on: eventLoop)
    }
}
