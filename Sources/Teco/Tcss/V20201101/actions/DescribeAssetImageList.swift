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

extension Tcss {
    /// DescribeAssetImageList请求参数结构体
    public struct DescribeAssetImageListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ImageName- String - 是否必填：否 - 镜像名称筛选，</li>
        /// <li>ScanStatus - String - 是否必填：否 - 镜像扫描状态notScan，scanning，scanned，scanErr</li>
        /// <li>ImageID- String - 是否必填：否 - 镜像ID筛选，</li>
        /// <li>SecurityRisk- String - 是否必填：否 - 安全风险，VulCnt 、VirusCnt、RiskCnt、IsTrustImage</li>
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }

    /// DescribeAssetImageList返回参数结构体
    public struct DescribeAssetImageListResponse: TCResponseModel {
        /// 镜像列表
        public let list: [ImagesInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像列表
    ///
    /// 容器安全搜索查询镜像列表
    @inlinable
    public func describeAssetImageList(_ input: DescribeAssetImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageListResponse> {
        self.client.execute(action: "DescribeAssetImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像列表
    ///
    /// 容器安全搜索查询镜像列表
    @inlinable
    public func describeAssetImageList(_ input: DescribeAssetImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageListResponse {
        try await self.client.execute(action: "DescribeAssetImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像列表
    ///
    /// 容器安全搜索查询镜像列表
    @inlinable
    public func describeAssetImageList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageListResponse> {
        self.describeAssetImageList(DescribeAssetImageListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像列表
    ///
    /// 容器安全搜索查询镜像列表
    @inlinable
    public func describeAssetImageList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageListResponse {
        try await self.describeAssetImageList(DescribeAssetImageListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }
}
