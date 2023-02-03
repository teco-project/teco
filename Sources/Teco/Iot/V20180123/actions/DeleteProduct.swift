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
    /// DeleteProduct请求参数结构体
    public struct DeleteProductRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DeleteProduct返回参数结构体
    public struct DeleteProductResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除产品
    ///
    /// 删除用户指定的产品Id对应的信息。
    @inlinable @discardableResult
    public func deleteProduct(_ input: DeleteProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProductResponse> {
        self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除产品
    ///
    /// 删除用户指定的产品Id对应的信息。
    @inlinable @discardableResult
    public func deleteProduct(_ input: DeleteProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProductResponse {
        try await self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除产品
    ///
    /// 删除用户指定的产品Id对应的信息。
    @inlinable @discardableResult
    public func deleteProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProductResponse> {
        let input = DeleteProductRequest(productId: productId)
        return self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除产品
    ///
    /// 删除用户指定的产品Id对应的信息。
    @inlinable @discardableResult
    public func deleteProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProductResponse {
        let input = DeleteProductRequest(productId: productId)
        return try await self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
