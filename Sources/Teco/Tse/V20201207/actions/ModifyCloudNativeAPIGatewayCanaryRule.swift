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
    /// ModifyCloudNativeAPIGatewayCanaryRule请求参数结构体
    public struct ModifyCloudNativeAPIGatewayCanaryRuleRequest: TCRequestModel {
        /// 网关 ID
        public let gatewayId: String

        /// 服务 ID
        public let serviceId: String

        /// 优先级，同一个服务的灰度规则优先级是唯一的
        public let priority: Int64

        /// 灰度规则配置
        public let canaryRule: CloudNativeAPIGatewayCanaryRule

        public init(gatewayId: String, serviceId: String, priority: Int64, canaryRule: CloudNativeAPIGatewayCanaryRule) {
            self.gatewayId = gatewayId
            self.serviceId = serviceId
            self.priority = priority
            self.canaryRule = canaryRule
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case serviceId = "ServiceId"
            case priority = "Priority"
            case canaryRule = "CanaryRule"
        }
    }

    /// ModifyCloudNativeAPIGatewayCanaryRule返回参数结构体
    public struct ModifyCloudNativeAPIGatewayCanaryRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云原生网关的灰度规则
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayCanaryRule(_ input: ModifyCloudNativeAPIGatewayCanaryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayCanaryRuleResponse> {
        self.client.execute(action: "ModifyCloudNativeAPIGatewayCanaryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关的灰度规则
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayCanaryRule(_ input: ModifyCloudNativeAPIGatewayCanaryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayCanaryRuleResponse {
        try await self.client.execute(action: "ModifyCloudNativeAPIGatewayCanaryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云原生网关的灰度规则
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayCanaryRule(gatewayId: String, serviceId: String, priority: Int64, canaryRule: CloudNativeAPIGatewayCanaryRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayCanaryRuleResponse> {
        self.modifyCloudNativeAPIGatewayCanaryRule(.init(gatewayId: gatewayId, serviceId: serviceId, priority: priority, canaryRule: canaryRule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关的灰度规则
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayCanaryRule(gatewayId: String, serviceId: String, priority: Int64, canaryRule: CloudNativeAPIGatewayCanaryRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayCanaryRuleResponse {
        try await self.modifyCloudNativeAPIGatewayCanaryRule(.init(gatewayId: gatewayId, serviceId: serviceId, priority: priority, canaryRule: canaryRule), region: region, logger: logger, on: eventLoop)
    }
}