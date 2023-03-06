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
    /// SearchStudioProduct请求参数结构体
    public struct SearchStudioProductRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String?

        /// 产品名称
        public let productName: String?

        /// 列表Limit
        public let limit: UInt64?

        /// 列表Offset
        public let offset: UInt64?

        /// 产品Status
        public let devStatus: String?

        /// 产品ID
        public let productId: String?

        public init(projectId: String? = nil, productName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, devStatus: String? = nil, productId: String? = nil) {
            self.projectId = projectId
            self.productName = productName
            self.limit = limit
            self.offset = offset
            self.devStatus = devStatus
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case productName = "ProductName"
            case limit = "Limit"
            case offset = "Offset"
            case devStatus = "DevStatus"
            case productId = "ProductId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: SearchStudioProductResponse) -> SearchStudioProductRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchStudioProductRequest(projectId: self.projectId, productName: self.productName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), devStatus: self.devStatus, productId: self.productId)
        }
    }

    /// SearchStudioProduct返回参数结构体
    public struct SearchStudioProductResponse: TCPaginatedResponse {
        /// 产品列表
        public let products: [ProductEntry]

        /// 产品数量
        public let total: Int64

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
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProduct(_ input: SearchStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchStudioProductResponse> {
        self.client.execute(action: "SearchStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProduct(_ input: SearchStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchStudioProductResponse {
        try await self.client.execute(action: "SearchStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProduct(projectId: String? = nil, productName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, devStatus: String? = nil, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchStudioProductResponse> {
        let input = SearchStudioProductRequest(projectId: projectId, productName: productName, limit: limit, offset: offset, devStatus: devStatus, productId: productId)
        return self.client.execute(action: "SearchStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProduct(projectId: String? = nil, productName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, devStatus: String? = nil, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchStudioProductResponse {
        let input = SearchStudioProductRequest(projectId: projectId, productName: productName, limit: limit, offset: offset, devStatus: devStatus, productId: productId)
        return try await self.client.execute(action: "SearchStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProductPaginated(_ input: SearchStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProductEntry])> {
        self.client.paginate(input: input, region: region, command: self.searchStudioProduct, logger: logger, on: eventLoop)
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable @discardableResult
    public func searchStudioProductPaginated(_ input: SearchStudioProductRequest, region: TCRegion? = nil, onResponse: @escaping (SearchStudioProductResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchStudioProduct, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索产品
    ///
    /// 提供根据产品名称查找产品的能力
    @inlinable
    public func searchStudioProductPaginator(_ input: SearchStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchStudioProductRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchStudioProduct, logger: logger, on: eventLoop)
    }
}
