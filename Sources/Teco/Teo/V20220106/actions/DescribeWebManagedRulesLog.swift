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
    /// 查询waf攻击日志
    ///
    /// 查询waf攻击日志
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebManagedRulesLogResponse > {
        self.client.execute(action: "DescribeWebManagedRulesLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询waf攻击日志
    ///
    /// 查询waf攻击日志
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesLogResponse {
        try await self.client.execute(action: "DescribeWebManagedRulesLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWebManagedRulesLog请求参数结构体
    public struct DescribeWebManagedRulesLogRequest: TCRequestModel {
        /// 起始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 分页拉取的最大返回结果数。最大值：1000。
        public let pageSize: Int64
        
        /// 分页拉取的起始页号。最小值：1。
        public let pageNo: Int64
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 域名集合，不填默认选择全部子域名。
        public let domains: [String]?
        
        /// 筛选条件，取值有：
        /// <li>attackType ：攻击类型 ；</li>
        /// <li>riskLevel ：风险等级 ；</li>
        /// <li>action ：执行动作（处置方式） ；</li>
        /// <li>ruleId ：规则id ；</li>
        /// <li>sipCountryCode ：ip所在国家 ；</li>
        /// <li>attackIp ：攻击ip ；</li>
        /// <li>oriDomain ：被攻击的子域名 ；</li>
        /// <li>eventId ：事件id ；</li>
        /// <li>ua ：用户代理 ；</li>
        /// <li>requestMethod ：请求方法 ；</li>
        /// <li>uri ：统一资源标识符 。</li>
        public let queryCondition: [QueryCondition]?
        
        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, zoneIds: [String]?, domains: [String]?, queryCondition: [QueryCondition]?, area: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.pageSize = pageSize
            self.pageNo = pageNo
            self.zoneIds = zoneIds
            self.domains = domains
            self.queryCondition = queryCondition
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageSize = "PageSize"
            case pageNo = "PageNo"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case queryCondition = "QueryCondition"
            case area = "Area"
        }
    }
    
    /// DescribeWebManagedRulesLog返回参数结构体
    public struct DescribeWebManagedRulesLogResponse: TCResponseModel {
        /// web攻击日志数据内容。
        public let data: WebLogData
        
        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64
        
        /// 请求响应信息。
        public let msg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
}