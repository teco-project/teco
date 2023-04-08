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

import TecoCore

extension Iot {
    /// GetProduct请求参数结构体
    public struct GetProductRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// GetProduct返回参数结构体
    public struct GetProductResponse: TCResponseModel {
        /// 产品信息
        public let product: Product

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case requestId = "RequestId"
        }
    }

    /// 获取产品信息
    ///
    /// 获取产品定义的详细信息，包括产品名称、产品描述，鉴权模式等信息。
    @inlinable
    public func getProduct(_ input: GetProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProductResponse> {
        self.client.execute(action: "GetProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品信息
    ///
    /// 获取产品定义的详细信息，包括产品名称、产品描述，鉴权模式等信息。
    @inlinable
    public func getProduct(_ input: GetProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductResponse {
        try await self.client.execute(action: "GetProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品信息
    ///
    /// 获取产品定义的详细信息，包括产品名称、产品描述，鉴权模式等信息。
    @inlinable
    public func getProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProductResponse> {
        self.getProduct(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品信息
    ///
    /// 获取产品定义的详细信息，包括产品名称、产品描述，鉴权模式等信息。
    @inlinable
    public func getProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductResponse {
        try await self.getProduct(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
