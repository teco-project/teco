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
    /// BatchStartStreamLinkFlow请求参数结构体
    public struct BatchStartStreamLinkFlowRequest: TCRequestModel {
        /// EventId。
        public let eventId: String

        /// Event关联的流Id数组，如果不传默认启动Event下面的所有媒体传输流。
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

    /// BatchStartStreamLinkFlow返回参数结构体
    public struct BatchStartStreamLinkFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量开启媒体传输流
    ///
    /// 批量启动媒体传输流。
    @inlinable @discardableResult
    public func batchStartStreamLinkFlow(_ input: BatchStartStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStartStreamLinkFlowResponse> {
        self.client.execute(action: "BatchStartStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量开启媒体传输流
    ///
    /// 批量启动媒体传输流。
    @inlinable @discardableResult
    public func batchStartStreamLinkFlow(_ input: BatchStartStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStartStreamLinkFlowResponse {
        try await self.client.execute(action: "BatchStartStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量开启媒体传输流
    ///
    /// 批量启动媒体传输流。
    @inlinable @discardableResult
    public func batchStartStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStartStreamLinkFlowResponse> {
        self.batchStartStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量开启媒体传输流
    ///
    /// 批量启动媒体传输流。
    @inlinable @discardableResult
    public func batchStartStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStartStreamLinkFlowResponse {
        try await self.batchStartStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }
}