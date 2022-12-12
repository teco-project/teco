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
    /// DescribeBotTopData请求参数结构体
    public struct DescribeBotTopDataRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 统计指标列表，取值有：
        /// <li>bot_requestNum_labelType：请求次数标签类型分布排行；</li>
        /// <li>bot_requestNum_url：请求次数url分布排行；</li>
        /// <li>bot_cipRequestNum_region：请求次数区域客户端ip分布排行。</li>
        public let metricName: String
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 域名集合，不填默认选择全部子域名。
        public let domains: [String]?
        
        /// 查询前多少个数据，最多值为1000，不填默认默认为：10， 表示查询前top 10的数据。
        public let limit: Int64?
        
        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?
        
        /// 筛选条件，key可选的值有：
        /// <li>action：执行动作 。</li>
        public let queryCondition: [QueryCondition]?
        
        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, domains: [String]? = nil, limit: Int64? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricName = metricName
            self.zoneIds = zoneIds
            self.domains = domains
            self.limit = limit
            self.interval = interval
            self.queryCondition = queryCondition
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case limit = "Limit"
            case interval = "Interval"
            case queryCondition = "QueryCondition"
            case area = "Area"
        }
    }
    
    /// DescribeBotTopData返回参数结构体
    public struct DescribeBotTopDataResponse: TCResponseModel {
        /// Bot攻击TopN数据列表。
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
    
    /// 查询Bot攻击Top数据
    ///
    /// 本接口（DescribeBotTopData）查询Bot攻击TopN数据。
    @inlinable
    public func describeBotTopData(_ input: DescribeBotTopDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBotTopDataResponse > {
        self.client.execute(action: "DescribeBotTopData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Bot攻击Top数据
    ///
    /// 本接口（DescribeBotTopData）查询Bot攻击TopN数据。
    @inlinable
    public func describeBotTopData(_ input: DescribeBotTopDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotTopDataResponse {
        try await self.client.execute(action: "DescribeBotTopData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
