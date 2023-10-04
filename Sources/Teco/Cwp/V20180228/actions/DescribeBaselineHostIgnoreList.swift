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
    /// DescribeBaselineHostIgnoreList请求参数结构体
    public struct DescribeBaselineHostIgnoreListRequest: TCPaginatedRequest {
        /// 请求的规则
        public let ruleID: Int64

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 偏移量,默认0
        public let offset: Int64?

        public init(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil) {
            self.ruleID = ruleID
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselineHostIgnoreListResponse) -> DescribeBaselineHostIgnoreListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(ruleID: self.ruleID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeBaselineHostIgnoreList返回参数结构体
    public struct DescribeBaselineHostIgnoreListResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        public let list: [BaselineHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BaselineHost`` list from the paginated response.
        public func getItems() -> [BaselineHost] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取忽略规则主机列表
    @inlinable
    public func describeBaselineHostIgnoreList(_ input: DescribeBaselineHostIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineHostIgnoreListResponse> {
        self.client.execute(action: "DescribeBaselineHostIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则主机列表
    @inlinable
    public func describeBaselineHostIgnoreList(_ input: DescribeBaselineHostIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineHostIgnoreListResponse {
        try await self.client.execute(action: "DescribeBaselineHostIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取忽略规则主机列表
    @inlinable
    public func describeBaselineHostIgnoreList(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineHostIgnoreListResponse> {
        self.describeBaselineHostIgnoreList(.init(ruleID: ruleID, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则主机列表
    @inlinable
    public func describeBaselineHostIgnoreList(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineHostIgnoreListResponse {
        try await self.describeBaselineHostIgnoreList(.init(ruleID: ruleID, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则主机列表
    @inlinable
    public func describeBaselineHostIgnoreListPaginated(_ input: DescribeBaselineHostIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineHost])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineHostIgnoreList, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则主机列表
    @inlinable @discardableResult
    public func describeBaselineHostIgnoreListPaginated(_ input: DescribeBaselineHostIgnoreListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineHostIgnoreListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineHostIgnoreList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则主机列表
    ///
    /// - Returns: `AsyncSequence`s of ``BaselineHost`` and ``DescribeBaselineHostIgnoreListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineHostIgnoreListPaginator(_ input: DescribeBaselineHostIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineHostIgnoreListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineHostIgnoreList, logger: logger, on: eventLoop)
    }
}
