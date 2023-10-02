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
    /// DeleteCloudNativeAPIGateway请求参数结构体
    public struct DeleteCloudNativeAPIGatewayRequest: TCRequest {
        /// 云原生API网关实例ID。
        public let gatewayId: String

        /// 是否删除实例关联的 CLS 日志主题。
        public let deleteClsTopic: Bool?

        public init(gatewayId: String, deleteClsTopic: Bool? = nil) {
            self.gatewayId = gatewayId
            self.deleteClsTopic = deleteClsTopic
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case deleteClsTopic = "DeleteClsTopic"
        }
    }

    /// DeleteCloudNativeAPIGateway返回参数结构体
    public struct DeleteCloudNativeAPIGatewayResponse: TCResponse {
        /// 删除云原生API网关实例响应结果。
        public let result: DeleteCloudNativeAPIGatewayResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除云原生API网关实例
    @inlinable
    public func deleteCloudNativeAPIGateway(_ input: DeleteCloudNativeAPIGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCloudNativeAPIGatewayResponse> {
        self.client.execute(action: "DeleteCloudNativeAPIGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除云原生API网关实例
    @inlinable
    public func deleteCloudNativeAPIGateway(_ input: DeleteCloudNativeAPIGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCloudNativeAPIGatewayResponse {
        try await self.client.execute(action: "DeleteCloudNativeAPIGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除云原生API网关实例
    @inlinable
    public func deleteCloudNativeAPIGateway(gatewayId: String, deleteClsTopic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCloudNativeAPIGatewayResponse> {
        self.deleteCloudNativeAPIGateway(.init(gatewayId: gatewayId, deleteClsTopic: deleteClsTopic), region: region, logger: logger, on: eventLoop)
    }

    /// 删除云原生API网关实例
    @inlinable
    public func deleteCloudNativeAPIGateway(gatewayId: String, deleteClsTopic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCloudNativeAPIGatewayResponse {
        try await self.deleteCloudNativeAPIGateway(.init(gatewayId: gatewayId, deleteClsTopic: deleteClsTopic), region: region, logger: logger, on: eventLoop)
    }
}