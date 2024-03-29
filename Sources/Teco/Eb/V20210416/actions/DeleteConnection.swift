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

extension Eb {
    /// DeleteConnection请求参数结构体
    public struct DeleteConnectionRequest: TCRequest {
        /// 连接器ID
        public let connectionId: String

        /// 事件集ID
        public let eventBusId: String

        public init(connectionId: String, eventBusId: String) {
            self.connectionId = connectionId
            self.eventBusId = eventBusId
        }

        enum CodingKeys: String, CodingKey {
            case connectionId = "ConnectionId"
            case eventBusId = "EventBusId"
        }
    }

    /// DeleteConnection返回参数结构体
    public struct DeleteConnectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除事件连接器
    @inlinable @discardableResult
    public func deleteConnection(_ input: DeleteConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionResponse> {
        self.client.execute(action: "DeleteConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除事件连接器
    @inlinable @discardableResult
    public func deleteConnection(_ input: DeleteConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectionResponse {
        try await self.client.execute(action: "DeleteConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除事件连接器
    @inlinable @discardableResult
    public func deleteConnection(connectionId: String, eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionResponse> {
        self.deleteConnection(.init(connectionId: connectionId, eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除事件连接器
    @inlinable @discardableResult
    public func deleteConnection(connectionId: String, eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectionResponse {
        try await self.deleteConnection(.init(connectionId: connectionId, eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }
}
