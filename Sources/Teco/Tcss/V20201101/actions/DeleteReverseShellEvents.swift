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

extension Tcss {
    /// DeleteReverseShellEvents请求参数结构体
    public struct DeleteReverseShellEventsRequest: TCRequestModel {
        /// 事件ids
        public let eventIdSet: [String]

        public init(eventIdSet: [String]) {
            self.eventIdSet = eventIdSet
        }

        enum CodingKeys: String, CodingKey {
            case eventIdSet = "EventIdSet"
        }
    }

    /// DeleteReverseShellEvents返回参数结构体
    public struct DeleteReverseShellEventsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除运行时反弹shell事件
    @inlinable
    public func deleteReverseShellEvents(_ input: DeleteReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellEventsResponse> {
        self.client.execute(action: "DeleteReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除运行时反弹shell事件
    @inlinable
    public func deleteReverseShellEvents(_ input: DeleteReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellEventsResponse {
        try await self.client.execute(action: "DeleteReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除运行时反弹shell事件
    @inlinable
    public func deleteReverseShellEvents(eventIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellEventsResponse> {
        self.deleteReverseShellEvents(DeleteReverseShellEventsRequest(eventIdSet: eventIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除运行时反弹shell事件
    @inlinable
    public func deleteReverseShellEvents(eventIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellEventsResponse {
        try await self.deleteReverseShellEvents(DeleteReverseShellEventsRequest(eventIdSet: eventIdSet), region: region, logger: logger, on: eventLoop)
    }
}
