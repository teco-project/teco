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

extension Yinsuda {
    /// DescribeLiveVipTradeInfos请求参数结构体
    public struct DescribeLiveVipTradeInfosRequest: TCPaginatedRequest {
        /// 应用名称。
        public let appName: String

        /// 直播会员充值下单起始时间，格式为 ISO。默认为当前时间前一天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 直播会员充值下单截止时间，格式为 ISO。默认为当前时间。 EndTime不能小于StartTime
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 交易流水号集合，匹配集合指定所有流水号 。
        /// <li>数组长度限制：10。</li>
        public let tradeSerialNos: [String]?

        /// 用户标识集合，匹配集合指定所有用户标识 。
        /// <li>数组长度限制：10。</li>
        public let userIds: [String]?

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?

        /// 分页返回的记录条数，默认值：20，最大值：50。
        public let limit: Int64?

        public init(appName: String, startTime: Date? = nil, endTime: Date? = nil, tradeSerialNos: [String]? = nil, userIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.appName = appName
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.tradeSerialNos = tradeSerialNos
            self.userIds = userIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case tradeSerialNos = "TradeSerialNos"
            case userIds = "UserIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveVipTradeInfosResponse) -> DescribeLiveVipTradeInfosRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveVipTradeInfosRequest(appName: self.appName, startTime: self.startTime, endTime: self.endTime, tradeSerialNos: self.tradeSerialNos, userIds: self.userIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeLiveVipTradeInfos返回参数结构体
    public struct DescribeLiveVipTradeInfosResponse: TCPaginatedResponse {
        /// 直播会员充值流水信息列表
        public let liveVipTradeInfoSet: [LiveVipTradeInfo]

        /// 直播会员充值流水总数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case liveVipTradeInfoSet = "LiveVipTradeInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LiveVipTradeInfo] {
            self.liveVipTradeInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable
    public func describeLiveVipTradeInfos(_ input: DescribeLiveVipTradeInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveVipTradeInfosResponse> {
        self.client.execute(action: "DescribeLiveVipTradeInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable
    public func describeLiveVipTradeInfos(_ input: DescribeLiveVipTradeInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveVipTradeInfosResponse {
        try await self.client.execute(action: "DescribeLiveVipTradeInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable
    public func describeLiveVipTradeInfos(appName: String, startTime: Date? = nil, endTime: Date? = nil, tradeSerialNos: [String]? = nil, userIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveVipTradeInfosResponse> {
        self.describeLiveVipTradeInfos(.init(appName: appName, startTime: startTime, endTime: endTime, tradeSerialNos: tradeSerialNos, userIds: userIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable
    public func describeLiveVipTradeInfos(appName: String, startTime: Date? = nil, endTime: Date? = nil, tradeSerialNos: [String]? = nil, userIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveVipTradeInfosResponse {
        try await self.describeLiveVipTradeInfos(.init(appName: appName, startTime: startTime, endTime: endTime, tradeSerialNos: tradeSerialNos, userIds: userIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable
    public func describeLiveVipTradeInfosPaginated(_ input: DescribeLiveVipTradeInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LiveVipTradeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveVipTradeInfos, logger: logger, on: eventLoop)
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    @inlinable @discardableResult
    public func describeLiveVipTradeInfosPaginated(_ input: DescribeLiveVipTradeInfosRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveVipTradeInfosResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveVipTradeInfos, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取直播会员充值记录信息列表
    ///
    /// 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等
    ///
    /// - Returns: `AsyncSequence`s of `LiveVipTradeInfo` and `DescribeLiveVipTradeInfosResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveVipTradeInfosPaginator(_ input: DescribeLiveVipTradeInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveVipTradeInfosRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveVipTradeInfos, logger: logger, on: eventLoop)
    }
}