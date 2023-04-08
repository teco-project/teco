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
    /// QueryActivityList请求参数结构体
    public struct QueryActivityListRequest: TCPaginatedRequest {
        /// 分页游标，对应结果返回的NextCursor,首次请求保持为空
        public let cursor: String?

        /// 单页数据限制
        public let limit: Int64?

        public init(cursor: String? = nil, limit: Int64? = nil) {
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryActivityListResponse) -> QueryActivityListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryActivityListRequest(cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryActivityList返回参数结构体
    public struct QueryActivityListResponse: TCPaginatedResponse {
        /// 分页游标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 活码列表响应参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ActivityDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ActivityDetail] {
            self.pageData ?? []
        }
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(_ input: QueryActivityListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityListResponse> {
        self.client.execute(action: "QueryActivityList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(_ input: QueryActivityListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityListResponse {
        try await self.client.execute(action: "QueryActivityList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityListResponse> {
        self.queryActivityList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityListResponse {
        try await self.queryActivityList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityListPaginated(_ input: QueryActivityListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ActivityDetail])> {
        self.client.paginate(input: input, region: region, command: self.queryActivityList, logger: logger, on: eventLoop)
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable @discardableResult
    public func queryActivityListPaginated(_ input: QueryActivityListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryActivityListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryActivityList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    ///
    /// - Returns: `AsyncSequence`s of `ActivityDetail` and `QueryActivityListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryActivityListPaginator(_ input: QueryActivityListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryActivityListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryActivityList, logger: logger, on: eventLoop)
    }
}
