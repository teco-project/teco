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

import TecoCore

extension Essbasic {
    /// ChannelCreateFlowSignReview请求参数结构体
    public struct ChannelCreateFlowSignReviewRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 签署流程编号
        public let flowId: String

        /// 企业内部审核结果
        /// PASS: 通过
        /// REJECT: 拒绝
        /// SIGN_REJECT:拒签(流程结束)
        public let reviewType: String

        /// 审核原因
        /// 当ReviewType 是REJECT 时此字段必填,字符串长度不超过200
        public let reviewMessage: String?

        /// 签署节点审核时需要指定
        public let recipientId: String?

        public init(agent: Agent, flowId: String, reviewType: String, reviewMessage: String? = nil, recipientId: String? = nil) {
            self.agent = agent
            self.flowId = flowId
            self.reviewType = reviewType
            self.reviewMessage = reviewMessage
            self.recipientId = recipientId
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowId = "FlowId"
            case reviewType = "ReviewType"
            case reviewMessage = "ReviewMessage"
            case recipientId = "RecipientId"
        }
    }

    /// ChannelCreateFlowSignReview返回参数结构体
    public struct ChannelCreateFlowSignReviewResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    ///
    /// 在通过接口(CreateFlowsByTemplates 或者ChannelCreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true,则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable @discardableResult
    public func channelCreateFlowSignReview(_ input: ChannelCreateFlowSignReviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowSignReviewResponse> {
        self.client.execute(action: "ChannelCreateFlowSignReview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    ///
    /// 在通过接口(CreateFlowsByTemplates 或者ChannelCreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true,则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable @discardableResult
    public func channelCreateFlowSignReview(_ input: ChannelCreateFlowSignReviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowSignReviewResponse {
        try await self.client.execute(action: "ChannelCreateFlowSignReview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    ///
    /// 在通过接口(CreateFlowsByTemplates 或者ChannelCreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true,则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable @discardableResult
    public func channelCreateFlowSignReview(agent: Agent, flowId: String, reviewType: String, reviewMessage: String? = nil, recipientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateFlowSignReviewResponse> {
        self.channelCreateFlowSignReview(.init(agent: agent, flowId: flowId, reviewType: reviewType, reviewMessage: reviewMessage, recipientId: recipientId), region: region, logger: logger, on: eventLoop)
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    ///
    /// 在通过接口(CreateFlowsByTemplates 或者ChannelCreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true,则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable @discardableResult
    public func channelCreateFlowSignReview(agent: Agent, flowId: String, reviewType: String, reviewMessage: String? = nil, recipientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateFlowSignReviewResponse {
        try await self.channelCreateFlowSignReview(.init(agent: agent, flowId: flowId, reviewType: reviewType, reviewMessage: reviewMessage, recipientId: recipientId), region: region, logger: logger, on: eventLoop)
    }
}
