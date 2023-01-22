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

extension Cdn {
    /// DescribeWafData请求参数结构体
    public struct DescribeWafDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        public let startTime: String

        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        public let endTime: String

        /// 时间粒度，支持以下几种模式：
        /// min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据
        /// 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        /// hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        /// day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        ///
        /// 仅支持30天内数据查询，且查询时间范围在 7 到 30 天最小粒度是 hour。
        public let interval: String

        /// 指定域名查询
        public let domain: String?

        /// 指定攻击类型
        /// 不填则查询所有攻击类型的数据分布
        /// AttackType 映射如下:
        /// "webshell" : Webshell检测防护
        /// "oa" : 常见OA漏洞防护
        /// "xss" : XSS跨站脚本攻击防护
        /// "xxe" : XXE攻击防护
        /// "webscan" : 扫描器攻击漏洞防护
        /// "cms" : 常见CMS漏洞防护
        /// "upload" : 恶意文件上传攻击防护
        /// "sql" : SQL注入攻击防护
        /// "cmd_inject": 命令/代码注入攻击防护
        /// "osc" : 开源组件漏洞防护
        /// "file_read" : 任意文件读取
        /// "ldap" : LDAP注入攻击防护
        /// "other" : 其它漏洞防护
        public let attackType: String?

        /// 指定防御模式
        /// 不填则查询所有防御模式的数据总和
        /// DefenceMode映射如下：
        ///   observe = '观察模式'
        ///   intercept = '拦截模式'
        public let defenceMode: String?

        /// 地域：mainland 或 overseas
        public let area: String?

        /// 指定多个攻击类型，取值参考AttackType
        public let attackTypes: [String]?

        /// 指定域名列表查询
        public let domains: [String]?

        public init(startTime: String, endTime: String, interval: String, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, area: String? = nil, attackTypes: [String]? = nil, domains: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.interval = interval
            self.domain = domain
            self.attackType = attackType
            self.defenceMode = defenceMode
            self.area = area
            self.attackTypes = attackTypes
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case interval = "Interval"
            case domain = "Domain"
            case attackType = "AttackType"
            case defenceMode = "DefenceMode"
            case area = "Area"
            case attackTypes = "AttackTypes"
            case domains = "Domains"
        }
    }

    /// DescribeWafData返回参数结构体
    public struct DescribeWafDataResponse: TCResponseModel {
        /// 粒度数据
        public let data: [TimestampData]

        /// 粒度
        public let interval: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }

    /// Waf统计数据查询
    @inlinable
    public func describeWafData(_ input: DescribeWafDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafDataResponse> {
        self.client.execute(action: "DescribeWafData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf统计数据查询
    @inlinable
    public func describeWafData(_ input: DescribeWafDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafDataResponse {
        try await self.client.execute(action: "DescribeWafData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf统计数据查询
    @inlinable
    public func describeWafData(startTime: String, endTime: String, interval: String, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, area: String? = nil, attackTypes: [String]? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafDataResponse> {
        self.describeWafData(DescribeWafDataRequest(startTime: startTime, endTime: endTime, interval: interval, domain: domain, attackType: attackType, defenceMode: defenceMode, area: area, attackTypes: attackTypes, domains: domains), region: region, logger: logger, on: eventLoop)
    }

    /// Waf统计数据查询
    @inlinable
    public func describeWafData(startTime: String, endTime: String, interval: String, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, area: String? = nil, attackTypes: [String]? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafDataResponse {
        try await self.describeWafData(DescribeWafDataRequest(startTime: startTime, endTime: endTime, interval: interval, domain: domain, attackType: attackType, defenceMode: defenceMode, area: area, attackTypes: attackTypes, domains: domains), region: region, logger: logger, on: eventLoop)
    }
}
