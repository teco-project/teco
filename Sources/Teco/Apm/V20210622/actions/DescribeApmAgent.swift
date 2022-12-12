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

extension Apm {
    /// DescribeApmAgent请求参数结构体
    public struct DescribeApmAgentRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 接入方式
        public let agentType: String?
        
        /// 环境
        public let networkMode: String?
        
        /// 语言
        public let languageEnvironment: String?
        
        /// 上报方式
        public let reportMethod: String?
        
        public init (instanceId: String, agentType: String? = nil, networkMode: String? = nil, languageEnvironment: String? = nil, reportMethod: String? = nil) {
            self.instanceId = instanceId
            self.agentType = agentType
            self.networkMode = networkMode
            self.languageEnvironment = languageEnvironment
            self.reportMethod = reportMethod
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentType = "AgentType"
            case networkMode = "NetworkMode"
            case languageEnvironment = "LanguageEnvironment"
            case reportMethod = "ReportMethod"
        }
    }
    
    /// DescribeApmAgent返回参数结构体
    public struct DescribeApmAgentResponse: TCResponseModel {
        /// Agent信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apmAgent: ApmAgentInfo?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case apmAgent = "ApmAgent"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Apm Agent信息
    @inlinable
    public func describeApmAgent(_ input: DescribeApmAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApmAgentResponse > {
        self.client.execute(action: "DescribeApmAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Apm Agent信息
    @inlinable
    public func describeApmAgent(_ input: DescribeApmAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApmAgentResponse {
        try await self.client.execute(action: "DescribeApmAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
