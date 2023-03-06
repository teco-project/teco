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

extension Apigateway {
    /// DescribePlugins请求参数结构体
    public struct DescribePluginsRequest: TCPaginatedRequest {
        /// 要查询的插件列表。
        public let pluginIds: [String]?

        /// 要查询的插件名称。
        public let pluginName: String?

        /// 要查询的插件类型。
        public let pluginType: String?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。预留字段，目前不支持过滤。
        public let filters: [Filter]?

        public init(pluginIds: [String]? = nil, pluginName: String? = nil, pluginType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.pluginIds = pluginIds
            self.pluginName = pluginName
            self.pluginType = pluginType
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pluginIds = "PluginIds"
            case pluginName = "PluginName"
            case pluginType = "PluginType"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePluginsResponse) -> DescribePluginsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePluginsRequest(pluginIds: self.pluginIds, pluginName: self.pluginName, pluginType: self.pluginType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribePlugins返回参数结构体
    public struct DescribePluginsResponse: TCPaginatedResponse {
        /// 插件详情。
        public let result: PluginSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Plugin] {
            self.result.pluginSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePlugins(_ input: DescribePluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginsResponse> {
        self.client.execute(action: "DescribePlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePlugins(_ input: DescribePluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginsResponse {
        try await self.client.execute(action: "DescribePlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePlugins(pluginIds: [String]? = nil, pluginName: String? = nil, pluginType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginsResponse> {
        let input = DescribePluginsRequest(pluginIds: pluginIds, pluginName: pluginName, pluginType: pluginType, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribePlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePlugins(pluginIds: [String]? = nil, pluginName: String? = nil, pluginType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginsResponse {
        let input = DescribePluginsRequest(pluginIds: pluginIds, pluginName: pluginName, pluginType: pluginType, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribePlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePluginsPaginated(_ input: DescribePluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Plugin])> {
        self.client.paginate(input: input, region: region, command: self.describePlugins, logger: logger, on: eventLoop)
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable @discardableResult
    public func describePluginsPaginated(_ input: DescribePluginsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePluginsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePlugins, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询插件列表和详情
    ///
    /// 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。
    @inlinable
    public func describePluginsPaginator(_ input: DescribePluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePluginsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePlugins, logger: logger, on: eventLoop)
    }
}
