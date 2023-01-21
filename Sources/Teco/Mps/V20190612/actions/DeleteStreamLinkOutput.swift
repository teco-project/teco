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
    /// DeleteStreamLinkOutput请求参数结构体
    public struct DeleteStreamLinkOutputRequest: TCRequestModel {
        /// 流Id。
        public let flowId: String

        /// 输出Id。
        public let outputId: String

        public init(flowId: String, outputId: String) {
            self.flowId = flowId
            self.outputId = outputId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case outputId = "OutputId"
        }
    }

    /// DeleteStreamLinkOutput返回参数结构体
    public struct DeleteStreamLinkOutputResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除媒体传输输出
    ///
    /// 删除媒体传输流的输出配置。
    @inlinable @discardableResult
    public func deleteStreamLinkOutput(_ input: DeleteStreamLinkOutputRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStreamLinkOutputResponse> {
        self.client.execute(action: "DeleteStreamLinkOutput", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除媒体传输输出
    ///
    /// 删除媒体传输流的输出配置。
    @inlinable @discardableResult
    public func deleteStreamLinkOutput(_ input: DeleteStreamLinkOutputRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamLinkOutputResponse {
        try await self.client.execute(action: "DeleteStreamLinkOutput", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除媒体传输输出
    ///
    /// 删除媒体传输流的输出配置。
    @inlinable @discardableResult
    public func deleteStreamLinkOutput(flowId: String, outputId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStreamLinkOutputResponse> {
        self.deleteStreamLinkOutput(DeleteStreamLinkOutputRequest(flowId: flowId, outputId: outputId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除媒体传输输出
    ///
    /// 删除媒体传输流的输出配置。
    @inlinable @discardableResult
    public func deleteStreamLinkOutput(flowId: String, outputId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamLinkOutputResponse {
        try await self.deleteStreamLinkOutput(DeleteStreamLinkOutputRequest(flowId: flowId, outputId: outputId), region: region, logger: logger, on: eventLoop)
    }
}
