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

extension Tsf {
    /// ExecuteTaskFlow请求参数结构体
    public struct ExecuteTaskFlowRequest: TCRequest {
        /// 工作流 ID
        public let flowId: String?

        public init(flowId: String? = nil) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// ExecuteTaskFlow返回参数结构体
    public struct ExecuteTaskFlowResponse: TCResponse {
        /// 工作流批次ID
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 执行一次工作流
    @inlinable
    public func executeTaskFlow(_ input: ExecuteTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskFlowResponse> {
        self.client.execute(action: "ExecuteTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行一次工作流
    @inlinable
    public func executeTaskFlow(_ input: ExecuteTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskFlowResponse {
        try await self.client.execute(action: "ExecuteTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行一次工作流
    @inlinable
    public func executeTaskFlow(flowId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskFlowResponse> {
        self.executeTaskFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 执行一次工作流
    @inlinable
    public func executeTaskFlow(flowId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskFlowResponse {
        try await self.executeTaskFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
