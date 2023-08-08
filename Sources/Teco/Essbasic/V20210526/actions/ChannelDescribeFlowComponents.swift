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
    /// ChannelDescribeFlowComponents请求参数结构体
    public struct ChannelDescribeFlowComponentsRequest: TCRequestModel {
        /// 应用相关信息。此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        public let agent: Agent

        /// 电子签流程的Id
        public let flowId: String

        public init(agent: Agent, flowId: String) {
            self.agent = agent
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowId = "FlowId"
        }
    }

    /// ChannelDescribeFlowComponents返回参数结构体
    public struct ChannelDescribeFlowComponentsResponse: TCResponseModel {
        /// 流程关联的填写控件信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recipientComponentInfos: [RecipientComponentInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recipientComponentInfos = "RecipientComponentInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询流程填写控件内容
    ///
    /// 查询流程填写控件内容，可以根据流程Id查询该流程相关联的填写控件信息
    @inlinable
    public func channelDescribeFlowComponents(_ input: ChannelDescribeFlowComponentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeFlowComponentsResponse> {
        self.client.execute(action: "ChannelDescribeFlowComponents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程填写控件内容
    ///
    /// 查询流程填写控件内容，可以根据流程Id查询该流程相关联的填写控件信息
    @inlinable
    public func channelDescribeFlowComponents(_ input: ChannelDescribeFlowComponentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeFlowComponentsResponse {
        try await self.client.execute(action: "ChannelDescribeFlowComponents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流程填写控件内容
    ///
    /// 查询流程填写控件内容，可以根据流程Id查询该流程相关联的填写控件信息
    @inlinable
    public func channelDescribeFlowComponents(agent: Agent, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeFlowComponentsResponse> {
        self.channelDescribeFlowComponents(.init(agent: agent, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流程填写控件内容
    ///
    /// 查询流程填写控件内容，可以根据流程Id查询该流程相关联的填写控件信息
    @inlinable
    public func channelDescribeFlowComponents(agent: Agent, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeFlowComponentsResponse {
        try await self.channelDescribeFlowComponents(.init(agent: agent, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
