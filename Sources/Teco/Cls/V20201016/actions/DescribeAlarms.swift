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
    /// DescribeAlarms请求参数结构体
    public struct DescribeAlarmsRequest: TCPaginatedRequest {
        /// name
        /// - 按照【告警策略名称】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// alarmId
        /// - 按照【告警策略ID】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// topicId
        /// - 按照【监控对象的日志主题ID】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// enable
        /// - 按照【启用状态】进行过滤。
        /// - 类型：String
        /// - 备注：enable参数值范围: 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False。 其它值将返回参数错误信息.
        /// - 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlarmsResponse) -> DescribeAlarmsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAlarmsRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAlarms返回参数结构体
    public struct DescribeAlarmsResponse: TCPaginatedResponse {
        /// 告警策略列表。
        public let alarms: [AlarmInfo]

        /// 符合查询条件的告警策略数目。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarms = "Alarms"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AlarmInfo`` list from the paginated response.
        public func getItems() -> [AlarmInfo] {
            self.alarms
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmsResponse> {
        self.client.execute(action: "DescribeAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmsResponse {
        try await self.client.execute(action: "DescribeAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmsResponse> {
        self.describeAlarms(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmsResponse {
        try await self.describeAlarms(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarmsPaginated(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlarmInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAlarms, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable @discardableResult
    public func describeAlarmsPaginated(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlarmsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlarms, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    ///
    /// - Returns: `AsyncSequence`s of `AlarmInfo` and `DescribeAlarmsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlarmsPaginator(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlarmsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlarms, logger: logger, on: eventLoop)
    }
}
