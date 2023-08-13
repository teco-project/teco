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

extension Cwp {
    /// DescribeAssetWebServiceInfoList请求参数结构体
    public struct DescribeAssetWebServiceInfoListRequest: TCPaginatedRequest {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// - User- string - 是否必填：否 - 运行用户
        /// - Name- string - 是否必填：否 - Web服务名：
        /// 1:Tomcat
        /// 2:Apache
        /// 3:Nginx
        /// 4:WebLogic
        /// 5:Websphere
        /// 6:JBoss
        /// 7:WildFly
        /// 8:Jetty
        /// 9:IHS
        /// 10:Tengine
        /// - OsType- string - 是否必填：否 - Windows/linux
        /// - Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 可选排序：[FirstTime|ProcessCount]
        public let by: String?

        public init(quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
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
        public func makeNextRequest(with response: DescribeAssetWebServiceInfoListResponse) -> DescribeAssetWebServiceInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetWebServiceInfoListRequest(quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetWebServiceInfoList返回参数结构体
    public struct DescribeAssetWebServiceInfoListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webServices: [AssetWebServiceBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case webServices = "WebServices"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetWebServiceBaseInfo`` list from the paginated response.
        public func getItems() -> [AssetWebServiceBaseInfo] {
            self.webServices ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询资产管理Web服务列表
    @inlinable
    public func describeAssetWebServiceInfoList(_ input: DescribeAssetWebServiceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceInfoListResponse> {
        self.client.execute(action: "DescribeAssetWebServiceInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产管理Web服务列表
    @inlinable
    public func describeAssetWebServiceInfoList(_ input: DescribeAssetWebServiceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceInfoListResponse {
        try await self.client.execute(action: "DescribeAssetWebServiceInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产管理Web服务列表
    @inlinable
    public func describeAssetWebServiceInfoList(quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceInfoListResponse> {
        self.describeAssetWebServiceInfoList(.init(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理Web服务列表
    @inlinable
    public func describeAssetWebServiceInfoList(quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceInfoListResponse {
        try await self.describeAssetWebServiceInfoList(.init(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产管理Web服务列表
    @inlinable
    public func describeAssetWebServiceInfoListPaginated(_ input: DescribeAssetWebServiceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetWebServiceBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceInfoList, logger: logger, on: eventLoop)
    }

    /// 查询资产管理Web服务列表
    @inlinable @discardableResult
    public func describeAssetWebServiceInfoListPaginated(_ input: DescribeAssetWebServiceInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebServiceInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产管理Web服务列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetWebServiceBaseInfo`` and ``DescribeAssetWebServiceInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetWebServiceInfoListPaginator(_ input: DescribeAssetWebServiceInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetWebServiceInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetWebServiceInfoList, logger: logger, on: eventLoop)
    }
}
