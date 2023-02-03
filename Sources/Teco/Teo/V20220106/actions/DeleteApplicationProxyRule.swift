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
    /// DeleteApplicationProxyRule请求参数结构体
    public struct DeleteApplicationProxyRuleRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 代理ID
        public let proxyId: String

        /// 规则ID
        public let ruleId: String

        public init(zoneId: String, proxyId: String, ruleId: String) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case ruleId = "RuleId"
        }
    }

    /// DeleteApplicationProxyRule返回参数结构体
    public struct DeleteApplicationProxyRuleResponse: TCResponseModel {
        /// 规则ID
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 删除应用代理规则
    @inlinable
    public func deleteApplicationProxyRule(_ input: DeleteApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationProxyRuleResponse> {
        self.client.execute(action: "DeleteApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用代理规则
    @inlinable
    public func deleteApplicationProxyRule(_ input: DeleteApplicationProxyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationProxyRuleResponse {
        try await self.client.execute(action: "DeleteApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用代理规则
    @inlinable
    public func deleteApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationProxyRuleResponse> {
        let input = DeleteApplicationProxyRuleRequest(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId)
        return self.client.execute(action: "DeleteApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用代理规则
    @inlinable
    public func deleteApplicationProxyRule(zoneId: String, proxyId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationProxyRuleResponse {
        let input = DeleteApplicationProxyRuleRequest(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId)
        return try await self.client.execute(action: "DeleteApplicationProxyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
