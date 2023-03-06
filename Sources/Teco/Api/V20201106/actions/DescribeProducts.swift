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

extension Api {
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCPaginatedRequest {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(limit: Int64? = nil, offset: Int64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProductsResponse) -> DescribeProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCPaginatedResponse {
        /// 产品详细信息列表。
        public let products: [RegionProduct]

        /// 产品总数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RegionProduct] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询支持地域列表查询的产品
    ///
    /// 本接口(DescribeProducts)用于查询各个支持地域列表查询的产品信息。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询支持地域列表查询的产品
    ///
    /// 本接口(DescribeProducts)用于查询各个支持地域列表查询的产品信息。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询支持地域列表查询的产品
    ///
    /// 本接口(DescribeProducts)用于查询各个支持地域列表查询的产品信息。
    @inlinable
    public func describeProducts(limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        let input = DescribeProductsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询支持地域列表查询的产品
    ///
    /// 本接口(DescribeProducts)用于查询各个支持地域列表查询的产品信息。
    @inlinable
    public func describeProducts(limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        let input = DescribeProductsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
