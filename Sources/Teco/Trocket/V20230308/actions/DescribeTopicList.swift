//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Trocket {
    /// DescribeTopicList请求参数结构体
    public struct DescribeTopicListRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 查询起始位置
        public let offset: Int64

        /// 查询结果限制数量
        public let limit: Int64

        /// 查询条件列表
        public let filters: [Filter]?

        public init(instanceId: String, offset: Int64, limit: Int64, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTopicListResponse) -> DescribeTopicListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeTopicList返回参数结构体
    public struct DescribeTopicListResponse: TCPaginatedResponse {
        /// 查询总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 主题列表
        public let data: [TopicItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TopicItem`` list from the paginated response.
        public func getItems() -> [TopicItem] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable
    public func describeTopicList(_ input: DescribeTopicListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicListResponse> {
        self.client.execute(action: "DescribeTopicList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable
    public func describeTopicList(_ input: DescribeTopicListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicListResponse {
        try await self.client.execute(action: "DescribeTopicList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable
    public func describeTopicList(instanceId: String, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicListResponse> {
        self.describeTopicList(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable
    public func describeTopicList(instanceId: String, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicListResponse {
        try await self.describeTopicList(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable
    public func describeTopicListPaginated(_ input: DescribeTopicListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TopicItem])> {
        self.client.paginate(input: input, region: region, command: self.describeTopicList, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    @inlinable @discardableResult
    public func describeTopicListPaginated(_ input: DescribeTopicListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopicList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取主题列表，Filter参数使用说明如下：
    ///
    /// 1. TopicName，主题名称模糊搜索
    /// 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled
    ///
    /// - Returns: `AsyncSequence`s of ``TopicItem`` and ``DescribeTopicListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicListPaginator(_ input: DescribeTopicListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopicList, logger: logger, on: eventLoop)
    }
}
