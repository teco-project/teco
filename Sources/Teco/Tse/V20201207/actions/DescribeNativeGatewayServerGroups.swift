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

extension Tse {
    /// DescribeNativeGatewayServerGroups请求参数结构体
    public struct DescribeNativeGatewayServerGroupsRequest: TCPaginatedRequest {
        /// 云原生API网关实例ID。
        public let gatewayId: String

        /// 翻页从第几个开始获取
        public let offset: UInt64?

        /// 翻页获取多少个
        public let limit: UInt64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(gatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.gatewayId = gatewayId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNativeGatewayServerGroupsResponse) -> DescribeNativeGatewayServerGroupsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(gatewayId: self.gatewayId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeNativeGatewayServerGroups返回参数结构体
    public struct DescribeNativeGatewayServerGroupsResponse: TCPaginatedResponse {
        /// 分组列表信息
        public let result: NativeGatewayServerGroups

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NativeGatewayServerGroup`` list from the paginated response.
        public func getItems() -> [NativeGatewayServerGroup] {
            self.result.gatewayGroupList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 查询云原生网关分组信息
    @inlinable
    public func describeNativeGatewayServerGroups(_ input: DescribeNativeGatewayServerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNativeGatewayServerGroupsResponse> {
        self.client.execute(action: "DescribeNativeGatewayServerGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关分组信息
    @inlinable
    public func describeNativeGatewayServerGroups(_ input: DescribeNativeGatewayServerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNativeGatewayServerGroupsResponse {
        try await self.client.execute(action: "DescribeNativeGatewayServerGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云原生网关分组信息
    @inlinable
    public func describeNativeGatewayServerGroups(gatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNativeGatewayServerGroupsResponse> {
        self.describeNativeGatewayServerGroups(.init(gatewayId: gatewayId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关分组信息
    @inlinable
    public func describeNativeGatewayServerGroups(gatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNativeGatewayServerGroupsResponse {
        try await self.describeNativeGatewayServerGroups(.init(gatewayId: gatewayId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关分组信息
    @inlinable
    public func describeNativeGatewayServerGroupsPaginated(_ input: DescribeNativeGatewayServerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NativeGatewayServerGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeNativeGatewayServerGroups, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关分组信息
    @inlinable @discardableResult
    public func describeNativeGatewayServerGroupsPaginated(_ input: DescribeNativeGatewayServerGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNativeGatewayServerGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNativeGatewayServerGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关分组信息
    ///
    /// - Returns: `AsyncSequence`s of ``NativeGatewayServerGroup`` and ``DescribeNativeGatewayServerGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNativeGatewayServerGroupsPaginator(_ input: DescribeNativeGatewayServerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNativeGatewayServerGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNativeGatewayServerGroups, logger: logger, on: eventLoop)
    }
}
