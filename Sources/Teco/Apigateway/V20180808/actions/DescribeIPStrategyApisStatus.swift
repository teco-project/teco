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

extension Apigateway {
    /// DescribeIPStrategyApisStatus请求参数结构体
    public struct DescribeIPStrategyApisStatusRequest: TCPaginatedRequest {
        /// 服务唯一ID。
        public let serviceId: String

        /// 策略唯一ID。
        public let strategyId: String

        /// 策略所在环境。
        public let environmentName: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: UInt64?

        /// 过滤条件。支持 ApiPath、ApiName、KeyWord（模糊查询Path 和Name）。
        public let filters: [Filter]?

        public init(serviceId: String, strategyId: String, environmentName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
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
        public func makeNextRequest(with response: DescribeIPStrategyApisStatusResponse) -> DescribeIPStrategyApisStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIPStrategyApisStatusRequest(serviceId: self.serviceId, strategyId: self.strategyId, environmentName: self.environmentName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeIPStrategyApisStatus返回参数结构体
    public struct DescribeIPStrategyApisStatusResponse: TCPaginatedResponse {
        /// 环境绑定API列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: IPStrategyApiStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [IPStrategyApi] {
            self.result?.apiIdStatusSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable
    public func describeIPStrategyApisStatus(_ input: DescribeIPStrategyApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStrategyApisStatusResponse> {
        self.client.execute(action: "DescribeIPStrategyApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable
    public func describeIPStrategyApisStatus(_ input: DescribeIPStrategyApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStrategyApisStatusResponse {
        try await self.client.execute(action: "DescribeIPStrategyApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable
    public func describeIPStrategyApisStatus(serviceId: String, strategyId: String, environmentName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStrategyApisStatusResponse> {
        self.describeIPStrategyApisStatus(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable
    public func describeIPStrategyApisStatus(serviceId: String, strategyId: String, environmentName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStrategyApisStatusResponse {
        try await self.describeIPStrategyApisStatus(.init(serviceId: serviceId, strategyId: strategyId, environmentName: environmentName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable
    public func describeIPStrategyApisStatusPaginated(_ input: DescribeIPStrategyApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [IPStrategyApi])> {
        self.client.paginate(input: input, region: region, command: self.describeIPStrategyApisStatus, logger: logger, on: eventLoop)
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    @inlinable @discardableResult
    public func describeIPStrategyApisStatusPaginated(_ input: DescribeIPStrategyApisStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIPStrategyApisStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIPStrategyApisStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询IP策略绑定的API列表
    ///
    /// 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。
    ///
    /// - Returns: `AsyncSequence`s of `IPStrategyApi` and `DescribeIPStrategyApisStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIPStrategyApisStatusPaginator(_ input: DescribeIPStrategyApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIPStrategyApisStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIPStrategyApisStatus, logger: logger, on: eventLoop)
    }
}
