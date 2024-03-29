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
    /// CreateCloudNativeAPIGatewayServiceRateLimit请求参数结构体
    public struct CreateCloudNativeAPIGatewayServiceRateLimitRequest: TCRequest {
        /// 网关ID
        public let gatewayId: String

        /// 服务名称，或服务ID
        public let name: String

        /// 限流配置
        public let limitDetail: CloudNativeAPIGatewayRateLimitDetail

        public init(gatewayId: String, name: String, limitDetail: CloudNativeAPIGatewayRateLimitDetail) {
            self.gatewayId = gatewayId
            self.name = name
            self.limitDetail = limitDetail
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case name = "Name"
            case limitDetail = "LimitDetail"
        }
    }

    /// CreateCloudNativeAPIGatewayServiceRateLimit返回参数结构体
    public struct CreateCloudNativeAPIGatewayServiceRateLimitResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建云原生网关限流插件(服务)
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayServiceRateLimit(_ input: CreateCloudNativeAPIGatewayServiceRateLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudNativeAPIGatewayServiceRateLimitResponse> {
        self.client.execute(action: "CreateCloudNativeAPIGatewayServiceRateLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云原生网关限流插件(服务)
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayServiceRateLimit(_ input: CreateCloudNativeAPIGatewayServiceRateLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudNativeAPIGatewayServiceRateLimitResponse {
        try await self.client.execute(action: "CreateCloudNativeAPIGatewayServiceRateLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云原生网关限流插件(服务)
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayServiceRateLimit(gatewayId: String, name: String, limitDetail: CloudNativeAPIGatewayRateLimitDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudNativeAPIGatewayServiceRateLimitResponse> {
        self.createCloudNativeAPIGatewayServiceRateLimit(.init(gatewayId: gatewayId, name: name, limitDetail: limitDetail), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云原生网关限流插件(服务)
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayServiceRateLimit(gatewayId: String, name: String, limitDetail: CloudNativeAPIGatewayRateLimitDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudNativeAPIGatewayServiceRateLimitResponse {
        try await self.createCloudNativeAPIGatewayServiceRateLimit(.init(gatewayId: gatewayId, name: name, limitDetail: limitDetail), region: region, logger: logger, on: eventLoop)
    }
}
