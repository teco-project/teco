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

extension Cls {
    /// DescribeAlertRecordHistory请求参数结构体
    public struct DescribeAlertRecordHistoryRequest: TCPaginatedRequest {
        /// 查询时间范围启始时间，毫秒级unix时间戳
        public let from: UInt64

        /// 查询时间范围结束时间，毫秒级unix时间戳
        public let to: UInt64

        /// 分页的偏移量，默认值为0。
        public let offset: Int64

        /// 分页单页限制数目，最大值100。
        public let limit: Int64

        /// - alertId：按照告警策略ID进行过滤。类型：String 必选：否
        /// - topicId：按照监控对象ID进行过滤。类型：String 必选：否
        /// - status：按照告警状态进行过滤。类型：String 必选：否，0代表未恢复，1代表已恢复，2代表已失效
        /// - alarmLevel：按照告警等级进行过滤。类型：String 必选：否，0代表警告，1代表提醒，2代表紧急
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        public init(from: UInt64, to: UInt64, offset: Int64, limit: Int64, filters: [Filter]? = nil) {
            self.from = from
            self.to = to
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case from = "From"
            case to = "To"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlertRecordHistoryResponse) -> DescribeAlertRecordHistoryRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAlertRecordHistoryRequest(from: self.from, to: self.to, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeAlertRecordHistory返回参数结构体
    public struct DescribeAlertRecordHistoryResponse: TCPaginatedResponse {
        /// 告警历史总数
        public let totalCount: Int64

        /// 告警历史详情
        public let records: [AlertHistoryRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case records = "Records"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AlertHistoryRecord`` list from the paginated response.
        public func getItems() -> [AlertHistoryRecord] {
            self.records
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable
    public func describeAlertRecordHistory(_ input: DescribeAlertRecordHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertRecordHistoryResponse> {
        self.client.execute(action: "DescribeAlertRecordHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable
    public func describeAlertRecordHistory(_ input: DescribeAlertRecordHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRecordHistoryResponse {
        try await self.client.execute(action: "DescribeAlertRecordHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable
    public func describeAlertRecordHistory(from: UInt64, to: UInt64, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertRecordHistoryResponse> {
        self.describeAlertRecordHistory(.init(from: from, to: to, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable
    public func describeAlertRecordHistory(from: UInt64, to: UInt64, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRecordHistoryResponse {
        try await self.describeAlertRecordHistory(.init(from: from, to: to, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable
    public func describeAlertRecordHistoryPaginated(_ input: DescribeAlertRecordHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlertHistoryRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeAlertRecordHistory, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    @inlinable @discardableResult
    public func describeAlertRecordHistoryPaginated(_ input: DescribeAlertRecordHistoryRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlertRecordHistoryResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlertRecordHistory, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// 获取告警历史，例如今天未恢复的告警
    ///
    /// - Returns: `AsyncSequence`s of `AlertHistoryRecord` and `DescribeAlertRecordHistoryResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlertRecordHistoryPaginator(_ input: DescribeAlertRecordHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlertRecordHistoryRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlertRecordHistory, logger: logger, on: eventLoop)
    }
}
