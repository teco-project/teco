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

extension Gaap {
    /// BindRuleRealServers请求参数结构体
    public struct BindRuleRealServersRequest: TCRequest {
        /// 转发规则ID
        public let ruleId: String

        /// 需要绑定的源站信息列表。
        /// 如果已经存在绑定的源站，则会覆盖更新成这个源站列表。
        /// 当不带该字段时，表示解绑该规则上的所有源站。
        /// 如果该规则的源站调度策略是加权轮询，需要填写源站权重 RealServerWeight, 不填或者其他调度类型默认源站权重为1。
        public let realServerBindSet: [RealServerBindSetReq]?

        public init(ruleId: String, realServerBindSet: [RealServerBindSetReq]? = nil) {
            self.ruleId = ruleId
            self.realServerBindSet = realServerBindSet
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case realServerBindSet = "RealServerBindSet"
        }
    }

    /// BindRuleRealServers返回参数结构体
    public struct BindRuleRealServersResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 转发规则绑定源站
    ///
    /// 该接口用于7层监听器的转发规则绑定源站。注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。
    @inlinable @discardableResult
    public func bindRuleRealServers(_ input: BindRuleRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRuleRealServersResponse> {
        self.client.execute(action: "BindRuleRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 转发规则绑定源站
    ///
    /// 该接口用于7层监听器的转发规则绑定源站。注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。
    @inlinable @discardableResult
    public func bindRuleRealServers(_ input: BindRuleRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRuleRealServersResponse {
        try await self.client.execute(action: "BindRuleRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 转发规则绑定源站
    ///
    /// 该接口用于7层监听器的转发规则绑定源站。注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。
    @inlinable @discardableResult
    public func bindRuleRealServers(ruleId: String, realServerBindSet: [RealServerBindSetReq]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRuleRealServersResponse> {
        self.bindRuleRealServers(.init(ruleId: ruleId, realServerBindSet: realServerBindSet), region: region, logger: logger, on: eventLoop)
    }

    /// 转发规则绑定源站
    ///
    /// 该接口用于7层监听器的转发规则绑定源站。注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。
    @inlinable @discardableResult
    public func bindRuleRealServers(ruleId: String, realServerBindSet: [RealServerBindSetReq]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRuleRealServersResponse {
        try await self.bindRuleRealServers(.init(ruleId: ruleId, realServerBindSet: realServerBindSet), region: region, logger: logger, on: eventLoop)
    }
}
