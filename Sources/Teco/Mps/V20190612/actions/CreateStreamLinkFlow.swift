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
    /// CreateStreamLinkFlow请求参数结构体
    public struct CreateStreamLinkFlowRequest: TCRequestModel {
        /// 流名称。
        public let flowName: String

        /// 最大带宽，单位bps，可选[10000000, 20000000, 50000000]。
        public let maxBandwidth: Int64

        /// 流的输入组。
        public let inputGroup: [CreateInput]

        public init(flowName: String, maxBandwidth: Int64, inputGroup: [CreateInput]) {
            self.flowName = flowName
            self.maxBandwidth = maxBandwidth
            self.inputGroup = inputGroup
        }

        enum CodingKeys: String, CodingKey {
            case flowName = "FlowName"
            case maxBandwidth = "MaxBandwidth"
            case inputGroup = "InputGroup"
        }
    }

    /// CreateStreamLinkFlow返回参数结构体
    public struct CreateStreamLinkFlowResponse: TCResponseModel {
        /// 创建的Flow信息。
        public let info: DescribeFlow

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case requestId = "RequestId"
        }
    }

    /// 创建媒体传输流
    ///
    /// 创建媒体传输的传输流配置。
    @inlinable
    public func createStreamLinkFlow(_ input: CreateStreamLinkFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateStreamLinkFlowResponse > {
        self.client.execute(action: "CreateStreamLinkFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建媒体传输流
    ///
    /// 创建媒体传输的传输流配置。
    @inlinable
    public func createStreamLinkFlow(_ input: CreateStreamLinkFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamLinkFlowResponse {
        try await self.client.execute(action: "CreateStreamLinkFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建媒体传输流
    ///
    /// 创建媒体传输的传输流配置。
    @inlinable
    public func createStreamLinkFlow(flowName: String, maxBandwidth: Int64, inputGroup: [CreateInput], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateStreamLinkFlowResponse > {
        self.createStreamLinkFlow(CreateStreamLinkFlowRequest(flowName: flowName, maxBandwidth: maxBandwidth, inputGroup: inputGroup), logger: logger, on: eventLoop)
    }

    /// 创建媒体传输流
    ///
    /// 创建媒体传输的传输流配置。
    @inlinable
    public func createStreamLinkFlow(flowName: String, maxBandwidth: Int64, inputGroup: [CreateInput], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamLinkFlowResponse {
        try await self.createStreamLinkFlow(CreateStreamLinkFlowRequest(flowName: flowName, maxBandwidth: maxBandwidth, inputGroup: inputGroup), logger: logger, on: eventLoop)
    }
}
