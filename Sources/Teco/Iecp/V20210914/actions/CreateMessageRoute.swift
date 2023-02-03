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

extension Iecp {
    /// CreateMessageRoute请求参数结构体
    public struct CreateMessageRouteRequest: TCRequestModel {
        /// 路由名称
        public let routeName: String

        /// 路由备注
        public let descript: String?

        public init(routeName: String, descript: String? = nil) {
            self.routeName = routeName
            self.descript = descript
        }

        enum CodingKeys: String, CodingKey {
            case routeName = "RouteName"
            case descript = "Descript"
        }
    }

    /// CreateMessageRoute返回参数结构体
    public struct CreateMessageRouteResponse: TCResponseModel {
        /// 路由id
        public let routeID: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routeID = "RouteID"
            case requestId = "RequestId"
        }
    }

    /// 创建消息路由
    @inlinable
    public func createMessageRoute(_ input: CreateMessageRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageRouteResponse> {
        self.client.execute(action: "CreateMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建消息路由
    @inlinable
    public func createMessageRoute(_ input: CreateMessageRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageRouteResponse {
        try await self.client.execute(action: "CreateMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建消息路由
    @inlinable
    public func createMessageRoute(routeName: String, descript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageRouteResponse> {
        let input = CreateMessageRouteRequest(routeName: routeName, descript: descript)
        return self.client.execute(action: "CreateMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建消息路由
    @inlinable
    public func createMessageRoute(routeName: String, descript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageRouteResponse {
        let input = CreateMessageRouteRequest(routeName: routeName, descript: descript)
        return try await self.client.execute(action: "CreateMessageRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
