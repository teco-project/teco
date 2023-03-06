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

extension Iotcloud {
    /// DescribePrivateCABindedProducts请求参数结构体
    public struct DescribePrivateCABindedProductsRequest: TCPaginatedRequest {
        /// 证书名称
        public let certName: String

        /// 查询偏移量
        public let offset: UInt64

        /// 查询的数据量，默认为20， 最大为200
        public let limit: UInt64

        public init(certName: String, offset: UInt64, limit: UInt64) {
            self.certName = certName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case certName = "CertName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePrivateCABindedProductsResponse) -> DescribePrivateCABindedProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrivateCABindedProductsRequest(certName: self.certName, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrivateCABindedProducts返回参数结构体
    public struct DescribePrivateCABindedProductsResponse: TCPaginatedResponse {
        /// 私有CA绑定的产品列表
        public let products: [BindProductInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindProductInfo] {
            self.products
        }
    }

    /// 查询私有CA绑定的产品列表
    @inlinable
    public func describePrivateCABindedProducts(_ input: DescribePrivateCABindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateCABindedProductsResponse> {
        self.client.execute(action: "DescribePrivateCABindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有CA绑定的产品列表
    @inlinable
    public func describePrivateCABindedProducts(_ input: DescribePrivateCABindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateCABindedProductsResponse {
        try await self.client.execute(action: "DescribePrivateCABindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有CA绑定的产品列表
    @inlinable
    public func describePrivateCABindedProducts(certName: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateCABindedProductsResponse> {
        let input = DescribePrivateCABindedProductsRequest(certName: certName, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrivateCABindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有CA绑定的产品列表
    @inlinable
    public func describePrivateCABindedProducts(certName: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateCABindedProductsResponse {
        let input = DescribePrivateCABindedProductsRequest(certName: certName, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrivateCABindedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有CA绑定的产品列表
    @inlinable
    public func describePrivateCABindedProductsPaginated(_ input: DescribePrivateCABindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [BindProductInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePrivateCABindedProducts, logger: logger, on: eventLoop)
    }

    /// 查询私有CA绑定的产品列表
    @inlinable @discardableResult
    public func describePrivateCABindedProductsPaginated(_ input: DescribePrivateCABindedProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrivateCABindedProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrivateCABindedProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询私有CA绑定的产品列表
    ///
    /// - Returns: `AsyncSequence`s of `BindProductInfo` and `DescribePrivateCABindedProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrivateCABindedProductsPaginator(_ input: DescribePrivateCABindedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrivateCABindedProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrivateCABindedProducts, logger: logger, on: eventLoop)
    }
}
