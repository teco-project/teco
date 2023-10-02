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

extension Apigateway {
    /// DescribePluginsByApi请求参数结构体
    public struct DescribePluginsByApiRequest: TCPaginatedRequest {
        /// 要查询的API ID。
        public let apiId: String

        /// 要查询的服务ID。
        public let serviceId: String

        /// 环境信息。
        public let environmentName: String?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(apiId: String, serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.apiId = apiId
            self.serviceId = serviceId
            self.environmentName = environmentName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case apiId = "ApiId"
            case serviceId = "ServiceId"
            case environmentName = "EnvironmentName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePluginsByApiResponse) -> DescribePluginsByApiRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(apiId: self.apiId, serviceId: self.serviceId, environmentName: self.environmentName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribePluginsByApi返回参数结构体
    public struct DescribePluginsByApiResponse: TCPaginatedResponse {
        /// 插件可绑定的API列表信息。
        public let result: AttachedPluginSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AttachedPluginInfo`` list from the paginated response.
        public func getItems() -> [AttachedPluginInfo] {
            self.result.pluginSummary
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable
    public func describePluginsByApi(_ input: DescribePluginsByApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginsByApiResponse> {
        self.client.execute(action: "DescribePluginsByApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable
    public func describePluginsByApi(_ input: DescribePluginsByApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginsByApiResponse {
        try await self.client.execute(action: "DescribePluginsByApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable
    public func describePluginsByApi(apiId: String, serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginsByApiResponse> {
        self.describePluginsByApi(.init(apiId: apiId, serviceId: serviceId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable
    public func describePluginsByApi(apiId: String, serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginsByApiResponse {
        try await self.describePluginsByApi(.init(apiId: apiId, serviceId: serviceId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable
    public func describePluginsByApiPaginated(_ input: DescribePluginsByApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AttachedPluginInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePluginsByApi, logger: logger, on: eventLoop)
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    @inlinable @discardableResult
    public func describePluginsByApiPaginated(_ input: DescribePluginsByApiRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePluginsByApiResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePluginsByApi, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// API上已绑定的插件
    ///
    /// 展示API上已绑定的插件列表。
    ///
    /// - Returns: `AsyncSequence`s of ``AttachedPluginInfo`` and ``DescribePluginsByApiResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePluginsByApiPaginator(_ input: DescribePluginsByApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePluginsByApiRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePluginsByApi, logger: logger, on: eventLoop)
    }
}
