//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdmq {
    /// DescribeSubscriptions请求参数结构体
    public struct DescribeSubscriptionsRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名称。
        public let topicName: String

        /// 起始下标，不填默认为0。
        public let offset: UInt64?

        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?

        /// 订阅者名称，模糊匹配。
        public let subscriptionName: String?

        /// 数据过滤条件。
        public let filters: [FilterSubscription]?

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil, clusterId: String? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
            self.subscriptionName = subscriptionName
            self.filters = filters
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
            case subscriptionName = "SubscriptionName"
            case filters = "Filters"
            case clusterId = "ClusterId"
        }
    }

    /// DescribeSubscriptions返回参数结构体
    public struct DescribeSubscriptionsResponse: TCResponseModel {
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
    public func describeSubscriptions(environmentId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionsResponse> {
        self.describeSubscriptions(DescribeSubscriptionsRequest(environmentId: environmentId, topicName: topicName, offset: offset, limit: limit, subscriptionName: subscriptionName, filters: filters, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消费订阅列表
    ///
    /// 查询指定环境和主题下的订阅者列表
    @inlinable
    public func describeSubscriptions(environmentId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, filters: [FilterSubscription]? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionsResponse {
        try await self.describeSubscriptions(DescribeSubscriptionsRequest(environmentId: environmentId, topicName: topicName, offset: offset, limit: limit, subscriptionName: subscriptionName, filters: filters, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
