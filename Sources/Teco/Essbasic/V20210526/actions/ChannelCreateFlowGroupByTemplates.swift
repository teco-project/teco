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
    /// ChannelCreateFlowGroupByTemplates请求参数结构体
    public struct ChannelCreateFlowGroupByTemplatesRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 均必填。
        public let agent: Agent

        /// 每个子合同的发起所需的信息，数量限制2-50（合同组暂不支持抄送功能）
        public let flowInfos: [FlowInfo]

        /// 合同组名称，长度不超过200个字符
        public let flowGroupName: String

        public init(agent: Agent, flowInfos: [FlowInfo], flowGroupName: String) {
            self.agent = agent
            self.flowInfos = flowInfos
            self.flowGroupName = flowGroupName
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowInfos = "FlowInfos"
            case flowGroupName = "FlowGroupName"
        }
    }

    /// ChannelCreateFlowGroupByTemplates返回参数结构体
    public struct ChannelCreateFlowGroupByTemplatesResponse: TCResponseModel {
        /// 合同组ID
        public let flowGroupId: String

        /// 子合同ID列表
        public let flowIds: [String]

        /// 复杂文档合成任务（如，包含动态表格的预览任务）的任务信息数组；
        /// 如果文档需要异步合成，此字段会返回该异步任务的任务信息，后续可以通过ChannelGetTaskResultApi接口查询任务详情；
        public let taskInfos: [TaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowGroupId = "FlowGroupId"
            case flowIds = "FlowIds"
            case taskInfos = "TaskInfos"
            case requestId = "RequestId"
        }
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 接口（ChannelCreateFlowGroupByTemplates）用于通过多模板创建合同组签署流程。
    @inlinable
    public func channelCreateFlowGroupByTemplates(_ input: ChannelCreateFlowGroupByTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowGroupByTemplatesResponse> {
        self.client.execute(action: "ChannelCreateFlowGroupByTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 接口（ChannelCreateFlowGroupByTemplates）用于通过多模板创建合同组签署流程。
    @inlinable
    public func channelCreateFlowGroupByTemplates(_ input: ChannelCreateFlowGroupByTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowGroupByTemplatesResponse {
        try await self.client.execute(action: "ChannelCreateFlowGroupByTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 接口（ChannelCreateFlowGroupByTemplates）用于通过多模板创建合同组签署流程。
    @inlinable
    public func channelCreateFlowGroupByTemplates(agent: Agent, flowInfos: [FlowInfo], flowGroupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowGroupByTemplatesResponse> {
        self.channelCreateFlowGroupByTemplates(.init(agent: agent, flowInfos: flowInfos, flowGroupName: flowGroupName), region: region, logger: logger, on: eventLoop)
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 接口（ChannelCreateFlowGroupByTemplates）用于通过多模板创建合同组签署流程。
    @inlinable
    public func channelCreateFlowGroupByTemplates(agent: Agent, flowInfos: [FlowInfo], flowGroupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowGroupByTemplatesResponse {
        try await self.channelCreateFlowGroupByTemplates(.init(agent: agent, flowInfos: flowInfos, flowGroupName: flowGroupName), region: region, logger: logger, on: eventLoop)
    }
}
