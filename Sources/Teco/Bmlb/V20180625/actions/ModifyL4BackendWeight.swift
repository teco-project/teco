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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Bmlb {
    /// ModifyL4BackendWeight请求参数结构体
    public struct ModifyL4BackendWeightRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        public let listenerId: String

        /// 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        public let instanceId: String

        /// 权重信息，可选值0~100。
        public let weight: Int64

        /// 已绑定的主机端口。
        public let port: Int64

        /// 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        public let bindType: Int64

        public init(loadBalancerId: String, listenerId: String, instanceId: String, weight: Int64, port: Int64, bindType: Int64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.instanceId = instanceId
            self.weight = weight
            self.port = port
            self.bindType = bindType
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case instanceId = "InstanceId"
            case weight = "Weight"
            case port = "Port"
            case bindType = "BindType"
        }
    }

    /// ModifyL4BackendWeight返回参数结构体
    public struct ModifyL4BackendWeightResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改黑石负载均衡四层监听器后端实例权重
    ///
    /// 修改黑石负载均衡四层监听器后端实例权重功能。
    @inlinable
    public func modifyL4BackendWeight(_ input: ModifyL4BackendWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4BackendWeightResponse> {
        self.client.execute(action: "ModifyL4BackendWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器后端实例权重
    ///
    /// 修改黑石负载均衡四层监听器后端实例权重功能。
    @inlinable
    public func modifyL4BackendWeight(_ input: ModifyL4BackendWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4BackendWeightResponse {
        try await self.client.execute(action: "ModifyL4BackendWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石负载均衡四层监听器后端实例权重
    ///
    /// 修改黑石负载均衡四层监听器后端实例权重功能。
    @inlinable
    public func modifyL4BackendWeight(loadBalancerId: String, listenerId: String, instanceId: String, weight: Int64, port: Int64, bindType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4BackendWeightResponse> {
        self.modifyL4BackendWeight(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, instanceId: instanceId, weight: weight, port: port, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器后端实例权重
    ///
    /// 修改黑石负载均衡四层监听器后端实例权重功能。
    @inlinable
    public func modifyL4BackendWeight(loadBalancerId: String, listenerId: String, instanceId: String, weight: Int64, port: Int64, bindType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4BackendWeightResponse {
        try await self.modifyL4BackendWeight(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, instanceId: instanceId, weight: weight, port: port, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }
}
