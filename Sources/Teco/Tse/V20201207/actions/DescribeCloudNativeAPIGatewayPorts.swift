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
    /// DescribeCloudNativeAPIGatewayPorts请求参数结构体
    public struct DescribeCloudNativeAPIGatewayPortsRequest: TCRequestModel {
        /// 云原生API网关实例ID
        public let gatewayId: String

        public init(gatewayId: String) {
            self.gatewayId = gatewayId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
        }
    }

    /// DescribeCloudNativeAPIGatewayPorts返回参数结构体
    public struct DescribeCloudNativeAPIGatewayPortsResponse: TCResponseModel {
        /// 云原生API网关实例协议端口列表响应结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DescribeGatewayInstancePortResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取云原生API网关实例端口信息
    @inlinable
    public func describeCloudNativeAPIGatewayPorts(_ input: DescribeCloudNativeAPIGatewayPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayPortsResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayPorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云原生API网关实例端口信息
    @inlinable
    public func describeCloudNativeAPIGatewayPorts(_ input: DescribeCloudNativeAPIGatewayPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayPortsResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayPorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云原生API网关实例端口信息
    @inlinable
    public func describeCloudNativeAPIGatewayPorts(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayPortsResponse> {
        self.describeCloudNativeAPIGatewayPorts(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云原生API网关实例端口信息
    @inlinable
    public func describeCloudNativeAPIGatewayPorts(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayPortsResponse {
        try await self.describeCloudNativeAPIGatewayPorts(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }
}
