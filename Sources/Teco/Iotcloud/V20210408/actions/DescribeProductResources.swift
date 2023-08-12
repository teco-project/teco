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

extension Iotcloud {
    /// DescribeProductResources请求参数结构体
    public struct DescribeProductResourcesRequest: TCPaginatedRequest {
        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的大小，数值范围 10-250
        public let limit: UInt64

        /// 需要查看资源列表的产品 ID
        public let productID: String?

        /// 需要过滤的资源名称
        public let name: String?

        public init(offset: UInt64, limit: UInt64, productID: String? = nil, name: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.productID = productID
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case productID = "ProductID"
            case name = "Name"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductResourcesResponse) -> DescribeProductResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductResourcesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, productID: self.productID, name: self.name)
        }
    }

    /// DescribeProductResources返回参数结构体
    public struct DescribeProductResourcesResponse: TCPaginatedResponse {
        /// 资源总数
        public let totalCount: UInt64

        /// 资源详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [ProductResourceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProductResourceInfo`` list from the paginated response.
        public func getItems() -> [ProductResourceInfo] {
            self.result ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable
    public func describeProductResources(_ input: DescribeProductResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResourcesResponse> {
        self.client.execute(action: "DescribeProductResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable
    public func describeProductResources(_ input: DescribeProductResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResourcesResponse {
        try await self.client.execute(action: "DescribeProductResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable
    public func describeProductResources(offset: UInt64, limit: UInt64, productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResourcesResponse> {
        self.describeProductResources(.init(offset: offset, limit: limit, productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable
    public func describeProductResources(offset: UInt64, limit: UInt64, productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResourcesResponse {
        try await self.describeProductResources(.init(offset: offset, limit: limit, productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable
    public func describeProductResourcesPaginated(_ input: DescribeProductResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProductResourceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProductResources, logger: logger, on: eventLoop)
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    @inlinable @discardableResult
    public func describeProductResourcesPaginated(_ input: DescribeProductResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProductResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品资源列表
    ///
    /// 本接口（DescribeProductResources）用于查询产品资源列表。
    ///
    /// - Returns: `AsyncSequence`s of `ProductResourceInfo` and `DescribeProductResourcesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductResourcesPaginator(_ input: DescribeProductResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProductResources, logger: logger, on: eventLoop)
    }
}
