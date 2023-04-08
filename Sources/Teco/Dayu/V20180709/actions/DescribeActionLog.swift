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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Dayu {
    /// DescribeActionLog请求参数结构体
    public struct DescribeActionLogRequest: TCPaginatedRequest {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String?

        /// 搜索值，只支持资源ID或用户UIN
        public let filter: String?

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        public init(startTime: Date, endTime: Date, business: String? = nil, filter: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.business = business
            self.filter = filter
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case business = "Business"
            case filter = "Filter"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeActionLogResponse) -> DescribeActionLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeActionLogRequest(startTime: self.startTime, endTime: self.endTime, business: self.business, filter: self.filter, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeActionLog返回参数结构体
    public struct DescribeActionLogResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: UInt64

        /// 记录数组
        public let data: [KeyValueRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [KeyValueRecord] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取操作日志
    @inlinable
    public func describeActionLog(_ input: DescribeActionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActionLogResponse> {
        self.client.execute(action: "DescribeActionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取操作日志
    @inlinable
    public func describeActionLog(_ input: DescribeActionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActionLogResponse {
        try await self.client.execute(action: "DescribeActionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取操作日志
    @inlinable
    public func describeActionLog(startTime: Date, endTime: Date, business: String? = nil, filter: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActionLogResponse> {
        self.describeActionLog(.init(startTime: startTime, endTime: endTime, business: business, filter: filter, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取操作日志
    @inlinable
    public func describeActionLog(startTime: Date, endTime: Date, business: String? = nil, filter: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActionLogResponse {
        try await self.describeActionLog(.init(startTime: startTime, endTime: endTime, business: business, filter: filter, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取操作日志
    @inlinable
    public func describeActionLogPaginated(_ input: DescribeActionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [KeyValueRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeActionLog, logger: logger, on: eventLoop)
    }

    /// 获取操作日志
    @inlinable @discardableResult
    public func describeActionLogPaginated(_ input: DescribeActionLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeActionLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeActionLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取操作日志
    ///
    /// - Returns: `AsyncSequence`s of `KeyValueRecord` and `DescribeActionLogResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeActionLogPaginator(_ input: DescribeActionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeActionLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeActionLog, logger: logger, on: eventLoop)
    }
}
