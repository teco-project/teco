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

extension Wedata {
    /// DescribeDataSourceList请求参数结构体
    public struct DescribeDataSourceListRequest: TCPaginatedRequest {
        /// 页码
        public let pageNumber: UInt64?

        /// 返回数量
        public let pageSize: UInt64?

        /// 排序配置
        public let orderFields: [OrderField]?

        /// 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        public let filters: [Filter]?

        public init(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderFields: [OrderField]? = nil, filters: [Filter]? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.orderFields = orderFields
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case orderFields = "OrderFields"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDataSourceListResponse) -> DescribeDataSourceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, orderFields: self.orderFields, filters: self.filters)
        }
    }

    /// DescribeDataSourceList返回参数结构体
    public struct DescribeDataSourceListResponse: TCPaginatedResponse {
        /// 数据源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DataSourceInfoPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DataSourceInfo`` list from the paginated response.
        public func getItems() -> [DataSourceInfo] {
            self.data?.rows ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceListResponse> {
        self.client.execute(action: "DescribeDataSourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceListResponse {
        try await self.client.execute(action: "DescribeDataSourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceListResponse> {
        self.describeDataSourceList(.init(pageNumber: pageNumber, pageSize: pageSize, orderFields: orderFields, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceListResponse {
        try await self.describeDataSourceList(.init(pageNumber: pageNumber, pageSize: pageSize, orderFields: orderFields, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable
    public func describeDataSourceListPaginated(_ input: DescribeDataSourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DataSourceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDataSourceList, logger: logger, on: eventLoop)
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    @inlinable @discardableResult
    public func describeDataSourceListPaginated(_ input: DescribeDataSourceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDataSourceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDataSourceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 数据源详情
    ///
    /// - Returns: `AsyncSequence`s of ``DataSourceInfo`` and ``DescribeDataSourceListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDataSourceListPaginator(_ input: DescribeDataSourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDataSourceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDataSourceList, logger: logger, on: eventLoop)
    }
}
