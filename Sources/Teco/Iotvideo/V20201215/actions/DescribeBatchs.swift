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

extension Iotvideo {
    /// DescribeBatchs请求参数结构体
    public struct DescribeBatchsRequest: TCPaginatedRequest {
        /// 产品ID
        public let productId: String

        /// 分页的大小，最大100
        public let limit: UInt64

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        public init(productId: String, limit: UInt64, offset: UInt64) {
            self.productId = productId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBatchsResponse) -> DescribeBatchsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(productId: self.productId, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeBatchs返回参数结构体
    public struct DescribeBatchsResponse: TCPaginatedResponse {
        /// 批次数量
        public let totalCount: UInt64

        /// 批次列表详情
        public let data: [VideoBatch]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VideoBatch`` list from the paginated response.
        public func getItems() -> [VideoBatch] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取批次列表
    @inlinable
    public func describeBatchs(_ input: DescribeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchsResponse> {
        self.client.execute(action: "DescribeBatchs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取批次列表
    @inlinable
    public func describeBatchs(_ input: DescribeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchsResponse {
        try await self.client.execute(action: "DescribeBatchs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取批次列表
    @inlinable
    public func describeBatchs(productId: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchsResponse> {
        self.describeBatchs(.init(productId: productId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取批次列表
    @inlinable
    public func describeBatchs(productId: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchsResponse {
        try await self.describeBatchs(.init(productId: productId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取批次列表
    @inlinable
    public func describeBatchsPaginated(_ input: DescribeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VideoBatch])> {
        self.client.paginate(input: input, region: region, command: self.describeBatchs, logger: logger, on: eventLoop)
    }

    /// 获取批次列表
    @inlinable @discardableResult
    public func describeBatchsPaginated(_ input: DescribeBatchsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBatchsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBatchs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取批次列表
    ///
    /// - Returns: `AsyncSequence`s of ``VideoBatch`` and ``DescribeBatchsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBatchsPaginator(_ input: DescribeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBatchsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBatchs, logger: logger, on: eventLoop)
    }
}
