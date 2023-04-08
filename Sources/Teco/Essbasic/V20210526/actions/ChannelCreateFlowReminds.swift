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

extension Essbasic {
    /// ChannelCreateFlowReminds请求参数结构体
    public struct ChannelCreateFlowRemindsRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 签署流程Id数组，最多100个，超过100不处理
        public let flowIds: [String]

        public init(agent: Agent, flowIds: [String]) {
            self.agent = agent
            self.flowIds = flowIds
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowIds = "FlowIds"
        }
    }

    /// ChannelCreateFlowReminds返回参数结构体
    public struct ChannelCreateFlowRemindsResponse: TCResponseModel {
        /// 合同催办详情信息
        public let remindFlowRecords: [RemindFlowRecords]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case remindFlowRecords = "RemindFlowRecords"
            case requestId = "RequestId"
        }
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个；接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    @inlinable
    public func channelCreateFlowReminds(_ input: ChannelCreateFlowRemindsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowRemindsResponse> {
        self.client.execute(action: "ChannelCreateFlowReminds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个；接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    @inlinable
    public func channelCreateFlowReminds(_ input: ChannelCreateFlowRemindsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowRemindsResponse {
        try await self.client.execute(action: "ChannelCreateFlowReminds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个；接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    @inlinable
    public func channelCreateFlowReminds(agent: Agent, flowIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowRemindsResponse> {
        self.channelCreateFlowReminds(.init(agent: agent, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个；接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    @inlinable
    public func channelCreateFlowReminds(agent: Agent, flowIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowRemindsResponse {
        try await self.channelCreateFlowReminds(.init(agent: agent, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }
}
