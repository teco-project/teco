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
    /// QueryMiniAppCodeList请求参数结构体
    public struct QueryMiniAppCodeListRequest: TCPaginatedRequest {
        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
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
        public func makeNextRequest(with response: QueryMiniAppCodeListResponse) -> QueryMiniAppCodeListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryMiniAppCodeListRequest(cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryMiniAppCodeList返回参数结构体
    public struct QueryMiniAppCodeListResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 小程序码列表响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [MiniAppCodeInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MiniAppCodeInfo`` list from the paginated response.
        public func getItems() -> [MiniAppCodeInfo] {
            self.pageData ?? []
        }
    }

    /// 查询小程序码列表接口
    @inlinable
    public func queryMiniAppCodeList(_ input: QueryMiniAppCodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMiniAppCodeListResponse> {
        self.client.execute(action: "QueryMiniAppCodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询小程序码列表接口
    @inlinable
    public func queryMiniAppCodeList(_ input: QueryMiniAppCodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMiniAppCodeListResponse {
        try await self.client.execute(action: "QueryMiniAppCodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询小程序码列表接口
    @inlinable
    public func queryMiniAppCodeList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMiniAppCodeListResponse> {
        self.queryMiniAppCodeList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询小程序码列表接口
    @inlinable
    public func queryMiniAppCodeList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMiniAppCodeListResponse {
        try await self.queryMiniAppCodeList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询小程序码列表接口
    @inlinable
    public func queryMiniAppCodeListPaginated(_ input: QueryMiniAppCodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [MiniAppCodeInfo])> {
        self.client.paginate(input: input, region: region, command: self.queryMiniAppCodeList, logger: logger, on: eventLoop)
    }

    /// 查询小程序码列表接口
    @inlinable @discardableResult
    public func queryMiniAppCodeListPaginated(_ input: QueryMiniAppCodeListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryMiniAppCodeListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryMiniAppCodeList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询小程序码列表接口
    ///
    /// - Returns: `AsyncSequence`s of `MiniAppCodeInfo` and `QueryMiniAppCodeListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryMiniAppCodeListPaginator(_ input: QueryMiniAppCodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryMiniAppCodeListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryMiniAppCodeList, logger: logger, on: eventLoop)
    }
}
