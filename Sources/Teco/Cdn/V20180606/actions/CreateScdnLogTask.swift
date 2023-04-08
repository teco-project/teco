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
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cdn {
    /// CreateScdnLogTask请求参数结构体
    public struct CreateScdnLogTaskRequest: TCRequestModel {
        /// 防护类型
        /// Mode 映射如下：
        ///   waf = "Web攻击"
        ///   cc = "CC攻击"
        ///   bot = "Bot攻击"
        public let mode: String

        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定域名查询, 不填默认查询全部域名
        public let domain: String?

        /// 指定攻击类型, 不填默认查询全部攻击类型
        /// AttackType 映射如下:
        ///   other = '未知类型'
        ///   malicious_scan = "恶意扫描"
        ///   sql_inject = "SQL注入攻击"
        ///   xss = "XSS攻击"
        ///   cmd_inject = "命令注入攻击"
        ///   ldap_inject = "LDAP注入攻击"
        ///   ssi_inject = "SSI注入攻击"
        ///   xml_inject = "XML注入攻击"
        ///   web_service = "WEB服务漏洞攻击"
        ///   web_app = "WEB应用漏洞攻击"
        ///   path_traversal = "路径跨越攻击"
        ///   illegal_access_core_file = "核心文件非法访问"
        ///   trojan_horse = "木马后门攻击"
        ///   csrf = "CSRF攻击"
        ///   malicious_file_upload= '恶意文件上传'
        ///   js = "JS主动探测"
        ///   cookie = "Cookie指纹"
        public let attackType: String?

        /// 指定执行动作, 不填默认查询全部执行动作
        /// DefenceMode 映射如下：
        ///   observe = '观察模式'
        ///   intercept = '拦截模式'
        ///   captcha = "验证码"
        ///   redirect = "重定向"
        public let defenceMode: String?

        /// 不填为全部ip
        public let ip: String?

        /// 指定域名查询, 与 Domain 参数同时有值时使用 Domains 参数，不填默认查询全部域名，指定域名查询时最多支持同时选择 5 个域名查询
        public let domains: [String]?

        /// 指定攻击类型查询, 与 AttackType 参数同时有值时使用 AttackTypes 参数，不填默认查询全部攻击类型
        public let attackTypes: [String]?

        /// 查询条件
        public let conditions: [ScdnEventLogConditions]?

        /// 来源产品 cdn ecdn
        public let source: String?

        /// 地域：mainland 或 overseas
        public let area: String?

        public init(mode: String, startTime: Date, endTime: Date, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, ip: String? = nil, domains: [String]? = nil, attackTypes: [String]? = nil, conditions: [ScdnEventLogConditions]? = nil, source: String? = nil, area: String? = nil) {
            self.mode = mode
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.domain = domain
            self.attackType = attackType
            self.defenceMode = defenceMode
            self.ip = ip
            self.domains = domains
            self.attackTypes = attackTypes
            self.conditions = conditions
            self.source = source
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domain = "Domain"
            case attackType = "AttackType"
            case defenceMode = "DefenceMode"
            case ip = "Ip"
            case domains = "Domains"
            case attackTypes = "AttackTypes"
            case conditions = "Conditions"
            case source = "Source"
            case area = "Area"
        }
    }

    /// CreateScdnLogTask返回参数结构体
    public struct CreateScdnLogTaskResponse: TCResponseModel {
        /// 创建结果,
        /// "0" -> 创建成功
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建事件日志任务
    ///
    /// CreateScdnLogTask 用于创建事件日志任务
    @inlinable
    public func createScdnLogTask(_ input: CreateScdnLogTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScdnLogTaskResponse> {
        self.client.execute(action: "CreateScdnLogTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建事件日志任务
    ///
    /// CreateScdnLogTask 用于创建事件日志任务
    @inlinable
    public func createScdnLogTask(_ input: CreateScdnLogTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScdnLogTaskResponse {
        try await self.client.execute(action: "CreateScdnLogTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建事件日志任务
    ///
    /// CreateScdnLogTask 用于创建事件日志任务
    @inlinable
    public func createScdnLogTask(mode: String, startTime: Date, endTime: Date, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, ip: String? = nil, domains: [String]? = nil, attackTypes: [String]? = nil, conditions: [ScdnEventLogConditions]? = nil, source: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScdnLogTaskResponse> {
        self.createScdnLogTask(.init(mode: mode, startTime: startTime, endTime: endTime, domain: domain, attackType: attackType, defenceMode: defenceMode, ip: ip, domains: domains, attackTypes: attackTypes, conditions: conditions, source: source, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 创建事件日志任务
    ///
    /// CreateScdnLogTask 用于创建事件日志任务
    @inlinable
    public func createScdnLogTask(mode: String, startTime: Date, endTime: Date, domain: String? = nil, attackType: String? = nil, defenceMode: String? = nil, ip: String? = nil, domains: [String]? = nil, attackTypes: [String]? = nil, conditions: [ScdnEventLogConditions]? = nil, source: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScdnLogTaskResponse {
        try await self.createScdnLogTask(.init(mode: mode, startTime: startTime, endTime: endTime, domain: domain, attackType: attackType, defenceMode: defenceMode, ip: ip, domains: domains, attackTypes: attackTypes, conditions: conditions, source: source, area: area), region: region, logger: logger, on: eventLoop)
    }
}
