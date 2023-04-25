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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// ChannelCreateBoundFlows请求参数结构体
    public struct ChannelCreateBoundFlowsRequest: TCRequestModel {
        /// 应用信息
        /// 此接口Agent.AppId、Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        public let agent: Agent

        /// 领取的合同id列表
        public let flowIds: [String]?

        /// 暂未开放
        public let `operator`: UserInfo?

        public init(agent: Agent, flowIds: [String]? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.flowIds = flowIds
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowIds = "FlowIds"
            case `operator` = "Operator"
        }
    }

    /// ChannelCreateBoundFlows返回参数结构体
    public struct ChannelCreateBoundFlowsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 领取未归属的合同
    ///
    /// 此接口（ChannelCreateBoundFlows）用于子客领取合同，经办人需要有相应的角色，合同不能重复领取。
    @inlinable @discardableResult
    public func channelCreateBoundFlows(_ input: ChannelCreateBoundFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateBoundFlowsResponse> {
        self.client.execute(action: "ChannelCreateBoundFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 领取未归属的合同
    ///
    /// 此接口（ChannelCreateBoundFlows）用于子客领取合同，经办人需要有相应的角色，合同不能重复领取。
    @inlinable @discardableResult
    public func channelCreateBoundFlows(_ input: ChannelCreateBoundFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateBoundFlowsResponse {
        try await self.client.execute(action: "ChannelCreateBoundFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 领取未归属的合同
    ///
    /// 此接口（ChannelCreateBoundFlows）用于子客领取合同，经办人需要有相应的角色，合同不能重复领取。
    @inlinable @discardableResult
    public func channelCreateBoundFlows(agent: Agent, flowIds: [String]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateBoundFlowsResponse> {
        self.channelCreateBoundFlows(.init(agent: agent, flowIds: flowIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 领取未归属的合同
    ///
    /// 此接口（ChannelCreateBoundFlows）用于子客领取合同，经办人需要有相应的角色，合同不能重复领取。
    @inlinable @discardableResult
    public func channelCreateBoundFlows(agent: Agent, flowIds: [String]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateBoundFlowsResponse {
        try await self.channelCreateBoundFlows(.init(agent: agent, flowIds: flowIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
