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

extension Cdb {
    /// DescribeCloneList请求参数结构体
    public struct DescribeCloneListRequest: TCPaginatedRequest {
        /// 查询指定源实例的克隆任务列表。
        public let instanceId: String

        /// 分页查询时的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页查询时的每页条目数，默认值为20。
        public let limit: Int64?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloneListResponse) -> DescribeCloneListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCloneList返回参数结构体
    public struct DescribeCloneListResponse: TCPaginatedResponse {
        /// 满足条件的条目数。
        public let totalCount: Int64

        /// 克隆任务列表。
        public let items: [CloneItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CloneItem`` list from the paginated response.
        public func getItems() -> [CloneItem] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(_ input: DescribeCloneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloneListResponse> {
        self.client.execute(action: "DescribeCloneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(_ input: DescribeCloneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloneListResponse {
        try await self.client.execute(action: "DescribeCloneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloneListResponse> {
        self.describeCloneList(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloneListResponse {
        try await self.describeCloneList(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneListPaginated(_ input: DescribeCloneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CloneItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCloneList, logger: logger, on: eventLoop)
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable @discardableResult
    public func describeCloneListPaginated(_ input: DescribeCloneListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloneListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloneList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    ///
    /// - Returns: `AsyncSequence`s of ``CloneItem`` and ``DescribeCloneListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloneListPaginator(_ input: DescribeCloneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloneListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloneList, logger: logger, on: eventLoop)
    }
}
