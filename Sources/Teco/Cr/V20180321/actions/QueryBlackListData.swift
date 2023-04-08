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
    /// QueryBlackListData请求参数结构体
    public struct QueryBlackListDataRequest: TCPaginatedRequest {
        /// 模块:AiApi
        public let module: String

        /// 操作:QueryBlackListData
        public let operation: String

        /// 页码
        public let offset: Int64?

        /// 每页数量
        public let limit: Int64?

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

        /// 电话号码、手机
        public let blackValue: String?

        public init(module: String, operation: String, offset: Int64? = nil, limit: Int64? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, blackValue: String? = nil) {
            self.module = module
            self.operation = operation
            self.offset = offset
            self.limit = limit
            self._startBizDate = .init(wrappedValue: startBizDate)
            self._endBizDate = .init(wrappedValue: endBizDate)
            self.blackValue = blackValue
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case offset = "Offset"
            case limit = "Limit"
            case startBizDate = "StartBizDate"
            case endBizDate = "EndBizDate"
            case blackValue = "BlackValue"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryBlackListDataResponse) -> QueryBlackListDataRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return QueryBlackListDataRequest(module: self.module, operation: self.operation, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, startBizDate: self.startBizDate, endBizDate: self.endBizDate, blackValue: self.blackValue)
        }
    }

    /// QueryBlackListData返回参数结构体
    public struct QueryBlackListDataResponse: TCPaginatedResponse {
        /// 总数。
        public let totalCount: Int64

        /// 黑名单列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [BlackListData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BlackListData] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看黑名单数据列表
    @inlinable
    public func queryBlackListData(_ input: QueryBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryBlackListDataResponse> {
        self.client.execute(action: "QueryBlackListData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看黑名单数据列表
    @inlinable
    public func queryBlackListData(_ input: QueryBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBlackListDataResponse {
        try await self.client.execute(action: "QueryBlackListData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看黑名单数据列表
    @inlinable
    public func queryBlackListData(module: String, operation: String, offset: Int64? = nil, limit: Int64? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, blackValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryBlackListDataResponse> {
        self.queryBlackListData(.init(module: module, operation: operation, offset: offset, limit: limit, startBizDate: startBizDate, endBizDate: endBizDate, blackValue: blackValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查看黑名单数据列表
    @inlinable
    public func queryBlackListData(module: String, operation: String, offset: Int64? = nil, limit: Int64? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, blackValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBlackListDataResponse {
        try await self.queryBlackListData(.init(module: module, operation: operation, offset: offset, limit: limit, startBizDate: startBizDate, endBizDate: endBizDate, blackValue: blackValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查看黑名单数据列表
    @inlinable
    public func queryBlackListDataPaginated(_ input: QueryBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BlackListData])> {
        self.client.paginate(input: input, region: region, command: self.queryBlackListData, logger: logger, on: eventLoop)
    }

    /// 查看黑名单数据列表
    @inlinable @discardableResult
    public func queryBlackListDataPaginated(_ input: QueryBlackListDataRequest, region: TCRegion? = nil, onResponse: @escaping (QueryBlackListDataResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryBlackListData, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看黑名单数据列表
    ///
    /// - Returns: `AsyncSequence`s of `BlackListData` and `QueryBlackListDataResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryBlackListDataPaginator(_ input: QueryBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryBlackListDataRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryBlackListData, logger: logger, on: eventLoop)
    }
}
