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
import TecoPaginationHelpers

extension Bmvpc {
    /// DescribeSubnets请求参数结构体
    public struct DescribeSubnetsRequest: TCPaginatedRequest {
        /// 子网实例ID查询。形如：subnet-pxir56ns。参数不支持同时指定SubnetIds和Filters。
        public let subnetIds: [String]?

        /// 过滤条件，参数不支持同时指定SubnetIds和Filters。
        /// subnet-id - String - （过滤条件）Subnet实例名称。
        /// vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// cidr-block - String - （过滤条件）vpc的cidr。
        /// subnet-name - String - （过滤条件）子网名称。
        /// zone - String - （过滤条件）可用区。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        /// 排序字段, 支持按“CreateTime”，“VlanId”
        public let orderField: String?

        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?

        public init(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.subnetIds = subnetIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case subnetIds = "SubnetIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubnetsResponse) -> DescribeSubnetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSubnetsRequest(subnetIds: self.subnetIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeSubnets返回参数结构体
    public struct DescribeSubnetsResponse: TCPaginatedResponse {
        /// 子网列表信息
        public let subnetSet: [SubnetInfo]

        /// 返回的子网总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subnetSet = "SubnetSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SubnetInfo] {
            self.subnetSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable
    public func describeSubnets(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetsResponse> {
        self.client.execute(action: "DescribeSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable
    public func describeSubnets(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetsResponse {
        try await self.client.execute(action: "DescribeSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable
    public func describeSubnets(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetsResponse> {
        self.describeSubnets(.init(subnetIds: subnetIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable
    public func describeSubnets(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetsResponse {
        try await self.describeSubnets(.init(subnetIds: subnetIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable
    public func describeSubnetsPaginated(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SubnetInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSubnets, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    @inlinable @discardableResult
    public func describeSubnetsPaginated(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubnetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubnets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询黑石子网列表。
    ///
    /// - Returns: `AsyncSequence`s of `SubnetInfo` and `DescribeSubnetsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubnetsPaginator(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubnetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubnets, logger: logger, on: eventLoop)
    }
}
