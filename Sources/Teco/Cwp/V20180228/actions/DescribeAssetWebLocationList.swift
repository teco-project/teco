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
    /// DescribeAssetWebLocationList请求参数结构体
    public struct DescribeAssetWebLocationListRequest: TCPaginatedRequest {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 域名</li>
        /// <li>User - String - 是否必填：否 - 运行用户</li>
        /// <li>Port - uint64 - 是否必填：否 - 站点端口</li>
        /// <li>Proto - uint64 - 是否必填：否 - 站点协议：1:HTTP,2:HTTPS</li>
        /// <li>ServiceType - uint64 - 是否必填：否 - 服务类型：
        /// 1:Tomcat
        /// 2：Apache
        /// 3:Nginx
        /// 4:WebLogic
        /// 5:Websphere
        /// 6:JBoss
        /// 7:WildFly
        /// 8:Jetty
        /// 9:IHS
        /// 10:Tengine</li>
        /// <li>OsType - String - 是否必填：否 - windows/linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 可选排序：[FirstTime|PathCount]
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
        public func getNextPaginatedRequest(with response: DescribeAssetWebLocationListResponse) -> DescribeAssetWebLocationListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetWebLocationListRequest(quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetWebLocationList返回参数结构体
    public struct DescribeAssetWebLocationListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 站点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let locations: [AssetWebLocationBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case locations = "Locations"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetWebLocationBaseInfo] {
            self.locations ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationList(_ input: DescribeAssetWebLocationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebLocationListResponse> {
        self.client.execute(action: "DescribeAssetWebLocationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationList(_ input: DescribeAssetWebLocationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebLocationListResponse {
        try await self.client.execute(action: "DescribeAssetWebLocationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationList(quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebLocationListResponse> {
        let input = DescribeAssetWebLocationListRequest(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return self.client.execute(action: "DescribeAssetWebLocationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationList(quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebLocationListResponse {
        let input = DescribeAssetWebLocationListRequest(quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return try await self.client.execute(action: "DescribeAssetWebLocationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationListPaginated(_ input: DescribeAssetWebLocationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetWebLocationBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebLocationList, logger: logger, on: eventLoop)
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationListPaginated(_ input: DescribeAssetWebLocationListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebLocationListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebLocationList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Web站点列表
    @inlinable
    public func describeAssetWebLocationListPaginator(_ input: DescribeAssetWebLocationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssetWebLocationListRequest, DescribeAssetWebLocationListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssetWebLocationListRequest, DescribeAssetWebLocationListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAssetWebLocationListRequest, DescribeAssetWebLocationListResponse>.ResultSequence(input: input, region: region, command: self.describeAssetWebLocationList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAssetWebLocationListRequest, DescribeAssetWebLocationListResponse>.ResponseSequence(input: input, region: region, command: self.describeAssetWebLocationList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
