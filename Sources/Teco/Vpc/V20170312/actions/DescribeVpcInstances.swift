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

extension Vpc {
    /// DescribeVpcInstances请求参数结构体
    public struct DescribeVpcInstancesRequest: TCPaginatedRequest {
        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// - vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// - instance-id - String - （过滤条件）云主机实例ID。
        /// - instance-name - String - （过滤条件）云主机名称。
        public let filters: [Filter]

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcInstancesResponse) -> DescribeVpcInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpcInstancesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeVpcInstances返回参数结构体
    public struct DescribeVpcInstancesResponse: TCPaginatedResponse {
        /// 云主机实例列表。
        public let instanceSet: [CvmInstance]

        /// 满足条件的云主机实例个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CvmInstance`` list from the paginated response.
        public func getItems() -> [CvmInstance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcInstancesResponse> {
        self.client.execute(action: "DescribeVpcInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcInstancesResponse {
        try await self.client.execute(action: "DescribeVpcInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcInstancesResponse> {
        self.describeVpcInstances(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcInstancesResponse {
        try await self.describeVpcInstances(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstancesPaginated(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CvmInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcInstances, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable @discardableResult
    public func describeVpcInstancesPaginated(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    /// 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    ///
    /// - Returns: `AsyncSequence`s of ``CvmInstance`` and ``DescribeVpcInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcInstancesPaginator(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcInstances, logger: logger, on: eventLoop)
    }
}
