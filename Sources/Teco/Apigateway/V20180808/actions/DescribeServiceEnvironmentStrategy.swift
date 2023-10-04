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
    /// DescribeServiceEnvironmentStrategy请求参数结构体
    public struct DescribeServiceEnvironmentStrategyRequest: TCPaginatedRequest {
        /// 服务唯一ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServiceEnvironmentStrategyResponse) -> DescribeServiceEnvironmentStrategyRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeServiceEnvironmentStrategy返回参数结构体
    public struct DescribeServiceEnvironmentStrategyResponse: TCPaginatedResponse {
        /// 限流策略列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceEnvironmentStrategyStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ServiceEnvironmentStrategy`` list from the paginated response.
        public func getItems() -> [ServiceEnvironmentStrategy] {
            self.result?.environmentList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable
    public func describeServiceEnvironmentStrategy(_ input: DescribeServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentStrategyResponse> {
        self.client.execute(action: "DescribeServiceEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable
    public func describeServiceEnvironmentStrategy(_ input: DescribeServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentStrategyResponse {
        try await self.client.execute(action: "DescribeServiceEnvironmentStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable
    public func describeServiceEnvironmentStrategy(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentStrategyResponse> {
        self.describeServiceEnvironmentStrategy(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable
    public func describeServiceEnvironmentStrategy(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentStrategyResponse {
        try await self.describeServiceEnvironmentStrategy(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable
    public func describeServiceEnvironmentStrategyPaginated(_ input: DescribeServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ServiceEnvironmentStrategy])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentStrategy, logger: logger, on: eventLoop)
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    @inlinable @discardableResult
    public func describeServiceEnvironmentStrategyPaginated(_ input: DescribeServiceEnvironmentStrategyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceEnvironmentStrategyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentStrategy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 展示服务限流策略
    ///
    /// 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。
    ///
    /// - Returns: `AsyncSequence`s of ``ServiceEnvironmentStrategy`` and ``DescribeServiceEnvironmentStrategyResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceEnvironmentStrategyPaginator(_ input: DescribeServiceEnvironmentStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceEnvironmentStrategyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceEnvironmentStrategy, logger: logger, on: eventLoop)
    }
}
