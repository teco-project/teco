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

extension Wedata {
    /// DescribeRuleExecResultsByPage请求参数结构体
    public struct DescribeRuleExecResultsByPageRequest: TCPaginatedRequest {
        /// 执行规则组ID
        public let ruleGroupExecId: Int64?

        /// page number
        public let pageNumber: Int64?

        /// page size
        public let pageSize: Int64?

        public init(ruleGroupExecId: Int64? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.ruleGroupExecId = ruleGroupExecId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case ruleGroupExecId = "RuleGroupExecId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRuleExecResultsByPageResponse) -> DescribeRuleExecResultsByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(ruleGroupExecId: self.ruleGroupExecId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeRuleExecResultsByPage返回参数结构体
    public struct DescribeRuleExecResultsByPageResponse: TCPaginatedResponse {
        /// results
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleExecResultPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RuleExecResult`` list from the paginated response.
        public func getItems() -> [RuleExecResult] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 分页查询规则执行结果列表
    @inlinable
    public func describeRuleExecResultsByPage(_ input: DescribeRuleExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecResultsByPageResponse> {
        self.client.execute(action: "DescribeRuleExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询规则执行结果列表
    @inlinable
    public func describeRuleExecResultsByPage(_ input: DescribeRuleExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecResultsByPageResponse {
        try await self.client.execute(action: "DescribeRuleExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询规则执行结果列表
    @inlinable
    public func describeRuleExecResultsByPage(ruleGroupExecId: Int64? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecResultsByPageResponse> {
        self.describeRuleExecResultsByPage(.init(ruleGroupExecId: ruleGroupExecId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询规则执行结果列表
    @inlinable
    public func describeRuleExecResultsByPage(ruleGroupExecId: Int64? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecResultsByPageResponse {
        try await self.describeRuleExecResultsByPage(.init(ruleGroupExecId: ruleGroupExecId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询规则执行结果列表
    @inlinable
    public func describeRuleExecResultsByPagePaginated(_ input: DescribeRuleExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleExecResult])> {
        self.client.paginate(input: input, region: region, command: self.describeRuleExecResultsByPage, logger: logger, on: eventLoop)
    }

    /// 分页查询规则执行结果列表
    @inlinable @discardableResult
    public func describeRuleExecResultsByPagePaginated(_ input: DescribeRuleExecResultsByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRuleExecResultsByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuleExecResultsByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询规则执行结果列表
    ///
    /// - Returns: `AsyncSequence`s of ``RuleExecResult`` and ``DescribeRuleExecResultsByPageResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRuleExecResultsByPagePaginator(_ input: DescribeRuleExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRuleExecResultsByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRuleExecResultsByPage, logger: logger, on: eventLoop)
    }
}
