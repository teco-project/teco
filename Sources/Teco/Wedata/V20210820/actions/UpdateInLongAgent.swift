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

extension Wedata {
    /// UpdateInLongAgent请求参数结构体
    public struct UpdateInLongAgentRequest: TCRequest {
        /// 采集器ID
        public let agentId: String

        /// WeData项目ID
        public let projectId: String

        /// 采集器名称
        public let agentName: String?

        /// 集成资源组ID
        public let executorGroupId: String?

        public init(agentId: String, projectId: String, agentName: String? = nil, executorGroupId: String? = nil) {
            self.agentId = agentId
            self.projectId = projectId
            self.agentName = agentName
            self.executorGroupId = executorGroupId
        }

        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case projectId = "ProjectId"
            case agentName = "AgentName"
            case executorGroupId = "ExecutorGroupId"
        }
    }

    /// UpdateInLongAgent返回参数结构体
    public struct UpdateInLongAgentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新采集器
    @inlinable @discardableResult
    public func updateInLongAgent(_ input: UpdateInLongAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInLongAgentResponse> {
        self.client.execute(action: "UpdateInLongAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新采集器
    @inlinable @discardableResult
    public func updateInLongAgent(_ input: UpdateInLongAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInLongAgentResponse {
        try await self.client.execute(action: "UpdateInLongAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新采集器
    @inlinable @discardableResult
    public func updateInLongAgent(agentId: String, projectId: String, agentName: String? = nil, executorGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInLongAgentResponse> {
        self.updateInLongAgent(.init(agentId: agentId, projectId: projectId, agentName: agentName, executorGroupId: executorGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新采集器
    @inlinable @discardableResult
    public func updateInLongAgent(agentId: String, projectId: String, agentName: String? = nil, executorGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInLongAgentResponse {
        try await self.updateInLongAgent(.init(agentId: agentId, projectId: projectId, agentName: agentName, executorGroupId: executorGroupId), region: region, logger: logger, on: eventLoop)
    }
}
