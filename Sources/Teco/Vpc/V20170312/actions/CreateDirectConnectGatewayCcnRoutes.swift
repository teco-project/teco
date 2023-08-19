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

extension Vpc {
    /// CreateDirectConnectGatewayCcnRoutes请求参数结构体
    public struct CreateDirectConnectGatewayCcnRoutesRequest: TCRequest {
        /// 专线网关ID，形如：dcg-prpqlmg1
        public let directConnectGatewayId: String

        /// 需要连通的IDC网段列表
        public let routes: [DirectConnectGatewayCcnRoute]

        public init(directConnectGatewayId: String, routes: [DirectConnectGatewayCcnRoute]) {
            self.directConnectGatewayId = directConnectGatewayId
            self.routes = routes
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayId = "DirectConnectGatewayId"
            case routes = "Routes"
        }
    }

    /// CreateDirectConnectGatewayCcnRoutes返回参数结构体
    public struct CreateDirectConnectGatewayCcnRoutesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建专线网关云联网路由
    ///
    /// 本接口（CreateDirectConnectGatewayCcnRoutes）用于创建专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func createDirectConnectGatewayCcnRoutes(_ input: CreateDirectConnectGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectGatewayCcnRoutesResponse> {
        self.client.execute(action: "CreateDirectConnectGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专线网关云联网路由
    ///
    /// 本接口（CreateDirectConnectGatewayCcnRoutes）用于创建专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func createDirectConnectGatewayCcnRoutes(_ input: CreateDirectConnectGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectGatewayCcnRoutesResponse {
        try await self.client.execute(action: "CreateDirectConnectGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建专线网关云联网路由
    ///
    /// 本接口（CreateDirectConnectGatewayCcnRoutes）用于创建专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func createDirectConnectGatewayCcnRoutes(directConnectGatewayId: String, routes: [DirectConnectGatewayCcnRoute], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectGatewayCcnRoutesResponse> {
        self.createDirectConnectGatewayCcnRoutes(.init(directConnectGatewayId: directConnectGatewayId, routes: routes), region: region, logger: logger, on: eventLoop)
    }

    /// 创建专线网关云联网路由
    ///
    /// 本接口（CreateDirectConnectGatewayCcnRoutes）用于创建专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func createDirectConnectGatewayCcnRoutes(directConnectGatewayId: String, routes: [DirectConnectGatewayCcnRoute], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectGatewayCcnRoutesResponse {
        try await self.createDirectConnectGatewayCcnRoutes(.init(directConnectGatewayId: directConnectGatewayId, routes: routes), region: region, logger: logger, on: eventLoop)
    }
}
