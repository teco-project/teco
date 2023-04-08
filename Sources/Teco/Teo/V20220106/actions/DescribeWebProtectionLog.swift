//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeWebProtectionLog请求参数结构体
    public struct DescribeWebProtectionLogRequest: TCRequestModel {
        /// 起始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 分页拉取的最大返回结果数。最大值：1000。
        public let pageSize: Int64

        /// 分页拉取的起始页号。最小值：1。
        public let pageNo: Int64

        /// 站点集合，不填默认查询所有站点。
        public let zoneIds: [String]?

        /// 域名集合，不填默认查询所有域名。
        public let domains: [String]?

        /// 筛选条件。
        /// 限速规则日志中取值有：
        /// <li>action ：执行动作（处置方式）；</li>
        /// <li>ruleId ：规则id ；</li>
        /// <li>oriDomain ：被攻击的子域名 ；</li>
        /// <li>attackIp ：攻击ip 。</li>
        /// 自定义规则日志中取值有：
        /// <li>action ：执行动作（处置方式）；</li>
        /// <li>ruleId ：规则id ；</li>
        /// <li>oriDomain ：被攻击的子域名 ；</li>
        /// <li>attackIp ：攻击ip ；</li>
        /// <li>eventId ：事件id ；</li>
        /// <li>ua ：用户代理 ；</li>
        /// <li>requestMethod ：请求方法 ；</li>
        /// <li>uri ：统一资源标识符 。</li>
        public let queryCondition: [QueryCondition]?

        /// 日志类型，取值有：
        /// <li>rate ：限速日志 ；</li>
        /// <li>acl ：自定义规则日志 。</li>不填默认为rate。
        public let entityType: String?

        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?

        public init(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, entityType: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.pageSize = pageSize
            self.pageNo = pageNo
            self.zoneIds = zoneIds
            self.domains = domains
            self.queryCondition = queryCondition
            self.entityType = entityType
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
            case entityType = "EntityType"
            case area = "Area"
        }
    }

    /// DescribeWebProtectionLog返回参数结构体
    public struct DescribeWebProtectionLogResponse: TCResponseModel {
        /// 限速拦截数据内容。
        public let data: CCLogData

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

    /// 查询CC防护日志
    @inlinable
    public func describeWebProtectionLog(_ input: DescribeWebProtectionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionLogResponse> {
        self.client.execute(action: "DescribeWebProtectionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CC防护日志
    @inlinable
    public func describeWebProtectionLog(_ input: DescribeWebProtectionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionLogResponse {
        try await self.client.execute(action: "DescribeWebProtectionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CC防护日志
    @inlinable
    public func describeWebProtectionLog(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, entityType: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionLogResponse> {
        self.describeWebProtectionLog(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, entityType: entityType, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CC防护日志
    @inlinable
    public func describeWebProtectionLog(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, entityType: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionLogResponse {
        try await self.describeWebProtectionLog(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, entityType: entityType, area: area), region: region, logger: logger, on: eventLoop)
    }
}
