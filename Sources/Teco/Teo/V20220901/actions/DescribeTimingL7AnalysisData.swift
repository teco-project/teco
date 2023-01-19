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

extension Teo {
    /// DescribeTimingL7AnalysisData请求参数结构体
    public struct DescribeTimingL7AnalysisDataRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 指标列表，取值有:
        /// <li>l7Flow_outFlux: 访问流量；</li>
        /// <li>l7Flow_request: 访问请求数；</li>
        /// <li>l7Flow_outBandwidth: 访问带宽。</li>
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 查询时间粒度，取值有：
        /// <li>min: 1分钟；</li>
        /// <li>5min: 5分钟；</li>
        /// <li>hour: 1小时；</li>
        /// <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 筛选条件，key可选的值有：
        /// <li>country：国家/地区；</li>
        /// <li>domain：域名；</li>
        /// <li>protocol：协议类型；</li>
        /// <li>resourceType：资源类型；</li>
        /// <li>statusCode：状态码；</li>
        /// <li> browserType：浏览器类型；</li>
        /// <li>deviceType：设备类型；</li>
        /// <li>operatingSystemType：操作系统类型；</li>
        /// <li>tlsVersion：tls版本；</li>
        /// <li>url：url地址；</li>
        /// <li>referer：refer头信息；</li>
        /// <li>ipVersion：ip版本；</li>
        /// <li>tagKey：标签Key；</li>
        /// <li>tagValue：标签Value。</li>
        public let filters: [QueryCondition]?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户的地域智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.interval = interval
            self.filters = filters
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case interval = "Interval"
            case filters = "Filters"
            case area = "Area"
        }
    }

    /// DescribeTimingL7AnalysisData返回参数结构体
    public struct DescribeTimingL7AnalysisDataResponse: TCResponseModel {
        /// 时序流量数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TimingDataRecord]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询七层数据分析类时序数据
    ///
    /// 本接口（DescribeTimingL7AnalysisData）查询七层数据分析类时序数据。
    @inlinable
    public func describeTimingL7AnalysisData(_ input: DescribeTimingL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7AnalysisDataResponse> {
        self.client.execute(action: "DescribeTimingL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类时序数据
    ///
    /// 本接口（DescribeTimingL7AnalysisData）查询七层数据分析类时序数据。
    @inlinable
    public func describeTimingL7AnalysisData(_ input: DescribeTimingL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeTimingL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询七层数据分析类时序数据
    ///
    /// 本接口（DescribeTimingL7AnalysisData）查询七层数据分析类时序数据。
    @inlinable
    public func describeTimingL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7AnalysisDataResponse> {
        self.describeTimingL7AnalysisData(DescribeTimingL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, interval: interval, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类时序数据
    ///
    /// 本接口（DescribeTimingL7AnalysisData）查询七层数据分析类时序数据。
    @inlinable
    public func describeTimingL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7AnalysisDataResponse {
        try await self.describeTimingL7AnalysisData(DescribeTimingL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, interval: interval, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }
}
