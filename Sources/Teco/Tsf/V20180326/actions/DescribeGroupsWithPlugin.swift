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

extension Tsf {
    /// DescribeGroupsWithPlugin请求参数结构体
    public struct DescribeGroupsWithPluginRequest: TCPaginatedRequest {
        /// 插件ID
        public let pluginId: String

        /// 绑定/未绑定: true / false
        public let bound: Bool

        /// 翻页偏移量
        public let offset: Int64

        /// 每页记录数量
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        /// 网关实体ID
        public let gatewayInstanceId: String?

        public init(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil) {
            self.pluginId = pluginId
            self.bound = bound
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.gatewayInstanceId = gatewayInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case bound = "Bound"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case gatewayInstanceId = "GatewayInstanceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupsWithPluginResponse) -> DescribeGroupsWithPluginRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupsWithPluginRequest(pluginId: self.pluginId, bound: self.bound, offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord, gatewayInstanceId: self.gatewayInstanceId)
        }
    }

    /// DescribeGroupsWithPlugin返回参数结构体
    public struct DescribeGroupsWithPluginResponse: TCPaginatedResponse {
        /// API分组信息列表
        public let result: TsfPageApiGroupInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiGroupInfo] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(_ input: DescribeGroupsWithPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsWithPluginResponse> {
        self.client.execute(action: "DescribeGroupsWithPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(_ input: DescribeGroupsWithPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsWithPluginResponse {
        try await self.client.execute(action: "DescribeGroupsWithPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsWithPluginResponse> {
        self.describeGroupsWithPlugin(.init(pluginId: pluginId, bound: bound, offset: offset, limit: limit, searchWord: searchWord, gatewayInstanceId: gatewayInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsWithPluginResponse {
        try await self.describeGroupsWithPlugin(.init(pluginId: pluginId, bound: bound, offset: offset, limit: limit, searchWord: searchWord, gatewayInstanceId: gatewayInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPluginPaginated(_ input: DescribeGroupsWithPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupsWithPlugin, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable @discardableResult
    public func describeGroupsWithPluginPaginated(_ input: DescribeGroupsWithPluginRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupsWithPluginResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupsWithPlugin, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    ///
    /// - Returns: `AsyncSequence`s of `ApiGroupInfo` and `DescribeGroupsWithPluginResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupsWithPluginPaginator(_ input: DescribeGroupsWithPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupsWithPluginRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupsWithPlugin, logger: logger, on: eventLoop)
    }
}
