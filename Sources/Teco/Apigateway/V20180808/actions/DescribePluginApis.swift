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

extension Apigateway {
    /// DescribePluginApis请求参数结构体
    public struct DescribePluginApisRequest: TCPaginatedRequest {
        /// 查询的插件ID。
        public let pluginId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(pluginId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.pluginId = pluginId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePluginApisResponse) -> DescribePluginApisRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePluginApisRequest(pluginId: self.pluginId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribePluginApis返回参数结构体
    public struct DescribePluginApisResponse: TCPaginatedResponse {
        /// 插件绑定的API列表信息。
        public let result: AttachedApiSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AttachedApiInfo`` list from the paginated response.
        public func getItems() -> [AttachedApiInfo] {
            self.result.attachedApis
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable
    public func describePluginApis(_ input: DescribePluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginApisResponse> {
        self.client.execute(action: "DescribePluginApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable
    public func describePluginApis(_ input: DescribePluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginApisResponse {
        try await self.client.execute(action: "DescribePluginApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable
    public func describePluginApis(pluginId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginApisResponse> {
        self.describePluginApis(.init(pluginId: pluginId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable
    public func describePluginApis(pluginId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginApisResponse {
        try await self.describePluginApis(.init(pluginId: pluginId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable
    public func describePluginApisPaginated(_ input: DescribePluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AttachedApiInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePluginApis, logger: logger, on: eventLoop)
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    @inlinable @discardableResult
    public func describePluginApisPaginated(_ input: DescribePluginApisRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePluginApisResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePluginApis, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询插件绑定的API列表
    ///
    /// 查询指定插件下绑定的API信息
    ///
    /// - Returns: `AsyncSequence`s of `AttachedApiInfo` and `DescribePluginApisResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePluginApisPaginator(_ input: DescribePluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePluginApisRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePluginApis, logger: logger, on: eventLoop)
    }
}
