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
    /// GetProducts请求参数结构体
    public struct GetProductsRequest: TCPaginatedRequest {
        /// 偏移
        public let offset: UInt64?

        /// 长度
        public let length: UInt64?

        public init(offset: UInt64? = nil, length: UInt64? = nil) {
            self.offset = offset
            self.length = length
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case length = "Length"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetProductsResponse) -> GetProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetProductsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length)
        }
    }

    /// GetProducts返回参数结构体
    public struct GetProductsResponse: TCPaginatedResponse {
        /// Product列表
        public let products: [ProductEntry]

        /// Product总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProductEntry] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProducts(_ input: GetProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProductsResponse> {
        self.client.execute(action: "GetProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProducts(_ input: GetProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductsResponse {
        try await self.client.execute(action: "GetProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProducts(offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProductsResponse> {
        let input = GetProductsRequest(offset: offset, length: length)
        return self.client.execute(action: "GetProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProducts(offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductsResponse {
        let input = GetProductsRequest(offset: offset, length: length)
        return try await self.client.execute(action: "GetProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProductsPaginated(_ input: GetProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProductEntry])> {
        self.client.paginate(input: input, region: region, command: self.getProducts, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable @discardableResult
    public func getProductsPaginated(_ input: GetProductsRequest, region: TCRegion? = nil, onResponse: @escaping (GetProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProductsPaginator(_ input: GetProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetProductsRequest, GetProductsResponse>.ResultSequence, responses: TCClient.Paginator<GetProductsRequest, GetProductsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getProducts, logger: logger, on: eventLoop)
    }
}
