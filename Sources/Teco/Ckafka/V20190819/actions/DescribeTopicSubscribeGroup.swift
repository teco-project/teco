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

import TecoCore
import TecoPaginationHelpers

extension Ckafka {
    /// DescribeTopicSubscribeGroup请求参数结构体
    public struct DescribeTopicSubscribeGroupRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// 主题名称
        public let topicName: String

        /// 分页时的起始位置
        public let offset: UInt64?

        /// 分页时的个数
        public let limit: UInt64?

        public init(instanceId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTopicSubscribeGroupResponse) -> DescribeTopicSubscribeGroupRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicSubscribeGroupRequest(instanceId: self.instanceId, topicName: self.topicName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTopicSubscribeGroup返回参数结构体
    public struct DescribeTopicSubscribeGroupResponse: TCPaginatedResponse {
        /// 返回结果
        public let result: TopicSubscribeGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GroupInfoResponse] {
            self.result.groupsInfo ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(_ input: DescribeTopicSubscribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicSubscribeGroupResponse> {
        self.client.execute(action: "DescribeTopicSubscribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(_ input: DescribeTopicSubscribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicSubscribeGroupResponse {
        try await self.client.execute(action: "DescribeTopicSubscribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(instanceId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicSubscribeGroupResponse> {
        self.describeTopicSubscribeGroup(.init(instanceId: instanceId, topicName: topicName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(instanceId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicSubscribeGroupResponse {
        try await self.describeTopicSubscribeGroup(.init(instanceId: instanceId, topicName: topicName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroupPaginated(_ input: DescribeTopicSubscribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GroupInfoResponse])> {
        self.client.paginate(input: input, region: region, command: self.describeTopicSubscribeGroup, logger: logger, on: eventLoop)
    }

    /// 查询订阅某主题消息分组信息
    @inlinable @discardableResult
    public func describeTopicSubscribeGroupPaginated(_ input: DescribeTopicSubscribeGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicSubscribeGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopicSubscribeGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询订阅某主题消息分组信息
    ///
    /// - Returns: `AsyncSequence`s of `GroupInfoResponse` and `DescribeTopicSubscribeGroupResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicSubscribeGroupPaginator(_ input: DescribeTopicSubscribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicSubscribeGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopicSubscribeGroup, logger: logger, on: eventLoop)
    }
}
