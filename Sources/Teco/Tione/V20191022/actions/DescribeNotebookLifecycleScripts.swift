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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tione {
    /// DescribeNotebookLifecycleScripts请求参数结构体
    public struct DescribeNotebookLifecycleScriptsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20
        public let limit: UInt64?

        /// 过滤条件。
        /// instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        /// search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        public let filters: [Filter]?

        /// 排序规则。默认取Descending
        /// Descending 按更新时间降序
        /// Ascending 按更新时间升序
        public let sortOrder: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.sortOrder = sortOrder
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case sortOrder = "SortOrder"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNotebookLifecycleScriptsResponse) -> DescribeNotebookLifecycleScriptsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNotebookLifecycleScriptsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, sortOrder: self.sortOrder)
        }
    }

    /// DescribeNotebookLifecycleScripts返回参数结构体
    public struct DescribeNotebookLifecycleScriptsResponse: TCPaginatedResponse {
        /// Notebook生命周期脚本列表
        public let notebookLifecycleScriptsSet: [NotebookLifecycleScriptsSummary]

        /// Notebook生命周期脚本总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsSet = "NotebookLifecycleScriptsSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NotebookLifecycleScriptsSummary] {
            self.notebookLifecycleScriptsSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看notebook生命周期脚本列表
    @inlinable
    public func describeNotebookLifecycleScripts(_ input: DescribeNotebookLifecycleScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookLifecycleScriptsResponse> {
        self.client.execute(action: "DescribeNotebookLifecycleScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本列表
    @inlinable
    public func describeNotebookLifecycleScripts(_ input: DescribeNotebookLifecycleScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookLifecycleScriptsResponse {
        try await self.client.execute(action: "DescribeNotebookLifecycleScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看notebook生命周期脚本列表
    @inlinable
    public func describeNotebookLifecycleScripts(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookLifecycleScriptsResponse> {
        self.describeNotebookLifecycleScripts(.init(offset: offset, limit: limit, filters: filters, sortOrder: sortOrder), region: region, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本列表
    @inlinable
    public func describeNotebookLifecycleScripts(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookLifecycleScriptsResponse {
        try await self.describeNotebookLifecycleScripts(.init(offset: offset, limit: limit, filters: filters, sortOrder: sortOrder), region: region, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本列表
    @inlinable
    public func describeNotebookLifecycleScriptsPaginated(_ input: DescribeNotebookLifecycleScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NotebookLifecycleScriptsSummary])> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookLifecycleScripts, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本列表
    @inlinable @discardableResult
    public func describeNotebookLifecycleScriptsPaginated(_ input: DescribeNotebookLifecycleScriptsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNotebookLifecycleScriptsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookLifecycleScripts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本列表
    ///
    /// - Returns: `AsyncSequence`s of `NotebookLifecycleScriptsSummary` and `DescribeNotebookLifecycleScriptsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNotebookLifecycleScriptsPaginator(_ input: DescribeNotebookLifecycleScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNotebookLifecycleScriptsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNotebookLifecycleScripts, logger: logger, on: eventLoop)
    }
}
