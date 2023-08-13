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
    /// ModifyApplicationProxyRuleStatus请求参数结构体
    public struct ModifyApplicationProxyRuleStatusRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 代理ID。
        public let proxyId: String

        /// 规则ID。
        public let ruleId: String

        /// 状态，取值有：
        /// - offline: 停用；
        /// - online: 启用。
        public let status: String

        public init(zoneId: String, proxyId: String, ruleId: String, status: String) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.ruleId = ruleId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case ruleId = "RuleId"
            case status = "Status"
        }
    }

    /// ModifyApplicationProxyRuleStatus返回参数结构体
    public struct ModifyApplicationProxyRuleStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理规则的状态
    @inlinable @discardableResult
    public func modifyApplicationProxyRuleStatus(_ input: ModifyApplicationProxyRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleStatusResponse> {
        self.client.execute(action: "ModifyApplicationProxyRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则的状态
    @inlinable @discardableResult
    public func modifyApplicationProxyRuleStatus(_ input: ModifyApplicationProxyRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleStatusResponse {
        try await self.client.execute(action: "ModifyApplicationProxyRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理规则的状态
    @inlinable @discardableResult
    public func modifyApplicationProxyRuleStatus(zoneId: String, proxyId: String, ruleId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyRuleStatusResponse> {
        self.modifyApplicationProxyRuleStatus(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用代理规则的状态
    @inlinable @discardableResult
    public func modifyApplicationProxyRuleStatus(zoneId: String, proxyId: String, ruleId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyRuleStatusResponse {
        try await self.modifyApplicationProxyRuleStatus(.init(zoneId: zoneId, proxyId: proxyId, ruleId: ruleId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
