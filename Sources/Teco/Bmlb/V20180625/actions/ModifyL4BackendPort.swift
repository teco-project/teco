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

extension Bmlb {
    /// ModifyL4BackendPort请求参数结构体
    public struct ModifyL4BackendPortRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        public let listenerId: String

        /// 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        public let instanceId: String

        /// 已绑定的主机端口。
        public let port: Int64

        /// 新的主机端口，可选值1~65535。
        public let newPort: Int64

        /// 绑定类型。0：物理机  1：虚拟机 2：半托管机器
        public let bindType: Int64

        public init(loadBalancerId: String, listenerId: String, instanceId: String, port: Int64, newPort: Int64, bindType: Int64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.instanceId = instanceId
            self.port = port
            self.newPort = newPort
            self.bindType = bindType
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case instanceId = "InstanceId"
            case port = "Port"
            case newPort = "NewPort"
            case bindType = "BindType"
        }
    }

    /// ModifyL4BackendPort返回参数结构体
    public struct ModifyL4BackendPortResponse: TCResponse {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改黑石负载均衡四层监听器后端实例端口
    ///
    /// 修改黑石负载均衡四层监听器后端实例端口。
    @inlinable
    public func modifyL4BackendPort(_ input: ModifyL4BackendPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4BackendPortResponse> {
        self.client.execute(action: "ModifyL4BackendPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器后端实例端口
    ///
    /// 修改黑石负载均衡四层监听器后端实例端口。
    @inlinable
    public func modifyL4BackendPort(_ input: ModifyL4BackendPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4BackendPortResponse {
        try await self.client.execute(action: "ModifyL4BackendPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石负载均衡四层监听器后端实例端口
    ///
    /// 修改黑石负载均衡四层监听器后端实例端口。
    @inlinable
    public func modifyL4BackendPort(loadBalancerId: String, listenerId: String, instanceId: String, port: Int64, newPort: Int64, bindType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4BackendPortResponse> {
        self.modifyL4BackendPort(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, instanceId: instanceId, port: port, newPort: newPort, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器后端实例端口
    ///
    /// 修改黑石负载均衡四层监听器后端实例端口。
    @inlinable
    public func modifyL4BackendPort(loadBalancerId: String, listenerId: String, instanceId: String, port: Int64, newPort: Int64, bindType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4BackendPortResponse {
        try await self.modifyL4BackendPort(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, instanceId: instanceId, port: port, newPort: newPort, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }
}
