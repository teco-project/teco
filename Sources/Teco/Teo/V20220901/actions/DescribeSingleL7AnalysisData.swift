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
    /// DescribeSingleL7AnalysisData请求参数结构体
    public struct DescribeSingleL7AnalysisDataRequest: TCRequestModel {
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

        /// 查询的指标，取值有:
        /// <li> l7Flow_singleIpRequest：独立IP请求数。</li>
        public let metricNames: [String]

        /// 站点集合。
        /// 若不填写，默认选择全部站点，且最多只能查询近30天的数据；
        /// 若填写，则可查询站点绑定套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>。
        public let zoneIds: [String]?

        /// 过滤条件，详细的过滤条件Key值如下：
        /// <li>country<br>   按照【<strong>国家/地区</strong>】进行过滤，国家/地区遵循<a href="https://zh.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>规范。</li>
        /// <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。</li>
        /// <li>protocol<br>   按照【<strong>HTTP协议</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP/1.0：HTTP 1.0；<br>   HTTP/1.1：HTTP 1.1；<br>   HTTP/2.0：HTTP 2.0；<br>   HTTP/3.0：HTTP 3.0；<br>   WebSocket：WebSocket。</li>
        /// <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        /// <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        public let filters: [QueryCondition]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天;。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据；</li>
        /// <li>global：全球数据。</li>不填默认取值为global。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.filters = filters
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case filters = "Filters"
            case interval = "Interval"
            case area = "Area"
        }
    }

    /// DescribeSingleL7AnalysisData返回参数结构体
    public struct DescribeSingleL7AnalysisDataResponse: TCResponseModel {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 单值流量数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SingleDataRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询流量分析单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层流量数据分析单值数据列表，单值数据表示：指标在查询时间范围内的单个统计数据，通常表现为接口仅返回一个统计数值。
    @inlinable
    public func describeSingleL7AnalysisData(_ input: DescribeSingleL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSingleL7AnalysisDataResponse> {
        self.client.execute(action: "DescribeSingleL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流量分析单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层流量数据分析单值数据列表，单值数据表示：指标在查询时间范围内的单个统计数据，通常表现为接口仅返回一个统计数值。
    @inlinable
    public func describeSingleL7AnalysisData(_ input: DescribeSingleL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSingleL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeSingleL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流量分析单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层流量数据分析单值数据列表，单值数据表示：指标在查询时间范围内的单个统计数据，通常表现为接口仅返回一个统计数值。
    @inlinable
    public func describeSingleL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSingleL7AnalysisDataResponse> {
        let input = DescribeSingleL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area)
        return self.client.execute(action: "DescribeSingleL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流量分析单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层流量数据分析单值数据列表，单值数据表示：指标在查询时间范围内的单个统计数据，通常表现为接口仅返回一个统计数值。
    @inlinable
    public func describeSingleL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSingleL7AnalysisDataResponse {
        let input = DescribeSingleL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area)
        return try await self.client.execute(action: "DescribeSingleL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
