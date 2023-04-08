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
    /// DescribeCloudNativeAPIGatewayNodes请求参数结构体
    public struct DescribeCloudNativeAPIGatewayNodesRequest: TCPaginatedRequest {
        /// 云原生API网关实例ID。
        public let gatewayId: String

        /// 实例分组id
        public let groupId: String?

        /// 翻页获取多少个
        public let limit: Int64?

        /// 翻页从第几个开始获取
        public let offset: Int64?

        public init(gatewayId: String, groupId: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.gatewayId = gatewayId
            self.groupId = groupId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case groupId = "GroupId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudNativeAPIGatewayNodesResponse) -> DescribeCloudNativeAPIGatewayNodesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCloudNativeAPIGatewayNodesRequest(gatewayId: self.gatewayId, groupId: self.groupId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeCloudNativeAPIGatewayNodes返回参数结构体
    public struct DescribeCloudNativeAPIGatewayNodesResponse: TCPaginatedResponse {
        /// 获取云原生网关节点列表结果。
        public let result: DescribeCloudNativeAPIGatewayNodesResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CloudNativeAPIGatewayNode] {
            self.result.nodeList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(_ input: DescribeCloudNativeAPIGatewayNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayNodesResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(_ input: DescribeCloudNativeAPIGatewayNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayNodesResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(gatewayId: String, groupId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayNodesResponse> {
        self.describeCloudNativeAPIGatewayNodes(.init(gatewayId: gatewayId, groupId: groupId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(gatewayId: String, groupId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayNodesResponse {
        try await self.describeCloudNativeAPIGatewayNodes(.init(gatewayId: gatewayId, groupId: groupId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodesPaginated(_ input: DescribeCloudNativeAPIGatewayNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CloudNativeAPIGatewayNode])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayNodes, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关节点列表
    @inlinable @discardableResult
    public func describeCloudNativeAPIGatewayNodesPaginated(_ input: DescribeCloudNativeAPIGatewayNodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudNativeAPIGatewayNodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayNodes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取云原生网关节点列表
    ///
    /// - Returns: `AsyncSequence`s of `CloudNativeAPIGatewayNode` and `DescribeCloudNativeAPIGatewayNodesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudNativeAPIGatewayNodesPaginator(_ input: DescribeCloudNativeAPIGatewayNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudNativeAPIGatewayNodesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudNativeAPIGatewayNodes, logger: logger, on: eventLoop)
    }
}
