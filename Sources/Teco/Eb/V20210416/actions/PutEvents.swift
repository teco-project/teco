//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// PutEvents请求参数结构体
    public struct PutEventsRequest: TCRequestModel {
        /// 事件列表
        public let eventList: [Event]

        /// 事件集ID
        public let eventBusId: String

        public init(eventList: [Event], eventBusId: String) {
            self.eventList = eventList
            self.eventBusId = eventBusId
        }

        enum CodingKeys: String, CodingKey {
            case eventList = "EventList"
            case eventBusId = "EventBusId"
        }
    }

    /// PutEvents返回参数结构体
    public struct PutEventsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 事件投递
    ///
    /// 用于Event事件投递
    @inlinable
    public func putEvents(_ input: PutEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutEventsResponse> {
        self.client.execute(action: "PutEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 事件投递
    ///
    /// 用于Event事件投递
    @inlinable
    public func putEvents(_ input: PutEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEventsResponse {
        try await self.client.execute(action: "PutEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 事件投递
    ///
    /// 用于Event事件投递
    @inlinable
    public func putEvents(eventList: [Event], eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutEventsResponse> {
        self.putEvents(PutEventsRequest(eventList: eventList, eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }

    /// 事件投递
    ///
    /// 用于Event事件投递
    @inlinable
    public func putEvents(eventList: [Event], eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEventsResponse {
        try await self.putEvents(PutEventsRequest(eventList: eventList, eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }
}
