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

import TecoPaginationHelpers

extension Tdmq {
    /// DescribeRocketMQVipInstances请求参数结构体
    public struct DescribeRocketMQVipInstancesRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: DescribeRocketMQVipInstancesResponse) -> DescribeRocketMQVipInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRocketMQVipInstancesRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeRocketMQVipInstances返回参数结构体
    public struct DescribeRocketMQVipInstancesResponse: TCPaginatedResponse {
        /// 未分页的总数目
        public let totalCount: UInt64

        /// 实例信息列表
        public let instances: [RocketMQVipInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RocketMQVipInstance] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstances(_ input: DescribeRocketMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQVipInstancesResponse> {
        self.client.execute(action: "DescribeRocketMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstances(_ input: DescribeRocketMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQVipInstancesResponse {
        try await self.client.execute(action: "DescribeRocketMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQVipInstancesResponse> {
        let input = DescribeRocketMQVipInstancesRequest(filters: filters, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeRocketMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQVipInstancesResponse {
        let input = DescribeRocketMQVipInstancesRequest(filters: filters, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeRocketMQVipInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstancesPaginated(_ input: DescribeRocketMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RocketMQVipInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQVipInstances, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstancesPaginated(_ input: DescribeRocketMQVipInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRocketMQVipInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQVipInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ专享实例列表
    ///
    /// 查询用户已购的RocketMQ专享实例列表
    @inlinable
    public func describeRocketMQVipInstancesPaginator(_ input: DescribeRocketMQVipInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeRocketMQVipInstancesRequest, DescribeRocketMQVipInstancesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeRocketMQVipInstancesRequest, DescribeRocketMQVipInstancesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeRocketMQVipInstancesRequest, DescribeRocketMQVipInstancesResponse>.ResultSequence(input: input, region: region, command: self.describeRocketMQVipInstances, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeRocketMQVipInstancesRequest, DescribeRocketMQVipInstancesResponse>.ResponseSequence(input: input, region: region, command: self.describeRocketMQVipInstances, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
