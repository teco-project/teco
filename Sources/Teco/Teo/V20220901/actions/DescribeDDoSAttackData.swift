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
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeDDoSAttackData请求参数结构体
    public struct DescribeDDoSAttackDataRequest: TCRequestModel {
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
        /// <li>ddos_attackMaxBandwidth：攻击带宽峰值；</li>
        /// <li>ddos_attackMaxPackageRate：攻击包速率峰值 ；</li>
        /// <li>ddos_attackBandwidth：攻击带宽曲线；</li>
        /// <li>ddos_attackPackageRate：攻击包速率曲线。</li>
        public let metricNames: [String]

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// DDoS策略组ID列表，不填默认选择全部策略ID。
        public let policyIds: [Int64]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天。</li>不填将根据开始时间与结束时间的间隔自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据；</li>
        /// <li>global：全球数据。</li>不填默认取值为global。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.policyIds = policyIds
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case policyIds = "PolicyIds"
            case interval = "Interval"
            case area = "Area"
        }
    }

    /// DescribeDDoSAttackData返回参数结构体
    public struct DescribeDDoSAttackDataResponse: TCResponseModel {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// DDoS攻击数据内容列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SecEntry]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(_ input: DescribeDDoSAttackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackDataResponse> {
        self.client.execute(action: "DescribeDDoSAttackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(_ input: DescribeDDoSAttackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackDataResponse {
        try await self.client.execute(action: "DescribeDDoSAttackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackDataResponse> {
        self.describeDDoSAttackData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, policyIds: policyIds, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackDataResponse {
        try await self.describeDDoSAttackData(.init(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, policyIds: policyIds, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
