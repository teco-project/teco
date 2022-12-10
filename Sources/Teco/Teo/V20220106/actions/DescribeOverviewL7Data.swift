//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Teo {
    /// 查询七层监控类时序流量数据
    ///
    /// 本接口（DescribeOverviewL7Data）用于查询七层监控类时序流量数据。
    @inlinable
    public func describeOverviewL7Data(_ input: DescribeOverviewL7DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOverviewL7DataResponse > {
        self.client.execute(action: "DescribeOverviewL7Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询七层监控类时序流量数据
    ///
    /// 本接口（DescribeOverviewL7Data）用于查询七层监控类时序流量数据。
    @inlinable
    public func describeOverviewL7Data(_ input: DescribeOverviewL7DataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewL7DataResponse {
        try await self.client.execute(action: "DescribeOverviewL7Data", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOverviewL7Data请求参数结构体
    public struct DescribeOverviewL7DataRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 查询的指标，取值有：
        /// <li>l7Flow_outFlux: 访问流量；</li>
        /// <li>l7Flow_request: 访问请求数；</li>
        /// <li>l7Flow_outBandwidth: 访问带宽；</li>
        /// <li>l7Flow_hit_outFlux: 缓存命中流量。</li>
        public let metricNames: [String]
        
        /// 查询时间粒度，取值有：
        /// <li>min ：1分钟 ；</li>
        /// <li>5min ：5分钟 ；</li>
        /// <li>hour ：1小时 ；</li>
        /// <li>day ：1天 。</li>
        public let interval: String
        
        /// 查询的站点集合，不填默认查询所有站点。
        public let zoneIds: [String]?
        
        /// 查询的域名集合，不填默认查询所有子域名。
        public let domains: [String]?
        
        /// 查询的协议类型，取值有：
        /// <li>http: http协议；</li>
        /// <li>https: https协议；</li>
        /// <li>http2: http2协议；</li>
        /// <li>all:  所有协议。</li>不填默认为: all，表示查询所有协议。
        public let `protocol`: String?
        
        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String?
        
        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。<br>   类型：String<br>   必选：否
        /// <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。<br>   类型：String<br>   必选：否
        public let filters: [QueryCondition]?
        
        public init (startTime: Date, endTime: Date, metricNames: [String], interval: String, zoneIds: [String]?, domains: [String]?, `protocol`: String?, area: String?, filters: [QueryCondition]?) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.interval = interval
            self.zoneIds = zoneIds
            self.domains = domains
            self.`protocol` = `protocol`
            self.area = area
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case interval = "Interval"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case `protocol` = "Protocol"
            case area = "Area"
            case filters = "Filters"
        }
    }
    
    /// DescribeOverviewL7Data返回参数结构体
    public struct DescribeOverviewL7DataResponse: TCResponseModel {
        /// 查询维度。
        public let type: String
        
        /// 查询时间间隔。
        public let interval: String
        
        /// 七层监控类时序流量数据列表。
        public let data: [TimingDataRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}