//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mps {
    /// StartStreamLinkFlow请求参数结构体
    public struct StartStreamLinkFlowRequest: TCRequestModel {
        /// 流Id。
        public let flowId: String

        public init(flowId: String) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// StartStreamLinkFlow返回参数结构体
    public struct StartStreamLinkFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启媒体传输流
    ///
    /// 启动媒体传输流。
    @inlinable
    public func startStreamLinkFlow(_ input: StartStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartStreamLinkFlowResponse> {
        self.client.execute(action: "StartStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启媒体传输流
    ///
    /// 启动媒体传输流。
    @inlinable
    public func startStreamLinkFlow(_ input: StartStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStreamLinkFlowResponse {
        try await self.client.execute(action: "StartStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启媒体传输流
    ///
    /// 启动媒体传输流。
    @inlinable
    public func startStreamLinkFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartStreamLinkFlowResponse> {
        self.startStreamLinkFlow(StartStreamLinkFlowRequest(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启媒体传输流
    ///
    /// 启动媒体传输流。
    @inlinable
    public func startStreamLinkFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStreamLinkFlowResponse {
        try await self.startStreamLinkFlow(StartStreamLinkFlowRequest(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
