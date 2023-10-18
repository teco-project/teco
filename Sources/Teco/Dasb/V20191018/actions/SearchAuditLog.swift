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
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dasb {
    /// SearchAuditLog请求参数结构体
    public struct SearchAuditLogRequest: TCPaginatedRequest {
        /// 开始时间，不得早于当前时间的180天前
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 偏移量
        public let offset: UInt64?

        /// 每页容量，默认为20，最大200
        public let limit: UInt64?

        public init(startTime: Date, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchAuditLogResponse) -> SearchAuditLogRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// SearchAuditLog返回参数结构体
    public struct SearchAuditLogResponse: TCPaginatedResponse {
        /// 审计日志
        public let auditLogSet: [AuditLogResult]

        /// 日志总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case auditLogSet = "AuditLogSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AuditLogResult`` list from the paginated response.
        public func getItems() -> [AuditLogResult] {
            self.auditLogSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 搜索审计日志
    @inlinable
    public func searchAuditLog(_ input: SearchAuditLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAuditLogResponse> {
        self.client.execute(action: "SearchAuditLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索审计日志
    @inlinable
    public func searchAuditLog(_ input: SearchAuditLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAuditLogResponse {
        try await self.client.execute(action: "SearchAuditLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索审计日志
    @inlinable
    public func searchAuditLog(startTime: Date, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAuditLogResponse> {
        self.searchAuditLog(.init(startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索审计日志
    @inlinable
    public func searchAuditLog(startTime: Date, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAuditLogResponse {
        try await self.searchAuditLog(.init(startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索审计日志
    @inlinable
    public func searchAuditLogPaginated(_ input: SearchAuditLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AuditLogResult])> {
        self.client.paginate(input: input, region: region, command: self.searchAuditLog, logger: logger, on: eventLoop)
    }

    /// 搜索审计日志
    @inlinable @discardableResult
    public func searchAuditLogPaginated(_ input: SearchAuditLogRequest, region: TCRegion? = nil, onResponse: @escaping (SearchAuditLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchAuditLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索审计日志
    ///
    /// - Returns: `AsyncSequence`s of ``AuditLogResult`` and ``SearchAuditLogResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchAuditLogPaginator(_ input: SearchAuditLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchAuditLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchAuditLog, logger: logger, on: eventLoop)
    }
}
