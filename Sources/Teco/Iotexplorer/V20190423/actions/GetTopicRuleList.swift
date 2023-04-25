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

extension Iotexplorer {
    /// GetTopicRuleList请求参数结构体
    public struct GetTopicRuleListRequest: TCPaginatedRequest {
        /// 请求的页数
        public let pageNum: Int64

        /// 分页的大小
        public let pageSize: Int64

        public init(pageNum: Int64, pageSize: Int64) {
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetTopicRuleListResponse) -> GetTopicRuleListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetTopicRuleListRequest(pageNum: self.pageNum + 1, pageSize: self.pageSize)
        }
    }

    /// GetTopicRuleList返回参数结构体
    public struct GetTopicRuleListResponse: TCPaginatedResponse {
        /// 规则总数量
        public let totalCnt: Int64

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
        public func getTotalCount() -> Int64? {
            self.totalCnt
        }
    }

    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(_ input: GetTopicRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTopicRuleListResponse> {
        self.client.execute(action: "GetTopicRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(_ input: GetTopicRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicRuleListResponse {
        try await self.client.execute(action: "GetTopicRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(pageNum: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTopicRuleListResponse> {
        self.getTopicRuleList(.init(pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(pageNum: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicRuleListResponse {
        try await self.getTopicRuleList(.init(pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    @inlinable
    public func getTopicRuleListPaginated(_ input: GetTopicRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TopicRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.getTopicRuleList, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    @inlinable @discardableResult
    public func getTopicRuleListPaginated(_ input: GetTopicRuleListRequest, region: TCRegion? = nil, onResponse: @escaping (GetTopicRuleListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getTopicRuleList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取规则列表
    ///
    /// - Returns: `AsyncSequence`s of `TopicRuleInfo` and `GetTopicRuleListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getTopicRuleListPaginator(_ input: GetTopicRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetTopicRuleListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getTopicRuleList, logger: logger, on: eventLoop)
    }
}
