//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateStreamLinkOutputInfo请求参数结构体
    public struct CreateStreamLinkOutputInfoRequest: TCRequestModel {
        /// 传输流Id。
        public let flowId: String

        /// 传输流的Output配置。
        public let output: CreateOutputInfo

        public init(flowId: String, output: CreateOutputInfo) {
            self.flowId = flowId
            self.output = output
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case output = "Output"
        }
    }

    /// CreateStreamLinkOutputInfo返回参数结构体
    public struct CreateStreamLinkOutputInfoResponse: TCResponseModel {
        /// 创建后的Output信息。
        public let info: DescribeOutput

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case requestId = "RequestId"
        }
    }

    /// 创建媒体传输的输出信息
    ///
    /// 创建媒体传输流的输出信息。
    @inlinable
    public func createStreamLinkOutputInfo(_ input: CreateStreamLinkOutputInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateStreamLinkOutputInfoResponse > {
        self.client.execute(action: "CreateStreamLinkOutputInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建媒体传输的输出信息
    ///
    /// 创建媒体传输流的输出信息。
    @inlinable
    public func createStreamLinkOutputInfo(_ input: CreateStreamLinkOutputInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamLinkOutputInfoResponse {
        try await self.client.execute(action: "CreateStreamLinkOutputInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建媒体传输的输出信息
    ///
    /// 创建媒体传输流的输出信息。
    @inlinable
    public func createStreamLinkOutputInfo(flowId: String, output: CreateOutputInfo, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateStreamLinkOutputInfoResponse > {
        self.createStreamLinkOutputInfo(CreateStreamLinkOutputInfoRequest(flowId: flowId, output: output), logger: logger, on: eventLoop)
    }

    /// 创建媒体传输的输出信息
    ///
    /// 创建媒体传输流的输出信息。
    @inlinable
    public func createStreamLinkOutputInfo(flowId: String, output: CreateOutputInfo, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamLinkOutputInfoResponse {
        try await self.createStreamLinkOutputInfo(CreateStreamLinkOutputInfoRequest(flowId: flowId, output: output), logger: logger, on: eventLoop)
    }
}
