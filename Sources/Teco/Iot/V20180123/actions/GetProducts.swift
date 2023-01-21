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

extension Iot {
    /// GetProducts请求参数结构体
    public struct GetProductsRequest: TCRequestModel {
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
    }

    /// GetProducts返回参数结构体
    public struct GetProductsResponse: TCResponseModel {
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
        self.getProducts(GetProductsRequest(offset: offset, length: length), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 获取用户在物联网套件所创建的所有产品信息。
    @inlinable
    public func getProducts(offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductsResponse {
        try await self.getProducts(GetProductsRequest(offset: offset, length: length), region: region, logger: logger, on: eventLoop)
    }
}
