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

extension Tke {
    /// DescribePrometheusTemplates请求参数结构体
    public struct DescribePrometheusTemplatesRequest: TCPaginatedRequest {
        /// 模糊过滤条件，支持
        /// Level 按模板级别过滤
        /// Name 按名称过滤
        /// Describe 按描述过滤
        /// ID 按templateId过滤
        public let filters: [Filter]?

        /// 分页偏移
        public let offset: UInt64?

        /// 总数限制
        public let limit: UInt64?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePrometheusTemplatesResponse) -> DescribePrometheusTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusTemplatesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrometheusTemplates返回参数结构体
    public struct DescribePrometheusTemplatesResponse: TCPaginatedResponse {
        /// 模板列表
        public let templates: [PrometheusTemplate]

        /// 总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PrometheusTemplate`` list from the paginated response.
        public func getItems() -> [PrometheusTemplate] {
            self.templates
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(_ input: DescribePrometheusTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTemplatesResponse> {
        self.client.execute(action: "DescribePrometheusTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(_ input: DescribePrometheusTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTemplatesResponse {
        try await self.client.execute(action: "DescribePrometheusTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTemplatesResponse> {
        self.describePrometheusTemplates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTemplatesResponse {
        try await self.describePrometheusTemplates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplatesPaginated(_ input: DescribePrometheusTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusTemplates, logger: logger, on: eventLoop)
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable @discardableResult
    public func describePrometheusTemplatesPaginated(_ input: DescribePrometheusTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    ///
    /// - Returns: `AsyncSequence`s of ``PrometheusTemplate`` and ``DescribePrometheusTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusTemplatesPaginator(_ input: DescribePrometheusTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusTemplates, logger: logger, on: eventLoop)
    }
}
