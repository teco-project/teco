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
    /// ModifyStreamLinkEvent请求参数结构体
    public struct ModifyStreamLinkEventRequest: TCRequest {
        /// 媒体传输事件Event Id。
        public let eventId: String

        /// 需要修改的事件名称。
        public let eventName: String

        /// Event的描述信息。
        public let description: String?

        public init(eventId: String, eventName: String, description: String? = nil) {
            self.eventId = eventId
            self.eventName = eventName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case eventName = "EventName"
            case description = "Description"
        }
    }

    /// ModifyStreamLinkEvent返回参数结构体
    public struct ModifyStreamLinkEventResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改媒体传输事件
    ///
    /// 修改媒体传输的事件配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkEvent(_ input: ModifyStreamLinkEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStreamLinkEventResponse> {
        self.client.execute(action: "ModifyStreamLinkEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改媒体传输事件
    ///
    /// 修改媒体传输的事件配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkEvent(_ input: ModifyStreamLinkEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStreamLinkEventResponse {
        try await self.client.execute(action: "ModifyStreamLinkEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改媒体传输事件
    ///
    /// 修改媒体传输的事件配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkEvent(eventId: String, eventName: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStreamLinkEventResponse> {
        self.modifyStreamLinkEvent(.init(eventId: eventId, eventName: eventName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改媒体传输事件
    ///
    /// 修改媒体传输的事件配置信息。
    @inlinable @discardableResult
    public func modifyStreamLinkEvent(eventId: String, eventName: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStreamLinkEventResponse {
        try await self.modifyStreamLinkEvent(.init(eventId: eventId, eventName: eventName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
