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
    /// DescribeBotLog请求参数结构体
    public struct DescribeBotLogRequest: TCRequestModel {
        /// 开始时间
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
        
        /// 查询的站点集合，不填默认查询所有站点。
        public let zoneIds: [String]?
        
        /// 查询的域名集合，不填默认查询所有子域名。
        public let domains: [String]?
        
        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?
        
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?
        
        /// 筛选条件，当前key的可选条件有：
        /// <li>action：执行动作（处置方式）；</li>
        /// <li>sipCountryCode：ip所在国家；</li>
        /// <li>attackIp：攻击ip；</li>
        /// <li>ruleId：规则id；</li>
        /// <li>eventId：事件id；</li>
        /// <li>ua：用户代理；</li>
        /// <li>requestMethod：请求方法；</li>
        /// <li>uri：统一资源标识符 。</li>
        public let queryCondition: [QueryCondition]?
        
        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.zoneIds = zoneIds
            self.domains = domains
            self.limit = limit
            self.offset = offset
            self.queryCondition = queryCondition
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case limit = "Limit"
            case offset = "Offset"
            case queryCondition = "QueryCondition"
            case area = "Area"
        }
    }
    
    /// DescribeBotLog返回参数结构体
    public struct DescribeBotLogResponse: TCResponseModel {
        /// Bot攻击数据信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [BotLog]?
        
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
    
    /// 查询Bot攻击日志
    ///
    /// 本接口（DescribeBotLog）用于查询Bot攻击日志。
    @inlinable
    public func describeBotLog(_ input: DescribeBotLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBotLogResponse > {
        self.client.execute(action: "DescribeBotLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Bot攻击日志
    ///
    /// 本接口（DescribeBotLog）用于查询Bot攻击日志。
    @inlinable
    public func describeBotLog(_ input: DescribeBotLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotLogResponse {
        try await self.client.execute(action: "DescribeBotLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询Bot攻击日志
    ///
    /// 本接口（DescribeBotLog）用于查询Bot攻击日志。
    @inlinable
    public func describeBotLog(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBotLogResponse > {
        self.describeBotLog(DescribeBotLogRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, limit: limit, offset: offset, queryCondition: queryCondition, area: area), logger: logger, on: eventLoop)
    }
    
    /// 查询Bot攻击日志
    ///
    /// 本接口（DescribeBotLog）用于查询Bot攻击日志。
    @inlinable
    public func describeBotLog(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotLogResponse {
        try await self.describeBotLog(DescribeBotLogRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, limit: limit, offset: offset, queryCondition: queryCondition, area: area), logger: logger, on: eventLoop)
    }
}
