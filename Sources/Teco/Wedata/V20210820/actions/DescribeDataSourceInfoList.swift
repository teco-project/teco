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
    /// DescribeDataSourceInfoList请求参数结构体
    public struct DescribeDataSourceInfoListRequest: TCPaginatedRequest {
        /// 工作空间id
        public let projectId: String

        /// 页码
        public let pageNumber: UInt64?

        /// 页数
        public let pageSize: UInt64?

        /// 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        public let filters: Filter?

        /// 排序配置
        public let orderFields: OrderField?

        /// 数据源类型
        public let type: String?

        /// 数据源名称过滤用
        public let datasourceName: String?

        public init(projectId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: Filter? = nil, orderFields: OrderField? = nil, type: String? = nil, datasourceName: String? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.type = type
            self.datasourceName = datasourceName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case type = "Type"
            case datasourceName = "DatasourceName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDataSourceInfoListResponse) -> DescribeDataSourceInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, type: self.type, datasourceName: self.datasourceName)
        }
    }

    /// DescribeDataSourceInfoList返回参数结构体
    public struct DescribeDataSourceInfoListResponse: TCPaginatedResponse {
        /// 总条数。
        public let totalCount: Int64

        /// 数据源信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let datasourceSet: [DatasourceBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case datasourceSet = "DatasourceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DatasourceBaseInfo`` list from the paginated response.
        public func getItems() -> [DatasourceBaseInfo] {
            self.datasourceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable
    public func describeDataSourceInfoList(_ input: DescribeDataSourceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceInfoListResponse> {
        self.client.execute(action: "DescribeDataSourceInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable
    public func describeDataSourceInfoList(_ input: DescribeDataSourceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceInfoListResponse {
        try await self.client.execute(action: "DescribeDataSourceInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable
    public func describeDataSourceInfoList(projectId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: Filter? = nil, orderFields: OrderField? = nil, type: String? = nil, datasourceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceInfoListResponse> {
        self.describeDataSourceInfoList(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, type: type, datasourceName: datasourceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable
    public func describeDataSourceInfoList(projectId: String, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: Filter? = nil, orderFields: OrderField? = nil, type: String? = nil, datasourceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceInfoListResponse {
        try await self.describeDataSourceInfoList(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, type: type, datasourceName: datasourceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable
    public func describeDataSourceInfoListPaginated(_ input: DescribeDataSourceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DatasourceBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDataSourceInfoList, logger: logger, on: eventLoop)
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    @inlinable @discardableResult
    public func describeDataSourceInfoListPaginated(_ input: DescribeDataSourceInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDataSourceInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDataSourceInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取数据源信息
    ///
    /// 获取数据源信息-数据源分页列表
    ///
    /// - Returns: `AsyncSequence`s of ``DatasourceBaseInfo`` and ``DescribeDataSourceInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDataSourceInfoListPaginator(_ input: DescribeDataSourceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDataSourceInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDataSourceInfoList, logger: logger, on: eventLoop)
    }
}
