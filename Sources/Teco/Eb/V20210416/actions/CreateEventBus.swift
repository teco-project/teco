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

extension Eb {
    /// CreateEventBus请求参数结构体
    public struct CreateEventBusRequest: TCRequestModel {
        /// 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        public let eventBusName: String

        /// 事件集描述，不限字符类型，200字符描述以内
        public let description: String?

        public init(eventBusName: String, description: String? = nil) {
            self.eventBusName = eventBusName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case eventBusName = "EventBusName"
            case description = "Description"
        }
    }

    /// CreateEventBus返回参数结构体
    public struct CreateEventBusResponse: TCResponseModel {
        /// 事件集ID
        public let eventBusId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case requestId = "RequestId"
        }
    }

    /// 创建事件集
    ///
    /// 用于创建事件集
    @inlinable
    public func createEventBus(_ input: CreateEventBusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEventBusResponse > {
        self.client.execute(action: "CreateEventBus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建事件集
    ///
    /// 用于创建事件集
    @inlinable
    public func createEventBus(_ input: CreateEventBusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEventBusResponse {
        try await self.client.execute(action: "CreateEventBus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建事件集
    ///
    /// 用于创建事件集
    @inlinable
    public func createEventBus(eventBusName: String, description: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEventBusResponse > {
        self.createEventBus(CreateEventBusRequest(eventBusName: eventBusName, description: description), logger: logger, on: eventLoop)
    }

    /// 创建事件集
    ///
    /// 用于创建事件集
    @inlinable
    public func createEventBus(eventBusName: String, description: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEventBusResponse {
        try await self.createEventBus(CreateEventBusRequest(eventBusName: eventBusName, description: description), logger: logger, on: eventLoop)
    }
}
