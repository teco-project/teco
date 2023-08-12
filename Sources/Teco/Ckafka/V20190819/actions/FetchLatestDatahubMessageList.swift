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

extension Ckafka {
    /// FetchLatestDatahubMessageList请求参数结构体
    public struct FetchLatestDatahubMessageListRequest: TCPaginatedRequest {
        /// 主题名
        public let name: String

        /// 分区id
        public let partition: Int64

        /// 位点信息
        public let offset: Int64?

        /// 最大查询条数，最小1，最大100
        public let messageCount: Int64?

        public init(name: String, partition: Int64, offset: Int64? = nil, messageCount: Int64? = nil) {
            self.name = name
            self.partition = partition
            self.offset = offset
            self.messageCount = messageCount
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case partition = "Partition"
            case offset = "Offset"
            case messageCount = "MessageCount"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: FetchLatestDatahubMessageListResponse) -> FetchLatestDatahubMessageListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return FetchLatestDatahubMessageListRequest(name: self.name, partition: self.partition, offset: (self.offset ?? 0) + .init(response.getItems().count), messageCount: self.messageCount)
        }
    }

    /// FetchLatestDatahubMessageList返回参数结构体
    public struct FetchLatestDatahubMessageListResponse: TCPaginatedResponse {
        /// 返回结果。
        public let result: [ConsumerRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ConsumerRecord`` list from the paginated response.
        public func getItems() -> [ConsumerRecord] {
            self.result
        }
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable
    public func fetchLatestDatahubMessageList(_ input: FetchLatestDatahubMessageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchLatestDatahubMessageListResponse> {
        self.client.execute(action: "FetchLatestDatahubMessageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable
    public func fetchLatestDatahubMessageList(_ input: FetchLatestDatahubMessageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchLatestDatahubMessageListResponse {
        try await self.client.execute(action: "FetchLatestDatahubMessageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable
    public func fetchLatestDatahubMessageList(name: String, partition: Int64, offset: Int64? = nil, messageCount: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchLatestDatahubMessageListResponse> {
        self.fetchLatestDatahubMessageList(.init(name: name, partition: partition, offset: offset, messageCount: messageCount), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable
    public func fetchLatestDatahubMessageList(name: String, partition: Int64, offset: Int64? = nil, messageCount: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchLatestDatahubMessageListResponse {
        try await self.fetchLatestDatahubMessageList(.init(name: name, partition: partition, offset: offset, messageCount: messageCount), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable
    public func fetchLatestDatahubMessageListPaginated(_ input: FetchLatestDatahubMessageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ConsumerRecord])> {
        self.client.paginate(input: input, region: region, command: self.fetchLatestDatahubMessageList, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    @inlinable @discardableResult
    public func fetchLatestDatahubMessageListPaginated(_ input: FetchLatestDatahubMessageListRequest, region: TCRegion? = nil, onResponse: @escaping (FetchLatestDatahubMessageListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.fetchLatestDatahubMessageList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic最新消息列表
    ///
    /// 查询最新消息列表
    ///
    /// - Returns: `AsyncSequence`s of ``ConsumerRecord`` and ``FetchLatestDatahubMessageListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func fetchLatestDatahubMessageListPaginator(_ input: FetchLatestDatahubMessageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<FetchLatestDatahubMessageListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.fetchLatestDatahubMessageList, logger: logger, on: eventLoop)
    }
}
