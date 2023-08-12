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

extension Cwp {
    /// DescribeAssetPlanTaskList请求参数结构体
    public struct DescribeAssetPlanTaskListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>User- string - 是否必填：否 - 用户</li>
        /// <li>Status- int - 是否必填：否 - 默认启用状态：0未启用， 1启用 </li>
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetPlanTaskListResponse) -> DescribeAssetPlanTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetPlanTaskListRequest(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetPlanTaskList返回参数结构体
    public struct DescribeAssetPlanTaskListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasks: [AssetPlanTask]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetPlanTask`` list from the paginated response.
        public func getItems() -> [AssetPlanTask] {
            self.tasks ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(_ input: DescribeAssetPlanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPlanTaskListResponse> {
        self.client.execute(action: "DescribeAssetPlanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(_ input: DescribeAssetPlanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPlanTaskListResponse {
        try await self.client.execute(action: "DescribeAssetPlanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPlanTaskListResponse> {
        self.describeAssetPlanTaskList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPlanTaskListResponse {
        try await self.describeAssetPlanTaskList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskListPaginated(_ input: DescribeAssetPlanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetPlanTask])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetPlanTaskList, logger: logger, on: eventLoop)
    }

    /// 查询资产管理计划任务列表
    @inlinable @discardableResult
    public func describeAssetPlanTaskListPaginated(_ input: DescribeAssetPlanTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetPlanTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetPlanTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产管理计划任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetPlanTask`` and ``DescribeAssetPlanTaskListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetPlanTaskListPaginator(_ input: DescribeAssetPlanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetPlanTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetPlanTaskList, logger: logger, on: eventLoop)
    }
}
