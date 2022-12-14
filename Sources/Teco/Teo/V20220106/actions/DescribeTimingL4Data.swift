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
        /// RFC3339格式，客户端时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date
        
        /// RFC3339格式，客户端时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date
        
        /// 支持的指标：
        /// l4Flow_connections: 访问连接数
        /// l4Flow_flux: 访问总流量
        /// l4Flow_inFlux: 访问入流量
        /// l4Flow_outFlux: 访问出流量
        public let metricNames: [String]
        
        /// 站点id列表
        public let zoneIds: [String]?
        
        /// 该字段已废弃，请使用ProxyIds字段
        public let instanceIds: [String]?
        
        /// 该字段当前无效
        public let `protocol`: String?
        
        /// 时间间隔，选填{min, 5min, hour, day}
        public let interval: String?
        
        /// 该字段当前无效，请使用Filter筛选
        public let ruleId: String?
        
        /// 支持的 Filter：proxyd,ruleId
        public let filters: [Filter]?
        
        /// 四层实例列表
        public let proxyIds: [String]?
        
        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String?
        
        public init (startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, instanceIds: [String]? = nil, protocol: String? = nil, interval: String? = nil, ruleId: String? = nil, filters: [Filter]? = nil, proxyIds: [String]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.zoneIds = zoneIds
            self.instanceIds = instanceIds
            self.`protocol` = `protocol`
            self.interval = interval
            self.ruleId = ruleId
            self.filters = filters
            self.proxyIds = proxyIds
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case zoneIds = "ZoneIds"
            case instanceIds = "InstanceIds"
            case `protocol` = "Protocol"
            case interval = "Interval"
            case ruleId = "RuleId"
            case filters = "Filters"
            case proxyIds = "ProxyIds"
            case area = "Area"
        }
    }
    
    /// DescribeTimingL4Data返回参数结构体
    public struct DescribeTimingL4DataResponse: TCResponseModel {
        /// 查询维度
        public let type: String
        
        /// 时间间隔
        public let interval: String
        
        /// 详细数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TimingDataRecord]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 四层时序流量数据查询接口
    ///
    /// 四层时序流量数据查询
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimingL4DataResponse > {
        self.client.execute(action: "DescribeTimingL4Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 四层时序流量数据查询接口
    ///
    /// 四层时序流量数据查询
    @inlinable
    public func describeTimingL4Data(_ input: DescribeTimingL4DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.client.execute(action: "DescribeTimingL4Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 四层时序流量数据查询接口
    ///
    /// 四层时序流量数据查询
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, instanceIds: [String]? = nil, protocol: String? = nil, interval: String? = nil, ruleId: String? = nil, filters: [Filter]? = nil, proxyIds: [String]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimingL4DataResponse > {
        self.describeTimingL4Data(DescribeTimingL4DataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, instanceIds: instanceIds, protocol: `protocol`, interval: interval, ruleId: ruleId, filters: filters, proxyIds: proxyIds, area: area), logger: logger, on: eventLoop)
    }
    
    /// 四层时序流量数据查询接口
    ///
    /// 四层时序流量数据查询
    @inlinable
    public func describeTimingL4Data(startTime: Date, endTime: Date, metricNames: [String], zoneIds: [String]? = nil, instanceIds: [String]? = nil, protocol: String? = nil, interval: String? = nil, ruleId: String? = nil, filters: [Filter]? = nil, proxyIds: [String]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL4DataResponse {
        try await self.describeTimingL4Data(DescribeTimingL4DataRequest(startTime: startTime, endTime: endTime, metricNames: metricNames, zoneIds: zoneIds, instanceIds: instanceIds, protocol: `protocol`, interval: interval, ruleId: ruleId, filters: filters, proxyIds: proxyIds, area: area), logger: logger, on: eventLoop)
    }
}
