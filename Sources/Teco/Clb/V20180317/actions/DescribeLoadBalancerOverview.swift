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

import TecoCore

extension Clb {
    /// DescribeLoadBalancerOverview请求参数结构体
    public struct DescribeLoadBalancerOverviewRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLoadBalancerOverview返回参数结构体
    public struct DescribeLoadBalancerOverviewResponse: TCResponseModel {
        /// 负载均衡总数
        public let totalCount: Int64

        /// 运行中的负载均衡数目
        public let runningCount: Int64

        /// 隔离中的负载均衡数目
        public let isolationCount: Int64

        /// 即将到期的负载均衡数目
        public let willExpireCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case runningCount = "RunningCount"
            case isolationCount = "IsolationCount"
            case willExpireCount = "WillExpireCount"
            case requestId = "RequestId"
        }
    }

    /// 查询负载均衡状态统计数据
    ///
    /// 查询运行中、隔离中、即将到期和负载均衡总数。
    @inlinable
    public func describeLoadBalancerOverview(_ input: DescribeLoadBalancerOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerOverviewResponse> {
        self.client.execute(action: "DescribeLoadBalancerOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡状态统计数据
    ///
    /// 查询运行中、隔离中、即将到期和负载均衡总数。
    @inlinable
    public func describeLoadBalancerOverview(_ input: DescribeLoadBalancerOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerOverviewResponse {
        try await self.client.execute(action: "DescribeLoadBalancerOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡状态统计数据
    ///
    /// 查询运行中、隔离中、即将到期和负载均衡总数。
    @inlinable
    public func describeLoadBalancerOverview(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerOverviewResponse> {
        self.describeLoadBalancerOverview(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡状态统计数据
    ///
    /// 查询运行中、隔离中、即将到期和负载均衡总数。
    @inlinable
    public func describeLoadBalancerOverview(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerOverviewResponse {
        try await self.describeLoadBalancerOverview(.init(), region: region, logger: logger, on: eventLoop)
    }
}
