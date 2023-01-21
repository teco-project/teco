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

extension Eb {
    /// UpdateEventBus请求参数结构体
    public struct UpdateEventBusRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 事件集描述，不限字符类型，200字符描述以内
        public let description: String?

        /// 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        public let eventBusName: String?

        public init(eventBusId: String, description: String? = nil, eventBusName: String? = nil) {
            self.eventBusId = eventBusId
            self.description = description
            self.eventBusName = eventBusName
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case description = "Description"
            case eventBusName = "EventBusName"
        }
    }

    /// UpdateEventBus返回参数结构体
    public struct UpdateEventBusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新事件集
    @inlinable @discardableResult
    public func updateEventBus(_ input: UpdateEventBusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEventBusResponse> {
        self.client.execute(action: "UpdateEventBus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新事件集
    @inlinable @discardableResult
    public func updateEventBus(_ input: UpdateEventBusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEventBusResponse {
        try await self.client.execute(action: "UpdateEventBus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新事件集
    @inlinable @discardableResult
    public func updateEventBus(eventBusId: String, description: String? = nil, eventBusName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEventBusResponse> {
        self.updateEventBus(UpdateEventBusRequest(eventBusId: eventBusId, description: description, eventBusName: eventBusName), region: region, logger: logger, on: eventLoop)
    }

    /// 更新事件集
    @inlinable @discardableResult
    public func updateEventBus(eventBusId: String, description: String? = nil, eventBusName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEventBusResponse {
        try await self.updateEventBus(UpdateEventBusRequest(eventBusId: eventBusId, description: description, eventBusName: eventBusName), region: region, logger: logger, on: eventLoop)
    }
}
