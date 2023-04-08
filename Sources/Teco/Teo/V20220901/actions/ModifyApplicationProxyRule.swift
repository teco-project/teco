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
    /// ModifyApplicationProxyRule请求参数结构体
    public struct ModifyApplicationProxyRuleRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 代理ID。
        public let proxyId: String

        /// 规则ID。
        public let ruleId: String

        /// 源站类型，取值有：
        /// <li>custom：手动添加；</li>
        /// <li>origins：源站组。</li>不填保持原有值。
        public let originType: String

        /// 端口，支持格式：
        /// <li>80：80端口；</li>
        /// <li>81-90：81至90端口。</li>
        public let port: [String]

        /// 协议，取值有：
        /// <li>TCP：TCP协议；</li>
        /// <li>UDP：UDP协议。</li>不填保持原有值。
        public let proto: String?

        /// 源站信息：
        /// <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
        /// <li>当 OriginType 为 origins 时，要求有且仅有一个元素，表示源站组ID，如`["origin-537f5b41-162a-11ed-abaa-525400c5da15"]`。</li>
        ///
        /// 不填保持原有值。
        public let originValue: [String]?

        /// 传递客户端IP，取值有：
        /// <li>TOA：TOA（仅Proto=TCP时可选）；</li>
        /// <li>PPV1：Proxy Protocol传递，协议版本V1（仅Proto=TCP时可选）；</li>
        /// <li>PPV2：Proxy Protocol传递，协议版本V2；</li>
        /// <li>OFF：不传递。</li>不填保持原有值。
        public let forwardClientIp: String?

        /// 是否开启会话保持，取值有：
        /// <li>true：开启；</li>
        /// <li>false：关闭。</li>不填为false。
        public let sessionPersist: Bool?

        /// 源站端口，支持格式：
        /// <li>单端口：80；</li>
        /// <li>端口段：81-90，81至90端口。</li>
        public let originPort: String?

        public init(zoneId: String, proxyId: String, ruleId: String, originType: String, port: [String], proto: String? = nil, originValue: [String]? = nil, forwardClientIp: String? = nil, sessionPersist: Bool? = nil, originPort: String? = nil) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.ruleId = ruleId
            self.originType = originType
            self.port = port
            self.proto = proto
            self.originValue = originValue
            self.forwardClientIp = forwardClientIp
            self.sessionPersist = sessionPersist
            self.originPort = originPort
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case ruleId = "RuleId"
            case originType = "OriginType"
            case port = "Port"
            case proto = "Proto"
            case originValue = "OriginValue"
            case forwardClientIp = "ForwardClientIp"
            case sessionPersist = "SessionPersist"
            case originPort = "OriginPort"
        }
    }

    /// ModifyApplicationProxyRule返回参数结构体
    public struct ModifyApplicationProxyRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理规则
    @inlinable @discardableResult
    public func modifyApplicationProxyRule(_ input: ModifyApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleResponse> {
        self.client.execute(action: "ModifyApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则
    @inlinable @discardableResult
    public func modifyApplicationProxyRule(_ input: ModifyApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleResponse {
        try await self.client.execute(action: "ModifyApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理规则
    @inlinable @discardableResult
    public func modifyApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, originType: String, port: [String], proto: String? = nil, originValue: [String]? = nil, forwardClientIp: String? = nil, sessionPersist: Bool? = nil, originPort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleResponse> {
        self.modifyApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, originType: originType, port: port, proto: proto, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, originPort: originPort), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则
    @inlinable @discardableResult
    public func modifyApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, originType: String, port: [String], proto: String? = nil, originValue: [String]? = nil, forwardClientIp: String? = nil, sessionPersist: Bool? = nil, originPort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleResponse {
        try await self.modifyApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, originType: originType, port: port, proto: proto, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, originPort: originPort), region: region, logger: logger, on: eventLoop)
    }
}
