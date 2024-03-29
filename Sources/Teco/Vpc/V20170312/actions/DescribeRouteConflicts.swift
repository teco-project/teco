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

extension Vpc {
    /// DescribeRouteConflicts请求参数结构体
    public struct DescribeRouteConflictsRequest: TCRequest {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String

        /// 要检查的与之冲突的目的端列表。
        public let destinationCidrBlocks: [String]

        public init(routeTableId: String, destinationCidrBlocks: [String]) {
            self.routeTableId = routeTableId
            self.destinationCidrBlocks = destinationCidrBlocks
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case destinationCidrBlocks = "DestinationCidrBlocks"
        }
    }

    /// DescribeRouteConflicts返回参数结构体
    public struct DescribeRouteConflictsResponse: TCResponse {
        /// 路由策略冲突列表。
        public let routeConflictSet: [RouteConflict]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routeConflictSet = "RouteConflictSet"
            case requestId = "RequestId"
        }
    }

    /// 查询路由策略冲突列表
    ///
    /// 本接口（DescribeRouteConflicts）用于查询自定义路由策略与云联网路由策略冲突列表。
    @inlinable
    public func describeRouteConflicts(_ input: DescribeRouteConflictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteConflictsResponse> {
        self.client.execute(action: "DescribeRouteConflicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由策略冲突列表
    ///
    /// 本接口（DescribeRouteConflicts）用于查询自定义路由策略与云联网路由策略冲突列表。
    @inlinable
    public func describeRouteConflicts(_ input: DescribeRouteConflictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteConflictsResponse {
        try await self.client.execute(action: "DescribeRouteConflicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路由策略冲突列表
    ///
    /// 本接口（DescribeRouteConflicts）用于查询自定义路由策略与云联网路由策略冲突列表。
    @inlinable
    public func describeRouteConflicts(routeTableId: String, destinationCidrBlocks: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteConflictsResponse> {
        self.describeRouteConflicts(.init(routeTableId: routeTableId, destinationCidrBlocks: destinationCidrBlocks), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路由策略冲突列表
    ///
    /// 本接口（DescribeRouteConflicts）用于查询自定义路由策略与云联网路由策略冲突列表。
    @inlinable
    public func describeRouteConflicts(routeTableId: String, destinationCidrBlocks: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteConflictsResponse {
        try await self.describeRouteConflicts(.init(routeTableId: routeTableId, destinationCidrBlocks: destinationCidrBlocks), region: region, logger: logger, on: eventLoop)
    }
}
