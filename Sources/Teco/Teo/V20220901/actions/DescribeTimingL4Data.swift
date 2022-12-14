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
    /// DescribeTimingL4Data请求参数结构体
    public struct DescribeTimingL4DataRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 查询指标，取值有：
        /// <li>l4Flow_connections: 访问连接数；</li>
        /// <li>l4Flow_flux: 访问总流量；</li>
        /// <li>l4Flow_inFlux: 访问入流量；</li>
        /// <li>l4Flow_outFlux: 访问出流量；</li>
        /// <li> l4Flow_outPkt: 访问出包量。</li>
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 四层实例列表, 不填表示选择全部实例。
        public let proxyIds: [String]?

        /// 查询时间粒度，取值有：
        /// <li>min: 1分钟 ；</li>
        /// <li>5min: 5分钟 ；</li>
        /// <li>hour: 1小时 ；</li>
        /// <li>day: 1天 。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 筛选条件, key可选的值有：
        /// <li>ruleId: 根据规则Id进行过滤；</li>
        /// <li>proxyId: 根据通道Id进行过滤。</li>
        public let filters: [QueryCondition]?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.proxyIds = proxyIds
            self.interval = interval
            self.filters = filters
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case proxyIds = "ProxyIds"
            case interval = "Interval"
            case filters = "Filters"
            case area = "Area"
        }
    }

    /// DescribeTimingL4Data返回参数结构体
    public struct DescribeTimingL4DataResponse: TCResponseModel {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 四层时序流量数据列表。
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

    /// 查询四层时序流量数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimingL4DataResponse > {
        self.client.execute(action: "DescribeTimingL4Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询四层时序流量数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.client.execute(action: "DescribeTimingL4Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询四层时序流量数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimingL4DataResponse > {
        self.describeTimingL4Data(DescribeTimingL4DataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, proxyIds: proxyIds, interval: interval, filters: filters, area: area), logger: logger, on: eventLoop)
    }

    /// 查询四层时序流量数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.describeTimingL4Data(DescribeTimingL4DataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, proxyIds: proxyIds, interval: interval, filters: filters, area: area), logger: logger, on: eventLoop)
    }
}
