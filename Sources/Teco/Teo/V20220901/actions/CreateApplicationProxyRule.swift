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

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// CreateApplicationProxyRule请求参数结构体
    public struct CreateApplicationProxyRuleRequest: TCRequest {
        /// 站点ID。
        public let zoneId: String

        /// 代理ID。
        public let proxyId: String

        /// 协议，取值有：
        /// - TCP：TCP协议；
        /// - UDP：UDP协议。
        public let proto: String

        /// 端口，支持格式：
        /// - 80：80端口；
        /// - 81-90：81至90端口。
        public let port: [String]

        /// 源站类型，取值有：
        /// - custom：手动添加；
        /// - origins：源站组。
        public let originType: String

        /// 源站信息：
        /// - 当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；
        /// - 当 OriginType 为 origins 时，要求有且仅有一个元素，表示源站组ID，如`["origin-537f5b41-162a-11ed-abaa-525400c5da15"]`。
        public let originValue: [String]

        /// 传递客户端IP，取值有：
        /// - TOA：TOA（仅Proto=TCP时可选）；
        /// - PPV1：Proxy Protocol传递，协议版本V1（仅Proto=TCP时可选）；
        /// - PPV2：Proxy Protocol传递，协议版本V2；
        /// - OFF：不传递。
        /// 默认值：OFF。
        public let forwardClientIp: String?

        /// 是否开启会话保持，取值有：
        /// - true：开启；
        /// - false：关闭。
        /// 默认值：false。
        public let sessionPersist: Bool?

        /// 会话保持的时间，只有当SessionPersist为true时，该值才会生效。
        public let sessionPersistTime: UInt64?

        /// 源站端口，支持格式：
        /// - 单端口：80；
        /// - 端口段：81-90，81至90端口。
        public let originPort: String?

        /// 规则标签。默认值为空字符串。
        public let ruleTag: String?

        public init(zoneId: String, proxyId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil, sessionPersistTime: UInt64? = nil, originPort: String? = nil, ruleTag: String? = nil) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.proto = proto
            self.port = port
            self.originType = originType
            self.originValue = originValue
            self.forwardClientIp = forwardClientIp
            self.sessionPersist = sessionPersist
            self.sessionPersistTime = sessionPersistTime
            self.originPort = originPort
            self.ruleTag = ruleTag
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case proto = "Proto"
            case port = "Port"
            case originType = "OriginType"
            case originValue = "OriginValue"
            case forwardClientIp = "ForwardClientIp"
            case sessionPersist = "SessionPersist"
            case sessionPersistTime = "SessionPersistTime"
            case originPort = "OriginPort"
            case ruleTag = "RuleTag"
        }
    }

    /// CreateApplicationProxyRule返回参数结构体
    public struct CreateApplicationProxyRuleResponse: TCResponse {
        /// 规则ID
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建应用代理规则
    @inlinable
    public func createApplicationProxyRule(_ input: CreateApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationProxyRuleResponse> {
        self.client.execute(action: "CreateApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建应用代理规则
    @inlinable
    public func createApplicationProxyRule(_ input: CreateApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyRuleResponse {
        try await self.client.execute(action: "CreateApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建应用代理规则
    @inlinable
    public func createApplicationProxyRule(zoneId: String, proxyId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil, sessionPersistTime: UInt64? = nil, originPort: String? = nil, ruleTag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationProxyRuleResponse> {
        self.createApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, proto: proto, port: port, originType: originType, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, sessionPersistTime: sessionPersistTime, originPort: originPort, ruleTag: ruleTag), region: region, logger: logger, on: eventLoop)
    }

    /// 创建应用代理规则
    @inlinable
    public func createApplicationProxyRule(zoneId: String, proxyId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil, sessionPersistTime: UInt64? = nil, originPort: String? = nil, ruleTag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyRuleResponse {
        try await self.createApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, proto: proto, port: port, originType: originType, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, sessionPersistTime: sessionPersistTime, originPort: originPort, ruleTag: ruleTag), region: region, logger: logger, on: eventLoop)
    }
}
