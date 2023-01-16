//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

        /// 查询的站点集合，不填默认查询所有站点。
        public let zoneIds: [String]?

        /// 筛选条件, key可选的值有：
        /// <li>country：国家/地区；</li>
        /// <li>domain：域名；</li>
        /// <li>protocol：协议类型；</li>
        /// <li>tagKey：标签Key；</li>
        /// <li>tagValue；标签Value。</li>
        public let filters: [QueryCondition]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天;。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
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

    /// 查询七层数据分析类单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层数据分析类单值流量数据列表。
    @inlinable
    public func describeSingleL7AnalysisData(_ input: DescribeSingleL7AnalysisDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSingleL7AnalysisDataResponse> {
        self.client.execute(action: "DescribeSingleL7AnalysisData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层数据分析类单值流量数据列表。
    @inlinable
    public func describeSingleL7AnalysisData(_ input: DescribeSingleL7AnalysisDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSingleL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeSingleL7AnalysisData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询七层数据分析类单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层数据分析类单值流量数据列表。
    @inlinable
    public func describeSingleL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSingleL7AnalysisDataResponse> {
        self.describeSingleL7AnalysisData(DescribeSingleL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), logger: logger, on: eventLoop)
    }

    /// 查询七层数据分析类单值数据
    ///
    /// 本接口（DescribeSingleL7AnalysisData）用于查询七层数据分析类单值流量数据列表。
    @inlinable
    public func describeSingleL7AnalysisData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSingleL7AnalysisDataResponse {
        try await self.describeSingleL7AnalysisData(DescribeSingleL7AnalysisDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), logger: logger, on: eventLoop)
    }
}
