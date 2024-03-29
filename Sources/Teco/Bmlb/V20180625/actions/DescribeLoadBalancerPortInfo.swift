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
    /// DescribeLoadBalancerPortInfo请求参数结构体
    public struct DescribeLoadBalancerPortInfoRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        public init(loadBalancerId: String) {
            self.loadBalancerId = loadBalancerId
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
        }
    }

    /// DescribeLoadBalancerPortInfo返回参数结构体
    public struct DescribeLoadBalancerPortInfoResponse: TCResponse {
        /// 返回的监听器列表（四层和七层）。
        public let listenerSet: [LoadBalancerPortInfoListener]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }
    }

    /// 获取黑石负载均衡端口相关信息
    ///
    /// 获取黑石负载均衡端口相关信息。
    @inlinable
    public func describeLoadBalancerPortInfo(_ input: DescribeLoadBalancerPortInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerPortInfoResponse> {
        self.client.execute(action: "DescribeLoadBalancerPortInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡端口相关信息
    ///
    /// 获取黑石负载均衡端口相关信息。
    @inlinable
    public func describeLoadBalancerPortInfo(_ input: DescribeLoadBalancerPortInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerPortInfoResponse {
        try await self.client.execute(action: "DescribeLoadBalancerPortInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑石负载均衡端口相关信息
    ///
    /// 获取黑石负载均衡端口相关信息。
    @inlinable
    public func describeLoadBalancerPortInfo(loadBalancerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerPortInfoResponse> {
        self.describeLoadBalancerPortInfo(.init(loadBalancerId: loadBalancerId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡端口相关信息
    ///
    /// 获取黑石负载均衡端口相关信息。
    @inlinable
    public func describeLoadBalancerPortInfo(loadBalancerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerPortInfoResponse {
        try await self.describeLoadBalancerPortInfo(.init(loadBalancerId: loadBalancerId), region: region, logger: logger, on: eventLoop)
    }
}
