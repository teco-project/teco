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

import TecoCore
import TecoPaginationHelpers

extension Iotcloud {
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCPaginatedRequest {
        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页大小，当前页面中显示的最大数量，值范围 10-250。
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductsResponse) -> DescribeProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCPaginatedResponse {
        /// 产品总数
        public let totalCount: UInt64

        /// 产品详细信息列表
        public let products: [ProductInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case products = "Products"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProductInfo] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable
    public func describeProducts(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.describeProducts(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable
    public func describeProducts(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.describeProducts(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProductInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    @inlinable @discardableResult
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。
    ///
    /// - Returns: `AsyncSequence`s of `ProductInfo` and `DescribeProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductsPaginator(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }
}
