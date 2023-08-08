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
import TecoPaginationHelpers

extension Wedata {
    /// DescribeBaselineInstances请求参数结构体
    public struct DescribeBaselineInstancesRequest: TCPaginatedRequest {
        /// 分页页码
        public let pageNumber: Int64

        /// 分页大小
        public let pageSize: Int64

        /// 过滤字段
        public let filters: [Filter]

        public init(pageNumber: Int64, pageSize: Int64, filters: [Filter]) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselineInstancesResponse) -> DescribeBaselineInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineInstancesRequest(pageNumber: self.pageNumber + 1, pageSize: self.pageSize, filters: self.filters)
        }
    }

    /// 分页查询实例响应
    public struct DescribeBaselineInstancesResponse: TCPaginatedResponse {
        /// 基线实例数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baselineInstances: [BaselineInstanceVo]?

        /// 总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        enum CodingKeys: String, CodingKey {
            case baselineInstances = "BaselineInstances"
            case totalCount = "TotalCount"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaselineInstanceVo] {
            self.baselineInstances ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询基线实例列表
    @inlinable
    public func describeBaselineInstances(_ input: DescribeBaselineInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineInstancesResponse> {
        self.client.execute(action: "DescribeBaselineInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线实例列表
    @inlinable
    public func describeBaselineInstances(_ input: DescribeBaselineInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineInstancesResponse {
        try await self.client.execute(action: "DescribeBaselineInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线实例列表
    @inlinable
    public func describeBaselineInstances(pageNumber: Int64, pageSize: Int64, filters: [Filter], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineInstancesResponse> {
        self.describeBaselineInstances(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线实例列表
    @inlinable
    public func describeBaselineInstances(pageNumber: Int64, pageSize: Int64, filters: [Filter], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineInstancesResponse {
        try await self.describeBaselineInstances(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线实例列表
    @inlinable
    public func describeBaselineInstancesPaginated(_ input: DescribeBaselineInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineInstanceVo])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineInstances, logger: logger, on: eventLoop)
    }

    /// 查询基线实例列表
    @inlinable @discardableResult
    public func describeBaselineInstancesPaginated(_ input: DescribeBaselineInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询基线实例列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineInstanceVo` and `DescribeBaselineInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineInstancesPaginator(_ input: DescribeBaselineInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineInstances, logger: logger, on: eventLoop)
    }
}