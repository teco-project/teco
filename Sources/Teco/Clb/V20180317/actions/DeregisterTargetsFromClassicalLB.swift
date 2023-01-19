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

extension Clb {
    /// DeregisterTargetsFromClassicalLB请求参数结构体
    public struct DeregisterTargetsFromClassicalLBRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 后端服务的实例ID列表。
        public let instanceIds: [String]

        public init(loadBalancerId: String, instanceIds: [String]) {
            self.loadBalancerId = loadBalancerId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case instanceIds = "InstanceIds"
        }
    }

    /// DeregisterTargetsFromClassicalLB返回参数结构体
    public struct DeregisterTargetsFromClassicalLBResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑传统型负载均衡的后端服务器
    ///
    /// DeregisterTargetsFromClassicalLB 接口用于解绑负载均衡后端服务。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func deregisterTargetsFromClassicalLB(_ input: DeregisterTargetsFromClassicalLBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTargetsFromClassicalLBResponse> {
        self.client.execute(action: "DeregisterTargetsFromClassicalLB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑传统型负载均衡的后端服务器
    ///
    /// DeregisterTargetsFromClassicalLB 接口用于解绑负载均衡后端服务。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func deregisterTargetsFromClassicalLB(_ input: DeregisterTargetsFromClassicalLBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterTargetsFromClassicalLBResponse {
        try await self.client.execute(action: "DeregisterTargetsFromClassicalLB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑传统型负载均衡的后端服务器
    ///
    /// DeregisterTargetsFromClassicalLB 接口用于解绑负载均衡后端服务。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func deregisterTargetsFromClassicalLB(loadBalancerId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTargetsFromClassicalLBResponse> {
        self.deregisterTargetsFromClassicalLB(DeregisterTargetsFromClassicalLBRequest(loadBalancerId: loadBalancerId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑传统型负载均衡的后端服务器
    ///
    /// DeregisterTargetsFromClassicalLB 接口用于解绑负载均衡后端服务。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func deregisterTargetsFromClassicalLB(loadBalancerId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterTargetsFromClassicalLBResponse {
        try await self.deregisterTargetsFromClassicalLB(DeregisterTargetsFromClassicalLBRequest(loadBalancerId: loadBalancerId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
