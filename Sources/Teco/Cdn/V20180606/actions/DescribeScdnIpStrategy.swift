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

extension Cdn {
    /// DescribeScdnIpStrategy请求参数结构体
    public struct DescribeScdnIpStrategyRequest: TCPaginatedRequest {
        /// 分页起始地址
        public let offset: Int64?

        /// 列表分页记录条数，最大1000
        public let limit: Int64?

        /// 查询条件过滤器
        public let filters: [ScdnIpStrategyFilter]?

        /// 指定查询返回结果的排序字段，支持domain，update_time
        public let order: String?

        /// 排序方式，支持asc，desc
        public let sequence: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [ScdnIpStrategyFilter]? = nil, order: String? = nil, sequence: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.order = order
            self.sequence = sequence
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case order = "Order"
            case sequence = "Sequence"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScdnIpStrategyResponse) -> DescribeScdnIpStrategyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScdnIpStrategyRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, order: self.order, sequence: self.sequence)
        }
    }

    /// DescribeScdnIpStrategy返回参数结构体
    public struct DescribeScdnIpStrategyResponse: TCPaginatedResponse {
        /// IP策略列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipStrategyList: [ScdnIpStrategy]?

        /// 配置的策略条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipStrategyList = "IpStrategyList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScdnIpStrategy`` list from the paginated response.
        public func getItems() -> [ScdnIpStrategy] {
            self.ipStrategyList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(_ input: DescribeScdnIpStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnIpStrategyResponse> {
        self.client.execute(action: "DescribeScdnIpStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(_ input: DescribeScdnIpStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnIpStrategyResponse {
        try await self.client.execute(action: "DescribeScdnIpStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(offset: Int64? = nil, limit: Int64? = nil, filters: [ScdnIpStrategyFilter]? = nil, order: String? = nil, sequence: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnIpStrategyResponse> {
        self.describeScdnIpStrategy(.init(offset: offset, limit: limit, filters: filters, order: order, sequence: sequence), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(offset: Int64? = nil, limit: Int64? = nil, filters: [ScdnIpStrategyFilter]? = nil, order: String? = nil, sequence: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnIpStrategyResponse {
        try await self.describeScdnIpStrategy(.init(offset: offset, limit: limit, filters: filters, order: order, sequence: sequence), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategyPaginated(_ input: DescribeScdnIpStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ScdnIpStrategy])> {
        self.client.paginate(input: input, region: region, command: self.describeScdnIpStrategy, logger: logger, on: eventLoop)
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable @discardableResult
    public func describeScdnIpStrategyPaginated(_ input: DescribeScdnIpStrategyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScdnIpStrategyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScdnIpStrategy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    ///
    /// - Returns: `AsyncSequence`s of `ScdnIpStrategy` and `DescribeScdnIpStrategyResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScdnIpStrategyPaginator(_ input: DescribeScdnIpStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScdnIpStrategyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScdnIpStrategy, logger: logger, on: eventLoop)
    }
}
