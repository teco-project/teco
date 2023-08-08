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

extension Iecp {
    /// DeleteMessageRoute请求参数结构体
    public struct DeleteMessageRouteRequest: TCRequestModel {
        public let routeID: Int64

        public init(routeID: Int64) {
            self.routeID = routeID
        }

        enum CodingKeys: String, CodingKey {
            case routeID = "RouteID"
        }
    }

    /// DeleteMessageRoute返回参数结构体
    public struct DeleteMessageRouteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除消息路由
    @inlinable @discardableResult
    public func deleteMessageRoute(_ input: DeleteMessageRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMessageRouteResponse> {
        self.client.execute(action: "DeleteMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除消息路由
    @inlinable @discardableResult
    public func deleteMessageRoute(_ input: DeleteMessageRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageRouteResponse {
        try await self.client.execute(action: "DeleteMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除消息路由
    @inlinable @discardableResult
    public func deleteMessageRoute(routeID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMessageRouteResponse> {
        self.deleteMessageRoute(.init(routeID: routeID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除消息路由
    @inlinable @discardableResult
    public func deleteMessageRoute(routeID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageRouteResponse {
        try await self.deleteMessageRoute(.init(routeID: routeID), region: region, logger: logger, on: eventLoop)
    }
}
