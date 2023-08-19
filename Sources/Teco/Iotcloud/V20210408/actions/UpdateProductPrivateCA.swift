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

extension Iotcloud {
    /// UpdateProductPrivateCA请求参数结构体
    public struct UpdateProductPrivateCARequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 私有CA证书名称
        public let certName: String

        public init(productId: String, certName: String) {
            self.productId = productId
            self.certName = certName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case certName = "CertName"
        }
    }

    /// UpdateProductPrivateCA返回参数结构体
    public struct UpdateProductPrivateCAResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新产品的私有CA
    @inlinable @discardableResult
    public func updateProductPrivateCA(_ input: UpdateProductPrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProductPrivateCAResponse> {
        self.client.execute(action: "UpdateProductPrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新产品的私有CA
    @inlinable @discardableResult
    public func updateProductPrivateCA(_ input: UpdateProductPrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProductPrivateCAResponse {
        try await self.client.execute(action: "UpdateProductPrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新产品的私有CA
    @inlinable @discardableResult
    public func updateProductPrivateCA(productId: String, certName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProductPrivateCAResponse> {
        self.updateProductPrivateCA(.init(productId: productId, certName: certName), region: region, logger: logger, on: eventLoop)
    }

    /// 更新产品的私有CA
    @inlinable @discardableResult
    public func updateProductPrivateCA(productId: String, certName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProductPrivateCAResponse {
        try await self.updateProductPrivateCA(.init(productId: productId, certName: certName), region: region, logger: logger, on: eventLoop)
    }
}
