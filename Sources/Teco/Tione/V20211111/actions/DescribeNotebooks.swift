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

extension Tione {
    /// DescribeNotebooks请求参数结构体
    public struct DescribeNotebooksRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 每页返回的实例数，默认为10
        public let limit: Int64?

        /// 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列。默认为DESC
        public let order: String?

        /// 根据哪个字段排序，如：CreateTime、UpdateTime，默认为UpdateTime
        public let orderField: String?

        /// 过滤器，eg：[{ "Name": "Id", "Values": ["nb-123456789"] }]
        ///
        /// 取值范围
        /// Name（名称）：notebook1
        /// Id（notebook ID）：nb-123456789
        /// Status（状态）：Starting / Running / Stopped / Stopping / Failed / SubmitFailed
        /// ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        /// ChargeStatus（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ BILLING_STORAGE（存储计费中）/ARREARS_STOP（欠费停止）
        /// DefaultCodeRepoId（默认代码仓库ID）：cr-123456789
        /// AdditionalCodeRepoId（关联代码仓库ID）：cr-123456789
        /// LifecycleScriptId（生命周期ID）：ls-12312312311312
        public let filters: [Filter]?

        /// 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        public let tagFilters: [TagFilter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
            self.filters = filters
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
            case filters = "Filters"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNotebooksResponse) -> DescribeNotebooksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderField: self.orderField, filters: self.filters, tagFilters: self.tagFilters)
        }
    }

    /// DescribeNotebooks返回参数结构体
    public struct DescribeNotebooksResponse: TCPaginatedResponse {
        /// 详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notebookSet: [NotebookSetItem]?

        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookSet = "NotebookSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NotebookSetItem`` list from the paginated response.
        public func getItems() -> [NotebookSetItem] {
            self.notebookSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// Notebook列表
    @inlinable
    public func describeNotebooks(_ input: DescribeNotebooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebooksResponse> {
        self.client.execute(action: "DescribeNotebooks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Notebook列表
    @inlinable
    public func describeNotebooks(_ input: DescribeNotebooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebooksResponse {
        try await self.client.execute(action: "DescribeNotebooks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Notebook列表
    @inlinable
    public func describeNotebooks(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebooksResponse> {
        self.describeNotebooks(.init(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// Notebook列表
    @inlinable
    public func describeNotebooks(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebooksResponse {
        try await self.describeNotebooks(.init(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// Notebook列表
    @inlinable
    public func describeNotebooksPaginated(_ input: DescribeNotebooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NotebookSetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeNotebooks, logger: logger, on: eventLoop)
    }

    /// Notebook列表
    @inlinable @discardableResult
    public func describeNotebooksPaginated(_ input: DescribeNotebooksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNotebooksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNotebooks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// Notebook列表
    ///
    /// - Returns: `AsyncSequence`s of ``NotebookSetItem`` and ``DescribeNotebooksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNotebooksPaginator(_ input: DescribeNotebooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNotebooksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNotebooks, logger: logger, on: eventLoop)
    }
}
