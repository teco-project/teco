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

extension Iotcloud {
    /// DeleteProduct请求参数结构体
    public struct DeleteProductRequest: TCRequestModel {
        /// 需要删除的产品 ID
        public let productId: String

        /// 删除LoRa产品需要skey
        public let skey: String?

        public init(productId: String, skey: String? = nil) {
            self.productId = productId
            self.skey = skey
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case skey = "Skey"
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
    /// 本接口（DeleteProduct）用于删除一个物联网通信产品
    @inlinable @discardableResult
    public func deleteProduct(_ input: DeleteProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProductResponse> {
        self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除产品
    ///
    /// 本接口（DeleteProduct）用于删除一个物联网通信产品
    @inlinable @discardableResult
    public func deleteProduct(_ input: DeleteProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProductResponse {
        try await self.client.execute(action: "DeleteProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除产品
    ///
    /// 本接口（DeleteProduct）用于删除一个物联网通信产品
    @inlinable @discardableResult
    public func deleteProduct(productId: String, skey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProductResponse> {
        self.deleteProduct(DeleteProductRequest(productId: productId, skey: skey), region: region, logger: logger, on: eventLoop)
    }

    /// 删除产品
    ///
    /// 本接口（DeleteProduct）用于删除一个物联网通信产品
    @inlinable @discardableResult
    public func deleteProduct(productId: String, skey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProductResponse {
        try await self.deleteProduct(DeleteProductRequest(productId: productId, skey: skey), region: region, logger: logger, on: eventLoop)
    }
}
