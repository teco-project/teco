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
import TecoPaginationHelpers

extension Tcss {
    /// DescribeAssetImageVirusList请求参数结构体
    public struct DescribeAssetImageVirusListRequest: TCPaginatedRequest {
        /// 镜像id
        public let imageID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Name- String - 是否必填：否 - 镜像名称筛选，
        /// - RiskLevel - String - 是否必填：否 - 风险等级  1,2,3,4
        public let filters: [AssetFilters]?

        /// 排序 asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.imageID = imageID
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetImageVirusListResponse) -> DescribeAssetImageVirusListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetImageVirusListRequest(imageID: self.imageID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetImageVirusList返回参数结构体
    public struct DescribeAssetImageVirusListResponse: TCPaginatedResponse {
        /// 镜像病毒列表
        public let list: [ImageVirusInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 病毒扫描状态
        /// 0:未扫描
        /// 1:扫描中
        /// 2:扫描完成
        /// 3:扫描出错
        /// 4:扫描取消
        public let virusScanStatus: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case virusScanStatus = "VirusScanStatus"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ImageVirusInfo`` list from the paginated response.
        public func getItems() -> [ImageVirusInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable
    public func describeAssetImageVirusList(_ input: DescribeAssetImageVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageVirusListResponse> {
        self.client.execute(action: "DescribeAssetImageVirusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable
    public func describeAssetImageVirusList(_ input: DescribeAssetImageVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVirusListResponse {
        try await self.client.execute(action: "DescribeAssetImageVirusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable
    public func describeAssetImageVirusList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageVirusListResponse> {
        self.describeAssetImageVirusList(.init(imageID: imageID, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable
    public func describeAssetImageVirusList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVirusListResponse {
        try await self.describeAssetImageVirusList(.init(imageID: imageID, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable
    public func describeAssetImageVirusListPaginated(_ input: DescribeAssetImageVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageVirusInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageVirusList, logger: logger, on: eventLoop)
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    @inlinable @discardableResult
    public func describeAssetImageVirusListPaginated(_ input: DescribeAssetImageVirusListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageVirusListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageVirusList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像病毒列表
    ///
    /// 容器安全查询镜像病毒列表
    ///
    /// - Returns: `AsyncSequence`s of ``ImageVirusInfo`` and ``DescribeAssetImageVirusListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetImageVirusListPaginator(_ input: DescribeAssetImageVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetImageVirusListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageVirusList, logger: logger, on: eventLoop)
    }
}
