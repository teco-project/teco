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

extension Apigateway {
    /// DescribeExclusiveInstancesStatus请求参数结构体
    public struct DescribeExclusiveInstancesStatusRequest: TCPaginatedRequest {
        /// 分页查询，limit
        public let limit: UInt64

        /// 分页查询，offset
        public let offset: UInt64

        /// 过滤条件
        public let filters: [Filter]?

        public init(limit: UInt64, offset: UInt64, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeExclusiveInstancesStatusResponse) -> DescribeExclusiveInstancesStatusRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeExclusiveInstancesStatus返回参数结构体
    public struct DescribeExclusiveInstancesStatusResponse: TCPaginatedResponse {
        /// 独享实例列表查询结果
        public let result: InstanceSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceInfo`` list from the paginated response.
        public func getItems() -> [InstanceInfo] {
            self.result.instanceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesStatusResponse> {
        self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesStatusResponse {
        try await self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesStatusResponse> {
        self.describeExclusiveInstancesStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesStatusResponse {
        try await self.describeExclusiveInstancesStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatusPaginated(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeExclusiveInstancesStatus, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable @discardableResult
    public func describeExclusiveInstancesStatusPaginated(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeExclusiveInstancesStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeExclusiveInstancesStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceInfo`` and ``DescribeExclusiveInstancesStatusResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeExclusiveInstancesStatusPaginator(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeExclusiveInstancesStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeExclusiveInstancesStatus, logger: logger, on: eventLoop)
    }
}
