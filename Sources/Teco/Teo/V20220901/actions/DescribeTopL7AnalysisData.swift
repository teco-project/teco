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
    /// 查询七层数据分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(_ input: DescribeTopL7AnalysisDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopL7AnalysisDataResponse > {
        self.client.execute(action: "DescribeTopL7AnalysisData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询七层数据分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(_ input: DescribeTopL7AnalysisDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeTopL7AnalysisData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTopL7AnalysisData请求参数结构体
    public struct DescribeTopL7AnalysisDataRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 查询的指标，取值有：
        /// <li> l7Flow_outFlux_country：请求的国家；</li>
        /// <li> l7Flow_outFlux_statusCode：请求的状态码；</li>
        /// <li> l7Flow_outFlux_domain：请求域名；</li>
        /// <li> l7Flow_outFlux_url：请求的URL; </li>
        /// <li> l7Flow_outFlux_resourceType：请求的资源类型；</li>
        /// <li> l7Flow_outFlux_sip：客户端的源IP；</li>
        /// <li> l7Flow_outFlux_referers：refer信息；</li>
        /// <li> l7Flow_outFlux_ua_device：设备类型; </li>
        /// <li> l7Flow_outFlux_ua_browser：浏览器类型；</li>
        /// <li> l7Flow_outFlux_us_os：操作系统类型。</li>
        public let metricName: String
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 查询前多少个数据，最大值为1000，不填默认默认为: 10， 表示查询前top10的数据。
        public let limit: Int64?
        
        /// 筛选条件，key可选的值有：
        /// <li>country：国家/地区；</li>
        /// <li>domain：域名；</li>
        /// <li>protocol：协议类型；</li>
        /// <li>resourceType：资源类型；</li>
        /// <li>statusCode：状态码；</li>
        /// <li> browserType：浏览器类型；</li>
        /// <li>deviceType：设备类型；</li>
        /// <li>operatingSystemType：操作系统类型；</li>
        /// <li>tlsVersion：tls版本；</li>
        /// <li>url：url地址；</li>
        /// <li>referer：refer头信息；</li>
        /// <li>ipVersion：ip版本；</li>
        /// <li>tagKey：标签Key；</li>
        /// <li>tagValue：标签Value。</li>
        public let filters: [QueryCondition]?
        
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
        
        public init (startTime: Date, endTime: Date, metricName: String, zoneIds: [String]?, limit: Int64?, filters: [QueryCondition]?, interval: String?, area: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricName = metricName
            self.zoneIds = zoneIds
            self.limit = limit
            self.filters = filters
            self.interval = interval
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case zoneIds = "ZoneIds"
            case limit = "Limit"
            case filters = "Filters"
            case interval = "Interval"
            case area = "Area"
        }
    }
    
    /// DescribeTopL7AnalysisData返回参数结构体
    public struct DescribeTopL7AnalysisDataResponse: TCResponseModel {
        /// 七层流量前topN数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TopDataRecord]?
        
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
}