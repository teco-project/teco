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
import TecoPaginationHelpers

extension Tse {
    /// DescribeCloudNativeAPIGatewayRoutes请求参数结构体
    public struct DescribeCloudNativeAPIGatewayRoutesRequest: TCPaginatedRequest {
        /// 网关ID
        public let gatewayId: String

        /// 翻页单页查询限制数量[0,1000], 默认值0
        public let limit: Int64?

        /// 翻页单页偏移量，默认值0
        public let offset: Int64?

        /// 服务的名字，精确匹配
        public let serviceName: String?

        /// 路由的名字，精确匹配
        public let routeName: String?

        /// 过滤条件，多个过滤条件之间是与的关系，支持 name, path, host, method, service, protocol
        public let filters: [ListFilter]?

        public init(gatewayId: String, limit: Int64? = nil, offset: Int64? = nil, serviceName: String? = nil, routeName: String? = nil, filters: [ListFilter]? = nil) {
            self.gatewayId = gatewayId
            self.limit = limit
            self.offset = offset
            self.serviceName = serviceName
            self.routeName = routeName
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case limit = "Limit"
            case offset = "Offset"
            case serviceName = "ServiceName"
            case routeName = "RouteName"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudNativeAPIGatewayRoutesResponse) -> DescribeCloudNativeAPIGatewayRoutesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCloudNativeAPIGatewayRoutesRequest(gatewayId: self.gatewayId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), serviceName: self.serviceName, routeName: self.routeName, filters: self.filters)
        }
    }

    /// DescribeCloudNativeAPIGatewayRoutes返回参数结构体
    public struct DescribeCloudNativeAPIGatewayRoutesResponse: TCPaginatedResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: KongServiceRouteList?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``KongRoutePreview`` list from the paginated response.
        public func getItems() -> [KongRoutePreview] {
            self.result?.routeList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询云原生网关路由列表
    @inlinable
    public func describeCloudNativeAPIGatewayRoutes(_ input: DescribeCloudNativeAPIGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayRoutesResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关路由列表
    @inlinable
    public func describeCloudNativeAPIGatewayRoutes(_ input: DescribeCloudNativeAPIGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayRoutesResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云原生网关路由列表
    @inlinable
    public func describeCloudNativeAPIGatewayRoutes(gatewayId: String, limit: Int64? = nil, offset: Int64? = nil, serviceName: String? = nil, routeName: String? = nil, filters: [ListFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayRoutesResponse> {
        self.describeCloudNativeAPIGatewayRoutes(.init(gatewayId: gatewayId, limit: limit, offset: offset, serviceName: serviceName, routeName: routeName, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关路由列表
    @inlinable
    public func describeCloudNativeAPIGatewayRoutes(gatewayId: String, limit: Int64? = nil, offset: Int64? = nil, serviceName: String? = nil, routeName: String? = nil, filters: [ListFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayRoutesResponse {
        try await self.describeCloudNativeAPIGatewayRoutes(.init(gatewayId: gatewayId, limit: limit, offset: offset, serviceName: serviceName, routeName: routeName, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关路由列表
    @inlinable
    public func describeCloudNativeAPIGatewayRoutesPaginated(_ input: DescribeCloudNativeAPIGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KongRoutePreview])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayRoutes, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关路由列表
    @inlinable @discardableResult
    public func describeCloudNativeAPIGatewayRoutesPaginated(_ input: DescribeCloudNativeAPIGatewayRoutesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudNativeAPIGatewayRoutesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayRoutes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关路由列表
    ///
    /// - Returns: `AsyncSequence`s of ``KongRoutePreview`` and ``DescribeCloudNativeAPIGatewayRoutesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudNativeAPIGatewayRoutesPaginator(_ input: DescribeCloudNativeAPIGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudNativeAPIGatewayRoutesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudNativeAPIGatewayRoutes, logger: logger, on: eventLoop)
    }
}
