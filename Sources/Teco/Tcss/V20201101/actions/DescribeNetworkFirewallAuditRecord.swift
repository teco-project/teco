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

extension Tcss {
    /// DescribeNetworkFirewallAuditRecord请求参数结构体
    public struct DescribeNetworkFirewallAuditRecordRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 每次查询的最大记录数量
        public let limit: UInt64?

        /// Name - Action
        /// Name 可取值：publish，unpublish，confirm，add，update，delete
        public let filters: [ComplianceFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNetworkFirewallAuditRecordResponse) -> DescribeNetworkFirewallAuditRecordRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetworkFirewallAuditRecordRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeNetworkFirewallAuditRecord返回参数结构体
    public struct DescribeNetworkFirewallAuditRecordResponse: TCPaginatedResponse {
        /// 集群审计总数
        public let totalCount: UInt64

        /// 集群的审计详细信息
        public let auditList: [NetworkAuditRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case auditList = "AuditList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetworkAuditRecord] {
            self.auditList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群策略审计列表
    @inlinable
    public func describeNetworkFirewallAuditRecord(_ input: DescribeNetworkFirewallAuditRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallAuditRecordResponse> {
        self.client.execute(action: "DescribeNetworkFirewallAuditRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群策略审计列表
    @inlinable
    public func describeNetworkFirewallAuditRecord(_ input: DescribeNetworkFirewallAuditRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallAuditRecordResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallAuditRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群策略审计列表
    @inlinable
    public func describeNetworkFirewallAuditRecord(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallAuditRecordResponse> {
        self.describeNetworkFirewallAuditRecord(.init(offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群策略审计列表
    @inlinable
    public func describeNetworkFirewallAuditRecord(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallAuditRecordResponse {
        try await self.describeNetworkFirewallAuditRecord(.init(offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群策略审计列表
    @inlinable
    public func describeNetworkFirewallAuditRecordPaginated(_ input: DescribeNetworkFirewallAuditRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetworkAuditRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallAuditRecord, logger: logger, on: eventLoop)
    }

    /// 查询集群策略审计列表
    @inlinable @discardableResult
    public func describeNetworkFirewallAuditRecordPaginated(_ input: DescribeNetworkFirewallAuditRecordRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetworkFirewallAuditRecordResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallAuditRecord, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群策略审计列表
    ///
    /// - Returns: `AsyncSequence`s of `NetworkAuditRecord` and `DescribeNetworkFirewallAuditRecordResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNetworkFirewallAuditRecordPaginator(_ input: DescribeNetworkFirewallAuditRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetworkFirewallAuditRecordRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetworkFirewallAuditRecord, logger: logger, on: eventLoop)
    }
}
