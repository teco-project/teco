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

extension Clb {
    /// DescribeLoadBalancerTraffic请求参数结构体
    public struct DescribeLoadBalancerTrafficRequest: TCRequestModel {
        /// 负载均衡所在地域，不传默认返回所有地域负载均衡。
        public let loadBalancerRegion: String?

        public init(loadBalancerRegion: String? = nil) {
            self.loadBalancerRegion = loadBalancerRegion
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerRegion = "LoadBalancerRegion"
        }
    }

    /// DescribeLoadBalancerTraffic返回参数结构体
    public struct DescribeLoadBalancerTrafficResponse: TCResponseModel {
        /// 按出带宽从高到低排序后的负载均衡信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerTraffic: [LoadBalancerTraffic]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancerTraffic = "LoadBalancerTraffic"
            case requestId = "RequestId"
        }
    }

    /// 查询账号下高流量负载均衡
    ///
    /// 查询账号下的高流量负载均衡，返回前10个负载均衡。如果是子账号登录，只返回子账号有权限的负载均衡。
    @inlinable
    public func describeLoadBalancerTraffic(_ input: DescribeLoadBalancerTrafficRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerTrafficResponse> {
        self.client.execute(action: "DescribeLoadBalancerTraffic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号下高流量负载均衡
    ///
    /// 查询账号下的高流量负载均衡，返回前10个负载均衡。如果是子账号登录，只返回子账号有权限的负载均衡。
    @inlinable
    public func describeLoadBalancerTraffic(_ input: DescribeLoadBalancerTrafficRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerTrafficResponse {
        try await self.client.execute(action: "DescribeLoadBalancerTraffic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号下高流量负载均衡
    ///
    /// 查询账号下的高流量负载均衡，返回前10个负载均衡。如果是子账号登录，只返回子账号有权限的负载均衡。
    @inlinable
    public func describeLoadBalancerTraffic(loadBalancerRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerTrafficResponse> {
        self.describeLoadBalancerTraffic(DescribeLoadBalancerTrafficRequest(loadBalancerRegion: loadBalancerRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号下高流量负载均衡
    ///
    /// 查询账号下的高流量负载均衡，返回前10个负载均衡。如果是子账号登录，只返回子账号有权限的负载均衡。
    @inlinable
    public func describeLoadBalancerTraffic(loadBalancerRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerTrafficResponse {
        try await self.describeLoadBalancerTraffic(DescribeLoadBalancerTrafficRequest(loadBalancerRegion: loadBalancerRegion), region: region, logger: logger, on: eventLoop)
    }
}
