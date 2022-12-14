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
    /// DescribeBotClientIpList请求参数结构体
    public struct DescribeBotClientIpListRequest: TCRequestModel {
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
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 子域名列表，不填默认选择全部子域名。
        public let domains: [String]?
        
        /// 查询时间粒度，取值有：
        /// <li>min ：1分钟；</li>
        /// <li>5min ：5分钟；</li>
        /// <li>hour ：1小时；</li>
        /// <li>day ：1天。 </li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?
        
        /// 筛选条件，key可选的值有：
        /// <li>action: 执行动作。 </li>
        public let queryCondition: [QueryCondition]?
        
        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?
        
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?
        
        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据； </li>
        /// <li>mainland ：中国大陆地区数据。 </li>不填将根据用户所在地智能选择地区。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.zoneIds = zoneIds
            self.domains = domains
            self.interval = interval
            self.queryCondition = queryCondition
            self.limit = limit
            self.offset = offset
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case interval = "Interval"
            case queryCondition = "QueryCondition"
            case limit = "Limit"
            case offset = "Offset"
            case area = "Area"
        }
    }
    
    /// DescribeBotClientIpList返回参数结构体
    public struct DescribeBotClientIpListResponse: TCResponseModel {
        /// 客户端Ip相关数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SecClientIp]?
        
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
    
    /// 查询Bot攻击客户端Ip信息
    ///
    /// 本接口（DescribeBotClientIpList）用于查询Bot攻击客户端Ip信息列表。
    @inlinable
    public func describeBotClientIpList(_ input: DescribeBotClientIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBotClientIpListResponse > {
        self.client.execute(action: "DescribeBotClientIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Bot攻击客户端Ip信息
    ///
    /// 本接口（DescribeBotClientIpList）用于查询Bot攻击客户端Ip信息列表。
    @inlinable
    public func describeBotClientIpList(_ input: DescribeBotClientIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotClientIpListResponse {
        try await self.client.execute(action: "DescribeBotClientIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询Bot攻击客户端Ip信息
    ///
    /// 本接口（DescribeBotClientIpList）用于查询Bot攻击客户端Ip信息列表。
    @inlinable
    public func describeBotClientIpList(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBotClientIpListResponse > {
        self.describeBotClientIpList(DescribeBotClientIpListRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, interval: interval, queryCondition: queryCondition, limit: limit, offset: offset, area: area), logger: logger, on: eventLoop)
    }
    
    /// 查询Bot攻击客户端Ip信息
    ///
    /// 本接口（DescribeBotClientIpList）用于查询Bot攻击客户端Ip信息列表。
    @inlinable
    public func describeBotClientIpList(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotClientIpListResponse {
        try await self.describeBotClientIpList(DescribeBotClientIpListRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, interval: interval, queryCondition: queryCondition, limit: limit, offset: offset, area: area), logger: logger, on: eventLoop)
    }
}
