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
    /// DescribeAssetImageRegistryRiskInfoList请求参数结构体
    public struct DescribeAssetImageRegistryRiskInfoListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Level- String - 是否必填：否 - 漏洞级别筛选，
        /// - Name - String - 是否必填：否 - 漏洞名称
        public let filters: [AssetFilters]?

        /// 镜像id
        public let imageInfo: ImageInfo?

        /// 排序字段（Level）
        public let by: String?

        /// 排序方式 + -
        public let order: String?

        /// 镜像标识Id
        public let id: UInt64?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, by: String? = nil, order: String? = nil, id: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.imageInfo = imageInfo
            self.by = by
            self.order = order
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case imageInfo = "ImageInfo"
            case by = "By"
            case order = "Order"
            case id = "Id"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetImageRegistryRiskInfoListResponse) -> DescribeAssetImageRegistryRiskInfoListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, imageInfo: self.imageInfo, by: self.by, order: self.order, id: self.id)
        }
    }

    /// DescribeAssetImageRegistryRiskInfoList返回参数结构体
    public struct DescribeAssetImageRegistryRiskInfoListResponse: TCPaginatedResponse {
        /// 镜像漏洞列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ImageRisk]?

        /// 总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ImageRisk`` list from the paginated response.
        public func getItems() -> [ImageRisk] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable
    public func describeAssetImageRegistryRiskInfoList(_ input: DescribeAssetImageRegistryRiskInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRiskInfoListResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryRiskInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable
    public func describeAssetImageRegistryRiskInfoList(_ input: DescribeAssetImageRegistryRiskInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRiskInfoListResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryRiskInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable
    public func describeAssetImageRegistryRiskInfoList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, by: String? = nil, order: String? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRiskInfoListResponse> {
        self.describeAssetImageRegistryRiskInfoList(.init(limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, by: by, order: order, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable
    public func describeAssetImageRegistryRiskInfoList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, by: String? = nil, order: String? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRiskInfoListResponse {
        try await self.describeAssetImageRegistryRiskInfoList(.init(limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, by: by, order: order, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable
    public func describeAssetImageRegistryRiskInfoListPaginated(_ input: DescribeAssetImageRegistryRiskInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageRisk])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRegistryRiskInfoList, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像高危行为列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryRiskInfoListPaginated(_ input: DescribeAssetImageRegistryRiskInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageRegistryRiskInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRegistryRiskInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像高危行为列表
    ///
    /// - Returns: `AsyncSequence`s of ``ImageRisk`` and ``DescribeAssetImageRegistryRiskInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetImageRegistryRiskInfoListPaginator(_ input: DescribeAssetImageRegistryRiskInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetImageRegistryRiskInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageRegistryRiskInfoList, logger: logger, on: eventLoop)
    }
}
