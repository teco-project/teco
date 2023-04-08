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

extension Cwp {
    /// DescribeAssetWebAppList请求参数结构体
    public struct DescribeAssetWebAppListRequest: TCPaginatedRequest {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 应用名</li>
        /// <li>Domain - String - 是否必填：否 - 站点域名</li>
        /// <li>Type - int - 是否必填：否 - 服务类型：
        /// 0：全部
        /// 1:Tomcat
        /// 2:Apache
        /// 3:Nginx
        /// 4:WebLogic
        /// 5:Websphere
        /// 6:JBoss
        /// 7:Jetty
        /// 8:IHS
        /// 9:Tengine</li>
        /// <li>OsType - String - 是否必填：否 - windows/linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 可选排序：[FirstTime|PluginCount]
        public let by: String?

        public init(quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetWebAppListResponse) -> DescribeAssetWebAppListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetWebAppListRequest(quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetWebAppList返回参数结构体
    public struct DescribeAssetWebAppListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webApps: [AssetWebAppBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case webApps = "WebApps"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetWebAppBaseInfo] {
            self.webApps ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(_ input: DescribeAssetWebAppListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebAppListResponse> {
        self.client.execute(action: "DescribeAssetWebAppList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(_ input: DescribeAssetWebAppListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebAppListResponse {
        try await self.client.execute(action: "DescribeAssetWebAppList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebAppListResponse> {
        self.describeAssetWebAppList(.init(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebAppListResponse {
        try await self.describeAssetWebAppList(.init(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppListPaginated(_ input: DescribeAssetWebAppListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetWebAppBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebAppList, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用列表
    @inlinable @discardableResult
    public func describeAssetWebAppListPaginated(_ input: DescribeAssetWebAppListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebAppListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebAppList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用列表
    ///
    /// - Returns: `AsyncSequence`s of `AssetWebAppBaseInfo` and `DescribeAssetWebAppListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetWebAppListPaginator(_ input: DescribeAssetWebAppListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetWebAppListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetWebAppList, logger: logger, on: eventLoop)
    }
}
