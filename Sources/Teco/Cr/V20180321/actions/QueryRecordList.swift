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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Cr {
    /// QueryRecordList请求参数结构体
    public struct QueryRecordListRequest: TCPaginatedRequest {
        /// 模块名。AiApi
        public let module: String

        /// 操作名。QueryRecordList
        public let operation: String

        /// 偏移值
        public let offset: Int64

        /// 偏移位移，最大20
        public let limit: Int64

        /// 任务ID，二者必填一个
        public let botId: String?

        /// 任务名称，二者必填一个
        public let botName: String?

        /// 被叫号码
        public let calledPhone: String?

        /// 开始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startBizDate: Date?

        /// 结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endBizDate: Date?

        public init(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil) {
            self.module = module
            self.operation = operation
            self.offset = offset
            self.limit = limit
            self.botId = botId
            self.botName = botName
            self.calledPhone = calledPhone
            self._startBizDate = .init(wrappedValue: startBizDate)
            self._endBizDate = .init(wrappedValue: endBizDate)
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case offset = "Offset"
            case limit = "Limit"
            case botId = "BotId"
            case botName = "BotName"
            case calledPhone = "CalledPhone"
            case startBizDate = "StartBizDate"
            case endBizDate = "EndBizDate"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryRecordListResponse) -> QueryRecordListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return QueryRecordListRequest(module: self.module, operation: self.operation, offset: self.offset + .init(response.getItems().count), limit: self.limit, botId: self.botId, botName: self.botName, calledPhone: self.calledPhone, startBizDate: self.startBizDate, endBizDate: self.endBizDate)
        }
    }

    /// QueryRecordList返回参数结构体
    public struct QueryRecordListResponse: TCPaginatedResponse {
        /// 录音列表。
        public let recordList: [RecordInfo]

        /// 总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordList = "RecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RecordInfo] {
            self.recordList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(_ input: QueryRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRecordListResponse> {
        self.client.execute(action: "QueryRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(_ input: QueryRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRecordListResponse {
        try await self.client.execute(action: "QueryRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRecordListResponse> {
        let input = QueryRecordListRequest(module: module, operation: operation, offset: offset, limit: limit, botId: botId, botName: botName, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate)
        return self.client.execute(action: "QueryRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRecordListResponse {
        let input = QueryRecordListRequest(module: module, operation: operation, offset: offset, limit: limit, botId: botId, botName: botName, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate)
        return try await self.client.execute(action: "QueryRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordListPaginated(_ input: QueryRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RecordInfo])> {
        self.client.paginate(input: input, region: region, command: self.queryRecordList, logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    @inlinable @discardableResult
    public func queryRecordListPaginated(_ input: QueryRecordListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryRecordListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryRecordList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    ///
    /// - Returns: `AsyncSequence`s of `RecordInfo` and `QueryRecordListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryRecordListPaginator(_ input: QueryRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryRecordListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryRecordList, logger: logger, on: eventLoop)
    }
}
