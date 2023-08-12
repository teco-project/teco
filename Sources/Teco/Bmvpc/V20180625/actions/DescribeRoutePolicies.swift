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

extension Bmvpc {
    /// DescribeRoutePolicies请求参数结构体
    public struct DescribeRoutePoliciesRequest: TCPaginatedRequest {
        /// 路由表实例ID，例如：rtb-afg8md3c。
        public let routeTableId: String

        /// 路由策略实例ID，例如：rti-azd4dt1c。
        public let routePolicyIds: [String]?

        /// 过滤条件，参数不支持同时指定RoutePolicyIds和Filters。
        /// route-table-id - String - （过滤条件）路由表实例ID。
        /// vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// route-policy-id - String - （过滤条件）路由策略ID。
        /// route-policy-description-like - String -（过滤条件）路由项备注。
        /// route-policy-type - String - （过滤条件）路由项策略类型。
        /// destination-cidr-like - String - （过滤条件）路由项目的地址。
        /// gateway-id-like - String - （过滤条件）路由项下一跳网关。
        /// gateway-type - String - （过滤条件）路由项下一条网关类型。
        /// enable - Bool - （过滤条件）路由策略是否启用。
        public let filters: [Filter]?

        /// 初始行的偏移量，默认为0。
        public let offset: UInt64?

        /// 每页行数，默认为20。
        public let limit: UInt64?

        public init(routeTableId: String, routePolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.routeTableId = routeTableId
            self.routePolicyIds = routePolicyIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routePolicyIds = "RoutePolicyIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRoutePoliciesResponse) -> DescribeRoutePoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRoutePoliciesRequest(routeTableId: self.routeTableId, routePolicyIds: self.routePolicyIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRoutePolicies返回参数结构体
    public struct DescribeRoutePoliciesResponse: TCPaginatedResponse {
        /// 路由策略数
        public let totalCount: UInt64

        /// 路由策略列表
        public let routePolicySet: [RoutePolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routePolicySet = "RoutePolicySet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RoutePolicy`` list from the paginated response.
        public func getItems() -> [RoutePolicy] {
            self.routePolicySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable
    public func describeRoutePolicies(_ input: DescribeRoutePoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoutePoliciesResponse> {
        self.client.execute(action: "DescribeRoutePolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable
    public func describeRoutePolicies(_ input: DescribeRoutePoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoutePoliciesResponse {
        try await self.client.execute(action: "DescribeRoutePolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable
    public func describeRoutePolicies(routeTableId: String, routePolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoutePoliciesResponse> {
        self.describeRoutePolicies(.init(routeTableId: routeTableId, routePolicyIds: routePolicyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable
    public func describeRoutePolicies(routeTableId: String, routePolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoutePoliciesResponse {
        try await self.describeRoutePolicies(.init(routeTableId: routeTableId, routePolicyIds: routePolicyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable
    public func describeRoutePoliciesPaginated(_ input: DescribeRoutePoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RoutePolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeRoutePolicies, logger: logger, on: eventLoop)
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    @inlinable @discardableResult
    public func describeRoutePoliciesPaginated(_ input: DescribeRoutePoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRoutePoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRoutePolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询黑石路由表条目
    ///
    /// 本接口（DescribeRoutePolicies）用于查询路由表条目。
    ///
    /// - Returns: `AsyncSequence`s of `RoutePolicy` and `DescribeRoutePoliciesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRoutePoliciesPaginator(_ input: DescribeRoutePoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRoutePoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRoutePolicies, logger: logger, on: eventLoop)
    }
}
