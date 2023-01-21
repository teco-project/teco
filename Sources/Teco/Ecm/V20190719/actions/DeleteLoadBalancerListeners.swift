//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ecm {
    /// DeleteLoadBalancerListeners请求参数结构体
    public struct DeleteLoadBalancerListenersRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String

        /// 指定删除的监听器ID数组，若不填则删除负载均衡的所有监听器
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

    /// DeleteLoadBalancerListeners返回参数结构体
    public struct DeleteLoadBalancerListenersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除负载均衡多个监听器
    @inlinable @discardableResult
    public func deleteLoadBalancerListeners(_ input: DeleteLoadBalancerListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerListenersResponse> {
        self.client.execute(action: "DeleteLoadBalancerListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡多个监听器
    @inlinable @discardableResult
    public func deleteLoadBalancerListeners(_ input: DeleteLoadBalancerListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerListenersResponse {
        try await self.client.execute(action: "DeleteLoadBalancerListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除负载均衡多个监听器
    @inlinable @discardableResult
    public func deleteLoadBalancerListeners(loadBalancerId: String, listenerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerListenersResponse> {
        self.deleteLoadBalancerListeners(DeleteLoadBalancerListenersRequest(loadBalancerId: loadBalancerId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡多个监听器
    @inlinable @discardableResult
    public func deleteLoadBalancerListeners(loadBalancerId: String, listenerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerListenersResponse {
        try await self.deleteLoadBalancerListeners(DeleteLoadBalancerListenersRequest(loadBalancerId: loadBalancerId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }
}
