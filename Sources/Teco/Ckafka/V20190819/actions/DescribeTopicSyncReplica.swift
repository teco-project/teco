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

extension Ckafka {
    /// DescribeTopicSyncReplica请求参数结构体
    public struct DescribeTopicSyncReplicaRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 主题名称
        public let topicName: String

        /// 偏移量，不填默认为0
        public let offset: UInt64?

        /// 返回数量，不填则默认10，最大值20。
        public let limit: Int64?

        /// 仅筛选未同步副本
        public let outOfSyncReplicaOnly: Bool?

        public init(instanceId: String, topicName: String, offset: UInt64? = nil, limit: Int64? = nil, outOfSyncReplicaOnly: Bool? = nil) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
            self.outOfSyncReplicaOnly = outOfSyncReplicaOnly
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
            case outOfSyncReplicaOnly = "OutOfSyncReplicaOnly"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTopicSyncReplicaResponse) -> DescribeTopicSyncReplicaRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicSyncReplicaRequest(instanceId: self.instanceId, topicName: self.topicName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, outOfSyncReplicaOnly: self.outOfSyncReplicaOnly)
        }
    }

    /// DescribeTopicSyncReplica返回参数结构体
    public struct DescribeTopicSyncReplicaResponse: TCPaginatedResponse {
        /// 返回topic 副本详情
        public let result: TopicInSyncReplicaResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TopicInSyncReplicaInfo] {
            self.result.topicInSyncReplicaList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplica(_ input: DescribeTopicSyncReplicaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicSyncReplicaResponse> {
        self.client.execute(action: "DescribeTopicSyncReplica", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplica(_ input: DescribeTopicSyncReplicaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicSyncReplicaResponse {
        try await self.client.execute(action: "DescribeTopicSyncReplica", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplica(instanceId: String, topicName: String, offset: UInt64? = nil, limit: Int64? = nil, outOfSyncReplicaOnly: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicSyncReplicaResponse> {
        let input = DescribeTopicSyncReplicaRequest(instanceId: instanceId, topicName: topicName, offset: offset, limit: limit, outOfSyncReplicaOnly: outOfSyncReplicaOnly)
        return self.client.execute(action: "DescribeTopicSyncReplica", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplica(instanceId: String, topicName: String, offset: UInt64? = nil, limit: Int64? = nil, outOfSyncReplicaOnly: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicSyncReplicaResponse {
        let input = DescribeTopicSyncReplicaRequest(instanceId: instanceId, topicName: topicName, offset: offset, limit: limit, outOfSyncReplicaOnly: outOfSyncReplicaOnly)
        return try await self.client.execute(action: "DescribeTopicSyncReplica", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplicaPaginated(_ input: DescribeTopicSyncReplicaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TopicInSyncReplicaInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTopicSyncReplica, logger: logger, on: eventLoop)
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplicaPaginated(_ input: DescribeTopicSyncReplicaRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicSyncReplicaResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopicSyncReplica, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Topic 同步副本信息
    ///
    /// 获取Topic 副本详情信息
    @inlinable
    public func describeTopicSyncReplicaPaginator(_ input: DescribeTopicSyncReplicaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTopicSyncReplicaRequest, DescribeTopicSyncReplicaResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTopicSyncReplicaRequest, DescribeTopicSyncReplicaResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTopicSyncReplicaRequest, DescribeTopicSyncReplicaResponse>.ResultSequence(input: input, region: region, command: self.describeTopicSyncReplica, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTopicSyncReplicaRequest, DescribeTopicSyncReplicaResponse>.ResponseSequence(input: input, region: region, command: self.describeTopicSyncReplica, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
