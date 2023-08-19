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

extension Mps {
    /// BatchDeleteStreamLinkFlow请求参数结构体
    public struct BatchDeleteStreamLinkFlowRequest: TCRequest {
        /// EventId。
        public let eventId: String

        /// Event关联的流Id数组，如果不传默认删除Event下面的所有媒体传输流。
        public let flowIds: [String]?

        public init(eventId: String, flowIds: [String]? = nil) {
            self.eventId = eventId
            self.flowIds = flowIds
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case flowIds = "FlowIds"
        }
    }

    /// BatchDeleteStreamLinkFlow返回参数结构体
    public struct BatchDeleteStreamLinkFlowResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除媒体传输流
    ///
    /// 批量删除媒体传输流。
    @inlinable @discardableResult
    public func batchDeleteStreamLinkFlow(_ input: BatchDeleteStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteStreamLinkFlowResponse> {
        self.client.execute(action: "BatchDeleteStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除媒体传输流
    ///
    /// 批量删除媒体传输流。
    @inlinable @discardableResult
    public func batchDeleteStreamLinkFlow(_ input: BatchDeleteStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteStreamLinkFlowResponse {
        try await self.client.execute(action: "BatchDeleteStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除媒体传输流
    ///
    /// 批量删除媒体传输流。
    @inlinable @discardableResult
    public func batchDeleteStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteStreamLinkFlowResponse> {
        self.batchDeleteStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除媒体传输流
    ///
    /// 批量删除媒体传输流。
    @inlinable @discardableResult
    public func batchDeleteStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteStreamLinkFlowResponse {
        try await self.batchDeleteStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }
}
