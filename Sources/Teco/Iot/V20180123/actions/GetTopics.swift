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

import TecoPaginationHelpers

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
        public func getNextPaginatedRequest(with response: GetTopicsResponse) -> GetTopicsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetTopicsRequest(productId: self.productId, offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length)
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

        /// Extract the returned item list from the paginated response.
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
        let input = GetTopicsRequest(productId: productId, offset: offset, length: length)
        return self.client.execute(action: "GetTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Topic列表
    @inlinable
    public func getTopics(productId: String, offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicsResponse {
        let input = GetTopicsRequest(productId: productId, offset: offset, length: length)
        return try await self.client.execute(action: "GetTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
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
    @inlinable
    public func getTopicsPaginator(_ input: GetTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetTopicsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getTopics, logger: logger, on: eventLoop)
    }
}
