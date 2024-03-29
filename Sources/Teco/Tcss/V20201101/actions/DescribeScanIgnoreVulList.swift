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
    /// DescribeScanIgnoreVulList请求参数结构体
    public struct DescribeScanIgnoreVulListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - CVEID- string - 是否必填：否 - CVE编号
        /// - VulName- string - 是否必填：否 - 漏洞名称
        public let filters: [RunTimeFilters]?

        /// 排序方式:DESC,ACS
        public let order: String?

        /// 排序字段 UpdateTime
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScanIgnoreVulListResponse) -> DescribeScanIgnoreVulListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeScanIgnoreVulList返回参数结构体
    public struct DescribeScanIgnoreVulListResponse: TCPaginatedResponse {
        /// 总是
        public let totalCount: Int64

        /// 漏洞列表
        public let list: [ScanIgnoreVul]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScanIgnoreVul`` list from the paginated response.
        public func getItems() -> [ScanIgnoreVul] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable
    public func describeScanIgnoreVulList(_ input: DescribeScanIgnoreVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanIgnoreVulListResponse> {
        self.client.execute(action: "DescribeScanIgnoreVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable
    public func describeScanIgnoreVulList(_ input: DescribeScanIgnoreVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanIgnoreVulListResponse {
        try await self.client.execute(action: "DescribeScanIgnoreVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable
    public func describeScanIgnoreVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanIgnoreVulListResponse> {
        self.describeScanIgnoreVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable
    public func describeScanIgnoreVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanIgnoreVulListResponse {
        try await self.describeScanIgnoreVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable
    public func describeScanIgnoreVulListPaginated(_ input: DescribeScanIgnoreVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ScanIgnoreVul])> {
        self.client.paginate(input: input, region: region, command: self.describeScanIgnoreVulList, logger: logger, on: eventLoop)
    }

    /// 查询扫描忽略的漏洞列表
    @inlinable @discardableResult
    public func describeScanIgnoreVulListPaginated(_ input: DescribeScanIgnoreVulListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScanIgnoreVulListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScanIgnoreVulList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询扫描忽略的漏洞列表
    ///
    /// - Returns: `AsyncSequence`s of ``ScanIgnoreVul`` and ``DescribeScanIgnoreVulListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScanIgnoreVulListPaginator(_ input: DescribeScanIgnoreVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScanIgnoreVulListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScanIgnoreVulList, logger: logger, on: eventLoop)
    }
}
