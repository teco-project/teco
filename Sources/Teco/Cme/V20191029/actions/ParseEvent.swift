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

extension Cme {
    /// ParseEvent请求参数结构体
    public struct ParseEventRequest: TCRequest {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 回调事件内容。
        public let eventContent: String

        public init(platform: String, eventContent: String) {
            self.platform = platform
            self.eventContent = eventContent
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case eventContent = "EventContent"
        }
    }

    /// ParseEvent返回参数结构体
    public struct ParseEventResponse: TCResponse {
        /// 事件内容。
        public let eventContent: EventContent

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventContent = "EventContent"
            case requestId = "RequestId"
        }
    }

    /// 回调事件内容解析
    ///
    /// 该接口接受多媒体创作引擎回调给业务的事件内容，将其转化为对应的 EventContent 结构。请不要实际调用该接口，只需要将接收到的事件内容直接使用 JSON 解析到 EventContent  结构即可使用。
    @inlinable
    public func parseEvent(_ input: ParseEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseEventResponse> {
        self.client.execute(action: "ParseEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回调事件内容解析
    ///
    /// 该接口接受多媒体创作引擎回调给业务的事件内容，将其转化为对应的 EventContent 结构。请不要实际调用该接口，只需要将接收到的事件内容直接使用 JSON 解析到 EventContent  结构即可使用。
    @inlinable
    public func parseEvent(_ input: ParseEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseEventResponse {
        try await self.client.execute(action: "ParseEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回调事件内容解析
    ///
    /// 该接口接受多媒体创作引擎回调给业务的事件内容，将其转化为对应的 EventContent 结构。请不要实际调用该接口，只需要将接收到的事件内容直接使用 JSON 解析到 EventContent  结构即可使用。
    @inlinable
    public func parseEvent(platform: String, eventContent: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseEventResponse> {
        self.parseEvent(.init(platform: platform, eventContent: eventContent), region: region, logger: logger, on: eventLoop)
    }

    /// 回调事件内容解析
    ///
    /// 该接口接受多媒体创作引擎回调给业务的事件内容，将其转化为对应的 EventContent 结构。请不要实际调用该接口，只需要将接收到的事件内容直接使用 JSON 解析到 EventContent  结构即可使用。
    @inlinable
    public func parseEvent(platform: String, eventContent: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseEventResponse {
        try await self.parseEvent(.init(platform: platform, eventContent: eventContent), region: region, logger: logger, on: eventLoop)
    }
}
