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

extension Waf {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 容量
        public let limit: UInt64

        /// 过滤数组
        public let filters: [FiltersItemNew]?

        public init(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// instance列表
        public let instances: [InstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceInfo`` list from the paginated response.
        public func getItems() -> [InstanceInfo] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询用户所有实例的详细信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户所有实例的详细信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户所有实例的详细信息
    @inlinable
    public func describeInstances(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户所有实例的详细信息
    @inlinable
    public func describeInstances(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户所有实例的详细信息
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询用户所有实例的详细信息
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户所有实例的详细信息
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceInfo`` and ``DescribeInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
