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

extension Iotvideo {
    /// ModifyProduct请求参数结构体
    public struct ModifyProductRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 产品名称
        public let productName: String

        /// 产品描述
        public let productDescription: String

        /// 主芯片产商ID
        public let chipManufactureId: String?

        /// 主芯片ID
        public let chipId: String?

        public init(productId: String, productName: String, productDescription: String, chipManufactureId: String? = nil, chipId: String? = nil) {
            self.productId = productId
            self.productName = productName
            self.productDescription = productDescription
            self.chipManufactureId = chipManufactureId
            self.chipId = chipId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case productDescription = "ProductDescription"
            case chipManufactureId = "ChipManufactureId"
            case chipId = "ChipId"
        }
    }

    /// ModifyProduct返回参数结构体
    public struct ModifyProductResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑产品信息
    ///
    /// 本接口（ModifyProduct）用于编辑物联网智能视频产品的相关信息。
    @inlinable @discardableResult
    public func modifyProduct(_ input: ModifyProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProductResponse> {
        self.client.execute(action: "ModifyProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑产品信息
    ///
    /// 本接口（ModifyProduct）用于编辑物联网智能视频产品的相关信息。
    @inlinable @discardableResult
    public func modifyProduct(_ input: ModifyProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProductResponse {
        try await self.client.execute(action: "ModifyProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑产品信息
    ///
    /// 本接口（ModifyProduct）用于编辑物联网智能视频产品的相关信息。
    @inlinable @discardableResult
    public func modifyProduct(productId: String, productName: String, productDescription: String, chipManufactureId: String? = nil, chipId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProductResponse> {
        self.modifyProduct(.init(productId: productId, productName: productName, productDescription: productDescription, chipManufactureId: chipManufactureId, chipId: chipId), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑产品信息
    ///
    /// 本接口（ModifyProduct）用于编辑物联网智能视频产品的相关信息。
    @inlinable @discardableResult
    public func modifyProduct(productId: String, productName: String, productDescription: String, chipManufactureId: String? = nil, chipId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProductResponse {
        try await self.modifyProduct(.init(productId: productId, productName: productName, productDescription: productDescription, chipManufactureId: chipManufactureId, chipId: chipId), region: region, logger: logger, on: eventLoop)
    }
}
