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

extension Mps {
    /// DeleteStreamLinkFlow请求参数结构体
    public struct DeleteStreamLinkFlowRequest: TCRequestModel {
        /// 传输流Id。
        public let flowId: String

        public init(flowId: String) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// DeleteStreamLinkFlow返回参数结构体
    public struct DeleteStreamLinkFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除媒体传输流
    ///
    /// 删除媒体传输的传输流配置。
    @inlinable @discardableResult
    public func deleteStreamLinkFlow(_ input: DeleteStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStreamLinkFlowResponse> {
        self.client.execute(action: "DeleteStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除媒体传输流
    ///
    /// 删除媒体传输的传输流配置。
    @inlinable @discardableResult
    public func deleteStreamLinkFlow(_ input: DeleteStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamLinkFlowResponse {
        try await self.client.execute(action: "DeleteStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除媒体传输流
    ///
    /// 删除媒体传输的传输流配置。
    @inlinable @discardableResult
    public func deleteStreamLinkFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStreamLinkFlowResponse> {
        self.deleteStreamLinkFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除媒体传输流
    ///
    /// 删除媒体传输的传输流配置。
    @inlinable @discardableResult
    public func deleteStreamLinkFlow(flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamLinkFlowResponse {
        try await self.deleteStreamLinkFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
