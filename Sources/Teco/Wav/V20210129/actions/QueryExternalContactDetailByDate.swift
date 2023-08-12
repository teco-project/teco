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
    /// QueryExternalContactDetailByDate请求参数结构体
    public struct QueryExternalContactDetailByDateRequest: TCPaginatedRequest {
        /// 查询结束时间， 单位秒
        public let beginTime: UInt64

        /// 查询结束时间， 单位秒
        public let endTime: UInt64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: UInt64?

        public init(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: UInt64? = nil) {
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
        public func makeNextRequest(with response: QueryExternalContactDetailByDateResponse) -> QueryExternalContactDetailByDateRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryExternalContactDetailByDateRequest(beginTime: self.beginTime, endTime: self.endTime, cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryExternalContactDetailByDate返回参数结构体
    public struct QueryExternalContactDetailByDateResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 外部联系人详细信息
        public let pageData: [ExternalContactDetailPro]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ExternalContactDetailPro`` list from the paginated response.
        public func getItems() -> [ExternalContactDetailPro] {
            self.pageData
        }
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable
    public func queryExternalContactDetailByDate(_ input: QueryExternalContactDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactDetailByDateResponse> {
        self.client.execute(action: "QueryExternalContactDetailByDate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable
    public func queryExternalContactDetailByDate(_ input: QueryExternalContactDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactDetailByDateResponse {
        try await self.client.execute(action: "QueryExternalContactDetailByDate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable
    public func queryExternalContactDetailByDate(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactDetailByDateResponse> {
        self.queryExternalContactDetailByDate(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable
    public func queryExternalContactDetailByDate(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactDetailByDateResponse {
        try await self.queryExternalContactDetailByDate(.init(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable
    public func queryExternalContactDetailByDatePaginated(_ input: QueryExternalContactDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ExternalContactDetailPro])> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactDetailByDate, logger: logger, on: eventLoop)
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    @inlinable @discardableResult
    public func queryExternalContactDetailByDatePaginated(_ input: QueryExternalContactDetailByDateRequest, region: TCRegion? = nil, onResponse: @escaping (QueryExternalContactDetailByDateResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactDetailByDate, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 通过时间段查询外部联系人详情列表
    ///
    /// 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表
    ///
    /// - Returns: `AsyncSequence`s of ``ExternalContactDetailPro`` and ``QueryExternalContactDetailByDateResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryExternalContactDetailByDatePaginator(_ input: QueryExternalContactDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryExternalContactDetailByDateRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryExternalContactDetailByDate, logger: logger, on: eventLoop)
    }
}
