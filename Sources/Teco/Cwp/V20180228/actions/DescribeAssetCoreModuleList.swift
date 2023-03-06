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

extension Cwp {
    /// DescribeAssetCoreModuleList请求参数结构体
    public struct DescribeAssetCoreModuleListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name- string - 是否必填：否 - 包名</li>
        /// <li>User- string - 是否必填：否 - 用户</li>
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序依据[Size|FirstTime|ProcessCount|ModuleCount]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
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
        public func getNextPaginatedRequest(with response: DescribeAssetCoreModuleListResponse) -> DescribeAssetCoreModuleListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetCoreModuleListRequest(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetCoreModuleList返回参数结构体
    public struct DescribeAssetCoreModuleListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modules: [AssetCoreModuleBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modules = "Modules"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetCoreModuleBaseInfo] {
            self.modules ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleList(_ input: DescribeAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetCoreModuleListResponse> {
        self.client.execute(action: "DescribeAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleList(_ input: DescribeAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetCoreModuleListResponse {
        try await self.client.execute(action: "DescribeAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetCoreModuleListResponse> {
        let input = DescribeAssetCoreModuleListRequest(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return self.client.execute(action: "DescribeAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetCoreModuleListResponse {
        let input = DescribeAssetCoreModuleListRequest(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return try await self.client.execute(action: "DescribeAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleListPaginated(_ input: DescribeAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetCoreModuleBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetCoreModuleList, logger: logger, on: eventLoop)
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleListPaginated(_ input: DescribeAssetCoreModuleListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetCoreModuleListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetCoreModuleList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产管理内核模块列表
    @inlinable
    public func describeAssetCoreModuleListPaginator(_ input: DescribeAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssetCoreModuleListRequest, DescribeAssetCoreModuleListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssetCoreModuleListRequest, DescribeAssetCoreModuleListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAssetCoreModuleListRequest, DescribeAssetCoreModuleListResponse>.ResultSequence(input: input, region: region, command: self.describeAssetCoreModuleList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAssetCoreModuleListRequest, DescribeAssetCoreModuleListResponse>.ResponseSequence(input: input, region: region, command: self.describeAssetCoreModuleList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
