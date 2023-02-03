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

extension Tsf {
    /// EnableTaskFlow请求参数结构体
    public struct EnableTaskFlowRequest: TCRequestModel {
        /// 工作流 ID
        public let flowId: String

        public init(flowId: String) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// EnableTaskFlow返回参数结构体
    public struct EnableTaskFlowResponse: TCResponseModel {
        /// true成功，false: 失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 启用工作流
    @inlinable
    public func enableTaskFlow(_ input: EnableTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableTaskFlowResponse> {
        self.client.execute(action: "EnableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用工作流
    @inlinable
    public func enableTaskFlow(_ input: EnableTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableTaskFlowResponse {
        try await self.client.execute(action: "EnableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用工作流
    @inlinable
    public func enableTaskFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableTaskFlowResponse> {
        let input = EnableTaskFlowRequest(flowId: flowId)
        return self.client.execute(action: "EnableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用工作流
    @inlinable
    public func enableTaskFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableTaskFlowResponse {
        let input = EnableTaskFlowRequest(flowId: flowId)
        return try await self.client.execute(action: "EnableTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
