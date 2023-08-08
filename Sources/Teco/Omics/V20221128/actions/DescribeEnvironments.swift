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

extension Omics {
    /// DescribeEnvironments请求参数结构体
    public struct DescribeEnvironmentsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 过滤器，支持过滤字段：
        /// - EnvironmentId：环境ID
        /// - Name：名称
        /// - Status：环境状态
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEnvironmentsResponse) -> DescribeEnvironmentsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEnvironmentsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeEnvironments返回参数结构体
    public struct DescribeEnvironmentsResponse: TCPaginatedResponse {
        /// 符合条件的数量。
        public let totalCount: UInt64

        /// 环境详情列表。
        public let environments: [Environment]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case environments = "Environments"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Environment] {
            self.environments
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable
    public func describeEnvironments(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        self.describeEnvironments(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable
    public func describeEnvironments(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.describeEnvironments(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Environment])> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    @inlinable @discardableResult
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEnvironmentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询环境列表
    ///
    /// 查询环境列表。
    ///
    /// - Returns: `AsyncSequence`s of `Environment` and `DescribeEnvironmentsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEnvironmentsPaginator(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEnvironmentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }
}
