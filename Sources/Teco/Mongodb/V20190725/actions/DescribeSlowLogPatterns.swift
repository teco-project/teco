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

extension Mongodb {
    /// DescribeSlowLogPatterns请求参数结构体
    public struct DescribeSlowLogPatternsRequest: TCPaginatedRequest {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 慢日志起始时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 慢日志终止时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 慢日志执行时间阈值，返回执行时间超过该阈值的慢日志，单位为毫秒(ms)，最小为100毫秒。
        public let slowMS: UInt64

        /// 偏移量，最小值为0，最大值为10000，默认值为0。
        public let offset: UInt64?

        /// 分页大小，最小值为1，最大值为100，默认值为20。
        public let limit: UInt64?

        /// 慢日志返回格式，可设置为json，不传默认返回原生慢日志格式。
        public let format: String?

        public init(instanceId: String, startTime: Date, endTime: Date, slowMS: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, format: String? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.slowMS = slowMS
            self.offset = offset
            self.limit = limit
            self.format = format
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case slowMS = "SlowMS"
            case offset = "Offset"
            case limit = "Limit"
            case format = "Format"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSlowLogPatternsResponse) -> DescribeSlowLogPatternsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, slowMS: self.slowMS, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, format: self.format)
        }
    }

    /// DescribeSlowLogPatterns返回参数结构体
    public struct DescribeSlowLogPatternsResponse: TCPaginatedResponse {
        /// 慢日志统计信息总数
        public let count: UInt64

        /// 慢日志统计信息
        public let slowLogPatterns: [SlowLogPattern]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case slowLogPatterns = "SlowLogPatterns"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SlowLogPattern`` list from the paginated response.
        public func getItems() -> [SlowLogPattern] {
            self.slowLogPatterns
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.count
        }
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable
    public func describeSlowLogPatterns(_ input: DescribeSlowLogPatternsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogPatternsResponse> {
        self.client.execute(action: "DescribeSlowLogPatterns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable
    public func describeSlowLogPatterns(_ input: DescribeSlowLogPatternsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogPatternsResponse {
        try await self.client.execute(action: "DescribeSlowLogPatterns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable
    public func describeSlowLogPatterns(instanceId: String, startTime: Date, endTime: Date, slowMS: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogPatternsResponse> {
        self.describeSlowLogPatterns(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, slowMS: slowMS, offset: offset, limit: limit, format: format), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable
    public func describeSlowLogPatterns(instanceId: String, startTime: Date, endTime: Date, slowMS: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogPatternsResponse {
        try await self.describeSlowLogPatterns(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, slowMS: slowMS, offset: offset, limit: limit, format: format), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable
    public func describeSlowLogPatternsPaginated(_ input: DescribeSlowLogPatternsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SlowLogPattern])> {
        self.client.paginate(input: input, region: region, command: self.describeSlowLogPatterns, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    @inlinable @discardableResult
    public func describeSlowLogPatternsPaginated(_ input: DescribeSlowLogPatternsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSlowLogPatternsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSlowLogPatterns, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计信息
    ///
    /// 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。
    ///
    /// - Returns: `AsyncSequence`s of ``SlowLogPattern`` and ``DescribeSlowLogPatternsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSlowLogPatternsPaginator(_ input: DescribeSlowLogPatternsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSlowLogPatternsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSlowLogPatterns, logger: logger, on: eventLoop)
    }
}
