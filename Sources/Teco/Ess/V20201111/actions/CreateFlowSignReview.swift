//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ess {
    /// CreateFlowSignReview请求参数结构体
    public struct CreateFlowSignReviewRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 签署流程编号
        public let flowId: String

        /// 企业内部审核结果
        /// PASS: 通过 
        /// REJECT: 拒绝
        public let reviewType: String

        /// 审核原因 
        /// 当ReviewType 是REJECT 时此字段必填,字符串长度不超过200
        public let reviewMessage: String?

        /// 应用相关信息
        public let agent: Agent?

        public init(operator: UserInfo, flowId: String, reviewType: String, reviewMessage: String? = nil, agent: Agent? = nil) {
            self.`operator` = `operator`
            self.flowId = flowId
            self.reviewType = reviewType
            self.reviewMessage = reviewMessage
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case reviewType = "ReviewType"
            case reviewMessage = "ReviewMessage"
            case agent = "Agent"
        }
    }

    /// CreateFlowSignReview返回参数结构体
    public struct CreateFlowSignReviewResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    /// 适用场景: 
    /// 在通过接口(CreateFlow 或者CreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true，且发起方企业作为签署方参与了流程签署，则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable
    public func createFlowSignReview(_ input: CreateFlowSignReviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFlowSignReviewResponse > {
        self.client.execute(action: "CreateFlowSignReview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    /// 适用场景: 
    /// 在通过接口(CreateFlow 或者CreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true，且发起方企业作为签署方参与了流程签署，则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable
    public func createFlowSignReview(_ input: CreateFlowSignReviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignReviewResponse {
        try await self.client.execute(action: "CreateFlowSignReview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    /// 适用场景: 
    /// 在通过接口(CreateFlow 或者CreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true，且发起方企业作为签署方参与了流程签署，则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable
    public func createFlowSignReview(operator: UserInfo, flowId: String, reviewType: String, reviewMessage: String? = nil, agent: Agent? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFlowSignReviewResponse > {
        self.createFlowSignReview(CreateFlowSignReviewRequest(operator: `operator`, flowId: flowId, reviewType: reviewType, reviewMessage: reviewMessage, agent: agent), logger: logger, on: eventLoop)
    }

    /// 提交企业签署流程审批结果
    ///
    /// 提交企业签署流程审批结果
    /// 适用场景: 
    /// 在通过接口(CreateFlow 或者CreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true，且发起方企业作为签署方参与了流程签署，则可以调用此接口提交企业内部签署审批结果。
    /// 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。
    @inlinable
    public func createFlowSignReview(operator: UserInfo, flowId: String, reviewType: String, reviewMessage: String? = nil, agent: Agent? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignReviewResponse {
        try await self.createFlowSignReview(CreateFlowSignReviewRequest(operator: `operator`, flowId: flowId, reviewType: reviewType, reviewMessage: reviewMessage, agent: agent), logger: logger, on: eventLoop)
    }
}
