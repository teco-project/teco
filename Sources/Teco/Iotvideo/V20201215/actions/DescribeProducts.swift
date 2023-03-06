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

extension Iotvideo {
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCPaginatedRequest {
        /// 分页的大小，最大100
        public let limit: UInt64

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        public init(limit: UInt64, offset: UInt64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductsResponse) -> DescribeProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 产品详情列表
        public let data: [VideoProduct]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VideoProduct] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取产品列表
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    @inlinable
    public func describeProducts(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        let input = DescribeProductsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    @inlinable
    public func describeProducts(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        let input = DescribeProductsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    @inlinable
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VideoProduct])> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    @inlinable @discardableResult
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// - Returns: `AsyncSequence`s of `VideoProduct` and `DescribeProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductsPaginator(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }
}
