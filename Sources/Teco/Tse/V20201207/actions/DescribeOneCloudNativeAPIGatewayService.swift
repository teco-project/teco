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
    /// DescribeOneCloudNativeAPIGatewayService请求参数结构体
    public struct DescribeOneCloudNativeAPIGatewayServiceRequest: TCRequest {
        /// 网关ID
        public let gatewayId: String

        /// 服务名字，或服务ID
        public let name: String

        public init(gatewayId: String, name: String) {
            self.gatewayId = gatewayId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case name = "Name"
        }
    }

    /// DescribeOneCloudNativeAPIGatewayService返回参数结构体
    public struct DescribeOneCloudNativeAPIGatewayServiceResponse: TCResponse {
        public let result: KongServiceDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取云原生网关服务详情
    @inlinable
    public func describeOneCloudNativeAPIGatewayService(_ input: DescribeOneCloudNativeAPIGatewayServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOneCloudNativeAPIGatewayServiceResponse> {
        self.client.execute(action: "DescribeOneCloudNativeAPIGatewayService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关服务详情
    @inlinable
    public func describeOneCloudNativeAPIGatewayService(_ input: DescribeOneCloudNativeAPIGatewayServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOneCloudNativeAPIGatewayServiceResponse {
        try await self.client.execute(action: "DescribeOneCloudNativeAPIGatewayService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云原生网关服务详情
    @inlinable
    public func describeOneCloudNativeAPIGatewayService(gatewayId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOneCloudNativeAPIGatewayServiceResponse> {
        self.describeOneCloudNativeAPIGatewayService(.init(gatewayId: gatewayId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关服务详情
    @inlinable
    public func describeOneCloudNativeAPIGatewayService(gatewayId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOneCloudNativeAPIGatewayServiceResponse {
        try await self.describeOneCloudNativeAPIGatewayService(.init(gatewayId: gatewayId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
