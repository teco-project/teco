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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Mps {
    /// ModifyStreamLinkFlow请求参数结构体
    public struct ModifyStreamLinkFlowRequest: TCRequestModel {
        /// 流Id。
        public let flowId: String

        /// 需要修改的流名称。
        public let flowName: String

        public init(flowId: String, flowName: String) {
            self.flowId = flowId
            self.flowName = flowName
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case flowName = "FlowName"
        }
    }

    /// ModifyStreamLinkFlow返回参数结构体
    public struct ModifyStreamLinkFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改媒体传输流
    ///
    /// 修改媒体传输的传输流配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkFlow(_ input: ModifyStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStreamLinkFlowResponse> {
        self.client.execute(action: "ModifyStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改媒体传输流
    ///
    /// 修改媒体传输的传输流配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkFlow(_ input: ModifyStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStreamLinkFlowResponse {
        try await self.client.execute(action: "ModifyStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改媒体传输流
    ///
    /// 修改媒体传输的传输流配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkFlow(flowId: String, flowName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStreamLinkFlowResponse> {
        self.modifyStreamLinkFlow(.init(flowId: flowId, flowName: flowName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改媒体传输流
    ///
    /// 修改媒体传输的传输流配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkFlow(flowId: String, flowName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStreamLinkFlowResponse {
        try await self.modifyStreamLinkFlow(.init(flowId: flowId, flowName: flowName), region: region, logger: logger, on: eventLoop)
    }
}
