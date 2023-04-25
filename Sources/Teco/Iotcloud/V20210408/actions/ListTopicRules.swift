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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Iotcloud {
    /// ListTopicRules请求参数结构体
    public struct ListTopicRulesRequest: TCPaginatedRequest {
        /// 请求的页数
        public let pageNum: UInt64

        /// 分页的大小
        public let pageSize: UInt64

        public init(pageNum: UInt64, pageSize: UInt64) {
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListTopicRulesResponse) -> ListTopicRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListTopicRulesRequest(pageNum: self.pageNum + 1, pageSize: self.pageSize)
        }
    }

    /// ListTopicRules返回参数结构体
    public struct ListTopicRulesResponse: TCPaginatedResponse {
        /// 规则总数量
        public let totalCnt: UInt64

        /// 规则列表
        public let rules: [TopicRuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case rules = "Rules"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TopicRuleInfo] {
            self.rules
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCnt
        }
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable
    public func listTopicRules(_ input: ListTopicRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopicRulesResponse> {
        self.client.execute(action: "ListTopicRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable
    public func listTopicRules(_ input: ListTopicRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopicRulesResponse {
        try await self.client.execute(action: "ListTopicRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable
    public func listTopicRules(pageNum: UInt64, pageSize: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopicRulesResponse> {
        self.listTopicRules(.init(pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable
    public func listTopicRules(pageNum: UInt64, pageSize: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopicRulesResponse {
        try await self.listTopicRules(.init(pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable
    public func listTopicRulesPaginated(_ input: ListTopicRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TopicRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.listTopicRules, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    @inlinable @discardableResult
    public func listTopicRulesPaginated(_ input: ListTopicRulesRequest, region: TCRegion? = nil, onResponse: @escaping (ListTopicRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listTopicRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// 本接口（ListTopicRules）用于分页获取规则列表
    ///
    /// - Returns: `AsyncSequence`s of `TopicRuleInfo` and `ListTopicRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listTopicRulesPaginator(_ input: ListTopicRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListTopicRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listTopicRules, logger: logger, on: eventLoop)
    }
}
