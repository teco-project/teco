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
    /// DescribeNacosReplicas请求参数结构体
    public struct DescribeNacosReplicasRequest: TCPaginatedRequest {
        /// 引擎实例ID
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
        public func makeNextRequest(with response: DescribeNacosReplicasResponse) -> DescribeNacosReplicasRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNacosReplicasRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeNacosReplicas返回参数结构体
    public struct DescribeNacosReplicasResponse: TCPaginatedResponse {
        /// 引擎实例副本信息
        public let replicas: [NacosReplica]

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
        public func getItems() -> [NacosReplica] {
            self.replicas
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable
    public func describeNacosReplicas(_ input: DescribeNacosReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNacosReplicasResponse> {
        self.client.execute(action: "DescribeNacosReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable
    public func describeNacosReplicas(_ input: DescribeNacosReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNacosReplicasResponse {
        try await self.client.execute(action: "DescribeNacosReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable
    public func describeNacosReplicas(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNacosReplicasResponse> {
        self.describeNacosReplicas(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable
    public func describeNacosReplicas(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNacosReplicasResponse {
        try await self.describeNacosReplicas(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable
    public func describeNacosReplicasPaginated(_ input: DescribeNacosReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NacosReplica])> {
        self.client.paginate(input: input, region: region, command: self.describeNacosReplicas, logger: logger, on: eventLoop)
    }

    /// 查询Nacos类型引擎实例副本信息
    @inlinable @discardableResult
    public func describeNacosReplicasPaginated(_ input: DescribeNacosReplicasRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNacosReplicasResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNacosReplicas, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Nacos类型引擎实例副本信息
    ///
    /// - Returns: `AsyncSequence`s of `NacosReplica` and `DescribeNacosReplicasResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNacosReplicasPaginator(_ input: DescribeNacosReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNacosReplicasRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNacosReplicas, logger: logger, on: eventLoop)
    }
}
