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

extension Tdmq {
    /// DescribeRocketMQNamespaces请求参数结构体
    public struct DescribeRocketMQNamespacesRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        /// 按名称搜索
        public let nameKeyword: String?

        public init(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.nameKeyword = nameKeyword
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case nameKeyword = "NameKeyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRocketMQNamespacesResponse) -> DescribeRocketMQNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRocketMQNamespacesRequest(clusterId: self.clusterId, offset: self.offset + .init(response.getItems().count), limit: self.limit, nameKeyword: self.nameKeyword)
        }
    }

    /// DescribeRocketMQNamespaces返回参数结构体
    public struct DescribeRocketMQNamespacesResponse: TCPaginatedResponse {
        /// 命名空间列表
        public let namespaces: [RocketMQNamespace]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case namespaces = "Namespaces"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RocketMQNamespace] {
            self.namespaces
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQNamespacesResponse> {
        self.client.execute(action: "DescribeRocketMQNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQNamespacesResponse {
        try await self.client.execute(action: "DescribeRocketMQNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQNamespacesResponse> {
        self.describeRocketMQNamespaces(.init(clusterId: clusterId, offset: offset, limit: limit, nameKeyword: nameKeyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespaces(clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQNamespacesResponse {
        try await self.describeRocketMQNamespaces(.init(clusterId: clusterId, offset: offset, limit: limit, nameKeyword: nameKeyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable
    public func describeRocketMQNamespacesPaginated(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RocketMQNamespace])> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQNamespaces, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    @inlinable @discardableResult
    public func describeRocketMQNamespacesPaginated(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRocketMQNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQNamespaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ命名空间列表
    ///
    /// - Returns: `AsyncSequence`s of `RocketMQNamespace` and `DescribeRocketMQNamespacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRocketMQNamespacesPaginator(_ input: DescribeRocketMQNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRocketMQNamespacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRocketMQNamespaces, logger: logger, on: eventLoop)
    }
}
