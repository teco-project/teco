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

extension Cmq {
    /// DescribeSubscriptionDetail请求参数结构体
    public struct DescribeSubscriptionDetailRequest: TCPaginatedRequest {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String

        /// 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?

        /// 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 筛选参数，目前只支持SubscriptionName，且仅支持一个关键字。
        public let filters: [Filter]?

        public init(topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubscriptionDetailResponse) -> DescribeSubscriptionDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(topicName: self.topicName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeSubscriptionDetail返回参数结构体
    public struct DescribeSubscriptionDetailResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// Subscription属性集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscriptionSet: [Subscription]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case subscriptionSet = "SubscriptionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Subscription`` list from the paginated response.
        public func getItems() -> [Subscription] {
            self.subscriptionSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询订阅详情
    @inlinable
    public func describeSubscriptionDetail(_ input: DescribeSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionDetailResponse> {
        self.client.execute(action: "DescribeSubscriptionDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订阅详情
    @inlinable
    public func describeSubscriptionDetail(_ input: DescribeSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionDetailResponse {
        try await self.client.execute(action: "DescribeSubscriptionDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订阅详情
    @inlinable
    public func describeSubscriptionDetail(topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionDetailResponse> {
        self.describeSubscriptionDetail(.init(topicName: topicName, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询订阅详情
    @inlinable
    public func describeSubscriptionDetail(topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionDetailResponse {
        try await self.describeSubscriptionDetail(.init(topicName: topicName, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询订阅详情
    @inlinable
    public func describeSubscriptionDetailPaginated(_ input: DescribeSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Subscription])> {
        self.client.paginate(input: input, region: region, command: self.describeSubscriptionDetail, logger: logger, on: eventLoop)
    }

    /// 查询订阅详情
    @inlinable @discardableResult
    public func describeSubscriptionDetailPaginated(_ input: DescribeSubscriptionDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubscriptionDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubscriptionDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询订阅详情
    ///
    /// - Returns: `AsyncSequence`s of ``Subscription`` and ``DescribeSubscriptionDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubscriptionDetailPaginator(_ input: DescribeSubscriptionDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubscriptionDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubscriptionDetail, logger: logger, on: eventLoop)
    }
}
