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

extension Essbasic {
    /// 根据签署流程信息批量获取资源下载链接
    ///
    /// 根据签署流程信息批量获取资源下载链接，可以下载签署中、签署完的合同，需合作企业先进行授权。
    /// 此接口直接返回下载的资源的url，与接口GetDownloadFlowUrl跳转到控制台的下载方式不同。
    @inlinable
    public func describeResourceUrlsByFlows(_ input: DescribeResourceUrlsByFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeResourceUrlsByFlowsResponse > {
        self.client.execute(action: "DescribeResourceUrlsByFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据签署流程信息批量获取资源下载链接
    ///
    /// 根据签署流程信息批量获取资源下载链接，可以下载签署中、签署完的合同，需合作企业先进行授权。
    /// 此接口直接返回下载的资源的url，与接口GetDownloadFlowUrl跳转到控制台的下载方式不同。
    @inlinable
    public func describeResourceUrlsByFlows(_ input: DescribeResourceUrlsByFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceUrlsByFlowsResponse {
        try await self.client.execute(action: "DescribeResourceUrlsByFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeResourceUrlsByFlows请求参数结构体
    public struct DescribeResourceUrlsByFlowsRequest: TCRequestModel {
        /// 渠道应用相关信息。
        /// 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent
        
        /// 查询资源所对应的签署流程Id，最多支持50个
        public let flowIds: [String]?
        
        /// 操作者的信息
        public let `operator`: UserInfo
        
        public init (agent: Agent, flowIds: [String]?, `operator`: UserInfo) {
            self.agent = agent
            self.flowIds = flowIds
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowIds = "FlowIds"
            case `operator` = "Operator"
        }
    }
    
    /// DescribeResourceUrlsByFlows返回参数结构体
    public struct DescribeResourceUrlsByFlowsResponse: TCResponseModel {
        /// 签署流程资源对应链接信息
        public let flowResourceUrlInfos: [FlowResourceUrlInfo]
        
        /// 创建消息，对应多个合同ID，
        /// 成功为“”,创建失败则对应失败消息
        public let errorMessages: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowResourceUrlInfos = "FlowResourceUrlInfos"
            case errorMessages = "ErrorMessages"
            case requestId = "RequestId"
        }
    }
}
