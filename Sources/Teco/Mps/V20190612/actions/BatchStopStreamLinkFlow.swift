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
    /// BatchStopStreamLinkFlow请求参数结构体
    public struct BatchStopStreamLinkFlowRequest: TCRequestModel {
        /// EventId。
        public let eventId: String

        /// 流Id，如果不传默认停止Event下所有的媒体传输流。
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

    /// BatchStopStreamLinkFlow返回参数结构体
    public struct BatchStopStreamLinkFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量停止媒体传输流
    ///
    /// 批量停止媒体传输流。
    @inlinable @discardableResult
    public func batchStopStreamLinkFlow(_ input: BatchStopStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStopStreamLinkFlowResponse> {
        self.client.execute(action: "BatchStopStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量停止媒体传输流
    ///
    /// 批量停止媒体传输流。
    @inlinable @discardableResult
    public func batchStopStreamLinkFlow(_ input: BatchStopStreamLinkFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStopStreamLinkFlowResponse {
        try await self.client.execute(action: "BatchStopStreamLinkFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量停止媒体传输流
    ///
    /// 批量停止媒体传输流。
    @inlinable @discardableResult
    public func batchStopStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStopStreamLinkFlowResponse> {
        self.batchStopStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量停止媒体传输流
    ///
    /// 批量停止媒体传输流。
    @inlinable @discardableResult
    public func batchStopStreamLinkFlow(eventId: String, flowIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStopStreamLinkFlowResponse {
        try await self.batchStopStreamLinkFlow(.init(eventId: eventId, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }
}
