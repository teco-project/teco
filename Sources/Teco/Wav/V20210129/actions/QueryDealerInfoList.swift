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
    /// QueryDealerInfoList请求参数结构体
    public struct QueryDealerInfoListRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: QueryDealerInfoListResponse) -> QueryDealerInfoListRequest? {
            guard response.hasMore == 1 else {
                return nil
            }
            return QueryDealerInfoListRequest(cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryDealerInfoList返回参数结构体
    public struct QueryDealerInfoListResponse: TCPaginatedResponse {
        /// 经销商信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [DealerInfo]?

        /// 分页游标，下次调用带上该值，则从当前的位置继续往后拉取新增的数据，以实现增量拉取。
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
        public func getItems() -> [DealerInfo] {
            self.pageData ?? []
        }
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable
    public func queryDealerInfoList(_ input: QueryDealerInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryDealerInfoListResponse> {
        self.client.execute(action: "QueryDealerInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable
    public func queryDealerInfoList(_ input: QueryDealerInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryDealerInfoListResponse {
        try await self.client.execute(action: "QueryDealerInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable
    public func queryDealerInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryDealerInfoListResponse> {
        let input = QueryDealerInfoListRequest(cursor: cursor, limit: limit)
        return self.client.execute(action: "QueryDealerInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable
    public func queryDealerInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryDealerInfoListResponse {
        let input = QueryDealerInfoListRequest(cursor: cursor, limit: limit)
        return try await self.client.execute(action: "QueryDealerInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable
    public func queryDealerInfoListPaginated(_ input: QueryDealerInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [DealerInfo])> {
        self.client.paginate(input: input, region: region, command: self.queryDealerInfoList, logger: logger, on: eventLoop)
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    @inlinable @discardableResult
    public func queryDealerInfoListPaginated(_ input: QueryDealerInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryDealerInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryDealerInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询经销商信息列表接口
    ///
    /// 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。
    ///
    /// - Returns: `AsyncSequence`s of `DealerInfo` and `QueryDealerInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryDealerInfoListPaginator(_ input: QueryDealerInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryDealerInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryDealerInfoList, logger: logger, on: eventLoop)
    }
}
