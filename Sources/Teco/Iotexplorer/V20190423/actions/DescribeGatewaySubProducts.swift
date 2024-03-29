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

extension Iotexplorer {
    /// DescribeGatewaySubProducts请求参数结构体
    public struct DescribeGatewaySubProductsRequest: TCPaginatedRequest {
        /// 网关产品ID
        public let gatewayProductId: String

        /// 分页的偏移量
        public let offset: UInt64?

        /// 分页的大小
        public let limit: UInt64?

        /// 项目Id
        public let projectId: String?

        /// 是否跨账号产品
        public let productSource: Int64?

        public init(gatewayProductId: String, offset: UInt64? = nil, limit: UInt64? = nil, projectId: String? = nil, productSource: Int64? = nil) {
            self.gatewayProductId = gatewayProductId
            self.offset = offset
            self.limit = limit
            self.projectId = projectId
            self.productSource = productSource
        }

        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case offset = "Offset"
            case limit = "Limit"
            case projectId = "ProjectId"
            case productSource = "ProductSource"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGatewaySubProductsResponse) -> DescribeGatewaySubProductsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(gatewayProductId: self.gatewayProductId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, projectId: self.projectId, productSource: self.productSource)
        }
    }

    /// DescribeGatewaySubProducts返回参数结构体
    public struct DescribeGatewaySubProductsResponse: TCPaginatedResponse {
        /// 当前分页的可绑定或解绑的产品信息。
        public let products: [BindProductInfo]

        /// 可绑定或解绑的产品总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BindProductInfo`` list from the paginated response.
        public func getItems() -> [BindProductInfo] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable
    public func describeGatewaySubProducts(_ input: DescribeGatewaySubProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewaySubProductsResponse> {
        self.client.execute(action: "DescribeGatewaySubProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable
    public func describeGatewaySubProducts(_ input: DescribeGatewaySubProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewaySubProductsResponse {
        try await self.client.execute(action: "DescribeGatewaySubProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable
    public func describeGatewaySubProducts(gatewayProductId: String, offset: UInt64? = nil, limit: UInt64? = nil, projectId: String? = nil, productSource: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewaySubProductsResponse> {
        self.describeGatewaySubProducts(.init(gatewayProductId: gatewayProductId, offset: offset, limit: limit, projectId: projectId, productSource: productSource), region: region, logger: logger, on: eventLoop)
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable
    public func describeGatewaySubProducts(gatewayProductId: String, offset: UInt64? = nil, limit: UInt64? = nil, projectId: String? = nil, productSource: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewaySubProductsResponse {
        try await self.describeGatewaySubProducts(.init(gatewayProductId: gatewayProductId, offset: offset, limit: limit, projectId: projectId, productSource: productSource), region: region, logger: logger, on: eventLoop)
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable
    public func describeGatewaySubProductsPaginated(_ input: DescribeGatewaySubProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BindProductInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGatewaySubProducts, logger: logger, on: eventLoop)
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    @inlinable @discardableResult
    public func describeGatewaySubProductsPaginated(_ input: DescribeGatewaySubProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGatewaySubProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGatewaySubProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取网关可操作的子产品
    ///
    /// 用于获取网关可绑定或解绑的子产品
    ///
    /// - Returns: `AsyncSequence`s of ``BindProductInfo`` and ``DescribeGatewaySubProductsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGatewaySubProductsPaginator(_ input: DescribeGatewaySubProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGatewaySubProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGatewaySubProducts, logger: logger, on: eventLoop)
    }
}
