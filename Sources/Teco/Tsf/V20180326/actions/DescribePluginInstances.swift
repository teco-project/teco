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
    /// DescribePluginInstances请求参数结构体
    public struct DescribePluginInstancesRequest: TCPaginatedRequest {
        /// 分组或者API的ID
        public let scopeValue: String

        /// 绑定: true; 未绑定: false
        public let bound: Bool

        /// 翻页偏移量
        public let offset: Int64

        /// 每页展示的条数
        public let limit: Int64

        /// 插件类型
        public let type: String?

        /// 搜索关键字
        public let searchWord: String?

        public init(scopeValue: String, bound: Bool, offset: Int64, limit: Int64, type: String? = nil, searchWord: String? = nil) {
            self.scopeValue = scopeValue
            self.bound = bound
            self.offset = offset
            self.limit = limit
            self.type = type
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case scopeValue = "ScopeValue"
            case bound = "Bound"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
            case searchWord = "SearchWord"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePluginInstancesResponse) -> DescribePluginInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePluginInstancesRequest(scopeValue: self.scopeValue, bound: self.bound, offset: self.offset + .init(response.getItems().count), limit: self.limit, type: self.type, searchWord: self.searchWord)
        }
    }

    /// DescribePluginInstances返回参数结构体
    public struct DescribePluginInstancesResponse: TCPaginatedResponse {
        /// 插件信息列表
        public let result: TsfPageGatewayPlugin

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GatewayPlugin] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable
    public func describePluginInstances(_ input: DescribePluginInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginInstancesResponse> {
        self.client.execute(action: "DescribePluginInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable
    public func describePluginInstances(_ input: DescribePluginInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginInstancesResponse {
        try await self.client.execute(action: "DescribePluginInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable
    public func describePluginInstances(scopeValue: String, bound: Bool, offset: Int64, limit: Int64, type: String? = nil, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginInstancesResponse> {
        self.describePluginInstances(.init(scopeValue: scopeValue, bound: bound, offset: offset, limit: limit, type: type, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable
    public func describePluginInstances(scopeValue: String, bound: Bool, offset: Int64, limit: Int64, type: String? = nil, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginInstancesResponse {
        try await self.describePluginInstances(.init(scopeValue: scopeValue, bound: bound, offset: offset, limit: limit, type: type, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable
    public func describePluginInstancesPaginated(_ input: DescribePluginInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [GatewayPlugin])> {
        self.client.paginate(input: input, region: region, command: self.describePluginInstances, logger: logger, on: eventLoop)
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    @inlinable @discardableResult
    public func describePluginInstancesPaginated(_ input: DescribePluginInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePluginInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePluginInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询网关分组或API绑定（或未绑定）的插件列表
    ///
    /// 分页查询网关分组/API绑定（或未绑定）的插件列表
    ///
    /// - Returns: `AsyncSequence`s of `GatewayPlugin` and `DescribePluginInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePluginInstancesPaginator(_ input: DescribePluginInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePluginInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePluginInstances, logger: logger, on: eventLoop)
    }
}
