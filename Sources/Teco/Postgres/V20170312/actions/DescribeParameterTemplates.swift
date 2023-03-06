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

import TecoPaginationHelpers

extension Postgres {
    /// DescribeParameterTemplates请求参数结构体
    public struct DescribeParameterTemplatesRequest: TCPaginatedRequest {
        /// 过滤条件，目前支持的过滤条件有：TemplateName, TemplateId，DBMajorVersion，DBEngine
        public let filters: [Filter]?

        /// 每页显示数量，[0，100]，默认 20
        public let limit: Int64?

        /// 数据偏移量
        public let offset: Int64?

        /// 排序指标，枚举值，支持：CreateTime，TemplateName，DBMajorVersion
        public let orderBy: String?

        /// 排序方式，枚举值，支持：asc（升序） ，desc（降序）
        public let orderByType: String?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeParameterTemplatesResponse) -> DescribeParameterTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeParameterTemplatesRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeParameterTemplates返回参数结构体
    public struct DescribeParameterTemplatesResponse: TCPaginatedResponse {
        /// 符合查询条件的参数模板总数
        public let totalCount: Int64

        /// 参数模板列表
        public let parameterTemplateSet: [ParameterTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case parameterTemplateSet = "ParameterTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ParameterTemplate] {
            self.parameterTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable
    public func describeParameterTemplates(_ input: DescribeParameterTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParameterTemplatesResponse> {
        self.client.execute(action: "DescribeParameterTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable
    public func describeParameterTemplates(_ input: DescribeParameterTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParameterTemplatesResponse {
        try await self.client.execute(action: "DescribeParameterTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable
    public func describeParameterTemplates(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParameterTemplatesResponse> {
        let input = DescribeParameterTemplatesRequest(filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeParameterTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable
    public func describeParameterTemplates(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParameterTemplatesResponse {
        let input = DescribeParameterTemplatesRequest(filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeParameterTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable
    public func describeParameterTemplatesPaginated(_ input: DescribeParameterTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ParameterTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeParameterTemplates, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    @inlinable @discardableResult
    public func describeParameterTemplatesPaginated(_ input: DescribeParameterTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeParameterTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeParameterTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。
    ///
    /// - Returns: `AsyncSequence`s of `ParameterTemplate` and `DescribeParameterTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeParameterTemplatesPaginator(_ input: DescribeParameterTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeParameterTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeParameterTemplates, logger: logger, on: eventLoop)
    }
}
