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

extension Teo {
    /// ModifyApplicationProxyRule请求参数结构体
    public struct ModifyApplicationProxyRuleRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 代理ID
        public let proxyId: String

        /// 规则ID
        public let ruleId: String

        /// 协议，取值为TCP或者UDP
        public let proto: String

        /// 端口，支持格式：
        /// 80：80端口
        /// 81-90：81至90端口
        public let port: [String]

        /// 源站类型，取值：
        /// custom：手动添加
        /// origins：源站组
        public let originType: String

        /// 源站信息：
        /// 当OriginType=custom时，表示一个或多个源站，如：
        /// OriginValue=["8.8.8.8:80","9.9.9.9:80"]
        /// OriginValue=["test.com:80"]
        ///
        /// 当OriginType=origins时，包含一个元素，表示源站组ID，如：
        /// OriginValue=["origin-xxx"]
        public let originValue: [String]

        /// 传递客户端IP，当Proto=TCP时，取值：
        /// TOA：TOA
        /// PPV1: Proxy Protocol传递，协议版本V1
        /// PPV2: Proxy Protocol传递，协议版本V2
        /// OFF：不传递
        /// 当Proto=UDP时，取值：
        /// PPV2: Proxy Protocol传递，协议版本V2
        /// OFF：不传递
        public let forwardClientIp: String?

        /// 是否开启会话保持
        public let sessionPersist: Bool?

        public init(zoneId: String, proxyId: String, ruleId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.ruleId = ruleId
            self.proto = proto
            self.port = port
            self.originType = originType
            self.originValue = originValue
            self.forwardClientIp = forwardClientIp
            self.sessionPersist = sessionPersist
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case ruleId = "RuleId"
            case proto = "Proto"
            case port = "Port"
            case originType = "OriginType"
            case originValue = "OriginValue"
            case forwardClientIp = "ForwardClientIp"
            case sessionPersist = "SessionPersist"
        }
    }

    /// ModifyApplicationProxyRule返回参数结构体
    public struct ModifyApplicationProxyRuleResponse: TCResponseModel {
        /// 规则ID
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理规则
    @inlinable
    public func modifyApplicationProxyRule(_ input: ModifyApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleResponse> {
        self.client.execute(action: "ModifyApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则
    @inlinable
    public func modifyApplicationProxyRule(_ input: ModifyApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleResponse {
        try await self.client.execute(action: "ModifyApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理规则
    @inlinable
    public func modifyApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleResponse> {
        self.modifyApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, proto: proto, port: port, originType: originType, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则
    @inlinable
    public func modifyApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, proto: String, port: [String], originType: String, originValue: [String], forwardClientIp: String? = nil, sessionPersist: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleResponse {
        try await self.modifyApplicationProxyRule(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, proto: proto, port: port, originType: originType, originValue: originValue, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist), region: region, logger: logger, on: eventLoop)
    }
}
