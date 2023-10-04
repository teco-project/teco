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

extension Antiddos {
    /// DescribeOverviewDDoSEventList请求参数结构体
    public struct DescribeOverviewDDoSEventListRequest: TCPaginatedRequest {
        /// 起始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 可选按攻击状态过滤，start：攻击中；end：攻击结束
        public let attackStatus: String?

        /// 偏移量
        public let offset: UInt64?

        /// 记录条数
        public let limit: UInt64?

        public init(startTime: String, endTime: String, attackStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.attackStatus = attackStatus
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case attackStatus = "AttackStatus"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOverviewDDoSEventListResponse) -> DescribeOverviewDDoSEventListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, attackStatus: self.attackStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeOverviewDDoSEventList返回参数结构体
    public struct DescribeOverviewDDoSEventListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 事件列表
        public let eventList: [OverviewDDoSEvent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case eventList = "EventList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OverviewDDoSEvent`` list from the paginated response.
        public func getItems() -> [OverviewDDoSEvent] {
            self.eventList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable
    public func describeOverviewDDoSEventList(_ input: DescribeOverviewDDoSEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewDDoSEventListResponse> {
        self.client.execute(action: "DescribeOverviewDDoSEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable
    public func describeOverviewDDoSEventList(_ input: DescribeOverviewDDoSEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewDDoSEventListResponse {
        try await self.client.execute(action: "DescribeOverviewDDoSEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable
    public func describeOverviewDDoSEventList(startTime: String, endTime: String, attackStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewDDoSEventListResponse> {
        self.describeOverviewDDoSEventList(.init(startTime: startTime, endTime: endTime, attackStatus: attackStatus, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable
    public func describeOverviewDDoSEventList(startTime: String, endTime: String, attackStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewDDoSEventListResponse {
        try await self.describeOverviewDDoSEventList(.init(startTime: startTime, endTime: endTime, attackStatus: attackStatus, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable
    public func describeOverviewDDoSEventListPaginated(_ input: DescribeOverviewDDoSEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OverviewDDoSEvent])> {
        self.client.paginate(input: input, region: region, command: self.describeOverviewDDoSEventList, logger: logger, on: eventLoop)
    }

    /// 获取防护概览的ddos攻击事件
    @inlinable @discardableResult
    public func describeOverviewDDoSEventListPaginated(_ input: DescribeOverviewDDoSEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOverviewDDoSEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOverviewDDoSEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取防护概览的ddos攻击事件
    ///
    /// - Returns: `AsyncSequence`s of ``OverviewDDoSEvent`` and ``DescribeOverviewDDoSEventListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOverviewDDoSEventListPaginator(_ input: DescribeOverviewDDoSEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOverviewDDoSEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOverviewDDoSEventList, logger: logger, on: eventLoop)
    }
}
