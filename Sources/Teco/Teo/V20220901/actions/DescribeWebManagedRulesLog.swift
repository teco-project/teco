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
    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebManagedRulesLogResponse > {
        self.client.execute(action: "DescribeWebManagedRulesLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesLogResponse {
        try await self.client.execute(action: "DescribeWebManagedRulesLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWebManagedRulesLog请求参数结构体
    public struct DescribeWebManagedRulesLogRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 域名集合，不填默认选择全部子域名。
        public let domains: [String]?
        
        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: UInt64?
        
        /// 分页的偏移量，默认值为0。
        public let offset: UInt64?
        
        /// 筛选条件，key可选的值有：
        /// <li>attackType：攻击类型；</li>
        /// <li>riskLevel：风险等级；</li>
        /// <li>action：执行动作（处置方式）；</li>
        /// <li>ruleId：规则id；</li>
        /// <li>sipCountryCode：ip所在国家；</li>
        /// <li>attackIp：攻击ip；</li>
        /// <li>oriDomain：被攻击的子域名；</li>
        /// <li>eventId：事件id；</li>
        /// <li>ua：用户代理；</li>
        /// <li>requestMethod：请求方法；</li>
        /// <li>uri：统一资源标识符。</li>
        public let queryCondition: [QueryCondition]?
        
        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, zoneIds: [String]?, domains: [String]?, limit: UInt64?, offset: UInt64?, queryCondition: [QueryCondition]?, area: String?) {
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
    
    /// DescribeWebManagedRulesLog返回参数结构体
    public struct DescribeWebManagedRulesLogResponse: TCResponseModel {
        /// Web攻击日志数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [WebLogs]?
        
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