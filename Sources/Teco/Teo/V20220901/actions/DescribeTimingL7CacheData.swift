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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
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

        /// 过滤条件，详细的过滤条件如下：
        /// <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。<br>   类型：String<br>   必选：否</li>
        /// <li>url<br>   按照【<strong>URL</strong>】进行过滤，此参数只支持30天的时间范围，URL形如：/content。<br>   类型：String<br>   必选：否</li>
        /// <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，此参数只支持30天的时间范围，资源类型形如：jpg，png。<br>   类型：String<br>   必选：否</li>
        /// <li>cacheType<br>   按照【<strong>缓存类型</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   hit：命中缓存；<br>   dynamic：资源不可缓存；<br>   miss：未命中缓存。</li>
        /// <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤，此参数只支持30天的时间范围。<br>   类型：String<br>   必选：否<br>   可选项：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   100：100状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        /// <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        /// <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        public let filters: [QueryCondition]?

        /// 查询时间粒度，可选的值有：
        /// <li>min：1分钟的时间粒度；</li>
        /// <li>5min：5分钟的时间粒度；</li>
        /// <li>hour：1小时的时间粒度；</li>
        /// <li>day：1天的时间粒度。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
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

    /// DescribeTimingL7CacheData返回参数结构体
    public struct DescribeTimingL7CacheDataResponse: TCResponseModel {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 七层缓存分析时序类流量数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TimingDataRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询缓存分析时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7CacheDataResponse> {
        self.client.execute(action: "DescribeTimingL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询缓存分析时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7CacheDataResponse {
        try await self.client.execute(action: "DescribeTimingL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询缓存分析时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL7CacheDataResponse> {
        self.describeTimingL7CacheData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询缓存分析时序数据
    ///
    /// 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。
    @inlinable
    public func describeTimingL7CacheData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7CacheDataResponse {
        try await self.describeTimingL7CacheData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
