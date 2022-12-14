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
    /// DescribeDDoSAttackData请求参数结构体
    public struct DescribeDDoSAttackDataRequest: TCRequestModel {
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
        
        /// 统计指标列表，取值有：
        /// <li>ddos_attackMaxBandwidth：攻击带宽峰值；</li>
        /// <li>ddos_attackMaxPackageRate：攻击包速率峰值 ；</li>
        /// <li>ddos_attackBandwidth：攻击带宽曲线；</li>
        /// <li>ddos_attackPackageRate：攻击包速率曲线。</li>
        public let metricNames: [String]
        
        /// 端口号。
        public let port: Int64?
        
        /// 攻击类型，取值有：
        /// <li>flood：泛洪攻击；</li>
        /// <li>icmpFlood：icmp泛洪攻击；</li>
        /// <li>all：全部攻击类型。</li>不填默认为all，表示查询全部攻击类型。
        public let attackType: String?
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// DDOS策略组id列表，不填默认选择全部策略id。
        public let policyIds: [Int64]?
        
        /// 协议类型，取值有：
        /// <li>tcp：tcp协议；</li>
        /// <li>udp：udp协议；</li>
        /// <li>all：全部协议。</li>不填默认为all，表示获取全部协议类型。
        public let protocolType: String?
        
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
        
        public init (startTime: Date, endTime: Date, metricNames: [String], port: Int64? = nil, attackType: String? = nil, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, protocolType: String? = nil, interval: String? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.port = port
            self.attackType = attackType
            self.zoneIds = zoneIds
            self.policyIds = policyIds
            self.protocolType = protocolType
            self.interval = interval
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case port = "Port"
            case attackType = "AttackType"
            case zoneIds = "ZoneIds"
            case policyIds = "PolicyIds"
            case protocolType = "ProtocolType"
            case interval = "Interval"
            case area = "Area"
        }
    }
    
    /// DescribeDDoSAttackData返回参数结构体
    public struct DescribeDDoSAttackDataResponse: TCResponseModel {
        /// DDoS攻击数据内容列表。
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
    
    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(_ input: DescribeDDoSAttackDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAttackDataResponse > {
        self.client.execute(action: "DescribeDDoSAttackData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(_ input: DescribeDDoSAttackDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackDataResponse {
        try await self.client.execute(action: "DescribeDDoSAttackData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(startTime: Date, endTime: Date, metricNames: [String], port: Int64? = nil, attackType: String? = nil, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, protocolType: String? = nil, interval: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAttackDataResponse > {
        self.describeDDoSAttackData(DescribeDDoSAttackDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, port: port, attackType: attackType, zoneIds: zoneIds, policyIds: policyIds, protocolType: protocolType, interval: interval, area: area), logger: logger, on: eventLoop)
    }
    
    /// 查询DDoS攻击时序数据
    ///
    /// 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。
    @inlinable
    public func describeDDoSAttackData(startTime: Date, endTime: Date, metricNames: [String], port: Int64? = nil, attackType: String? = nil, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, protocolType: String? = nil, interval: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackDataResponse {
        try await self.describeDDoSAttackData(DescribeDDoSAttackDataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, port: port, attackType: attackType, zoneIds: zoneIds, policyIds: policyIds, protocolType: protocolType, interval: interval, area: area), logger: logger, on: eventLoop)
    }
}
