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

extension Clb {
    /// ModifyLoadBalancerSla请求参数结构体
    public struct ModifyLoadBalancerSlaRequest: TCRequest {
        /// 负载均衡实例信息。
        public let loadBalancerSla: [SlaUpdateParam]

        public init(loadBalancerSla: [SlaUpdateParam]) {
            self.loadBalancerSla = loadBalancerSla
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerSla = "LoadBalancerSla"
        }
    }

    /// ModifyLoadBalancerSla返回参数结构体
    public struct ModifyLoadBalancerSlaResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 升级为性能容量型实例
    ///
    /// 本接口（ModifyLoadBalancerSla）用于将按量计费模式的共享型实例升级为性能容量型实例。
    ///
    /// 限制条件：
    /// - 本接口只支持升级按量计费的CLB实例，包年包月的CLB实例升级请通过控制台进行升级。
    /// - 升级为性能容量型实例后，不支持再回退到共享型实例。
    /// - 传统型负载均衡实例不支持升级为性能容量型实例。
    @inlinable @discardableResult
    public func modifyLoadBalancerSla(_ input: ModifyLoadBalancerSlaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerSlaResponse> {
        self.client.execute(action: "ModifyLoadBalancerSla", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级为性能容量型实例
    ///
    /// 本接口（ModifyLoadBalancerSla）用于将按量计费模式的共享型实例升级为性能容量型实例。
    ///
    /// 限制条件：
    /// - 本接口只支持升级按量计费的CLB实例，包年包月的CLB实例升级请通过控制台进行升级。
    /// - 升级为性能容量型实例后，不支持再回退到共享型实例。
    /// - 传统型负载均衡实例不支持升级为性能容量型实例。
    @inlinable @discardableResult
    public func modifyLoadBalancerSla(_ input: ModifyLoadBalancerSlaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerSlaResponse {
        try await self.client.execute(action: "ModifyLoadBalancerSla", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级为性能容量型实例
    ///
    /// 本接口（ModifyLoadBalancerSla）用于将按量计费模式的共享型实例升级为性能容量型实例。
    ///
    /// 限制条件：
    /// - 本接口只支持升级按量计费的CLB实例，包年包月的CLB实例升级请通过控制台进行升级。
    /// - 升级为性能容量型实例后，不支持再回退到共享型实例。
    /// - 传统型负载均衡实例不支持升级为性能容量型实例。
    @inlinable @discardableResult
    public func modifyLoadBalancerSla(loadBalancerSla: [SlaUpdateParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerSlaResponse> {
        self.modifyLoadBalancerSla(.init(loadBalancerSla: loadBalancerSla), region: region, logger: logger, on: eventLoop)
    }

    /// 升级为性能容量型实例
    ///
    /// 本接口（ModifyLoadBalancerSla）用于将按量计费模式的共享型实例升级为性能容量型实例。
    ///
    /// 限制条件：
    /// - 本接口只支持升级按量计费的CLB实例，包年包月的CLB实例升级请通过控制台进行升级。
    /// - 升级为性能容量型实例后，不支持再回退到共享型实例。
    /// - 传统型负载均衡实例不支持升级为性能容量型实例。
    @inlinable @discardableResult
    public func modifyLoadBalancerSla(loadBalancerSla: [SlaUpdateParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerSlaResponse {
        try await self.modifyLoadBalancerSla(.init(loadBalancerSla: loadBalancerSla), region: region, logger: logger, on: eventLoop)
    }
}
