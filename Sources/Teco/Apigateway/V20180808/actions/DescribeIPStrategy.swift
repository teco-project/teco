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
    /// DescribeIPStrategy请求参数结构体
    public struct DescribeIPStrategyRequest: TCPaginatedRequest {
        /// 服务唯一ID。
        public let serviceId: String

        /// IP 策略唯一ID。
        public let strategyId: String

        /// 策略关联的环境。
        public let environmentName: String?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。预留字段，目前不支持过滤。
        public let filters: [Filter]?

        public init(serviceId: String, strategyId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.serviceId = serviceId
            self.strategyId = strategyId
            self.environmentName = environmentName
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategyId = "StrategyId"
            case environmentName = "EnvironmentName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIPStrategyResponse) -> DescribeIPStrategyRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(serviceId: self.serviceId, strategyId: self.strategyId, environmentName: self.environmentName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeIPStrategy返回参数结构体
    public struct DescribeIPStrategyResponse: TCPaginatedResponse {
        /// IP策略详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: IPStrategy?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DesApisStatus`` list from the paginated response.
        public func getItems() -> [DesApisStatus] {
            self.result?.bindApis ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.bindApiTotalCount
        }
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable
    public func describeIPStrategy(_ input: DescribeIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStrategyResponse> {
        self.client.execute(action: "DescribeIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable
    public func describeIPStrategy(_ input: DescribeIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStrategyResponse {
        try await self.client.execute(action: "DescribeIPStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable
    public func describeIPStrategy(serviceId: String, strategyId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStrategyResponse> {
        self.describeIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable
    public func describeIPStrategy(serviceId: String, strategyId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStrategyResponse {
        try await self.describeIPStrategy(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable
    public func describeIPStrategyPaginated(_ input: DescribeIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DesApisStatus])> {
        self.client.paginate(input: input, region: region, command: self.describeIPStrategy, logger: logger, on: eventLoop)
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    @inlinable @discardableResult
    public func describeIPStrategyPaginated(_ input: DescribeIPStrategyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIPStrategyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIPStrategy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询IP策略详情
    ///
    /// 本接口（DescribeIPStrategy）用于查询IP策略详情。
    ///
    /// - Returns: `AsyncSequence`s of ``DesApisStatus`` and ``DescribeIPStrategyResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIPStrategyPaginator(_ input: DescribeIPStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIPStrategyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIPStrategy, logger: logger, on: eventLoop)
    }
}
