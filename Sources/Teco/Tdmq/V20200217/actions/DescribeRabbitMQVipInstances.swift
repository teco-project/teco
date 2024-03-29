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

extension Tdmq {
    /// DescribeRabbitMQVipInstances请求参数结构体
    public struct DescribeRabbitMQVipInstancesRequest: TCPaginatedRequest {
        /// 查询条件过滤器
        public let filters: [Filter]?

        /// 查询数目上限，默认20
        public let limit: UInt64?

        /// 查询起始位置
        public let offset: UInt64?

        public init(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRabbitMQVipInstancesResponse) -> DescribeRabbitMQVipInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeRabbitMQVipInstances返回参数结构体
    public struct DescribeRabbitMQVipInstancesResponse: TCPaginatedResponse {
        /// 未分页的总数目
        public let totalCount: UInt64

        /// 实例信息列表
        public let instances: [RabbitMQVipInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RabbitMQVipInstance`` list from the paginated response.
        public func getItems() -> [RabbitMQVipInstance] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable
    public func describeRabbitMQVipInstances(_ input: DescribeRabbitMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVipInstancesResponse> {
        self.client.execute(action: "DescribeRabbitMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable
    public func describeRabbitMQVipInstances(_ input: DescribeRabbitMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVipInstancesResponse {
        try await self.client.execute(action: "DescribeRabbitMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable
    public func describeRabbitMQVipInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVipInstancesResponse> {
        self.describeRabbitMQVipInstances(.init(filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable
    public func describeRabbitMQVipInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVipInstancesResponse {
        try await self.describeRabbitMQVipInstances(.init(filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable
    public func describeRabbitMQVipInstancesPaginated(_ input: DescribeRabbitMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RabbitMQVipInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVipInstances, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    @inlinable @discardableResult
    public func describeRabbitMQVipInstancesPaginated(_ input: DescribeRabbitMQVipInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRabbitMQVipInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVipInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ专享实例列表
    ///
    /// 查询用户已购的RabbitMQ专享实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``RabbitMQVipInstance`` and ``DescribeRabbitMQVipInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRabbitMQVipInstancesPaginator(_ input: DescribeRabbitMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRabbitMQVipInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRabbitMQVipInstances, logger: logger, on: eventLoop)
    }
}
