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

extension Bmlb {
    /// DeleteLoadBalancer请求参数结构体
    public struct DeleteLoadBalancerRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        public init(loadBalancerId: String) {
            self.loadBalancerId = loadBalancerId
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
        }
    }

    /// DeleteLoadBalancer返回参数结构体
    public struct DeleteLoadBalancerResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除用户指定的黑石负载均衡实例
    ///
    /// 删除用户指定的黑石负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerResponse> {
        self.client.execute(action: "DeleteLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户指定的黑石负载均衡实例
    ///
    /// 删除用户指定的黑石负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerResponse {
        try await self.client.execute(action: "DeleteLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户指定的黑石负载均衡实例
    ///
    /// 删除用户指定的黑石负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(loadBalancerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerResponse> {
        self.deleteLoadBalancer(DeleteLoadBalancerRequest(loadBalancerId: loadBalancerId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户指定的黑石负载均衡实例
    ///
    /// 删除用户指定的黑石负载均衡实例。
    @inlinable
    public func deleteLoadBalancer(loadBalancerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerResponse {
        try await self.deleteLoadBalancer(DeleteLoadBalancerRequest(loadBalancerId: loadBalancerId), region: region, logger: logger, on: eventLoop)
    }
}
