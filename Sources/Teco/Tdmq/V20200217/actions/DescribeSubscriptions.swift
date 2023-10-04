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
    /// DescribeSubscriptions请求参数结构体
    public struct DescribeSubscriptionsRequest: TCPaginatedRequest {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名称。
        public let topicName: String

        /// Pulsar 集群的ID
        public let clusterId: String

        /// 起始下标，不填默认为0。
        public let offset: UInt64?

        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?

        /// 订阅者名称，模糊匹配。
        public let subscriptionName: String?

        /// 数据过滤条件。
        public let filters: [FilterSubscription]?

        public init(environmentId: String, topicName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.subscriptionName = subscriptionName
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case subscriptionName = "SubscriptionName"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubscriptionsResponse) -> DescribeSubscriptionsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(environmentId: self.environmentId, topicName: self.topicName, clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, subscriptionName: self.subscriptionName, filters: self.filters)
        }
    }

    /// DescribeSubscriptions返回参数结构体
    public struct DescribeSubscriptionsResponse: TCPaginatedResponse {
        /// 订阅者集合数组。
        public let subscriptionSets: [Subscription]

        /// 数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subscriptionSets = "SubscriptionSets"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Subscription`` list from the paginated response.
        public func getItems() -> [Subscription] {
            self.subscriptionSets
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptions(_ input: DescribeSubscriptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionsResponse> {
        self.client.execute(action: "DescribeSubscriptions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptions(_ input: DescribeSubscriptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionsResponse {
        try await self.client.execute(action: "DescribeSubscriptions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptions(environmentId: String, topicName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionsResponse> {
        self.describeSubscriptions(.init(environmentId: environmentId, topicName: topicName, clusterId: clusterId, offset: offset, limit: limit, subscriptionName: subscriptionName, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptions(environmentId: String, topicName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionsResponse {
        try await self.describeSubscriptions(.init(environmentId: environmentId, topicName: topicName, clusterId: clusterId, offset: offset, limit: limit, subscriptionName: subscriptionName, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptionsPaginated(_ input: DescribeSubscriptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Subscription])> {
        self.client.paginate(input: input, region: region, command: self.describeSubscriptions, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable @discardableResult
    public func describeSubscriptionsPaginated(_ input: DescribeSubscriptionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubscriptions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    ///
    /// - Returns: `AsyncSequence`s of ``Subscription`` and ``DescribeSubscriptionsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubscriptionsPaginator(_ input: DescribeSubscriptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubscriptionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubscriptions, logger: logger, on: eventLoop)
    }
}
