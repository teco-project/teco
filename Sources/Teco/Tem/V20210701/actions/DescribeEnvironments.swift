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

extension Tem {
    /// DescribeEnvironments请求参数结构体
    public struct DescribeEnvironmentsRequest: TCPaginatedRequest {
        /// 分页limit
        public let limit: Int64?

        /// 分页下标
        public let offset: Int64?

        /// 来源source
        public let sourceChannel: Int64?

        /// 查询过滤器
        public let filters: [QueryFilter]?

        /// 排序字段
        public let sortInfo: SortType?

        /// 环境id
        public let environmentId: String?

        public init(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, environmentId: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
            self.filters = filters
            self.sortInfo = sortInfo
            self.environmentId = environmentId
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
            case filters = "Filters"
            case sortInfo = "SortInfo"
            case environmentId = "EnvironmentId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEnvironmentsResponse) -> DescribeEnvironmentsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), sourceChannel: self.sourceChannel, filters: self.filters, sortInfo: self.sortInfo, environmentId: self.environmentId)
        }
    }

    /// DescribeEnvironments返回参数结构体
    public struct DescribeEnvironmentsResponse: TCPaginatedResponse {
        /// 返回结果
        public let result: NamespacePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TemNamespaceInfo`` list from the paginated response.
        public func getItems() -> [TemNamespaceInfo] {
            self.result.records
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.total
        }
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        self.describeEnvironments(.init(limit: limit, offset: offset, sourceChannel: sourceChannel, filters: filters, sortInfo: sortInfo, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironments(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.describeEnvironments(.init(limit: limit, offset: offset, sourceChannel: sourceChannel, filters: filters, sortInfo: sortInfo, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TemNamespaceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    @inlinable @discardableResult
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEnvironmentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    ///
    /// - Returns: `AsyncSequence`s of ``TemNamespaceInfo`` and ``DescribeEnvironmentsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEnvironmentsPaginator(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEnvironmentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }
}
