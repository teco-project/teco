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
    /// DescribeAssetImageRiskList请求参数结构体
    public struct DescribeAssetImageRiskListRequest: TCPaginatedRequest {
        /// 镜像id
        public let imageID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Level- String - 是否必填：否 - 风险级别 1,2,3,4，
        /// - Behavior - String - 是否必填：否 - 风险行为 1,2,3,4
        /// - Type - String - 是否必填：否 - 风险类型  1,2,
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式
        public let order: String?

        public init(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.imageID = imageID
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetImageRiskListResponse) -> DescribeAssetImageRiskListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(imageID: self.imageID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAssetImageRiskList返回参数结构体
    public struct DescribeAssetImageRiskListResponse: TCPaginatedResponse {
        /// 镜像病毒列表
        public let list: [ImageRiskInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ImageRiskInfo`` list from the paginated response.
        public func getItems() -> [ImageRiskInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable
    public func describeAssetImageRiskList(_ input: DescribeAssetImageRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRiskListResponse> {
        self.client.execute(action: "DescribeAssetImageRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable
    public func describeAssetImageRiskList(_ input: DescribeAssetImageRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRiskListResponse {
        try await self.client.execute(action: "DescribeAssetImageRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable
    public func describeAssetImageRiskList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRiskListResponse> {
        self.describeAssetImageRiskList(.init(imageID: imageID, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable
    public func describeAssetImageRiskList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRiskListResponse {
        try await self.describeAssetImageRiskList(.init(imageID: imageID, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable
    public func describeAssetImageRiskListPaginated(_ input: DescribeAssetImageRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageRiskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRiskList, logger: logger, on: eventLoop)
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    @inlinable @discardableResult
    public func describeAssetImageRiskListPaginated(_ input: DescribeAssetImageRiskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageRiskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRiskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像风险列表
    ///
    /// 容器安全查询镜像风险列表
    ///
    /// - Returns: `AsyncSequence`s of ``ImageRiskInfo`` and ``DescribeAssetImageRiskListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetImageRiskListPaginator(_ input: DescribeAssetImageRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetImageRiskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageRiskList, logger: logger, on: eventLoop)
    }
}
