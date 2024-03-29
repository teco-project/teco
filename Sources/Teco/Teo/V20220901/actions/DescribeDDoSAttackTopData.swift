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
    /// DescribeDDoSAttackTopData请求参数结构体
    public struct DescribeDDoSAttackTopDataRequest: TCRequest {
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

        /// 查询的统计指标，取值有：
        /// - ddos_attackFlux_protocol：按各协议的攻击流量排行；
        /// - ddos_attackPackageNum_protocol：按各协议的攻击包量排行；
        /// - ddos_attackNum_attackType：按各攻击类型的攻击数量排行；
        /// - ddos_attackNum_sregion：按攻击源地区的攻击数量排行；
        /// - ddos_attackFlux_sip：按攻击源IP的攻击数量排行；
        /// - ddos_attackFlux_sregion：按攻击源地区的攻击数量排行。
        public let metricName: String

        /// 站点ID集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// DDoS策略组ID集合，不填默认选择全部策略ID。
        public let policyIds: [Int64]?

        /// 攻击类型，取值有：
        /// - flood：洪泛攻击；
        /// - icmpFlood：icmp洪泛攻击；
        /// - all：所有的攻击类型。
        /// 不填默认为all，表示查询全部攻击类型。
        public let attackType: String?

        /// 协议类型，取值有：
        /// - tcp：tcp协议；
        /// - udp：udp协议；
        /// - all：所有的协议类型。
        /// 不填默认为all，表示查询所有协议。
        public let protocolType: String?

        /// 端口号。
        public let port: Int64?

        /// 查询前多少个数据，不填默认默认为10， 表示查询前top 10的数据。
        public let limit: Int64?

        /// 数据归属地区，取值有：
        /// - overseas：全球（除中国大陆地区）数据；
        /// - mainland：中国大陆地区数据。
        /// 不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, attackType: String? = nil, protocolType: String? = nil, port: Int64? = nil, limit: Int64? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.zoneIds = zoneIds
            self.policyIds = policyIds
            self.attackType = attackType
            self.protocolType = protocolType
            self.port = port
            self.limit = limit
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case zoneIds = "ZoneIds"
            case policyIds = "PolicyIds"
            case attackType = "AttackType"
            case protocolType = "ProtocolType"
            case port = "Port"
            case limit = "Limit"
            case area = "Area"
        }
    }

    /// DescribeDDoSAttackTopData返回参数结构体
    public struct DescribeDDoSAttackTopDataResponse: TCResponse {
        /// DDoS攻击Top数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TopEntry]?

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

    /// 查询DDoS攻击Top数据
    ///
    /// 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。
    @inlinable
    public func describeDDoSAttackTopData(_ input: DescribeDDoSAttackTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackTopDataResponse> {
        self.client.execute(action: "DescribeDDoSAttackTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击Top数据
    ///
    /// 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。
    @inlinable
    public func describeDDoSAttackTopData(_ input: DescribeDDoSAttackTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackTopDataResponse {
        try await self.client.execute(action: "DescribeDDoSAttackTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDoS攻击Top数据
    ///
    /// 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。
    @inlinable
    public func describeDDoSAttackTopData(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, attackType: String? = nil, protocolType: String? = nil, port: Int64? = nil, limit: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackTopDataResponse> {
        self.describeDDoSAttackTopData(.init(startTime: startTime, endTime: endTime, metricName: metricName, zoneIds: zoneIds, policyIds: policyIds, attackType: attackType, protocolType: protocolType, port: port, limit: limit, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击Top数据
    ///
    /// 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。
    @inlinable
    public func describeDDoSAttackTopData(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, attackType: String? = nil, protocolType: String? = nil, port: Int64? = nil, limit: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackTopDataResponse {
        try await self.describeDDoSAttackTopData(.init(startTime: startTime, endTime: endTime, metricName: metricName, zoneIds: zoneIds, policyIds: policyIds, attackType: attackType, protocolType: protocolType, port: port, limit: limit, area: area), region: region, logger: logger, on: eventLoop)
    }
}
