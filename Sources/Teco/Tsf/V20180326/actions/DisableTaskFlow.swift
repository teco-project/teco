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
    /// DisableTaskFlow请求参数结构体
    public struct DisableTaskFlowRequest: TCRequest {
        /// 工作流 ID
        public let flowId: String

        public init(flowId: String) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// DisableTaskFlow返回参数结构体
    public struct DisableTaskFlowResponse: TCResponse {
        /// true成功，false: 失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 停用工作流
    @inlinable
    public func disableTaskFlow(_ input: DisableTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableTaskFlowResponse> {
        self.client.execute(action: "DisableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用工作流
    @inlinable
    public func disableTaskFlow(_ input: DisableTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableTaskFlowResponse {
        try await self.client.execute(action: "DisableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用工作流
    @inlinable
    public func disableTaskFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableTaskFlowResponse> {
        self.disableTaskFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 停用工作流
    @inlinable
    public func disableTaskFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableTaskFlowResponse {
        try await self.disableTaskFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
