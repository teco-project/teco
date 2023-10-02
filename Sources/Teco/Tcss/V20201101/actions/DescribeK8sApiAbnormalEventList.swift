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

extension Tcss {
    /// DescribeK8sApiAbnormalEventList请求参数结构体
    public struct DescribeK8sApiAbnormalEventListRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - TimeRange - string -是否必填: 否 - 时间范围筛选 ["2022-03-31 16:55:00", "2022-03-31 17:00:00"]
        /// - MatchRules - string  - 是否必填: 否 -命中规则筛选
        /// - RiskLevel - string  - 是否必填: 否 -威胁等级筛选
        /// - Status - string  - 是否必填: 否 -事件状态筛选
        /// - MatchRuleType - string  - 是否必填: 否 -命中规则类型筛选
        /// - ClusterRunningStatus - string  - 是否必填: 否 -集群运行状态
        /// - ClusterName - string  - 是否必填: 否 -集群名称
        /// - ClusterID - string  - 是否必填: 否 -集群ID
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式
        public let order: String?

        /// 排序字段
        /// LatestFoundTime: 最近生成时间
        /// AlarmCount: 告警数量
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeK8sApiAbnormalEventListResponse) -> DescribeK8sApiAbnormalEventListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeK8sApiAbnormalEventList返回参数结构体
    public struct DescribeK8sApiAbnormalEventListResponse: TCPaginatedResponse {
        /// 事件列表
        public let list: [K8sApiAbnormalEventListItem]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``K8sApiAbnormalEventListItem`` list from the paginated response.
        public func getItems() -> [K8sApiAbnormalEventListItem] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询k8s api异常事件列表
    @inlinable
    public func describeK8sApiAbnormalEventList(_ input: DescribeK8sApiAbnormalEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalEventListResponse> {
        self.client.execute(action: "DescribeK8sApiAbnormalEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询k8s api异常事件列表
    @inlinable
    public func describeK8sApiAbnormalEventList(_ input: DescribeK8sApiAbnormalEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalEventListResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询k8s api异常事件列表
    @inlinable
    public func describeK8sApiAbnormalEventList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalEventListResponse> {
        self.describeK8sApiAbnormalEventList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询k8s api异常事件列表
    @inlinable
    public func describeK8sApiAbnormalEventList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalEventListResponse {
        try await self.describeK8sApiAbnormalEventList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询k8s api异常事件列表
    @inlinable
    public func describeK8sApiAbnormalEventListPaginated(_ input: DescribeK8sApiAbnormalEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [K8sApiAbnormalEventListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeK8sApiAbnormalEventList, logger: logger, on: eventLoop)
    }

    /// 查询k8s api异常事件列表
    @inlinable @discardableResult
    public func describeK8sApiAbnormalEventListPaginated(_ input: DescribeK8sApiAbnormalEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeK8sApiAbnormalEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeK8sApiAbnormalEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询k8s api异常事件列表
    ///
    /// - Returns: `AsyncSequence`s of ``K8sApiAbnormalEventListItem`` and ``DescribeK8sApiAbnormalEventListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeK8sApiAbnormalEventListPaginator(_ input: DescribeK8sApiAbnormalEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeK8sApiAbnormalEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeK8sApiAbnormalEventList, logger: logger, on: eventLoop)
    }
}
