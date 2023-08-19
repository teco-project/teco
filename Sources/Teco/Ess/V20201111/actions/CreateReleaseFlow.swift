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
    /// CreateReleaseFlow请求参数结构体
    public struct CreateReleaseFlowRequest: TCRequest {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 待解除的签署流程编号（即原签署流程的编号）
        public let needRelievedFlowId: String

        /// 解除协议内容
        public let reliveInfo: RelieveInfo

        /// 非必须，解除协议的本企业签署人列表，
        /// 默认使用原流程的签署人列表,当解除协议的签署人与原流程的签署人不能相同时（例如原流程签署人离职了），需要指定本企业其他已实名员工来替换原流程中的原签署人，注意需要指明原签署人的编号(ReceiptId,通过DescribeFlowInfo接口获取)来代表需要替换哪一个签署人
        /// 解除协议的签署人数量不能多于原流程的签署人数量
        public let releasedApprovers: [ReleasedApprover]?

        /// 签署流程的签署截止时间。 值为unix时间戳,精确到秒,不传默认为当前时间七天后
        public let deadline: Int64?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(operator: UserInfo, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, deadline: Int64? = nil, agent: Agent? = nil) {
            self.operator = `operator`
            self.needRelievedFlowId = needRelievedFlowId
            self.reliveInfo = reliveInfo
            self.releasedApprovers = releasedApprovers
            self.deadline = deadline
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case needRelievedFlowId = "NeedRelievedFlowId"
            case reliveInfo = "ReliveInfo"
            case releasedApprovers = "ReleasedApprovers"
            case deadline = "Deadline"
            case agent = "Agent"
        }
    }

    /// CreateReleaseFlow返回参数结构体
    public struct CreateReleaseFlowResponse: TCResponse {
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
    /// 发起解除协议，主要应用场景为：基于一份已经签署的合同(签署流程)，进行解除操作。
    @inlinable
    public func createReleaseFlow(_ input: CreateReleaseFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReleaseFlowResponse> {
        self.client.execute(action: "CreateReleaseFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发起解除协议
    ///
    /// 发起解除协议，主要应用场景为：基于一份已经签署的合同(签署流程)，进行解除操作。
    @inlinable
    public func createReleaseFlow(_ input: CreateReleaseFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReleaseFlowResponse {
        try await self.client.execute(action: "CreateReleaseFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发起解除协议
    ///
    /// 发起解除协议，主要应用场景为：基于一份已经签署的合同(签署流程)，进行解除操作。
    @inlinable
    public func createReleaseFlow(operator: UserInfo, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, deadline: Int64? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReleaseFlowResponse> {
        self.createReleaseFlow(.init(operator: `operator`, needRelievedFlowId: needRelievedFlowId, reliveInfo: reliveInfo, releasedApprovers: releasedApprovers, deadline: deadline, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 发起解除协议
    ///
    /// 发起解除协议，主要应用场景为：基于一份已经签署的合同(签署流程)，进行解除操作。
    @inlinable
    public func createReleaseFlow(operator: UserInfo, needRelievedFlowId: String, reliveInfo: RelieveInfo, releasedApprovers: [ReleasedApprover]? = nil, deadline: Int64? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReleaseFlowResponse {
        try await self.createReleaseFlow(.init(operator: `operator`, needRelievedFlowId: needRelievedFlowId, reliveInfo: reliveInfo, releasedApprovers: releasedApprovers, deadline: deadline, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
