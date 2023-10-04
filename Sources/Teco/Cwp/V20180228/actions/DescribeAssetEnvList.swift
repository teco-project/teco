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

extension Cwp {
    /// DescribeAssetEnvList请求参数结构体
    public struct DescribeAssetEnvListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 该字段已废弃，由Filters代替
        public let type: UInt64?

        /// 过滤条件。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        /// - Name- string - 是否必填：否 - 环境变量名
        /// - Type- int - 是否必填：否 - 类型：0用户变量，1系统变量
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, type: UInt64? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.type = type
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case type = "Type"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetEnvListResponse) -> DescribeAssetEnvListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(uuid: self.uuid, quuid: self.quuid, type: self.type, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetEnvList返回参数结构体
    public struct DescribeAssetEnvListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let envs: [AssetEnvBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case envs = "Envs"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetEnvBaseInfo`` list from the paginated response.
        public func getItems() -> [AssetEnvBaseInfo] {
            self.envs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询资产管理环境变量列表
    @inlinable
    public func describeAssetEnvList(_ input: DescribeAssetEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetEnvListResponse> {
        self.client.execute(action: "DescribeAssetEnvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理环境变量列表
    @inlinable
    public func describeAssetEnvList(_ input: DescribeAssetEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetEnvListResponse {
        try await self.client.execute(action: "DescribeAssetEnvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理环境变量列表
    @inlinable
    public func describeAssetEnvList(uuid: String? = nil, quuid: String? = nil, type: UInt64? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetEnvListResponse> {
        self.describeAssetEnvList(.init(uuid: uuid, quuid: quuid, type: type, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理环境变量列表
    @inlinable
    public func describeAssetEnvList(uuid: String? = nil, quuid: String? = nil, type: UInt64? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetEnvListResponse {
        try await self.describeAssetEnvList(.init(uuid: uuid, quuid: quuid, type: type, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理环境变量列表
    @inlinable
    public func describeAssetEnvListPaginated(_ input: DescribeAssetEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetEnvBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetEnvList, logger: logger, on: eventLoop)
    }

    /// 查询资产管理环境变量列表
    @inlinable @discardableResult
    public func describeAssetEnvListPaginated(_ input: DescribeAssetEnvListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetEnvListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetEnvList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产管理环境变量列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetEnvBaseInfo`` and ``DescribeAssetEnvListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetEnvListPaginator(_ input: DescribeAssetEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetEnvListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetEnvList, logger: logger, on: eventLoop)
    }
}
