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
    /// DescribeAssetDetailList请求参数结构体
    public struct DescribeAssetDetailListRequest: TCPaginatedRequest {
        /// 查询条件，可支持的查询字段：AssetUniqid,AssetName,AssetIpAll,AssetVpcid,Tag
        public let filter: [AssetQueryFilter]?

        /// 排序条件，可支持的排序字段：
        /// AssetCspmRiskNum,AssetVulNum,AssetEventNum,SsaAssetDiscoverTime
        public let sorter: [QuerySort]?

        /// 风险标签
        public let riskTags: [String]?

        /// 标签
        public let tags: [String]?

        /// 页
        public let pageIndex: UInt64?

        /// 页大小
        public let pageSize: UInt64?

        public init(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, riskTags: [String]? = nil, tags: [String]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil) {
            self.filter = filter
            self.sorter = sorter
            self.riskTags = riskTags
            self.tags = tags
            self.pageIndex = pageIndex
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case sorter = "Sorter"
            case riskTags = "RiskTags"
            case tags = "Tags"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetDetailListResponse) -> DescribeAssetDetailListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(filter: self.filter, sorter: self.sorter, riskTags: self.riskTags, tags: self.tags, pageIndex: (self.pageIndex ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeAssetDetailList返回参数结构体
    public struct DescribeAssetDetailListResponse: TCPaginatedResponse {
        /// 业务数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [AssetDetail]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetDetail`` list from the paginated response.
        public func getItems() -> [AssetDetail] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable
    public func describeAssetDetailList(_ input: DescribeAssetDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetDetailListResponse> {
        self.client.execute(action: "DescribeAssetDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable
    public func describeAssetDetailList(_ input: DescribeAssetDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetDetailListResponse {
        try await self.client.execute(action: "DescribeAssetDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable
    public func describeAssetDetailList(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, riskTags: [String]? = nil, tags: [String]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetDetailListResponse> {
        self.describeAssetDetailList(.init(filter: filter, sorter: sorter, riskTags: riskTags, tags: tags, pageIndex: pageIndex, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable
    public func describeAssetDetailList(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, riskTags: [String]? = nil, tags: [String]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetDetailListResponse {
        try await self.describeAssetDetailList(.init(filter: filter, sorter: sorter, riskTags: riskTags, tags: tags, pageIndex: pageIndex, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable
    public func describeAssetDetailListPaginated(_ input: DescribeAssetDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetDetailList, logger: logger, on: eventLoop)
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    @inlinable @discardableResult
    public func describeAssetDetailListPaginated(_ input: DescribeAssetDetailListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetDetailListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetDetailList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资产列表
    ///
    /// 资产条件查询
    ///
    /// - Returns: `AsyncSequence`s of ``AssetDetail`` and ``DescribeAssetDetailListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetDetailListPaginator(_ input: DescribeAssetDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetDetailListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetDetailList, logger: logger, on: eventLoop)
    }
}
