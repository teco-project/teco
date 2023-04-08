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

extension Tcss {
    /// DescribeAssetWebServiceList请求参数结构体
    public struct DescribeAssetWebServiceListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords- String - 是否必填：否 - 模糊查询可选字段</li>
        /// <li>Type- String - 是否必填：否 - 主机运行状态筛选，"Apache"
        /// "Jboss"
        /// "lighttpd"
        /// "Nginx"
        /// "Tomcat"</li>
        public let filters: [AssetFilters]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetWebServiceListResponse) -> DescribeAssetWebServiceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetWebServiceListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAssetWebServiceList返回参数结构体
    public struct DescribeAssetWebServiceListResponse: TCPaginatedResponse {
        /// 主机列表
        public let list: [ServiceInfo]

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
        public func getItems() -> [ServiceInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable
    public func describeAssetWebServiceList(_ input: DescribeAssetWebServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceListResponse> {
        self.client.execute(action: "DescribeAssetWebServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable
    public func describeAssetWebServiceList(_ input: DescribeAssetWebServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceListResponse {
        try await self.client.execute(action: "DescribeAssetWebServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable
    public func describeAssetWebServiceList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceListResponse> {
        self.describeAssetWebServiceList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable
    public func describeAssetWebServiceList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceListResponse {
        try await self.describeAssetWebServiceList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable
    public func describeAssetWebServiceListPaginated(_ input: DescribeAssetWebServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ServiceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceList, logger: logger, on: eventLoop)
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    @inlinable @discardableResult
    public func describeAssetWebServiceListPaginated(_ input: DescribeAssetWebServiceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebServiceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询web服务列表
    ///
    /// 容器安全查询web服务列表
    ///
    /// - Returns: `AsyncSequence`s of `ServiceInfo` and `DescribeAssetWebServiceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetWebServiceListPaginator(_ input: DescribeAssetWebServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetWebServiceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetWebServiceList, logger: logger, on: eventLoop)
    }
}
