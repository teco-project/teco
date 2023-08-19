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

extension Antiddos {
    /// DescribeBizMonitorTrend请求参数结构体
    public struct DescribeBizMonitorTrendRequest: TCRequest {
        /// DDoS防护子产品代号（bgpip表示高防IP）
        public let business: String

        /// 统计开始时间。 例：“2020-09-22 00:00:00”
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间。 例：“2020-09-22 00:00:00”
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 资源实例ID
        public let id: String

        /// 统计纬度，可取值intraffic outtraffic inpkg outpkg
        public let metricName: String

        /// 时间粒度 60 300 3600 21600 86400
        public let period: Int64

        public init(business: String, startTime: Date, endTime: Date, id: String, metricName: String, period: Int64) {
            self.business = business
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.id = id
            self.metricName = metricName
            self.period = period
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "Id"
            case metricName = "MetricName"
            case period = "Period"
        }
    }

    /// DescribeBizMonitorTrend返回参数结构体
    public struct DescribeBizMonitorTrendResponse: TCResponse {
        /// 曲线图各个时间点的值
        public let dataList: [Float]

        /// 统计纬度
        public let metricName: String

        /// 返回DataList中的最大值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxData: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case metricName = "MetricName"
            case maxData = "MaxData"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP业务监控流量曲线
    @inlinable
    public func describeBizMonitorTrend(_ input: DescribeBizMonitorTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizMonitorTrendResponse> {
        self.client.execute(action: "DescribeBizMonitorTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP业务监控流量曲线
    @inlinable
    public func describeBizMonitorTrend(_ input: DescribeBizMonitorTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizMonitorTrendResponse {
        try await self.client.execute(action: "DescribeBizMonitorTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP业务监控流量曲线
    @inlinable
    public func describeBizMonitorTrend(business: String, startTime: Date, endTime: Date, id: String, metricName: String, period: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizMonitorTrendResponse> {
        self.describeBizMonitorTrend(.init(business: business, startTime: startTime, endTime: endTime, id: id, metricName: metricName, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP业务监控流量曲线
    @inlinable
    public func describeBizMonitorTrend(business: String, startTime: Date, endTime: Date, id: String, metricName: String, period: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizMonitorTrendResponse {
        try await self.describeBizMonitorTrend(.init(business: business, startTime: startTime, endTime: endTime, id: id, metricName: metricName, period: period), region: region, logger: logger, on: eventLoop)
    }
}
