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
    /// DescribeCmqSubscriptionDetail请求参数结构体
    public struct DescribeCmqSubscriptionDetailRequest: TCPaginatedRequest {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String?

        /// 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?

        /// 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 根据SubscriptionName进行模糊搜索
        public let subscriptionName: String?

        /// 队列名称，订阅绑定的endpoint
        public let queueName: String?

        /// 查询类型。取值：（1）topic；（2）queue。
        /// 默认值是topic。如果 queryType 是 topic，则查询主题下的订阅列表；如果 queryType 是 queue，则查询队列绑定的订阅列表。
        public let queryType: String?

        public init(topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, queueName: String? = nil, queryType: String? = nil) {
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
            self.subscriptionName = subscriptionName
            self.queueName = queueName
            self.queryType = queryType
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
            case subscriptionName = "SubscriptionName"
            case queueName = "QueueName"
            case queryType = "QueryType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCmqSubscriptionDetailResponse) -> DescribeCmqSubscriptionDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCmqSubscriptionDetailRequest(topicName: self.topicName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, subscriptionName: self.subscriptionName, queueName: self.queueName, queryType: self.queryType)
        }
    }

    /// DescribeCmqSubscriptionDetail返回参数结构体
    public struct DescribeCmqSubscriptionDetailResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// Subscription属性集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscriptionSet: [CmqSubscription]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case subscriptionSet = "SubscriptionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CmqSubscription] {
            self.subscriptionSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询cmq订阅详情
    @inlinable
    public func describeCmqSubscriptionDetail(_ input: DescribeCmqSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqSubscriptionDetailResponse> {
        self.client.execute(action: "DescribeCmqSubscriptionDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cmq订阅详情
    @inlinable
    public func describeCmqSubscriptionDetail(_ input: DescribeCmqSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqSubscriptionDetailResponse {
        try await self.client.execute(action: "DescribeCmqSubscriptionDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询cmq订阅详情
    @inlinable
    public func describeCmqSubscriptionDetail(topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, queueName: String? = nil, queryType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqSubscriptionDetailResponse> {
        self.describeCmqSubscriptionDetail(.init(topicName: topicName, offset: offset, limit: limit, subscriptionName: subscriptionName, queueName: queueName, queryType: queryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询cmq订阅详情
    @inlinable
    public func describeCmqSubscriptionDetail(topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subscriptionName: String? = nil, queueName: String? = nil, queryType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqSubscriptionDetailResponse {
        try await self.describeCmqSubscriptionDetail(.init(topicName: topicName, offset: offset, limit: limit, subscriptionName: subscriptionName, queueName: queueName, queryType: queryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询cmq订阅详情
    @inlinable
    public func describeCmqSubscriptionDetailPaginated(_ input: DescribeCmqSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CmqSubscription])> {
        self.client.paginate(input: input, region: region, command: self.describeCmqSubscriptionDetail, logger: logger, on: eventLoop)
    }

    /// 查询cmq订阅详情
    @inlinable @discardableResult
    public func describeCmqSubscriptionDetailPaginated(_ input: DescribeCmqSubscriptionDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCmqSubscriptionDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCmqSubscriptionDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询cmq订阅详情
    ///
    /// - Returns: `AsyncSequence`s of `CmqSubscription` and `DescribeCmqSubscriptionDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCmqSubscriptionDetailPaginator(_ input: DescribeCmqSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCmqSubscriptionDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCmqSubscriptionDetail, logger: logger, on: eventLoop)
    }
}
