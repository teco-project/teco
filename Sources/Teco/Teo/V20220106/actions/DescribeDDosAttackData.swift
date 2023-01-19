//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeDDosAttackData请求参数结构体
    public struct DescribeDDosAttackDataRequest: TCRequestModel {
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
        /// <li>ddos_attackMaxBandwidth ：攻击带宽峰值 ；</li>
        /// <li>ddos_attackMaxPackageRate：攻击包速率峰值  ；</li>
        /// <li>ddos_attackBandwidth ：攻击带宽曲线 ；</li>
        /// <li>ddos_attackPackageRate ：攻击包速率曲线 。</li>
        public let metricNames: [String]

        /// 站点id列表，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// ddos策略组id列表，不填默认选择全部策略id。
        public let policyIds: [Int64]?

        /// 端口号。
        public let port: Int64?

        /// 协议类型，取值有：
        /// <li>tcp ；</li>
        /// <li>udp ；</li>
        /// <li>all 。</li>
        public let protocolType: String?

        /// 攻击类型，取值有：
        /// <li>flood ；</li>
        /// <li>icmpFlood ；</li>
        /// <li>all 。</li>
        public let attackType: String?

        /// 查询时间粒度，取值有：
        /// <li>min ：1分钟 ；</li>
        /// <li>5min ：5分钟 ；</li>
        /// <li>hour ：1小时 ；</li>
        /// <li>day ：1天 。</li>
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.policyIds = policyIds
            self.port = port
            self.protocolType = protocolType
            self.attackType = attackType
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case policyIds = "PolicyIds"
            case port = "Port"
            case protocolType = "ProtocolType"
            case attackType = "AttackType"
            case interval = "Interval"
            case area = "Area"
        }
    }

    /// DescribeDDosAttackData返回参数结构体
    public struct DescribeDDosAttackDataResponse: TCResponseModel {
        /// DDos攻击数据内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SecEntry]?

        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64

        /// 请求响应信息。
        public let msg: String

        /// 查询时间粒度，取值有：
        /// <li>min ：1分钟 ；</li>
        /// <li>5min ：5分钟 ；</li>
        /// <li>hour ：1小时 ；</li>
        /// <li>day ：1天 。</li>
        public let interval: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }

    /// 查询DDos攻击时序数据
    @inlinable
    public func describeDDosAttackData(_ input: DescribeDDosAttackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackDataResponse> {
        self.client.execute(action: "DescribeDDosAttackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击时序数据
    @inlinable
    public func describeDDosAttackData(_ input: DescribeDDosAttackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackDataResponse {
        try await self.client.execute(action: "DescribeDDosAttackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDos攻击时序数据
    @inlinable
    public func describeDDosAttackData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackDataResponse> {
        self.describeDDosAttackData(DescribeDDosAttackDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, policyIds: policyIds, port: port, protocolType: protocolType, attackType: attackType, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击时序数据
    @inlinable
    public func describeDDosAttackData(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackDataResponse {
        try await self.describeDDosAttackData(DescribeDDosAttackDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, policyIds: policyIds, port: port, protocolType: protocolType, attackType: attackType, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
