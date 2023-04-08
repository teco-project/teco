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

extension Cdn {
    /// DescribeScdnBotData请求参数结构体
    public struct DescribeScdnBotDataRequest: TCRequestModel {
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

        /// mainland 大陆地区 overseas境外地区
        public let area: String

        /// 取值："2min"或者"hour"，表示查询2分钟或者1小时粒度的数据，如果查询时间范围>1天，则强制返回1小时粒度数据
        public let interval: String?

        /// 域名数组，多选域名时，使用此参数,不填写表示查询所有域名的数据（AppID维度数据）
        public let domains: [String]?

        public init(startTime: Date, endTime: Date, area: String, interval: String? = nil, domains: [String]? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.area = area
            self.interval = interval
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case area = "Area"
            case interval = "Interval"
            case domains = "Domains"
        }
    }

    /// DescribeScdnBotData返回参数结构体
    public struct DescribeScdnBotDataResponse: TCResponseModel {
        /// 统计信息详细数据
        public let data: [BotStats]

        /// 当前返回数据的粒度，取值："2min"或者"hour"，分别表示2分钟或者1小时粒度
        public let interval: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }

    /// 获取BOT统计数据列表
    @inlinable
    public func describeScdnBotData(_ input: DescribeScdnBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnBotDataResponse> {
        self.client.execute(action: "DescribeScdnBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取BOT统计数据列表
    @inlinable
    public func describeScdnBotData(_ input: DescribeScdnBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnBotDataResponse {
        try await self.client.execute(action: "DescribeScdnBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取BOT统计数据列表
    @inlinable
    public func describeScdnBotData(startTime: Date, endTime: Date, area: String, interval: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnBotDataResponse> {
        self.describeScdnBotData(.init(startTime: startTime, endTime: endTime, area: area, interval: interval, domains: domains), region: region, logger: logger, on: eventLoop)
    }

    /// 获取BOT统计数据列表
    @inlinable
    public func describeScdnBotData(startTime: Date, endTime: Date, area: String, interval: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnBotDataResponse {
        try await self.describeScdnBotData(.init(startTime: startTime, endTime: endTime, area: area, interval: interval, domains: domains), region: region, logger: logger, on: eventLoop)
    }
}
