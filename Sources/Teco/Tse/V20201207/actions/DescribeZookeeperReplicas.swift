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

extension Tse {
    /// DescribeZookeeperReplicas请求参数结构体
    public struct DescribeZookeeperReplicasRequest: TCPaginatedRequest {
        /// 注册引擎实例ID
        public let instanceId: String

        /// 副本列表Limit
        public let limit: UInt64?

        /// 副本列表Offset
        public let offset: UInt64?

        public init(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeZookeeperReplicasResponse) -> DescribeZookeeperReplicasRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeZookeeperReplicasRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeZookeeperReplicas返回参数结构体
    public struct DescribeZookeeperReplicasResponse: TCPaginatedResponse {
        /// 注册引擎实例副本信息
        public let replicas: [ZookeeperReplica]

        /// 副本个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case replicas = "Replicas"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ZookeeperReplica] {
            self.replicas
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable
    public func describeZookeeperReplicas(_ input: DescribeZookeeperReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZookeeperReplicasResponse> {
        self.client.execute(action: "DescribeZookeeperReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable
    public func describeZookeeperReplicas(_ input: DescribeZookeeperReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZookeeperReplicasResponse {
        try await self.client.execute(action: "DescribeZookeeperReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable
    public func describeZookeeperReplicas(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZookeeperReplicasResponse> {
        self.describeZookeeperReplicas(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable
    public func describeZookeeperReplicas(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZookeeperReplicasResponse {
        try await self.describeZookeeperReplicas(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable
    public func describeZookeeperReplicasPaginated(_ input: DescribeZookeeperReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ZookeeperReplica])> {
        self.client.paginate(input: input, region: region, command: self.describeZookeeperReplicas, logger: logger, on: eventLoop)
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    @inlinable @discardableResult
    public func describeZookeeperReplicasPaginated(_ input: DescribeZookeeperReplicasRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeZookeeperReplicasResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeZookeeperReplicas, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Zookeeper类型注册引擎实例副本信息
    ///
    /// - Returns: `AsyncSequence`s of `ZookeeperReplica` and `DescribeZookeeperReplicasResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeZookeeperReplicasPaginator(_ input: DescribeZookeeperReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeZookeeperReplicasRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeZookeeperReplicas, logger: logger, on: eventLoop)
    }
}
