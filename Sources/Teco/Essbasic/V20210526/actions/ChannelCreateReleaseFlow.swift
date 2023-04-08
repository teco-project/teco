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
    /// ChannelCreateReleaseFlow请求参数结构体
    public struct ChannelCreateReleaseFlowRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 待解除的流程编号（即原流程的编号）
        public let needRelievedFlowId: String

        /// 解除协议内容
        public let reliveInfo: RelieveInfo

        /// 非必须，解除协议的本企业签署人列表，默认使用原流程的签署人列表；当解除协议的签署人与原流程的签署人不能相同时（例如原流程签署人离职了），需要指定本企业的其他签署人来替换原流程中的原签署人，注意需要指明ApproverNumber来代表需要替换哪一个签署人，解除协议的签署人数量不能多于原流程的签署人数量
        public let releasedApprovers: [ReleasedApprover]?

        /// 签署完回调url，最大长度1000个字符
        public let callbackUrl: String?

        /// 机构信息
        public let organization: OrganizationInfo?

        /// 用户信息
        public let `operator`: UserInfo?

        public init(agent: Agent, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, callbackUrl: String? = nil, organization: OrganizationInfo? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.needRelievedFlowId = needRelievedFlowId
            self.reliveInfo = reliveInfo
            self.releasedApprovers = releasedApprovers
            self.callbackUrl = callbackUrl
            self.organization = organization
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case needRelievedFlowId = "NeedRelievedFlowId"
            case reliveInfo = "ReliveInfo"
            case releasedApprovers = "ReleasedApprovers"
            case callbackUrl = "CallbackUrl"
            case organization = "Organization"
            case `operator` = "Operator"
        }
    }

    /// ChannelCreateReleaseFlow返回参数结构体
    public struct ChannelCreateReleaseFlowResponse: TCResponseModel {
        /// 解除协议流程编号
        public let flowId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 发起解除协议
    ///
    /// 渠道版发起解除协议，主要应用场景为：基于一份已经签署的合同，进行解除操作。
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func channelCreateReleaseFlow(_ input: ChannelCreateReleaseFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateReleaseFlowResponse> {
        self.client.execute(action: "ChannelCreateReleaseFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发起解除协议
    ///
    /// 渠道版发起解除协议，主要应用场景为：基于一份已经签署的合同，进行解除操作。
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func channelCreateReleaseFlow(_ input: ChannelCreateReleaseFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateReleaseFlowResponse {
        try await self.client.execute(action: "ChannelCreateReleaseFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发起解除协议
    ///
    /// 渠道版发起解除协议，主要应用场景为：基于一份已经签署的合同，进行解除操作。
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func channelCreateReleaseFlow(agent: Agent, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, callbackUrl: String? = nil, organization: OrganizationInfo? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateReleaseFlowResponse> {
        self.channelCreateReleaseFlow(.init(agent: agent, needRelievedFlowId: needRelievedFlowId, reliveInfo: reliveInfo, releasedApprovers: releasedApprovers, callbackUrl: callbackUrl, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 发起解除协议
    ///
    /// 渠道版发起解除协议，主要应用场景为：基于一份已经签署的合同，进行解除操作。
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func channelCreateReleaseFlow(agent: Agent, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, callbackUrl: String? = nil, organization: OrganizationInfo? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateReleaseFlowResponse {
        try await self.channelCreateReleaseFlow(.init(agent: agent, needRelievedFlowId: needRelievedFlowId, reliveInfo: reliveInfo, releasedApprovers: releasedApprovers, callbackUrl: callbackUrl, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
