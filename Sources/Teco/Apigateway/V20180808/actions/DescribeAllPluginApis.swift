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
    /// DescribeAllPluginApis请求参数结构体
    public struct DescribeAllPluginApisRequest: TCPaginatedRequest {
        /// 要查询的服务ID。
        public let serviceId: String

        /// 要查询的插件ID。
        public let pluginId: String

        /// 环境信息。
        public let environmentName: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, pluginId: String, environmentName: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.serviceId = serviceId
            self.pluginId = pluginId
            self.environmentName = environmentName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case pluginId = "PluginId"
            case environmentName = "EnvironmentName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAllPluginApisResponse) -> DescribeAllPluginApisRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAllPluginApisRequest(serviceId: self.serviceId, pluginId: self.pluginId, environmentName: self.environmentName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAllPluginApis返回参数结构体
    public struct DescribeAllPluginApisResponse: TCPaginatedResponse {
        /// 插件相关API的列表。
        public let result: ApiInfoSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AvailableApiInfo] {
            self.result.apiSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable
    public func describeAllPluginApis(_ input: DescribeAllPluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllPluginApisResponse> {
        self.client.execute(action: "DescribeAllPluginApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable
    public func describeAllPluginApis(_ input: DescribeAllPluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllPluginApisResponse {
        try await self.client.execute(action: "DescribeAllPluginApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable
    public func describeAllPluginApis(serviceId: String, pluginId: String, environmentName: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllPluginApisResponse> {
        self.describeAllPluginApis(.init(serviceId: serviceId, pluginId: pluginId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable
    public func describeAllPluginApis(serviceId: String, pluginId: String, environmentName: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllPluginApisResponse {
        try await self.describeAllPluginApis(.init(serviceId: serviceId, pluginId: pluginId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable
    public func describeAllPluginApisPaginated(_ input: DescribeAllPluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AvailableApiInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAllPluginApis, logger: logger, on: eventLoop)
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    @inlinable @discardableResult
    public func describeAllPluginApisPaginated(_ input: DescribeAllPluginApisRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAllPluginApisResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAllPluginApis, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 展示插件相关的API列表
    ///
    /// 展示插件相关的API列表，包括已绑定的和未绑定的API信息。
    ///
    /// - Returns: `AsyncSequence`s of `AvailableApiInfo` and `DescribeAllPluginApisResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAllPluginApisPaginator(_ input: DescribeAllPluginApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAllPluginApisRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAllPluginApis, logger: logger, on: eventLoop)
    }
}
