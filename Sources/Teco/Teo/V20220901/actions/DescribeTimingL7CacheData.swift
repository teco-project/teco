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
    /// DescribeTimingL7CacheData请求参数结构体
    public struct DescribeTimingL7CacheDataRequest: TCRequestModel {
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

        /// 查询的指标，取值有：
        /// <li>l7Cache_outFlux：响应流量；</li>
        /// <li>l7Cache_request：响应请求数；</li>
        /// <li> l7Cache_outBandwidth：响应带宽。</li>
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 筛选条件，key可选的值有：
        /// <li> cacheType：缓存类型(状态)；</li>
        /// <li>domain：Host/域名；</li>
        /// <li>resourceType：资源类型；</li>
        /// <li>url：url地址；</li>
        /// <li>tagKey：标签Key；</li>
        /// <li>tagValue：标签Value。</li>
        public let filters: [QueryCondition]?

        /// 查询时间粒度，可选的值有：
        /// <li>min：1分钟的时间粒度；</li>
        /// <li>5min：5分钟的时间粒度；</li>
        /// <li>hour：1小时的时间粒度；</li>
        /// <li>day：1天的时间粒度。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
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

    /// DescribeTimingL7CacheData返回参数结构体
    public struct DescribeTimingL7CacheDataResponse: TCResponseModel {
        /// 七层缓存分析时序类流量数据列表。
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

    /// 查询七层缓存分析类时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7CacheDataResponse> {
        self.client.execute(action: "DescribeTimingL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询七层缓存分析类时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7CacheDataResponse {
        try await self.client.execute(action: "DescribeTimingL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询七层缓存分析类时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7CacheDataResponse> {
        self.describeTimingL7CacheData(DescribeTimingL7CacheDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询七层缓存分析类时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7CacheDataResponse {
        try await self.describeTimingL7CacheData(DescribeTimingL7CacheDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
