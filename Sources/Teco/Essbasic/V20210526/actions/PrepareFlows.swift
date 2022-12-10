//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// 准备待发起文件
    ///
    /// 该接口 (PrepareFlows) 用于创建待发起文件
    /// 用户通过该接口进入签署流程发起的确认页面，进行发起信息二次确认， 如果确认则进行正常发起。
    /// 目前该接口只支持B2C，不建议使用，将会废弃。
    @inlinable
    public func prepareFlows(_ input: PrepareFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PrepareFlowsResponse > {
        self.client.execute(action: "PrepareFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 准备待发起文件
    ///
    /// 该接口 (PrepareFlows) 用于创建待发起文件
    /// 用户通过该接口进入签署流程发起的确认页面，进行发起信息二次确认， 如果确认则进行正常发起。
    /// 目前该接口只支持B2C，不建议使用，将会废弃。
    @inlinable
    public func prepareFlows(_ input: PrepareFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PrepareFlowsResponse {
        try await self.client.execute(action: "PrepareFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// PrepareFlows请求参数结构体
    public struct PrepareFlowsRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent
        
        /// 多个合同（签署流程）信息，最大支持20个签署流程。
        public let flowInfos: [FlowInfo]
        
        /// 操作完成后的跳转地址，最大长度200
        public let jumpUrl: String
        
        /// 操作者的信息
        public let `operator`: UserInfo
        
        public init (agent: Agent, flowInfos: [FlowInfo], jumpUrl: String, `operator`: UserInfo) {
            self.agent = agent
            self.flowInfos = flowInfos
            self.jumpUrl = jumpUrl
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowInfos = "FlowInfos"
            case jumpUrl = "JumpUrl"
            case `operator` = "Operator"
        }
    }
    
    /// PrepareFlows返回参数结构体
    public struct PrepareFlowsResponse: TCResponseModel {
        /// 待发起文件确认页
        public let confirmUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case confirmUrl = "ConfirmUrl"
            case requestId = "RequestId"
        }
    }
}