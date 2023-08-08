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

extension Ess {
    /// StartFlow请求参数结构体
    public struct StartFlowRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填。支持填入集团子公司经办人 userId代发合同。
        public let `operator`: UserInfo

        /// 签署流程编号，由CreateFlow接口返回
        public let flowId: String

        /// 客户端Token，保持接口幂等性,最大长度64个字符
        public let clientToken: String?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        /// 给关注人发送短信通知的类型，0-合同发起时通知 1-签署完成后通知
        public let ccNotifyType: Int64?

        public init(operator: UserInfo, flowId: String, clientToken: String? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil) {
            self.operator = `operator`
            self.flowId = flowId
            self.clientToken = clientToken
            self.agent = agent
            self.ccNotifyType = ccNotifyType
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case clientToken = "ClientToken"
            case agent = "Agent"
            case ccNotifyType = "CcNotifyType"
        }
    }

    /// StartFlow返回参数结构体
    public struct StartFlowResponse: TCResponseModel {
        /// 返回描述，START-发起成功， REVIEW-提交审核成功，EXECUTING-已提交发起任务
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 模板发起合同-发起签署流程
    ///
    /// 此接口用于发起流程
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口是“创建电子文档”接口的后置接口，用于激活包含完整合同信息（模板及内容信息）的流程。激活后的流程就是一份待签署的电子合同。
    @inlinable
    public func startFlow(_ input: StartFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFlowResponse> {
        self.client.execute(action: "StartFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模板发起合同-发起签署流程
    ///
    /// 此接口用于发起流程
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口是“创建电子文档”接口的后置接口，用于激活包含完整合同信息（模板及内容信息）的流程。激活后的流程就是一份待签署的电子合同。
    @inlinable
    public func startFlow(_ input: StartFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFlowResponse {
        try await self.client.execute(action: "StartFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模板发起合同-发起签署流程
    ///
    /// 此接口用于发起流程
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口是“创建电子文档”接口的后置接口，用于激活包含完整合同信息（模板及内容信息）的流程。激活后的流程就是一份待签署的电子合同。
    @inlinable
    public func startFlow(operator: UserInfo, flowId: String, clientToken: String? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFlowResponse> {
        self.startFlow(.init(operator: `operator`, flowId: flowId, clientToken: clientToken, agent: agent, ccNotifyType: ccNotifyType), region: region, logger: logger, on: eventLoop)
    }

    /// 模板发起合同-发起签署流程
    ///
    /// 此接口用于发起流程
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口是“创建电子文档”接口的后置接口，用于激活包含完整合同信息（模板及内容信息）的流程。激活后的流程就是一份待签署的电子合同。
    @inlinable
    public func startFlow(operator: UserInfo, flowId: String, clientToken: String? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFlowResponse {
        try await self.startFlow(.init(operator: `operator`, flowId: flowId, clientToken: clientToken, agent: agent, ccNotifyType: ccNotifyType), region: region, logger: logger, on: eventLoop)
    }
}
