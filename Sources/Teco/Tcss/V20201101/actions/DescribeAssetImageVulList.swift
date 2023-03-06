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

import TecoPaginationHelpers

extension Tcss {
    /// DescribeAssetImageVulList请求参数结构体
    public struct DescribeAssetImageVulListRequest: TCPaginatedRequest {
        /// 镜像id
        public let imageID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Name- String - 是否必填：否 - 漏洞名称名称筛选，</li>
        /// <li>Level - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        public let filters: [AssetFilters]?

        /// 排序字段（Level）
        public let by: String?

        /// 排序方式 + -
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
        public func getNextPaginatedRequest(with response: DescribeAssetImageVulListResponse) -> DescribeAssetImageVulListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetImageVulListRequest(imageID: self.imageID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAssetImageVulList返回参数结构体
    public struct DescribeAssetImageVulListResponse: TCPaginatedResponse {
        /// 镜像漏洞列表
        public let list: [ImagesVul]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImagesVul] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(_ input: DescribeAssetImageVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageVulListResponse> {
        self.client.execute(action: "DescribeAssetImageVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(_ input: DescribeAssetImageVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVulListResponse {
        try await self.client.execute(action: "DescribeAssetImageVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageVulListResponse> {
        let input = DescribeAssetImageVulListRequest(imageID: imageID, limit: limit, offset: offset, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeAssetImageVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(imageID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVulListResponse {
        let input = DescribeAssetImageVulListRequest(imageID: imageID, limit: limit, offset: offset, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeAssetImageVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulListPaginated(_ input: DescribeAssetImageVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImagesVul])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageVulList, logger: logger, on: eventLoop)
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulListPaginated(_ input: DescribeAssetImageVulListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageVulListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageVulList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulListPaginator(_ input: DescribeAssetImageVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssetImageVulListRequest, DescribeAssetImageVulListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssetImageVulListRequest, DescribeAssetImageVulListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAssetImageVulListRequest, DescribeAssetImageVulListResponse>.ResultSequence(input: input, region: region, command: self.describeAssetImageVulList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAssetImageVulListRequest, DescribeAssetImageVulListResponse>.ResponseSequence(input: input, region: region, command: self.describeAssetImageVulList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
