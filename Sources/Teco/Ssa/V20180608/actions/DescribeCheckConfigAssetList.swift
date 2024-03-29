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

extension Ssa {
    /// DescribeCheckConfigAssetList请求参数结构体
    public struct DescribeCheckConfigAssetListRequest: TCPaginatedRequest {
        /// 检查项UUID
        public let id: String

        /// 页码
        public let offset: Int64

        /// 每页列表数
        public let limit: Int64

        /// db搜索条件
        public let search: [Filter]?

        /// ES过滤条件
        public let filter: [Filter]?

        public init(id: String, offset: Int64, limit: Int64, search: [Filter]? = nil, filter: [Filter]? = nil) {
            self.id = id
            self.offset = offset
            self.limit = limit
            self.search = search
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case offset = "Offset"
            case limit = "Limit"
            case search = "Search"
            case filter = "Filter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCheckConfigAssetListResponse) -> DescribeCheckConfigAssetListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(id: self.id, offset: self.offset + .init(response.getItems().count), limit: self.limit, search: self.search, filter: self.filter)
        }
    }

    /// DescribeCheckConfigAssetList返回参数结构体
    public struct DescribeCheckConfigAssetListResponse: TCPaginatedResponse {
        /// 资产列表总数
        public let total: Int64

        /// 资产列表项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkAssetsList: [CheckAssetItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case checkAssetsList = "CheckAssetsList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CheckAssetItem`` list from the paginated response.
        public func getItems() -> [CheckAssetItem] {
            self.checkAssetsList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 云安全配置管理资产组列表
    @inlinable
    public func describeCheckConfigAssetList(_ input: DescribeCheckConfigAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCheckConfigAssetListResponse> {
        self.client.execute(action: "DescribeCheckConfigAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云安全配置管理资产组列表
    @inlinable
    public func describeCheckConfigAssetList(_ input: DescribeCheckConfigAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCheckConfigAssetListResponse {
        try await self.client.execute(action: "DescribeCheckConfigAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云安全配置管理资产组列表
    @inlinable
    public func describeCheckConfigAssetList(id: String, offset: Int64, limit: Int64, search: [Filter]? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCheckConfigAssetListResponse> {
        self.describeCheckConfigAssetList(.init(id: id, offset: offset, limit: limit, search: search, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 云安全配置管理资产组列表
    @inlinable
    public func describeCheckConfigAssetList(id: String, offset: Int64, limit: Int64, search: [Filter]? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCheckConfigAssetListResponse {
        try await self.describeCheckConfigAssetList(.init(id: id, offset: offset, limit: limit, search: search, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 云安全配置管理资产组列表
    @inlinable
    public func describeCheckConfigAssetListPaginated(_ input: DescribeCheckConfigAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CheckAssetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCheckConfigAssetList, logger: logger, on: eventLoop)
    }

    /// 云安全配置管理资产组列表
    @inlinable @discardableResult
    public func describeCheckConfigAssetListPaginated(_ input: DescribeCheckConfigAssetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCheckConfigAssetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCheckConfigAssetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 云安全配置管理资产组列表
    ///
    /// - Returns: `AsyncSequence`s of ``CheckAssetItem`` and ``DescribeCheckConfigAssetListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCheckConfigAssetListPaginator(_ input: DescribeCheckConfigAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCheckConfigAssetListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCheckConfigAssetList, logger: logger, on: eventLoop)
    }
}
