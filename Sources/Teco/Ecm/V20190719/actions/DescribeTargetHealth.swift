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

extension Ecm {
    /// DescribeTargetHealth请求参数结构体
    public struct DescribeTargetHealthRequest: TCRequestModel {
        /// 要查询的负载均衡实例 ID列表
        public let loadBalancerIds: [String]

        public init(loadBalancerIds: [String]) {
            self.loadBalancerIds = loadBalancerIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
        }
    }

    /// DescribeTargetHealth返回参数结构体
    public struct DescribeTargetHealthResponse: TCResponseModel {
        /// 负载均衡实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancers: [LoadBalancerHealth]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancers = "LoadBalancers"
            case requestId = "RequestId"
        }
    }

    /// 获取负载均衡后端服务的健康检查状态
    ///
    /// 获取负载均衡后端服务的健康检查状态。
    @inlinable
    public func describeTargetHealth(_ input: DescribeTargetHealthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetHealthResponse> {
        self.client.execute(action: "DescribeTargetHealth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡后端服务的健康检查状态
    ///
    /// 获取负载均衡后端服务的健康检查状态。
    @inlinable
    public func describeTargetHealth(_ input: DescribeTargetHealthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetHealthResponse {
        try await self.client.execute(action: "DescribeTargetHealth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡后端服务的健康检查状态
    ///
    /// 获取负载均衡后端服务的健康检查状态。
    @inlinable
    public func describeTargetHealth(loadBalancerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetHealthResponse> {
        self.describeTargetHealth(.init(loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡后端服务的健康检查状态
    ///
    /// 获取负载均衡后端服务的健康检查状态。
    @inlinable
    public func describeTargetHealth(loadBalancerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetHealthResponse {
        try await self.describeTargetHealth(.init(loadBalancerIds: loadBalancerIds), region: region, logger: logger, on: eventLoop)
    }
}
