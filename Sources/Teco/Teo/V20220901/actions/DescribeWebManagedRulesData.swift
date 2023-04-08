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
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeWebManagedRulesData请求参数结构体
    public struct DescribeWebManagedRulesDataRequest: TCRequestModel {
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

        /// 统计指标列表，取值有：
        /// <li>waf_interceptNum：waf拦截次数。</li>
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 子域名集合，不填默认选择全部子域名。
        public let domains: [String]?

        /// 筛选条件，key可选的值有：
        /// <li>action：执行动作。</li>
        public let queryCondition: [QueryCondition]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.domains = domains
            self.queryCondition = queryCondition
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case queryCondition = "QueryCondition"
            case interval = "Interval"
            case area = "Area"
        }
    }

    /// DescribeWebManagedRulesData返回参数结构体
    public struct DescribeWebManagedRulesDataResponse: TCResponseModel {
        /// WAF攻击的时序数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SecEntry]?

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

    /// 查询WAF攻击时序数据
    ///
    /// 本接口（DescribeWebManagedRulesData）用于查询WAF攻击的时序数据。
    @inlinable
    public func describeWebManagedRulesData(_ input: DescribeWebManagedRulesDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesDataResponse> {
        self.client.execute(action: "DescribeWebManagedRulesData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询WAF攻击时序数据
    ///
    /// 本接口（DescribeWebManagedRulesData）用于查询WAF攻击的时序数据。
    @inlinable
    public func describeWebManagedRulesData(_ input: DescribeWebManagedRulesDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesDataResponse {
        try await self.client.execute(action: "DescribeWebManagedRulesData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询WAF攻击时序数据
    ///
    /// 本接口（DescribeWebManagedRulesData）用于查询WAF攻击的时序数据。
    @inlinable
    public func describeWebManagedRulesData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesDataResponse> {
        self.describeWebManagedRulesData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询WAF攻击时序数据
    ///
    /// 本接口（DescribeWebManagedRulesData）用于查询WAF攻击的时序数据。
    @inlinable
    public func describeWebManagedRulesData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesDataResponse {
        try await self.describeWebManagedRulesData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
