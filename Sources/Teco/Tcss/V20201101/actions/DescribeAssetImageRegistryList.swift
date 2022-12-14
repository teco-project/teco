//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeAssetImageRegistryList请求参数结构体
    public struct DescribeAssetImageRegistryListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 过滤字段
        /// IsAuthorized是否授权，取值全部all，未授权0，已授权1
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式，asc，desc
        public let order: String?

        /// 是否仅展示各repository最新的镜像, 默认为false
        public let onlyShowLatest: Bool?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, onlyShowLatest: Bool? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
            self.onlyShowLatest = onlyShowLatest
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
            case onlyShowLatest = "OnlyShowLatest"
        }
    }

    /// DescribeAssetImageRegistryList返回参数结构体
    public struct DescribeAssetImageRegistryListResponse: TCResponseModel {
        /// 镜像仓库列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ImageRepoInfo]?

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
    }

    /// 镜像仓库查询镜像仓库列表
    ///
    /// 镜像仓库镜像仓库列表
    @inlinable
    public func describeAssetImageRegistryList(_ input: DescribeAssetImageRegistryListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRegistryListResponse > {
        self.client.execute(action: "DescribeAssetImageRegistryList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像仓库列表
    ///
    /// 镜像仓库镜像仓库列表
    @inlinable
    public func describeAssetImageRegistryList(_ input: DescribeAssetImageRegistryListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryListResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询镜像仓库列表
    ///
    /// 镜像仓库镜像仓库列表
    @inlinable
    public func describeAssetImageRegistryList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, onlyShowLatest: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRegistryListResponse > {
        self.describeAssetImageRegistryList(DescribeAssetImageRegistryListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order, onlyShowLatest: onlyShowLatest), logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像仓库列表
    ///
    /// 镜像仓库镜像仓库列表
    @inlinable
    public func describeAssetImageRegistryList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, onlyShowLatest: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryListResponse {
        try await self.describeAssetImageRegistryList(DescribeAssetImageRegistryListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order, onlyShowLatest: onlyShowLatest), logger: logger, on: eventLoop)
    }
}
