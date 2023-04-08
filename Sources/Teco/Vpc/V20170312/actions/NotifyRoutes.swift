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

extension Vpc {
    /// NotifyRoutes请求参数结构体
    public struct NotifyRoutesRequest: TCRequestModel {
        /// 路由表唯一ID。
        public let routeTableId: String

        /// 路由策略唯一ID。
        public let routeItemIds: [String]

        public init(routeTableId: String, routeItemIds: [String]) {
            self.routeTableId = routeTableId
            self.routeItemIds = routeItemIds
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeItemIds = "RouteItemIds"
        }
    }

    /// NotifyRoutes返回参数结构体
    public struct NotifyRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发布路由至云联网
    ///
    /// 本接口（NotifyRoutes）用于路由表列表页操作增加“发布到云联网”，发布路由到云联网。
    @inlinable @discardableResult
    public func notifyRoutes(_ input: NotifyRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<NotifyRoutesResponse> {
        self.client.execute(action: "NotifyRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布路由至云联网
    ///
    /// 本接口（NotifyRoutes）用于路由表列表页操作增加“发布到云联网”，发布路由到云联网。
    @inlinable @discardableResult
    public func notifyRoutes(_ input: NotifyRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> NotifyRoutesResponse {
        try await self.client.execute(action: "NotifyRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布路由至云联网
    ///
    /// 本接口（NotifyRoutes）用于路由表列表页操作增加“发布到云联网”，发布路由到云联网。
    @inlinable @discardableResult
    public func notifyRoutes(routeTableId: String, routeItemIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<NotifyRoutesResponse> {
        self.notifyRoutes(.init(routeTableId: routeTableId, routeItemIds: routeItemIds), region: region, logger: logger, on: eventLoop)
    }

    /// 发布路由至云联网
    ///
    /// 本接口（NotifyRoutes）用于路由表列表页操作增加“发布到云联网”，发布路由到云联网。
    @inlinable @discardableResult
    public func notifyRoutes(routeTableId: String, routeItemIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> NotifyRoutesResponse {
        try await self.notifyRoutes(.init(routeTableId: routeTableId, routeItemIds: routeItemIds), region: region, logger: logger, on: eventLoop)
    }
}
