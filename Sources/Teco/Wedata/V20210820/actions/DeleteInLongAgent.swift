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
    /// DeleteInLongAgent请求参数结构体
    public struct DeleteInLongAgentRequest: TCRequest {
        /// 采集器ID
        public let agentId: String

        /// WeData项目ID
        public let projectId: String

        public init(agentId: String, projectId: String) {
            self.agentId = agentId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case projectId = "ProjectId"
        }
    }

    /// DeleteInLongAgent返回参数结构体
    public struct DeleteInLongAgentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除采集器
    @inlinable @discardableResult
    public func deleteInLongAgent(_ input: DeleteInLongAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInLongAgentResponse> {
        self.client.execute(action: "DeleteInLongAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除采集器
    @inlinable @discardableResult
    public func deleteInLongAgent(_ input: DeleteInLongAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInLongAgentResponse {
        try await self.client.execute(action: "DeleteInLongAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除采集器
    @inlinable @discardableResult
    public func deleteInLongAgent(agentId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInLongAgentResponse> {
        self.deleteInLongAgent(.init(agentId: agentId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除采集器
    @inlinable @discardableResult
    public func deleteInLongAgent(agentId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInLongAgentResponse {
        try await self.deleteInLongAgent(.init(agentId: agentId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
