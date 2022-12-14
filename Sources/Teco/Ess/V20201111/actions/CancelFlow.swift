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
    /// CancelFlow请求参数结构体
    public struct CancelFlowRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 签署流程id
        public let flowId: String

        /// 撤销原因，最长200个字符；
        public let cancelMessage: String

        /// 应用相关信息
        public let agent: Agent?

        public init(operator: UserInfo, flowId: String, cancelMessage: String, agent: Agent? = nil) {
            self.`operator` = `operator`
            self.flowId = flowId
            self.cancelMessage = cancelMessage
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case cancelMessage = "CancelMessage"
            case agent = "Agent"
        }
    }

    /// CancelFlow返回参数结构体
    public struct CancelFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销签署流程
    ///
    /// 用于撤销签署流程
    /// 适用场景：如果某个合同流程当前至少还有一方没有签署，则可通过该接口取消该合同流程。常用于合同发错、内容填错，需要及时撤销的场景。
    /// 注：如果合同流程中的参与方均已签署完毕，则无法通过该接口撤销合同。
    @inlinable
    public func cancelFlow(_ input: CancelFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelFlowResponse > {
        self.client.execute(action: "CancelFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销签署流程
    ///
    /// 用于撤销签署流程
    /// 适用场景：如果某个合同流程当前至少还有一方没有签署，则可通过该接口取消该合同流程。常用于合同发错、内容填错，需要及时撤销的场景。
    /// 注：如果合同流程中的参与方均已签署完毕，则无法通过该接口撤销合同。
    @inlinable
    public func cancelFlow(_ input: CancelFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFlowResponse {
        try await self.client.execute(action: "CancelFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销签署流程
    ///
    /// 用于撤销签署流程
    /// 适用场景：如果某个合同流程当前至少还有一方没有签署，则可通过该接口取消该合同流程。常用于合同发错、内容填错，需要及时撤销的场景。
    /// 注：如果合同流程中的参与方均已签署完毕，则无法通过该接口撤销合同。
    @inlinable
    public func cancelFlow(operator: UserInfo, flowId: String, cancelMessage: String, agent: Agent? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelFlowResponse > {
        self.cancelFlow(CancelFlowRequest(operator: `operator`, flowId: flowId, cancelMessage: cancelMessage, agent: agent), logger: logger, on: eventLoop)
    }

    /// 撤销签署流程
    ///
    /// 用于撤销签署流程
    /// 适用场景：如果某个合同流程当前至少还有一方没有签署，则可通过该接口取消该合同流程。常用于合同发错、内容填错，需要及时撤销的场景。
    /// 注：如果合同流程中的参与方均已签署完毕，则无法通过该接口撤销合同。
    @inlinable
    public func cancelFlow(operator: UserInfo, flowId: String, cancelMessage: String, agent: Agent? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFlowResponse {
        try await self.cancelFlow(CancelFlowRequest(operator: `operator`, flowId: flowId, cancelMessage: cancelMessage, agent: agent), logger: logger, on: eventLoop)
    }
}
