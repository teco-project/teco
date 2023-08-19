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
    /// BindL7Backends请求参数结构体
    public struct BindL7BackendsRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String

        /// 转发域名实例ID，可通过接口DescribeL7Rules查询。
        public let domainId: String

        /// 转发路径实例ID，可通过接口DescribeL7Rules查询。
        public let locationId: String

        /// 待绑定的主机信息。可以绑定多个主机端口。目前一个七层转发路径下面最多允许绑定255个主机端口。
        public let backendSet: [BindL7Backend]

        /// 绑定类型。0：物理机，1：虚拟机 2：半托管机器。
        public let bindType: UInt64

        public init(loadBalancerId: String, listenerId: String, domainId: String, locationId: String, backendSet: [BindL7Backend], bindType: UInt64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainId = domainId
            self.locationId = locationId
            self.backendSet = backendSet
            self.bindType = bindType
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainId = "DomainId"
            case locationId = "LocationId"
            case backendSet = "BackendSet"
            case bindType = "BindType"
        }
    }

    /// BindL7Backends返回参数结构体
    public struct BindL7BackendsResponse: TCResponse {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 绑定黑石物理服务器或半托管服务器到七层转发路径
    ///
    /// 绑定黑石物理服务器或半托管服务器到七层转发路径。
    @inlinable
    public func bindL7Backends(_ input: BindL7BackendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindL7BackendsResponse> {
        self.client.execute(action: "BindL7Backends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定黑石物理服务器或半托管服务器到七层转发路径
    ///
    /// 绑定黑石物理服务器或半托管服务器到七层转发路径。
    @inlinable
    public func bindL7Backends(_ input: BindL7BackendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindL7BackendsResponse {
        try await self.client.execute(action: "BindL7Backends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定黑石物理服务器或半托管服务器到七层转发路径
    ///
    /// 绑定黑石物理服务器或半托管服务器到七层转发路径。
    @inlinable
    public func bindL7Backends(loadBalancerId: String, listenerId: String, domainId: String, locationId: String, backendSet: [BindL7Backend], bindType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindL7BackendsResponse> {
        self.bindL7Backends(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domainId: domainId, locationId: locationId, backendSet: backendSet, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定黑石物理服务器或半托管服务器到七层转发路径
    ///
    /// 绑定黑石物理服务器或半托管服务器到七层转发路径。
    @inlinable
    public func bindL7Backends(loadBalancerId: String, listenerId: String, domainId: String, locationId: String, backendSet: [BindL7Backend], bindType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindL7BackendsResponse {
        try await self.bindL7Backends(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domainId: domainId, locationId: locationId, backendSet: backendSet, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }
}
