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

extension Tdmq {
    /// DescribeRabbitMQVirtualHost请求参数结构体
    public struct DescribeRabbitMQVirtualHostRequest: TCPaginatedRequest {
        /// 集群实例Id
        public let instanceId: String

        /// vhost名,不传则查询全部
        public let virtualHost: String?

        /// 分页Offset
        public let offset: Int64?

        /// 分页Limit
        public let limit: Int64?

        /// search-virtual-host：vhost名称模糊查询，之前前缀和后缀匹配
        public let filters: Filter?

        public init(instanceId: String, virtualHost: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil) {
            self.instanceId = instanceId
            self.virtualHost = virtualHost
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case virtualHost = "VirtualHost"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRabbitMQVirtualHostResponse) -> DescribeRabbitMQVirtualHostRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRabbitMQVirtualHostRequest(instanceId: self.instanceId, virtualHost: self.virtualHost, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeRabbitMQVirtualHost返回参数结构体
    public struct DescribeRabbitMQVirtualHostResponse: TCPaginatedResponse {
        /// 返回vhost数量
        public let totalCount: Int64

        /// vhost详情列表
        public let virtualHostList: [RabbitMQVirtualHostInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case virtualHostList = "VirtualHostList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RabbitMQVirtualHostInfo] {
            self.virtualHostList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询RabbitMQ vhost列表
    @inlinable
    public func describeRabbitMQVirtualHost(_ input: DescribeRabbitMQVirtualHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVirtualHostResponse> {
        self.client.execute(action: "DescribeRabbitMQVirtualHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ vhost列表
    @inlinable
    public func describeRabbitMQVirtualHost(_ input: DescribeRabbitMQVirtualHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVirtualHostResponse {
        try await self.client.execute(action: "DescribeRabbitMQVirtualHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询RabbitMQ vhost列表
    @inlinable
    public func describeRabbitMQVirtualHost(instanceId: String, virtualHost: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVirtualHostResponse> {
        self.describeRabbitMQVirtualHost(.init(instanceId: instanceId, virtualHost: virtualHost, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ vhost列表
    @inlinable
    public func describeRabbitMQVirtualHost(instanceId: String, virtualHost: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVirtualHostResponse {
        try await self.describeRabbitMQVirtualHost(.init(instanceId: instanceId, virtualHost: virtualHost, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ vhost列表
    @inlinable
    public func describeRabbitMQVirtualHostPaginated(_ input: DescribeRabbitMQVirtualHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RabbitMQVirtualHostInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVirtualHost, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ vhost列表
    @inlinable @discardableResult
    public func describeRabbitMQVirtualHostPaginated(_ input: DescribeRabbitMQVirtualHostRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRabbitMQVirtualHostResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVirtualHost, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询RabbitMQ vhost列表
    ///
    /// - Returns: `AsyncSequence`s of `RabbitMQVirtualHostInfo` and `DescribeRabbitMQVirtualHostResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRabbitMQVirtualHostPaginator(_ input: DescribeRabbitMQVirtualHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRabbitMQVirtualHostRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRabbitMQVirtualHost, logger: logger, on: eventLoop)
    }
}