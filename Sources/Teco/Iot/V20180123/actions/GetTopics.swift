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

extension Iot {
    /// GetTopics请求参数结构体
    public struct GetTopicsRequest: TCPaginatedRequest {
        /// 产品Id
        public let productId: String

        /// 偏移
        public let offset: UInt64?

        /// 长度
        public let length: UInt64?

        public init(productId: String, offset: UInt64? = nil, length: UInt64? = nil) {
            self.productId = productId
            self.offset = offset
            self.length = length
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case length = "Length"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetTopicsResponse) -> GetTopicsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(productId: self.productId, offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length)
        }
    }

    /// GetTopics返回参数结构体
    public struct GetTopicsResponse: TCPaginatedResponse {
        /// Topic列表
        public let topics: [Topic]

        /// Topic总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topics = "Topics"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Topic`` list from the paginated response.
        public func getItems() -> [Topic] {
            self.topics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取Topic列表
    @inlinable
    public func getTopics(_ input: GetTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTopicsResponse> {
        self.client.execute(action: "GetTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    @inlinable
    public func getTopics(_ input: GetTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicsResponse {
        try await self.client.execute(action: "GetTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Topic列表
    @inlinable
    public func getTopics(productId: String, offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTopicsResponse> {
        self.getTopics(.init(productId: productId, offset: offset, length: length), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    @inlinable
    public func getTopics(productId: String, offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicsResponse {
        try await self.getTopics(.init(productId: productId, offset: offset, length: length), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    @inlinable
    public func getTopicsPaginated(_ input: GetTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Topic])> {
        self.client.paginate(input: input, region: region, command: self.getTopics, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    @inlinable @discardableResult
    public func getTopicsPaginated(_ input: GetTopicsRequest, region: TCRegion? = nil, onResponse: @escaping (GetTopicsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getTopics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    ///
    /// - Returns: `AsyncSequence`s of ``Topic`` and ``GetTopicsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getTopicsPaginator(_ input: GetTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetTopicsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getTopics, logger: logger, on: eventLoop)
    }
}
