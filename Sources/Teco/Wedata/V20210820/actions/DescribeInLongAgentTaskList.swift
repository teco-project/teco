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

extension Wedata {
    /// 查询采集器关联的任务列表
    ///
    /// 查询采集器关联的任务列表
    @inlinable
    public func describeInLongAgentTaskList(_ input: DescribeInLongAgentTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInLongAgentTaskListResponse > {
        self.client.execute(action: "DescribeInLongAgentTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询采集器关联的任务列表
    ///
    /// 查询采集器关联的任务列表
    @inlinable
    public func describeInLongAgentTaskList(_ input: DescribeInLongAgentTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInLongAgentTaskListResponse {
        try await self.client.execute(action: "DescribeInLongAgentTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInLongAgentTaskList请求参数结构体
    public struct DescribeInLongAgentTaskListRequest: TCRequestModel {
        /// 采集器ID
        public let agentId: String
        
        /// WeData项目ID
        public let projectId: String
        
        public init (agentId: String, projectId: String) {
            self.agentId = agentId
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeInLongAgentTaskList返回参数结构体
    public struct DescribeInLongAgentTaskListResponse: TCResponseModel {
        /// 采集器关联的集成任务列表
        public let items: [InLongAgentTask]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}