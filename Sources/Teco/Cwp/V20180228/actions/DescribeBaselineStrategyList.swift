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

extension Cwp {
    /// DescribeBaselineStrategyList请求参数结构体
    public struct DescribeBaselineStrategyListRequest: TCPaginatedRequest {
        /// 分页参数 最大100
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 规则开关，1：打开 0：关闭  2:全部
        public let enabled: UInt64

        public init(limit: UInt64, offset: UInt64, enabled: UInt64) {
            self.limit = limit
            self.offset = offset
            self.enabled = enabled
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case enabled = "Enabled"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselineStrategyListResponse) -> DescribeBaselineStrategyListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineStrategyListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), enabled: self.enabled)
        }
    }

    /// DescribeBaselineStrategyList返回参数结构体
    public struct DescribeBaselineStrategyListResponse: TCPaginatedResponse {
        /// 分页查询记录的总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 用户策略信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strategyList: [Strategy]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case strategyList = "StrategyList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Strategy`` list from the paginated response.
        public func getItems() -> [Strategy] {
            self.strategyList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyListResponse> {
        self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyListResponse {
        try await self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(limit: UInt64, offset: UInt64, enabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyListResponse> {
        self.describeBaselineStrategyList(.init(limit: limit, offset: offset, enabled: enabled), region: region, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(limit: UInt64, offset: UInt64, enabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyListResponse {
        try await self.describeBaselineStrategyList(.init(limit: limit, offset: offset, enabled: enabled), region: region, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyListPaginated(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Strategy])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineStrategyList, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable @discardableResult
    public func describeBaselineStrategyListPaginated(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineStrategyListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineStrategyList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    ///
    /// - Returns: `AsyncSequence`s of `Strategy` and `DescribeBaselineStrategyListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineStrategyListPaginator(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineStrategyListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineStrategyList, logger: logger, on: eventLoop)
    }
}
