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

extension Clb {
    /// MigrateClassicalLoadBalancers请求参数结构体
    public struct MigrateClassicalLoadBalancersRequest: TCRequest {
        /// 传统型负载均衡ID数组
        public let loadBalancerIds: [String]

        /// 独占集群信息
        public let exclusiveCluster: ExclusiveCluster?

        public init(loadBalancerIds: [String], exclusiveCluster: ExclusiveCluster? = nil) {
            self.loadBalancerIds = loadBalancerIds
            self.exclusiveCluster = exclusiveCluster
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case exclusiveCluster = "ExclusiveCluster"
        }
    }

    /// MigrateClassicalLoadBalancers返回参数结构体
    public struct MigrateClassicalLoadBalancersResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 传统型负载均衡迁移成(原应用型)负载均衡
    ///
    /// 本接口将传统型负载均衡迁移成(原应用型)负载均衡
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable @discardableResult
    public func migrateClassicalLoadBalancers(_ input: MigrateClassicalLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateClassicalLoadBalancersResponse> {
        self.client.execute(action: "MigrateClassicalLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 传统型负载均衡迁移成(原应用型)负载均衡
    ///
    /// 本接口将传统型负载均衡迁移成(原应用型)负载均衡
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable @discardableResult
    public func migrateClassicalLoadBalancers(_ input: MigrateClassicalLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateClassicalLoadBalancersResponse {
        try await self.client.execute(action: "MigrateClassicalLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 传统型负载均衡迁移成(原应用型)负载均衡
    ///
    /// 本接口将传统型负载均衡迁移成(原应用型)负载均衡
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable @discardableResult
    public func migrateClassicalLoadBalancers(loadBalancerIds: [String], exclusiveCluster: ExclusiveCluster? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateClassicalLoadBalancersResponse> {
        self.migrateClassicalLoadBalancers(.init(loadBalancerIds: loadBalancerIds, exclusiveCluster: exclusiveCluster), region: region, logger: logger, on: eventLoop)
    }

    /// 传统型负载均衡迁移成(原应用型)负载均衡
    ///
    /// 本接口将传统型负载均衡迁移成(原应用型)负载均衡
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable @discardableResult
    public func migrateClassicalLoadBalancers(loadBalancerIds: [String], exclusiveCluster: ExclusiveCluster? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateClassicalLoadBalancersResponse {
        try await self.migrateClassicalLoadBalancers(.init(loadBalancerIds: loadBalancerIds, exclusiveCluster: exclusiveCluster), region: region, logger: logger, on: eventLoop)
    }
}
