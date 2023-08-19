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

extension Essbasic {
    /// ChannelDeleteSealPolicies请求参数结构体
    public struct ChannelDeleteSealPoliciesRequest: TCRequest {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 指定印章ID
        public let sealId: String

        /// 指定用户ID数组，电子签系统用户ID
        /// 可以填写OpenId，系统会通过组织+渠道+OpenId查询得到UserId进行授权取消。
        public let userIds: [String]

        /// 组织机构信息，不用传
        @available(*, deprecated)
        public let organization: OrganizationInfo? = nil

        /// 操作人（用户）信息，不用传
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, sealId: String, userIds: [String]) {
            self.agent = agent
            self.sealId = sealId
            self.userIds = userIds
        }

        @available(*, deprecated, renamed: "init(agent:sealId:userIds:)", message: "'organization' and 'operator' are deprecated in 'ChannelDeleteSealPoliciesRequest'. Setting these parameters has no effect.")
        public init(agent: Agent, sealId: String, userIds: [String], organization: OrganizationInfo? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.sealId = sealId
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case sealId = "SealId"
            case userIds = "UserIds"
            case organization = "Organization"
            case `operator` = "Operator"
        }
    }

    /// ChannelDeleteSealPolicies返回参数结构体
    public struct ChannelDeleteSealPoliciesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(_ input: ChannelDeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDeleteSealPoliciesResponse> {
        self.client.execute(action: "ChannelDeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(_ input: ChannelDeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDeleteSealPoliciesResponse {
        try await self.client.execute(action: "ChannelDeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(agent: Agent, sealId: String, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDeleteSealPoliciesResponse> {
        self.channelDeleteSealPolicies(.init(agent: agent, sealId: sealId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @available(*, deprecated, renamed: "channelDeleteSealPolicies(agent:sealId:userIds:region:logger:on:)", message: "'organization' and 'operator' are deprecated. Setting these parameters has no effect.")
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(agent: Agent, sealId: String, userIds: [String], organization: OrganizationInfo? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDeleteSealPoliciesResponse> {
        self.channelDeleteSealPolicies(.init(agent: agent, sealId: sealId, userIds: userIds, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(agent: Agent, sealId: String, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDeleteSealPoliciesResponse {
        try await self.channelDeleteSealPolicies(.init(agent: agent, sealId: sealId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除印章授权
    ///
    /// 删除指定印章下多个授权信息
    @available(*, deprecated, renamed: "channelDeleteSealPolicies(agent:sealId:userIds:region:logger:on:)", message: "'organization' and 'operator' are deprecated. Setting these parameters has no effect.")
    @inlinable @discardableResult
    public func channelDeleteSealPolicies(agent: Agent, sealId: String, userIds: [String], organization: OrganizationInfo? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDeleteSealPoliciesResponse {
        try await self.channelDeleteSealPolicies(.init(agent: agent, sealId: sealId, userIds: userIds, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
