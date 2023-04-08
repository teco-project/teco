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

extension Trp {
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCPaginatedRequest {
        /// 商品名称
        public let name: String?

        /// 条数
        public let pageSize: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 商品ID
        public let merchantId: String?

        /// 企业ID
        public let corpId: UInt64?

        public init(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, corpId: UInt64? = nil) {
            self.name = name
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.merchantId = merchantId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case merchantId = "MerchantId"
            case corpId = "CorpId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductsResponse) -> DescribeProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductsRequest(name: self.name, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, merchantId: self.merchantId, corpId: self.corpId)
        }
    }

    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCPaginatedResponse {
        /// 商品列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let products: [Product]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Product] {
            self.products ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询商品列表
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询商品列表
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询商品列表
    @inlinable
    public func describeProducts(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.describeProducts(.init(name: name, pageSize: pageSize, pageNumber: pageNumber, merchantId: merchantId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询商品列表
    @inlinable
    public func describeProducts(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.describeProducts(.init(name: name, pageSize: pageSize, pageNumber: pageNumber, merchantId: merchantId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询商品列表
    @inlinable
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Product])> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }

    /// 查询商品列表
    @inlinable @discardableResult
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询商品列表
    ///
    /// - Returns: `AsyncSequence`s of `Product` and `DescribeProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductsPaginator(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }
}
