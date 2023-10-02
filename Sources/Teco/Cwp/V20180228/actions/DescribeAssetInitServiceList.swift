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
    /// DescribeAssetInitServiceList请求参数结构体
    public struct DescribeAssetInitServiceListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        /// - Name- string - 是否必填：否 - 包名
        /// - User- string - 是否必填：否 - 用户
        /// - Status- string - 是否必填：否 - 默认启用状态：0未启用， 1启用 仅linux
        /// - Type- string - 是否必填：否 - 类型：类型 仅windows：
        ///   1:编码器
        ///   2:IE插件
        ///   3:网络提供者
        ///   4:镜像劫持
        ///   5:LSA提供者
        ///   6:KnownDLLs
        ///   7:启动执行
        ///   8:WMI
        ///   9:计划任务
        ///   10:Winsock提供者
        ///   11:打印监控器
        ///   12:资源管理器
        ///   13:驱动服务
        ///   14:登录
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime]
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
        public func makeNextRequest(with response: DescribeAssetInitServiceListResponse) -> DescribeAssetInitServiceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetInitServiceList返回参数结构体
    public struct DescribeAssetInitServiceListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let services: [AssetInitServiceBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case services = "Services"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetInitServiceBaseInfo`` list from the paginated response.
        public func getItems() -> [AssetInitServiceBaseInfo] {
            self.services ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询资产管理启动服务列表
    @inlinable
    public func describeAssetInitServiceList(_ input: DescribeAssetInitServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetInitServiceListResponse> {
        self.client.execute(action: "DescribeAssetInitServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理启动服务列表
    @inlinable
    public func describeAssetInitServiceList(_ input: DescribeAssetInitServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetInitServiceListResponse {
        try await self.client.execute(action: "DescribeAssetInitServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理启动服务列表
    @inlinable
    public func describeAssetInitServiceList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetInitServiceListResponse> {
        self.describeAssetInitServiceList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理启动服务列表
    @inlinable
    public func describeAssetInitServiceList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetInitServiceListResponse {
        try await self.describeAssetInitServiceList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理启动服务列表
    @inlinable
    public func describeAssetInitServiceListPaginated(_ input: DescribeAssetInitServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetInitServiceBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetInitServiceList, logger: logger, on: eventLoop)
    }

    /// 查询资产管理启动服务列表
    @inlinable @discardableResult
    public func describeAssetInitServiceListPaginated(_ input: DescribeAssetInitServiceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetInitServiceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetInitServiceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产管理启动服务列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetInitServiceBaseInfo`` and ``DescribeAssetInitServiceListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetInitServiceListPaginator(_ input: DescribeAssetInitServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetInitServiceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetInitServiceList, logger: logger, on: eventLoop)
    }
}
