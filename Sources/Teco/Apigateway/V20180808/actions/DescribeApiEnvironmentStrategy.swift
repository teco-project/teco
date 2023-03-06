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
    /// DescribeApiEnvironmentStrategy请求参数结构体
    public struct DescribeApiEnvironmentStrategyRequest: TCPaginatedRequest {
        /// API所属服务唯一ID。
        public let serviceId: String

        /// 环境列表。
        public let environmentNames: [String]?

        /// API唯一ID。
        public let apiId: String?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, environmentNames: [String]? = nil, apiId: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.serviceId = serviceId
            self.environmentNames = environmentNames
            self.apiId = apiId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case environmentNames = "EnvironmentNames"
            case apiId = "ApiId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeApiEnvironmentStrategyResponse) -> DescribeApiEnvironmentStrategyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApiEnvironmentStrategyRequest(serviceId: self.serviceId, environmentNames: self.environmentNames, apiId: self.apiId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeApiEnvironmentStrategy返回参数结构体
    public struct DescribeApiEnvironmentStrategyResponse: TCPaginatedResponse {
        /// api绑定策略详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiEnvironmentStrategyStataus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiEnvironmentStrategy] {
            self.result?.apiEnvironmentStrategySet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(_ input: DescribeApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiEnvironmentStrategyResponse> {
        self.client.execute(action: "DescribeApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(_ input: DescribeApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiEnvironmentStrategyResponse {
        try await self.client.execute(action: "DescribeApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(serviceId: String, environmentNames: [String]? = nil, apiId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiEnvironmentStrategyResponse> {
        let input = DescribeApiEnvironmentStrategyRequest(serviceId: serviceId, environmentNames: environmentNames, apiId: apiId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(serviceId: String, environmentNames: [String]? = nil, apiId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiEnvironmentStrategyResponse {
        let input = DescribeApiEnvironmentStrategyRequest(serviceId: serviceId, environmentNames: environmentNames, apiId: apiId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeApiEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategyPaginated(_ input: DescribeApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiEnvironmentStrategy])> {
        self.client.paginate(input: input, region: region, command: self.describeApiEnvironmentStrategy, logger: logger, on: eventLoop)
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable @discardableResult
    public func describeApiEnvironmentStrategyPaginated(_ input: DescribeApiEnvironmentStrategyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApiEnvironmentStrategyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApiEnvironmentStrategy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategyPaginator(_ input: DescribeApiEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeApiEnvironmentStrategyRequest, DescribeApiEnvironmentStrategyResponse>.ResultSequence, responses: TCClient.Paginator<DescribeApiEnvironmentStrategyRequest, DescribeApiEnvironmentStrategyResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApiEnvironmentStrategy, logger: logger, on: eventLoop)
    }
}
