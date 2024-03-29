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

extension Batch {
    /// DescribeComputeEnvActivities请求参数结构体
    public struct DescribeComputeEnvActivitiesRequest: TCPaginatedRequest {
        /// 计算环境ID
        public let envId: String

        /// 偏移量
        public let offset: Int64?

        /// 返回数量
        public let limit: Int64?

        /// 过滤条件
        /// - compute-node-id - String - 是否必填：否 -（过滤条件）按照计算节点ID过滤。
        public let filters: Filter?

        public init(envId: String, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil) {
            self.envId = envId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeComputeEnvActivitiesResponse) -> DescribeComputeEnvActivitiesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(envId: self.envId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeComputeEnvActivities返回参数结构体
    public struct DescribeComputeEnvActivitiesResponse: TCPaginatedResponse {
        /// 计算环境中的活动列表
        public let activitySet: [Activity]

        /// 活动数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activitySet = "ActivitySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Activity`` list from the paginated response.
        public func getItems() -> [Activity] {
            self.activitySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(_ input: DescribeComputeEnvActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvActivitiesResponse> {
        self.client.execute(action: "DescribeComputeEnvActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(_ input: DescribeComputeEnvActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvActivitiesResponse {
        try await self.client.execute(action: "DescribeComputeEnvActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(envId: String, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvActivitiesResponse> {
        self.describeComputeEnvActivities(.init(envId: envId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(envId: String, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvActivitiesResponse {
        try await self.describeComputeEnvActivities(.init(envId: envId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivitiesPaginated(_ input: DescribeComputeEnvActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Activity])> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvActivities, logger: logger, on: eventLoop)
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable @discardableResult
    public func describeComputeEnvActivitiesPaginated(_ input: DescribeComputeEnvActivitiesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComputeEnvActivitiesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvActivities, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    ///
    /// - Returns: `AsyncSequence`s of ``Activity`` and ``DescribeComputeEnvActivitiesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComputeEnvActivitiesPaginator(_ input: DescribeComputeEnvActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComputeEnvActivitiesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComputeEnvActivities, logger: logger, on: eventLoop)
    }
}
