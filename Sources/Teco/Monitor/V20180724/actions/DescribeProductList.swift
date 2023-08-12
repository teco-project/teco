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
import TecoPaginationHelpers

extension Monitor {
    /// DescribeProductList请求参数结构体
    public struct DescribeProductListRequest: TCPaginatedRequest {
        /// 固定传值monitor
        public let module: String

        /// 排序方式：DESC/ASC（区分大小写），默认值DESC
        public let order: String?

        /// 分页查询的偏移量，默认值0
        public let offset: UInt64?

        /// 分页查询的每页数据量，默认值20
        public let limit: UInt64?

        public init(module: String, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.module = module
            self.order = order
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case order = "Order"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductListResponse) -> DescribeProductListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductListRequest(module: self.module, order: self.order, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeProductList返回参数结构体
    public struct DescribeProductListResponse: TCPaginatedResponse {
        /// 产品信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productList: [ProductSimple]?

        /// 产品总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case productList = "ProductList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProductSimple`` list from the paginated response.
        public func getItems() -> [ProductSimple] {
            self.productList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable
    public func describeProductList(_ input: DescribeProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductListResponse> {
        self.client.execute(action: "DescribeProductList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable
    public func describeProductList(_ input: DescribeProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductListResponse {
        try await self.client.execute(action: "DescribeProductList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable
    public func describeProductList(module: String, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductListResponse> {
        self.describeProductList(.init(module: module, order: order, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable
    public func describeProductList(module: String, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductListResponse {
        try await self.describeProductList(.init(module: module, order: order, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable
    public func describeProductListPaginated(_ input: DescribeProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProductSimple])> {
        self.client.paginate(input: input, region: region, command: self.describeProductList, logger: logger, on: eventLoop)
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    @inlinable @discardableResult
    public func describeProductListPaginated(_ input: DescribeProductListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProductList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云产品列表
    ///
    /// 查询腾讯云可观测平台云产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。
    ///
    /// - Returns: `AsyncSequence`s of ``ProductSimple`` and ``DescribeProductListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductListPaginator(_ input: DescribeProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProductList, logger: logger, on: eventLoop)
    }
}
