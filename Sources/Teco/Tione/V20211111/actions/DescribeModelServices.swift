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
    /// DescribeModelServices请求参数结构体
    public struct DescribeModelServicesRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为20
        public let limit: Int64?

        /// 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        public let order: String?

        /// 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        public let orderField: String?

        /// 分页参数，支持的分页过滤Name包括：
        /// ["ClusterId", "ServiceId", "ServiceGroupName", "ServiceGroupId","Status","CreatedBy","ModelId"]
        public let filters: [Filter]?

        /// 标签过滤参数
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
        public func makeNextRequest(with response: DescribeModelServicesResponse) -> DescribeModelServicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderField: self.orderField, filters: self.filters, tagFilters: self.tagFilters)
        }
    }

    /// DescribeModelServices返回参数结构体
    public struct DescribeModelServicesResponse: TCPaginatedResponse {
        /// 服务数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let services: [Service]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case services = "Services"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Service`` list from the paginated response.
        public func getItems() -> [Service] {
            self.services ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询多个服务
    @inlinable
    public func describeModelServices(_ input: DescribeModelServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServicesResponse> {
        self.client.execute(action: "DescribeModelServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询多个服务
    @inlinable
    public func describeModelServices(_ input: DescribeModelServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServicesResponse {
        try await self.client.execute(action: "DescribeModelServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询多个服务
    @inlinable
    public func describeModelServices(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServicesResponse> {
        self.describeModelServices(.init(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询多个服务
    @inlinable
    public func describeModelServices(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServicesResponse {
        try await self.describeModelServices(.init(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询多个服务
    @inlinable
    public func describeModelServicesPaginated(_ input: DescribeModelServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Service])> {
        self.client.paginate(input: input, region: region, command: self.describeModelServices, logger: logger, on: eventLoop)
    }

    /// 查询多个服务
    @inlinable @discardableResult
    public func describeModelServicesPaginated(_ input: DescribeModelServicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeModelServicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeModelServices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询多个服务
    ///
    /// - Returns: `AsyncSequence`s of ``Service`` and ``DescribeModelServicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeModelServicesPaginator(_ input: DescribeModelServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeModelServicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeModelServices, logger: logger, on: eventLoop)
    }
}
