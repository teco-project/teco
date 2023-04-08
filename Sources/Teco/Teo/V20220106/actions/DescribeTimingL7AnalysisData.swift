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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Teo {
    /// DescribeTimingL7AnalysisData请求参数结构体
    public struct DescribeTimingL7AnalysisDataRequest: TCRequestModel {
        /// RFC3339标准，客户端时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// RFC3339标准，客户端时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 指标列表，支持的指标
        /// l7Flow_outFlux: 访问流量
        /// l7Flow_request: 访问请求数
        /// l7Flow_outBandwidth: 访问带宽
        public let metricNames: [String]

        /// 时间间隔，选填{min, 5min, hour, day, week}
        public let interval: String

        /// ZoneId数组
        public let zoneIds: [String]?

        /// 筛选条件
        public let filters: [Filter]?

        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.interval = interval
            self.zoneIds = zoneIds
            self.filters = filters
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case interval = "Interval"
            case zoneIds = "ZoneIds"
            case filters = "Filters"
            case area = "Area"
        }
    }

    /// DescribeTimingL7AnalysisData返回参数结构体
    public struct DescribeTimingL7AnalysisDataResponse: TCResponseModel {
        /// 详细数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TimingDataRecord]?

        /// 查询维度
        public let type: String

        /// 时间间隔
        public let interval: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case type = "Type"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }

    /// 查询七层数据分析类时序流量数据
    @inlinable
    public func describeTimingL7AnalysisData(_ input: DescribeTimingL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7AnalysisDataResponse> {
        self.client.execute(action: "DescribeTimingL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类时序流量数据
    @inlinable
    public func describeTimingL7AnalysisData(_ input: DescribeTimingL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeTimingL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询七层数据分析类时序流量数据
    @inlinable
    public func describeTimingL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7AnalysisDataResponse> {
        self.describeTimingL7AnalysisData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, interval: interval, zoneIds: zoneIds, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类时序流量数据
    @inlinable
    public func describeTimingL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7AnalysisDataResponse {
        try await self.describeTimingL7AnalysisData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, interval: interval, zoneIds: zoneIds, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }
}
