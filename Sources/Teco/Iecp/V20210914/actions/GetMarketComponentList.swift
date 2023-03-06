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

extension Iecp {
    /// GetMarketComponentList请求参数结构体
    public struct GetMarketComponentListRequest: TCPaginatedRequest {
        /// 页偏移，从0开始
        public let offset: Int64

        /// 每页条数
        public let limit: Int64

        /// 名称模糊筛选
        public let filter: String?

        /// 以名称排序，ASC、DESC
        public let order: String?

        public init(offset: Int64, limit: Int64, filter: String? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filter = filter
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filter = "Filter"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetMarketComponentListResponse) -> GetMarketComponentListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetMarketComponentListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filter: self.filter, order: self.order)
        }
    }

    /// GetMarketComponentList返回参数结构体
    public struct GetMarketComponentListResponse: TCPaginatedResponse {
        /// 组件列表
        public let componentList: [MarketComponentInfo]

        /// 组件总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case componentList = "ComponentList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MarketComponentInfo] {
            self.componentList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取组件市场组件列表
    @inlinable
    public func getMarketComponentList(_ input: GetMarketComponentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMarketComponentListResponse> {
        self.client.execute(action: "GetMarketComponentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件市场组件列表
    @inlinable
    public func getMarketComponentList(_ input: GetMarketComponentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMarketComponentListResponse {
        try await self.client.execute(action: "GetMarketComponentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件市场组件列表
    @inlinable
    public func getMarketComponentList(offset: Int64, limit: Int64, filter: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMarketComponentListResponse> {
        let input = GetMarketComponentListRequest(offset: offset, limit: limit, filter: filter, order: order)
        return self.client.execute(action: "GetMarketComponentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件市场组件列表
    @inlinable
    public func getMarketComponentList(offset: Int64, limit: Int64, filter: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMarketComponentListResponse {
        let input = GetMarketComponentListRequest(offset: offset, limit: limit, filter: filter, order: order)
        return try await self.client.execute(action: "GetMarketComponentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件市场组件列表
    @inlinable
    public func getMarketComponentListPaginated(_ input: GetMarketComponentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MarketComponentInfo])> {
        self.client.paginate(input: input, region: region, command: self.getMarketComponentList, logger: logger, on: eventLoop)
    }

    /// 获取组件市场组件列表
    @inlinable @discardableResult
    public func getMarketComponentListPaginated(_ input: GetMarketComponentListRequest, region: TCRegion? = nil, onResponse: @escaping (GetMarketComponentListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getMarketComponentList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取组件市场组件列表
    ///
    /// - Returns: `AsyncSequence`s of `MarketComponentInfo` and `GetMarketComponentListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getMarketComponentListPaginator(_ input: GetMarketComponentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetMarketComponentListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getMarketComponentList, logger: logger, on: eventLoop)
    }
}
