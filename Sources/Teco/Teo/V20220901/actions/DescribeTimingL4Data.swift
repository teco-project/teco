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
    /// DescribeTimingL4Data请求参数结构体
    public struct DescribeTimingL4DataRequest: TCRequest {
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

        /// 查询指标，取值有：
        /// - l4Flow_connections: 访问连接数；
        /// - l4Flow_flux: 访问总流量；
        /// - l4Flow_inFlux: 访问入流量；
        /// - l4Flow_outFlux: 访问出流量；
        /// - l4Flow_outPkt: 访问出包量。
        public let metricNames: [String]

        /// 站点集合。
        /// 若不填写，默认选择全部站点，且最多只能查询近30天的数据；
        /// 若填写，则可查询站点绑定套餐支持的[数据分析最大查询范围](https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90)。
        public let zoneIds: [String]?

        /// 四层实例列表, 不填表示选择全部实例。
        public let proxyIds: [String]?

        /// 查询时间粒度，取值有：
        /// - min: 1分钟 ；
        /// - 5min: 5分钟 ；
        /// - hour: 1小时 ；
        /// - day: 1天 。
        /// 不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        public let interval: String?

        /// 过滤条件，详细的过滤条件Key值如下：
        /// - ruleId
        ///   按照【**转发规则ID**】进行过滤。
        ///
        /// - proxyId
        ///   按照【**四层代理实例ID**】进行过滤。
        public let filters: [QueryCondition]?

        /// 数据归属地区，取值有：
        /// - overseas：全球（除中国大陆地区）数据；
        /// - mainland：中国大陆地区数据；
        /// - global：全球数据。
        /// 不填默认取值为global。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
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
    public struct DescribeTimingL4DataResponse: TCResponse {
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

    /// 查询四层流量时序数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL4DataResponse> {
        self.client.execute(action: "DescribeTimingL4Data", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询四层流量时序数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.client.execute(action: "DescribeTimingL4Data", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询四层流量时序数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimingL4DataResponse> {
        self.describeTimingL4Data(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, proxyIds: proxyIds, interval: interval, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询四层流量时序数据
    ///
    /// 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, proxyIds: [String]? = nil, interval: String? = nil, filters: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.describeTimingL4Data(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, proxyIds: proxyIds, interval: interval, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }
}
