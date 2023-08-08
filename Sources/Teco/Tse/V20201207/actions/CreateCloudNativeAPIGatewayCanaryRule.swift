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
    /// CreateCloudNativeAPIGatewayCanaryRule请求参数结构体
    public struct CreateCloudNativeAPIGatewayCanaryRuleRequest: TCRequestModel {
        /// 网关 ID
        public let gatewayId: String

        /// 服务 ID
        public let serviceId: String

        /// 灰度规则配置
        public let canaryRule: CloudNativeAPIGatewayCanaryRule

        public init(gatewayId: String, serviceId: String, canaryRule: CloudNativeAPIGatewayCanaryRule) {
            self.gatewayId = gatewayId
            self.serviceId = serviceId
            self.canaryRule = canaryRule
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case serviceId = "ServiceId"
            case canaryRule = "CanaryRule"
        }
    }

    /// CreateCloudNativeAPIGatewayCanaryRule返回参数结构体
    public struct CreateCloudNativeAPIGatewayCanaryRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建云原生网关的灰度规则
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayCanaryRule(_ input: CreateCloudNativeAPIGatewayCanaryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudNativeAPIGatewayCanaryRuleResponse> {
        self.client.execute(action: "CreateCloudNativeAPIGatewayCanaryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云原生网关的灰度规则
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayCanaryRule(_ input: CreateCloudNativeAPIGatewayCanaryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudNativeAPIGatewayCanaryRuleResponse {
        try await self.client.execute(action: "CreateCloudNativeAPIGatewayCanaryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云原生网关的灰度规则
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayCanaryRule(gatewayId: String, serviceId: String, canaryRule: CloudNativeAPIGatewayCanaryRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudNativeAPIGatewayCanaryRuleResponse> {
        self.createCloudNativeAPIGatewayCanaryRule(.init(gatewayId: gatewayId, serviceId: serviceId, canaryRule: canaryRule), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云原生网关的灰度规则
    @inlinable @discardableResult
    public func createCloudNativeAPIGatewayCanaryRule(gatewayId: String, serviceId: String, canaryRule: CloudNativeAPIGatewayCanaryRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudNativeAPIGatewayCanaryRuleResponse {
        try await self.createCloudNativeAPIGatewayCanaryRule(.init(gatewayId: gatewayId, serviceId: serviceId, canaryRule: canaryRule), region: region, logger: logger, on: eventLoop)
    }
}
