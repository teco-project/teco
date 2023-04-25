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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tcss {
    /// DescribeComplianceWhitelistItemList请求参数结构体
    public struct DescribeComplianceWhitelistItemListRequest: TCPaginatedRequest {
        /// 起始偏移量，默认为0。
        public let offset: UInt64?

        /// 要获取的数量，默认为10，最大为100。
        public let limit: UInt64?

        /// 资产类型列表。
        public let assetTypeSet: [String]?

        /// 查询过滤器
        public let filters: [ComplianceFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 desc asc
        public let order: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, assetTypeSet: [String]? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.assetTypeSet = assetTypeSet
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case assetTypeSet = "AssetTypeSet"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeComplianceWhitelistItemListResponse) -> DescribeComplianceWhitelistItemListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComplianceWhitelistItemListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, assetTypeSet: self.assetTypeSet, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeComplianceWhitelistItemList返回参数结构体
    public struct DescribeComplianceWhitelistItemListResponse: TCPaginatedResponse {
        /// 白名单项的列表。
        public let whitelistItemSet: [ComplianceWhitelistItem]

        /// 白名单项的总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case whitelistItemSet = "WhitelistItemSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComplianceWhitelistItem] {
            self.whitelistItemSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable
    public func describeComplianceWhitelistItemList(_ input: DescribeComplianceWhitelistItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceWhitelistItemListResponse> {
        self.client.execute(action: "DescribeComplianceWhitelistItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable
    public func describeComplianceWhitelistItemList(_ input: DescribeComplianceWhitelistItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceWhitelistItemListResponse {
        try await self.client.execute(action: "DescribeComplianceWhitelistItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable
    public func describeComplianceWhitelistItemList(offset: UInt64? = nil, limit: UInt64? = nil, assetTypeSet: [String]? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceWhitelistItemListResponse> {
        self.describeComplianceWhitelistItemList(.init(offset: offset, limit: limit, assetTypeSet: assetTypeSet, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable
    public func describeComplianceWhitelistItemList(offset: UInt64? = nil, limit: UInt64? = nil, assetTypeSet: [String]? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceWhitelistItemListResponse {
        try await self.describeComplianceWhitelistItemList(.init(offset: offset, limit: limit, assetTypeSet: assetTypeSet, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable
    public func describeComplianceWhitelistItemListPaginated(_ input: DescribeComplianceWhitelistItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ComplianceWhitelistItem])> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceWhitelistItemList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    @inlinable @discardableResult
    public func describeComplianceWhitelistItemListPaginated(_ input: DescribeComplianceWhitelistItemListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComplianceWhitelistItemListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceWhitelistItemList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询白名单列表
    ///
    /// 查询白名单列表
    ///
    /// - Returns: `AsyncSequence`s of `ComplianceWhitelistItem` and `DescribeComplianceWhitelistItemListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComplianceWhitelistItemListPaginator(_ input: DescribeComplianceWhitelistItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComplianceWhitelistItemListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComplianceWhitelistItemList, logger: logger, on: eventLoop)
    }
}
