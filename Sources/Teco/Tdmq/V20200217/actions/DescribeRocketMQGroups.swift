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

extension Tdmq {
    /// DescribeRocketMQGroups请求参数结构体
    public struct DescribeRocketMQGroupsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 命名空间
        public let namespaceId: String

        /// 偏移量
        public let offset: UInt64

        /// 限制条数
        public let limit: UInt64

        /// 主题名称，输入此参数可查询该主题下所有的订阅组
        public let filterTopic: String?

        /// 按消费组名称查询消费组，支持模糊查询
        public let filterGroup: String?

        /// 按照指定字段排序，可选值为tps，accumulative
        public let sortedBy: String?

        /// 按升序或降序排列，可选值为asc，desc
        public let sortOrder: String?

        /// 订阅组名称，指定此参数后将只返回该订阅组信息
        public let filterOneGroup: String?

        /// group类型
        public let types: [String]?

        public init(clusterId: String, namespaceId: String, offset: UInt64, limit: UInt64, filterTopic: String? = nil, filterGroup: String? = nil, sortedBy: String? = nil, sortOrder: String? = nil, filterOneGroup: String? = nil, types: [String]? = nil) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.offset = offset
            self.limit = limit
            self.filterTopic = filterTopic
            self.filterGroup = filterGroup
            self.sortedBy = sortedBy
            self.sortOrder = sortOrder
            self.filterOneGroup = filterOneGroup
            self.types = types
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case offset = "Offset"
            case limit = "Limit"
            case filterTopic = "FilterTopic"
            case filterGroup = "FilterGroup"
            case sortedBy = "SortedBy"
            case sortOrder = "SortOrder"
            case filterOneGroup = "FilterOneGroup"
            case types = "Types"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRocketMQGroupsResponse) -> DescribeRocketMQGroupsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(clusterId: self.clusterId, namespaceId: self.namespaceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, filterTopic: self.filterTopic, filterGroup: self.filterGroup, sortedBy: self.sortedBy, sortOrder: self.sortOrder, filterOneGroup: self.filterOneGroup, types: self.types)
        }
    }

    /// DescribeRocketMQGroups返回参数结构体
    public struct DescribeRocketMQGroupsResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: UInt64

        /// 订阅组列表
        public let groups: [RocketMQGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groups = "Groups"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RocketMQGroup`` list from the paginated response.
        public func getItems() -> [RocketMQGroup] {
            self.groups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取RocketMQ消费组列表
    @inlinable
    public func describeRocketMQGroups(_ input: DescribeRocketMQGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQGroupsResponse> {
        self.client.execute(action: "DescribeRocketMQGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ消费组列表
    @inlinable
    public func describeRocketMQGroups(_ input: DescribeRocketMQGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQGroupsResponse {
        try await self.client.execute(action: "DescribeRocketMQGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取RocketMQ消费组列表
    @inlinable
    public func describeRocketMQGroups(clusterId: String, namespaceId: String, offset: UInt64, limit: UInt64, filterTopic: String? = nil, filterGroup: String? = nil, sortedBy: String? = nil, sortOrder: String? = nil, filterOneGroup: String? = nil, types: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQGroupsResponse> {
        self.describeRocketMQGroups(.init(clusterId: clusterId, namespaceId: namespaceId, offset: offset, limit: limit, filterTopic: filterTopic, filterGroup: filterGroup, sortedBy: sortedBy, sortOrder: sortOrder, filterOneGroup: filterOneGroup, types: types), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ消费组列表
    @inlinable
    public func describeRocketMQGroups(clusterId: String, namespaceId: String, offset: UInt64, limit: UInt64, filterTopic: String? = nil, filterGroup: String? = nil, sortedBy: String? = nil, sortOrder: String? = nil, filterOneGroup: String? = nil, types: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQGroupsResponse {
        try await self.describeRocketMQGroups(.init(clusterId: clusterId, namespaceId: namespaceId, offset: offset, limit: limit, filterTopic: filterTopic, filterGroup: filterGroup, sortedBy: sortedBy, sortOrder: sortOrder, filterOneGroup: filterOneGroup, types: types), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ消费组列表
    @inlinable
    public func describeRocketMQGroupsPaginated(_ input: DescribeRocketMQGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RocketMQGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQGroups, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ消费组列表
    @inlinable @discardableResult
    public func describeRocketMQGroupsPaginated(_ input: DescribeRocketMQGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRocketMQGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ消费组列表
    ///
    /// - Returns: `AsyncSequence`s of ``RocketMQGroup`` and ``DescribeRocketMQGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRocketMQGroupsPaginator(_ input: DescribeRocketMQGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRocketMQGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRocketMQGroups, logger: logger, on: eventLoop)
    }
}
