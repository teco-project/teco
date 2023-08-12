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

extension Iotvideo {
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCPaginatedRequest {
        /// 分页大小，当前页面中显示的最大数量，值范围 1-100
        public let limit: UInt64

        /// 分页偏移，Offset从0开始
        public let offset: UInt64

        /// 产器型号(APP产品,为APP包名)
        public let productModel: String?

        /// 开始时间 ，UNIX 时间戳，单位秒
        public let startTime: Int64?

        /// 结束时间 ，UNIX 时间戳，单位秒
        public let endTime: Int64?

        public init(limit: UInt64, offset: UInt64, productModel: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil) {
            self.limit = limit
            self.offset = offset
            self.productModel = productModel
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case productModel = "ProductModel"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductsResponse) -> DescribeProductsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), productModel: self.productModel, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCPaginatedResponse {
        /// 产品详细信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ProductData]?

        /// 产品总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProductData`` list from the paginated response.
        public func getItems() -> [ProductData] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable
    public func describeProducts(limit: UInt64, offset: UInt64, productModel: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductsResponse> {
        self.describeProducts(.init(limit: limit, offset: offset, productModel: productModel, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable
    public func describeProducts(limit: UInt64, offset: UInt64, productModel: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.describeProducts(.init(limit: limit, offset: offset, productModel: productModel, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProductData])> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    @inlinable @discardableResult
    public func describeProductsPaginated(_ input: DescribeProductsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProducts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。
    ///
    /// - Returns: `AsyncSequence`s of `ProductData` and `DescribeProductsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductsPaginator(_ input: DescribeProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProducts, logger: logger, on: eventLoop)
    }
}
