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

extension Wav {
    /// QueryActivityJoinList请求参数结构体
    public struct QueryActivityJoinListRequest: TCPaginatedRequest {
        /// 活动id
        public let activityId: Int64

        /// 分页游标，对应结果返回的NextCursor,首次请求保持为空
        public let cursor: String?

        /// 单页数据限制
        public let limit: Int64?

        public init(activityId: Int64, cursor: String? = nil, limit: Int64? = nil) {
            self.activityId = activityId
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryActivityJoinListResponse) -> QueryActivityJoinListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryActivityJoinListRequest(activityId: self.activityId, cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryActivityJoinList返回参数结构体
    public struct QueryActivityJoinListResponse: TCPaginatedResponse {
        /// 分页游标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 活码列表响应参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ActivityJoinDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ActivityJoinDetail] {
            self.pageData ?? []
        }
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable
    public func queryActivityJoinList(_ input: QueryActivityJoinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityJoinListResponse> {
        self.client.execute(action: "QueryActivityJoinList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable
    public func queryActivityJoinList(_ input: QueryActivityJoinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityJoinListResponse {
        try await self.client.execute(action: "QueryActivityJoinList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable
    public func queryActivityJoinList(activityId: Int64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityJoinListResponse> {
        self.queryActivityJoinList(.init(activityId: activityId, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable
    public func queryActivityJoinList(activityId: Int64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityJoinListResponse {
        try await self.queryActivityJoinList(.init(activityId: activityId, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable
    public func queryActivityJoinListPaginated(_ input: QueryActivityJoinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ActivityJoinDetail])> {
        self.client.paginate(input: input, region: region, command: self.queryActivityJoinList, logger: logger, on: eventLoop)
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    @inlinable @discardableResult
    public func queryActivityJoinListPaginated(_ input: QueryActivityJoinListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryActivityJoinListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryActivityJoinList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询活动参与明细列表接口
    ///
    /// 根据游标拉取活动参与列表信息
    ///
    /// - Returns: `AsyncSequence`s of `ActivityJoinDetail` and `QueryActivityJoinListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryActivityJoinListPaginator(_ input: QueryActivityJoinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryActivityJoinListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryActivityJoinList, logger: logger, on: eventLoop)
    }
}
