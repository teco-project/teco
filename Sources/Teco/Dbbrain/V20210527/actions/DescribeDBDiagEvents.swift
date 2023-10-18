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

extension Dbbrain {
    /// DescribeDBDiagEvents请求参数结构体
    public struct DescribeDBDiagEventsRequest: TCPaginatedRequest {
        /// 开始时间，如“2021-05-27 00:00:00”，支持的最早查询时间为当前时间的前30天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间，如“2021-05-27 01:00:00”，结束时间与开始时间的间隔最大可为7天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 风险等级列表，取值按影响程度从高至低分别为：1 - 致命、2 -严重、3 - 告警、4 - 提示、5 -健康。
        public let severities: [Int64]?

        /// 实例ID列表。
        public let instanceIds: [String]?

        /// 偏移量，默认0。
        public let offset: Int64?

        /// 返回数量，默认20，最大值为50。
        public let limit: Int64?

        public init(startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.severities = severities
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case severities = "Severities"
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBDiagEventsResponse) -> DescribeDBDiagEventsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, severities: self.severities, instanceIds: self.instanceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDBDiagEvents返回参数结构体
    public struct DescribeDBDiagEventsResponse: TCPaginatedResponse {
        /// 诊断事件的总数目。
        public let totalCount: Int64

        /// 诊断事件的列表。
        public let items: [DiagHistoryEventItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DiagHistoryEventItem`` list from the paginated response.
        public func getItems() -> [DiagHistoryEventItem] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(_ input: DescribeDBDiagEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagEventsResponse> {
        self.client.execute(action: "DescribeDBDiagEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(_ input: DescribeDBDiagEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventsResponse {
        try await self.client.execute(action: "DescribeDBDiagEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagEventsResponse> {
        self.describeDBDiagEvents(.init(startTime: startTime, endTime: endTime, severities: severities, instanceIds: instanceIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventsResponse {
        try await self.describeDBDiagEvents(.init(startTime: startTime, endTime: endTime, severities: severities, instanceIds: instanceIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEventsPaginated(_ input: DescribeDBDiagEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DiagHistoryEventItem])> {
        self.client.paginate(input: input, region: region, command: self.describeDBDiagEvents, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable @discardableResult
    public func describeDBDiagEventsPaginated(_ input: DescribeDBDiagEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBDiagEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBDiagEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    ///
    /// - Returns: `AsyncSequence`s of ``DiagHistoryEventItem`` and ``DescribeDBDiagEventsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBDiagEventsPaginator(_ input: DescribeDBDiagEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBDiagEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBDiagEvents, logger: logger, on: eventLoop)
    }
}
