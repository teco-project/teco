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
    /// DescribeAssetImageRegistryVirusList请求参数结构体
    public struct DescribeAssetImageRegistryVirusListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        /// <li>Name - String - 是否必填：否 - 漏洞名称</li>
        public let filters: [AssetFilters]?

        /// 镜像信息
        public let imageInfo: ImageInfo?

        /// 镜像标识Id
        public let id: UInt64?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.imageInfo = imageInfo
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case imageInfo = "ImageInfo"
            case id = "Id"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetImageRegistryVirusListResponse) -> DescribeAssetImageRegistryVirusListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetImageRegistryVirusListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, imageInfo: self.imageInfo, id: self.id)
        }
    }

    /// DescribeAssetImageRegistryVirusList返回参数结构体
    public struct DescribeAssetImageRegistryVirusListResponse: TCPaginatedResponse {
        /// 镜像漏洞列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ImageVirus]?

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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageVirus] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(_ input: DescribeAssetImageRegistryVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryVirusListResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryVirusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(_ input: DescribeAssetImageRegistryVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryVirusListResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryVirusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryVirusListResponse> {
        self.describeAssetImageRegistryVirusList(.init(limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryVirusListResponse {
        try await self.describeAssetImageRegistryVirusList(.init(limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusListPaginated(_ input: DescribeAssetImageRegistryVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageVirus])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRegistryVirusList, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询木马病毒列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryVirusListPaginated(_ input: DescribeAssetImageRegistryVirusListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageRegistryVirusListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageRegistryVirusList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询木马病毒列表
    ///
    /// - Returns: `AsyncSequence`s of `ImageVirus` and `DescribeAssetImageRegistryVirusListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetImageRegistryVirusListPaginator(_ input: DescribeAssetImageRegistryVirusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetImageRegistryVirusListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageRegistryVirusList, logger: logger, on: eventLoop)
    }
}
