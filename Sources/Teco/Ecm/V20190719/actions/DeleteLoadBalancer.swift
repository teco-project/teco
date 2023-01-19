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
    /// DeleteLoadBalancer请求参数结构体
    public struct DeleteLoadBalancerRequest: TCRequestModel {
        /// 要删除的负载均衡实例 ID数组，数组大小最大支持20
        public let loadBalancerIds: [String]?

        public init(loadBalancerIds: [String]? = nil) {
            self.loadBalancerIds = loadBalancerIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
        }
    }

    /// DeleteLoadBalancer返回参数结构体
    public struct DeleteLoadBalancerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除负载均衡实例
    ///
    /// 删除负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerResponse> {
        self.client.execute(action: "DeleteLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡实例
    ///
    /// 删除负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerResponse {
        try await self.client.execute(action: "DeleteLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除负载均衡实例
    ///
    /// 删除负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(loadBalancerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerResponse> {
        self.deleteLoadBalancer(DeleteLoadBalancerRequest(loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡实例
    ///
    /// 删除负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(loadBalancerIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerResponse {
        try await self.deleteLoadBalancer(DeleteLoadBalancerRequest(loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }
}
