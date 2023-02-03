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

extension Tke {
    /// DeleteClusterRoute请求参数结构体
    public struct DeleteClusterRouteRequest: TCRequestModel {
        /// 路由表名称。
        public let routeTableName: String

        /// 下一跳地址。
        public let gatewayIp: String

        /// 目的端CIDR。
        public let destinationCidrBlock: String

        public init(routeTableName: String, gatewayIp: String, destinationCidrBlock: String) {
            self.routeTableName = routeTableName
            self.gatewayIp = gatewayIp
            self.destinationCidrBlock = destinationCidrBlock
        }

        enum CodingKeys: String, CodingKey {
            case routeTableName = "RouteTableName"
            case gatewayIp = "GatewayIp"
            case destinationCidrBlock = "DestinationCidrBlock"
        }
    }

    /// DeleteClusterRoute返回参数结构体
    public struct DeleteClusterRouteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除集群路由
    @inlinable @discardableResult
    public func deleteClusterRoute(_ input: DeleteClusterRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterRouteResponse> {
        self.client.execute(action: "DeleteClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除集群路由
    @inlinable @discardableResult
    public func deleteClusterRoute(_ input: DeleteClusterRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterRouteResponse {
        try await self.client.execute(action: "DeleteClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除集群路由
    @inlinable @discardableResult
    public func deleteClusterRoute(routeTableName: String, gatewayIp: String, destinationCidrBlock: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterRouteResponse> {
        let input = DeleteClusterRouteRequest(routeTableName: routeTableName, gatewayIp: gatewayIp, destinationCidrBlock: destinationCidrBlock)
        return self.client.execute(action: "DeleteClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除集群路由
    @inlinable @discardableResult
    public func deleteClusterRoute(routeTableName: String, gatewayIp: String, destinationCidrBlock: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterRouteResponse {
        let input = DeleteClusterRouteRequest(routeTableName: routeTableName, gatewayIp: gatewayIp, destinationCidrBlock: destinationCidrBlock)
        return try await self.client.execute(action: "DeleteClusterRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
