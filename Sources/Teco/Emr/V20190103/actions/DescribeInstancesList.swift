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

extension Emr {
    /// DescribeInstancesList请求参数结构体
    public struct DescribeInstancesListRequest: TCPaginatedRequest {
        /// 集群筛选策略。取值范围：<li>clusterList：表示查询除了已销毁集群之外的集群列表。</li><li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li><li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        public let displayStrategy: String

        /// 页编号，默认值为0，表示第一页。
        public let offset: UInt64?

        /// 每页返回数量，默认值为10，最大值为100。
        public let limit: UInt64?

        /// 排序字段。取值范围：<li>clusterId：表示按照实例ID排序。</li><li>addTime：表示按照实例创建时间排序。</li><li>status：表示按照实例的状态码排序。</li>
        public let orderField: String?

        /// 按照OrderField升序或者降序进行排序。取值范围：<li>0：表示降序。</li><li>1：表示升序。</li>默认值为0。
        public let asc: Int64?

        /// 自定义查询
        public let filters: [Filters]?

        public init(displayStrategy: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, asc: Int64? = nil, filters: [Filters]? = nil) {
            self.displayStrategy = displayStrategy
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.asc = asc
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case displayStrategy = "DisplayStrategy"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case asc = "Asc"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesListResponse) -> DescribeInstancesListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesListRequest(displayStrategy: self.displayStrategy, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, asc: self.asc, filters: self.filters)
        }
    }

    /// DescribeInstancesList返回参数结构体
    public struct DescribeInstancesListResponse: TCPaginatedResponse {
        /// 符合条件的实例总数。
        public let totalCnt: Int64

        /// 集群实例列表
        public let instancesList: [EmrListInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case instancesList = "InstancesList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [EmrListInstance] {
            self.instancesList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCnt
        }
    }

    /// 查询集群列表
    @inlinable
    public func describeInstancesList(_ input: DescribeInstancesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesListResponse> {
        self.client.execute(action: "DescribeInstancesList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeInstancesList(_ input: DescribeInstancesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesListResponse {
        try await self.client.execute(action: "DescribeInstancesList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    @inlinable
    public func describeInstancesList(displayStrategy: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, asc: Int64? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesListResponse> {
        self.describeInstancesList(.init(displayStrategy: displayStrategy, offset: offset, limit: limit, orderField: orderField, asc: asc, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeInstancesList(displayStrategy: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, asc: Int64? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesListResponse {
        try await self.describeInstancesList(.init(displayStrategy: displayStrategy, offset: offset, limit: limit, orderField: orderField, asc: asc, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeInstancesListPaginated(_ input: DescribeInstancesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EmrListInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesList, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable @discardableResult
    public func describeInstancesListPaginated(_ input: DescribeInstancesListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    ///
    /// - Returns: `AsyncSequence`s of `EmrListInstance` and `DescribeInstancesListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesListPaginator(_ input: DescribeInstancesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstancesList, logger: logger, on: eventLoop)
    }
}
