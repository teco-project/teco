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

extension Teo {
    /// DescribeTimingL7CacheData请求参数结构体
    public struct DescribeTimingL7CacheDataRequest: TCRequestModel {
        /// RFC3339标准，客户端时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// RFC3339标准，客户端时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 时序类访问流量指标列表，支持的指标
        /// l7Cache_outFlux: 访问流量
        /// l7Cache_request: 访问请求数
        public let metricNames: [String]
        
        /// 时间间隔，选填{min, 5min, hour, day, week}
        public let interval: String
        
        /// 站点id列表
        public let zoneIds: [String]?
        
        /// 筛选条件，筛选EO/源站响应如下：
        /// EO响应：{Key: "cacheType", Value: ["hit"], Operator: "equals"}；
        /// 源站响应：{Key: "cacheType", Value: ["miss", "dynamic"], Operator: "equals"}
        public let filters: [Filter]?
        
        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String?
        
        public init (startTime: Date, endTime: Date, metricNames: [String], interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.interval = interval
            self.zoneIds = zoneIds
            self.filters = filters
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case interval = "Interval"
            case zoneIds = "ZoneIds"
            case filters = "Filters"
            case area = "Area"
        }
    }
    
    /// DescribeTimingL7CacheData返回参数结构体
    public struct DescribeTimingL7CacheDataResponse: TCResponseModel {
        /// 详细数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TimingDataRecord]?
        
        /// 查询维度
        public let type: String
        
        /// 时间间隔
        public let interval: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case type = "Type"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }
    
    /// 七层缓存分析类时序流量数据接口
    ///
    /// 七层查询缓存分析时序类流量数据
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimingL7CacheDataResponse > {
        self.client.execute(action: "DescribeTimingL7CacheData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 七层缓存分析类时序流量数据接口
    ///
    /// 七层查询缓存分析时序类流量数据
    @inlinable
    public func describeTimingL7CacheData(_ input: DescribeTimingL7CacheDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimingL7CacheDataResponse {
        try await self.client.execute(action: "DescribeTimingL7CacheData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
