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

extension Cwp {
    /// DescribeAssetSystemPackageList请求参数结构体
    public struct DescribeAssetSystemPackageListRequest: TCPaginatedRequest {
        /// 主机Uuid
        public let uuid: String

        /// 主机Quuid
        public let quuid: String

        /// 过滤条件。
        /// <li>Name - String - 是否必填：否 - 包 名</li>
        /// <li>StartTime - String - 是否必填：否 - 安装开始时间</li>
        /// <li>EndTime - String - 是否必填：否 - 安装开始时间</li>
        /// <li>Type - int - 是否必填：否 - 安装包类型：
        /// 1:rmp
        /// 2:dpkg
        /// 3:java
        /// 4:system</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc-升序 或 desc-降序。默认：desc-降序
        public let order: String?

        /// 排序方式可选：[FistTime|InstallTime:安装时间]
        public let by: String?

        public init(uuid: String, quuid: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetSystemPackageListResponse) -> DescribeAssetSystemPackageListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetSystemPackageListRequest(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetSystemPackageList返回参数结构体
    public struct DescribeAssetSystemPackageListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packages: [AssetSystemPackageInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case packages = "Packages"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetSystemPackageInfo] {
            self.packages ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资产管理系统安装包列表
    @inlinable
    public func describeAssetSystemPackageList(_ input: DescribeAssetSystemPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetSystemPackageListResponse> {
        self.client.execute(action: "DescribeAssetSystemPackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理系统安装包列表
    @inlinable
    public func describeAssetSystemPackageList(_ input: DescribeAssetSystemPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetSystemPackageListResponse {
        try await self.client.execute(action: "DescribeAssetSystemPackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理系统安装包列表
    @inlinable
    public func describeAssetSystemPackageList(uuid: String, quuid: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetSystemPackageListResponse> {
        self.describeAssetSystemPackageList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理系统安装包列表
    @inlinable
    public func describeAssetSystemPackageList(uuid: String, quuid: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetSystemPackageListResponse {
        try await self.describeAssetSystemPackageList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理系统安装包列表
    @inlinable
    public func describeAssetSystemPackageListPaginated(_ input: DescribeAssetSystemPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetSystemPackageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetSystemPackageList, logger: logger, on: eventLoop)
    }

    /// 获取资产管理系统安装包列表
    @inlinable @discardableResult
    public func describeAssetSystemPackageListPaginated(_ input: DescribeAssetSystemPackageListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetSystemPackageListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetSystemPackageList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资产管理系统安装包列表
    ///
    /// - Returns: `AsyncSequence`s of `AssetSystemPackageInfo` and `DescribeAssetSystemPackageListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetSystemPackageListPaginator(_ input: DescribeAssetSystemPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetSystemPackageListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetSystemPackageList, logger: logger, on: eventLoop)
    }
}
