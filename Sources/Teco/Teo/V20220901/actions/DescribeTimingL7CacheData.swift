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

extension Teo {
    /// DescribeTimingL7CacheData请求参数结构体
    public struct DescribeTimingL7CacheDataRequest: TCRequest {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 查询的指标，取值有：
        /// - l7Cache_outFlux：响应流量；
        /// - l7Cache_request：响应请求数；
        /// - l7Cache_outBandwidth：响应带宽。
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 过滤条件，详细的过滤条件如下：
        /// - domain
        ///   按照【**子域名**】进行过滤，子域名形如： test.example.com。
        ///   类型：String
        ///   必选：否
        ///
        /// - url
        ///   按照【**URL**】进行过滤，此参数只支持30天的时间范围，URL形如：/content。
        ///   类型：String
        ///   必选：否
        ///
        /// - resourceType
        ///   按照【**资源类型**】进行过滤，此参数只支持30天的时间范围，资源类型形如：jpg，png。
        ///   类型：String
        ///   必选：否
        ///
        /// - cacheType
        ///   按照【**缓存类型**】进行过滤。
        ///   类型：String
        ///   必选：否
        ///   可选项：
        ///   hit：命中缓存；
        ///   dynamic：资源不可缓存；
        ///   miss：未命中缓存。
        ///
        /// - statusCode
        ///   按照【**状态码**】进行过滤，此参数只支持30天的时间范围。
        ///   类型：String
        ///   必选：否
        ///   可选项：
        ///   1XX：1xx类型的状态码；
        ///   100：100状态码；
        ///   101：101状态码；
        ///   102：102状态码；
        ///   2XX：2xx类型的状态码；
        ///   200：200状态码；
        ///   201：201状态码；
        ///   202：202状态码；
        ///   203：203状态码；
        ///   204：204状态码；
        ///   100：100状态码；
        ///   206：206状态码；
        ///   207：207状态码；
        ///   3XX：3xx类型的状态码；
        ///   300：300状态码；
        ///   301：301状态码；
        ///   302：302状态码；
        ///   303：303状态码；
        ///   304：304状态码；
        ///   305：305状态码；
        ///   307：307状态码；
        ///   4XX：4xx类型的状态码；
        ///   400：400状态码；
        ///   401：401状态码；
        ///   402：402状态码；
        ///   403：403状态码；
        ///   404：404状态码；
        ///   405：405状态码；
        ///   406：406状态码；
        ///   407：407状态码；
        ///   408：408状态码；
        ///   409：409状态码；
        ///   410：410状态码；
        ///   411：411状态码；
        ///   412：412状态码；
        ///   412：413状态码；
        ///   414：414状态码；
        ///   415：415状态码；
        ///   416：416状态码；
        ///   417：417状态码；
        ///   422：422状态码；
        ///   423：423状态码；
        ///   424：424状态码；
        ///   426：426状态码；
        ///   451：451状态码；
        ///   5XX：5xx类型的状态码；
        ///   500：500状态码；
        ///   501：501状态码；
        ///   502：502状态码；
        ///   503：503状态码；
        ///   504：504状态码；
        ///   505：505状态码；
        ///   506：506状态码；
        ///   507：507状态码；
        ///   510：510状态码；
        ///   514：514状态码；
        ///   544：544状态码。
        ///
        /// - tagKey
        ///   按照【**标签Key**】进行过滤。
        ///   类型：String
        ///   必选：否
        ///
        /// - tagValue
        ///   按照【**标签Value**】进行过滤。
        ///   类型：String
        ///   必选：否
        public let filters: [QueryCondition]?

        /// 查询时间粒度，可选的值有：
        /// - min：1分钟的时间粒度；
        /// - 5min：5分钟的时间粒度；
        /// - hour：1小时的时间粒度；
        /// - day：1天的时间粒度。
        /// 不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// - overseas：全球（除中国大陆地区）数据；
        /// - mainland：中国大陆地区数据；
        /// - global：全球数据。
        /// 不填默认取值为global。
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
    public struct DescribeTimingL7CacheDataResponse: TCResponse {
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
