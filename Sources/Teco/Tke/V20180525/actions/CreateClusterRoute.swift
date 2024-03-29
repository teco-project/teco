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

extension Tke {
    /// CreateClusterRoute请求参数结构体
    public struct CreateClusterRouteRequest: TCRequest {
        /// 路由表名称。
        public let routeTableName: String

        /// 目的端CIDR。
        public let destinationCidrBlock: String

        /// 下一跳地址。
        public let gatewayIp: String

        public init(routeTableName: String, destinationCidrBlock: String, gatewayIp: String) {
            self.routeTableName = routeTableName
            self.destinationCidrBlock = destinationCidrBlock
            self.gatewayIp = gatewayIp
        }

        enum CodingKeys: String, CodingKey {
            case routeTableName = "RouteTableName"
            case destinationCidrBlock = "DestinationCidrBlock"
            case gatewayIp = "GatewayIp"
        }
    }

    /// CreateClusterRoute返回参数结构体
    public struct CreateClusterRouteResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建集群路由
    @inlinable @discardableResult
    public func createClusterRoute(_ input: CreateClusterRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterRouteResponse> {
        self.client.execute(action: "CreateClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群路由
    @inlinable @discardableResult
    public func createClusterRoute(_ input: CreateClusterRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterRouteResponse {
        try await self.client.execute(action: "CreateClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群路由
    @inlinable @discardableResult
    public func createClusterRoute(routeTableName: String, destinationCidrBlock: String, gatewayIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterRouteResponse> {
        self.createClusterRoute(.init(routeTableName: routeTableName, destinationCidrBlock: destinationCidrBlock, gatewayIp: gatewayIp), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群路由
    @inlinable @discardableResult
    public func createClusterRoute(routeTableName: String, destinationCidrBlock: String, gatewayIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterRouteResponse {
        try await self.createClusterRoute(.init(routeTableName: routeTableName, destinationCidrBlock: destinationCidrBlock, gatewayIp: gatewayIp), region: region, logger: logger, on: eventLoop)
    }
}
