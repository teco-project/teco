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

import TecoCore
import TecoPaginationHelpers

extension Batch {
    /// DescribeTaskTemplates请求参数结构体
    public struct DescribeTaskTemplatesRequest: TCPaginatedRequest {
        /// 任务模板ID列表，与Filters参数不能同时指定。
        public let taskTemplateIds: [String]?

        /// 过滤条件
        /// <li> task-template-name - String - 是否必填：否 -（过滤条件）按照任务模板名称过滤。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        /// 与TaskTemplateIds参数不能同时指定。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: Int64?

        /// 返回数量
        public let limit: Int64?

        public init(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.taskTemplateIds = taskTemplateIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case taskTemplateIds = "TaskTemplateIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskTemplatesResponse) -> DescribeTaskTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskTemplatesRequest(taskTemplateIds: self.taskTemplateIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTaskTemplates返回参数结构体
    public struct DescribeTaskTemplatesResponse: TCPaginatedResponse {
        /// 任务模板列表
        public let taskTemplateSet: [TaskTemplateView]

        /// 任务模板数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskTemplateSet = "TaskTemplateSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskTemplateView] {
            self.taskTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskTemplatesResponse> {
        self.client.execute(action: "DescribeTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskTemplatesResponse {
        try await self.client.execute(action: "DescribeTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskTemplatesResponse> {
        self.describeTaskTemplates(.init(taskTemplateIds: taskTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskTemplatesResponse {
        try await self.describeTaskTemplates(.init(taskTemplateIds: taskTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplatesPaginated(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskTemplateView])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskTemplates, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable @discardableResult
    public func describeTaskTemplatesPaginated(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    ///
    /// - Returns: `AsyncSequence`s of `TaskTemplateView` and `DescribeTaskTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskTemplatesPaginator(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskTemplates, logger: logger, on: eventLoop)
    }
}
