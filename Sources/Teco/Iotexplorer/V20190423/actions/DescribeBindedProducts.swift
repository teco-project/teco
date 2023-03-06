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

extension Iotexplorer {
    /// DescribeBindedProducts请求参数结构体
    public struct DescribeBindedProductsRequest: TCPaginatedRequest {
        /// 网关产品ID
        public let gatewayProductId: String

        /// 分页偏移量
        public let offset: Int64

        /// 分页大小
        public let limit: Int64

        /// 是否跨账号绑定产品
        public let productSource: Int64?

        public init(gatewayProductId: String, offset: Int64, limit: Int64, productSource: Int64? = nil) {
            self.gatewayProductId = gatewayProductId
            self.offset = offset
            self.limit = limit
            self.productSource = productSource
        }

        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case offset = "Offset"
            case limit = "Limit"
            case productSource = "ProductSource"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBindedProductsResponse) -> DescribeBindedProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBindedProductsRequest(gatewayProductId: self.gatewayProductId, offset: self.offset + .init(response.getItems().count), limit: self.limit, productSource: self.productSource)
        }
    }

    /// DescribeBindedProducts返回参数结构体
    public struct DescribeBindedProductsResponse: TCPaginatedResponse {
        /// 当前分页的子产品数组
        public let products: [BindProductInfo]

        /// 绑定的子产品总数量
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindProductInfo] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(_ input: DescribeBindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindedProductsResponse> {
        self.client.execute(action: "DescribeBindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(_ input: DescribeBindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindedProductsResponse {
        try await self.client.execute(action: "DescribeBindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(gatewayProductId: String, offset: Int64, limit: Int64, productSource: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindedProductsResponse> {
        let input = DescribeBindedProductsRequest(gatewayProductId: gatewayProductId, offset: offset, limit: limit, productSource: productSource)
        return self.client.execute(action: "DescribeBindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(gatewayProductId: String, offset: Int64, limit: Int64, productSource: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindedProductsResponse {
        let input = DescribeBindedProductsRequest(gatewayProductId: gatewayProductId, offset: offset, limit: limit, productSource: productSource)
        return try await self.client.execute(action: "DescribeBindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProductsPaginated(_ input: DescribeBindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BindProductInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBindedProducts, logger: logger, on: eventLoop)
    }

    /// 获取网关产品已经绑定的子产品
    @inlinable @discardableResult
    public func describeBindedProductsPaginated(_ input: DescribeBindedProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBindedProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBindedProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取网关产品已经绑定的子产品
    ///
    /// - Returns: `AsyncSequence`s of `BindProductInfo` and `DescribeBindedProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBindedProductsPaginator(_ input: DescribeBindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBindedProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBindedProducts, logger: logger, on: eventLoop)
    }
}
