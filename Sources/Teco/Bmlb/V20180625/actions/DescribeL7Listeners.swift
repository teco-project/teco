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
    /// DescribeL7Listeners请求参数结构体
    public struct DescribeL7ListenersRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 七层监听器实例ID列表，可通过接口DescribeL7Listeners查询。
        public let listenerIds: [String]?

        public init(loadBalancerId: String, listenerIds: [String]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerIds = listenerIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerIds = "ListenerIds"
        }
    }

    /// DescribeL7Listeners返回参数结构体
    public struct DescribeL7ListenersResponse: TCResponse {
        /// 返回的七层监听器列表。
        public let listenerSet: [L7Listener]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }
    }

    /// 获取黑石负载均衡七层监听器列表信息
    ///
    /// 获取黑石负载均衡七层监听器列表信息。
    @inlinable
    public func describeL7Listeners(_ input: DescribeL7ListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenersResponse> {
        self.client.execute(action: "DescribeL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡七层监听器列表信息
    ///
    /// 获取黑石负载均衡七层监听器列表信息。
    @inlinable
    public func describeL7Listeners(_ input: DescribeL7ListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenersResponse {
        try await self.client.execute(action: "DescribeL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑石负载均衡七层监听器列表信息
    ///
    /// 获取黑石负载均衡七层监听器列表信息。
    @inlinable
    public func describeL7Listeners(loadBalancerId: String, listenerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenersResponse> {
        self.describeL7Listeners(.init(loadBalancerId: loadBalancerId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡七层监听器列表信息
    ///
    /// 获取黑石负载均衡七层监听器列表信息。
    @inlinable
    public func describeL7Listeners(loadBalancerId: String, listenerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenersResponse {
        try await self.describeL7Listeners(.init(loadBalancerId: loadBalancerId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }
}
