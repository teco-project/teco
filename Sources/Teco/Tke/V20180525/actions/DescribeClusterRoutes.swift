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

extension Tke {
    /// DescribeClusterRoutes请求参数结构体
    public struct DescribeClusterRoutesRequest: TCRequestModel {
        /// 路由表名称。
        public let routeTableName: String

        /// 过滤条件,当前只支持按照单个条件GatewayIP进行过滤（可选）
        public let filters: [Filter]?

        public init(routeTableName: String, filters: [Filter]? = nil) {
            self.routeTableName = routeTableName
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case routeTableName = "RouteTableName"
            case filters = "Filters"
        }
    }

    /// DescribeClusterRoutes返回参数结构体
    public struct DescribeClusterRoutesResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: Int64

        /// 集群路由对象。
        public let routeSet: [RouteInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeSet = "RouteSet"
            case requestId = "RequestId"
        }
    }

    /// 查询集群路由
    @inlinable
    public func describeClusterRoutes(_ input: DescribeClusterRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRoutesResponse> {
        self.client.execute(action: "DescribeClusterRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群路由
    @inlinable
    public func describeClusterRoutes(_ input: DescribeClusterRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRoutesResponse {
        try await self.client.execute(action: "DescribeClusterRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群路由
    @inlinable
    public func describeClusterRoutes(routeTableName: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRoutesResponse> {
        self.describeClusterRoutes(.init(routeTableName: routeTableName, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群路由
    @inlinable
    public func describeClusterRoutes(routeTableName: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRoutesResponse {
        try await self.describeClusterRoutes(.init(routeTableName: routeTableName, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
