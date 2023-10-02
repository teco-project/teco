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

extension Cwp {
    /// DescribeBaselineEffectHostList请求参数结构体
    public struct DescribeBaselineEffectHostListRequest: TCPaginatedRequest {
        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 基线id
        public let baselineId: UInt64

        /// 过滤条件。
        /// - AliasName- String- 主机别名
        /// - Status- Uint- 1已通过  0未通过 5检测中
        public let filters: [Filters]?

        /// 策略id
        public let strategyId: UInt64?

        /// 主机uuid数组
        public let uuidList: [String]?

        public init(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.baselineId = baselineId
            self.filters = filters
            self.strategyId = strategyId
            self.uuidList = uuidList
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case baselineId = "BaselineId"
            case filters = "Filters"
            case strategyId = "StrategyId"
            case uuidList = "UuidList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselineEffectHostListResponse) -> DescribeBaselineEffectHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), baselineId: self.baselineId, filters: self.filters, strategyId: self.strategyId, uuidList: self.uuidList)
        }
    }

    /// DescribeBaselineEffectHostList返回参数结构体
    public struct DescribeBaselineEffectHostListResponse: TCPaginatedResponse {
        /// 记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 影响服务器列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let effectHostList: [BaselineEffectHost]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case effectHostList = "EffectHostList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BaselineEffectHost`` list from the paginated response.
        public func getItems() -> [BaselineEffectHost] {
            self.effectHostList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineEffectHostListResponse> {
        self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineEffectHostListResponse {
        try await self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineEffectHostListResponse> {
        self.describeBaselineEffectHostList(.init(limit: limit, offset: offset, baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList), region: region, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineEffectHostListResponse {
        try await self.describeBaselineEffectHostList(.init(limit: limit, offset: offset, baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList), region: region, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostListPaginated(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BaselineEffectHost])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineEffectHostList, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable @discardableResult
    public func describeBaselineEffectHostListPaginated(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineEffectHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineEffectHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    ///
    /// - Returns: `AsyncSequence`s of ``BaselineEffectHost`` and ``DescribeBaselineEffectHostListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineEffectHostListPaginator(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineEffectHostListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineEffectHostList, logger: logger, on: eventLoop)
    }
}
