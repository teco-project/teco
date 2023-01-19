//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// DescribeDDoSNetTrend请求参数结构体
    public struct DescribeDDoSNetTrendRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        public let metricName: String

        /// 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        public let period: UInt64

        /// 统计开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        public init(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date) {
            self.business = business
            self.id = id
            self.metricName = metricName
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case metricName = "MetricName"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeDDoSNetTrend返回参数结构体
    public struct DescribeDDoSNetTrendResponse: TCResponseModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        public let metricName: String

        /// 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        public let period: UInt64

        /// 统计开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 值数组
        public let data: [UInt64]

        /// 值个数
        public let count: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case metricName = "MetricName"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case count = "Count"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP专业版资源的DDoS攻击指标数据
    @inlinable
    public func describeDDoSNetTrend(_ input: DescribeDDoSNetTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetTrendResponse> {
        self.client.execute(action: "DescribeDDoSNetTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击指标数据
    @inlinable
    public func describeDDoSNetTrend(_ input: DescribeDDoSNetTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetTrendResponse {
        try await self.client.execute(action: "DescribeDDoSNetTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP专业版资源的DDoS攻击指标数据
    @inlinable
    public func describeDDoSNetTrend(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetTrendResponse> {
        self.describeDDoSNetTrend(DescribeDDoSNetTrendRequest(business: business, id: id, metricName: metricName, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击指标数据
    @inlinable
    public func describeDDoSNetTrend(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetTrendResponse {
        try await self.describeDDoSNetTrend(DescribeDDoSNetTrendRequest(business: business, id: id, metricName: metricName, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
