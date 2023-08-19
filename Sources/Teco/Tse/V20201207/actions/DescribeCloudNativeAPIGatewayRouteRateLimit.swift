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

extension Tse {
    /// DescribeCloudNativeAPIGatewayRouteRateLimit请求参数结构体
    public struct DescribeCloudNativeAPIGatewayRouteRateLimitRequest: TCRequest {
        /// 网关Id
        public let gatewayId: String

        /// 路由Id，或路由名称。
        /// 不支持“未命名”
        public let id: String

        public init(gatewayId: String, id: String) {
            self.gatewayId = gatewayId
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case id = "Id"
        }
    }

    /// DescribeCloudNativeAPIGatewayRouteRateLimit返回参数结构体
    public struct DescribeCloudNativeAPIGatewayRouteRateLimitResponse: TCResponse {
        /// 获取云原生网关限流插件(路由)
        public let result: CloudNativeAPIGatewayRateLimitDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询云原生网关的限流插件(路由)
    @inlinable
    public func describeCloudNativeAPIGatewayRouteRateLimit(_ input: DescribeCloudNativeAPIGatewayRouteRateLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayRouteRateLimitResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayRouteRateLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关的限流插件(路由)
    @inlinable
    public func describeCloudNativeAPIGatewayRouteRateLimit(_ input: DescribeCloudNativeAPIGatewayRouteRateLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayRouteRateLimitResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayRouteRateLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云原生网关的限流插件(路由)
    @inlinable
    public func describeCloudNativeAPIGatewayRouteRateLimit(gatewayId: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayRouteRateLimitResponse> {
        self.describeCloudNativeAPIGatewayRouteRateLimit(.init(gatewayId: gatewayId, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关的限流插件(路由)
    @inlinable
    public func describeCloudNativeAPIGatewayRouteRateLimit(gatewayId: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayRouteRateLimitResponse {
        try await self.describeCloudNativeAPIGatewayRouteRateLimit(.init(gatewayId: gatewayId, id: id), region: region, logger: logger, on: eventLoop)
    }
}
