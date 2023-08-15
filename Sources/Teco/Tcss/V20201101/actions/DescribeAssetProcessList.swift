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

extension Tcss {
    /// DescribeAssetProcessList请求参数结构体
    public struct DescribeAssetProcessListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - RunAs - String - 是否必填：否 - 运行用户筛选，
        /// - ContainerID - String - 是否必填：否 - 容器id
        /// - HostID- String - 是否必填：是 - 主机id
        /// - HostIP- string - 是否必填：否 - 主机ip搜索
        /// - ProcessName- string - 是否必填：否 - 进程名搜索
        /// - Pid- string - 是否必填：否 - 进程id搜索(关联进程)
        public let filters: [AssetFilters]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil) {
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
        public func makeNextRequest(with response: DescribeAssetProcessListResponse) -> DescribeAssetProcessListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetProcessListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAssetProcessList返回参数结构体
    public struct DescribeAssetProcessListResponse: TCPaginatedResponse {
        /// 端口列表
        public let list: [ProcessInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProcessInfo`` list from the paginated response.
        public func getItems() -> [ProcessInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable
    public func describeAssetProcessList(_ input: DescribeAssetProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetProcessListResponse> {
        self.client.execute(action: "DescribeAssetProcessList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable
    public func describeAssetProcessList(_ input: DescribeAssetProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetProcessListResponse {
        try await self.client.execute(action: "DescribeAssetProcessList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable
    public func describeAssetProcessList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetProcessListResponse> {
        self.describeAssetProcessList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable
    public func describeAssetProcessList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetProcessListResponse {
        try await self.describeAssetProcessList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable
    public func describeAssetProcessListPaginated(_ input: DescribeAssetProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProcessInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetProcessList, logger: logger, on: eventLoop)
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    @inlinable @discardableResult
    public func describeAssetProcessListPaginated(_ input: DescribeAssetProcessListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetProcessListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetProcessList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询进程列表
    ///
    /// 容器安全搜索查询进程列表
    ///
    /// - Returns: `AsyncSequence`s of ``ProcessInfo`` and ``DescribeAssetProcessListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetProcessListPaginator(_ input: DescribeAssetProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetProcessListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetProcessList, logger: logger, on: eventLoop)
    }
}
