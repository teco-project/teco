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

extension Iotvideo {
    /// CreateGencode请求参数结构体
    public struct CreateGencodeRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 物模型发布版本号,-1代表未发布的，保存的是草稿箱的版本。1代表已发布的物模型。
        public let revision: Int64

        public init(productId: String, revision: Int64) {
            self.productId = productId
            self.revision = revision
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case revision = "Revision"
        }
    }

    /// CreateGencode返回参数结构体
    public struct CreateGencodeResponse: TCResponseModel {
        /// 生成的源代码(zip压缩后的base64编码)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zipCode: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zipCode = "ZipCode"
            case requestId = "RequestId"
        }
    }

    /// 生成设备物模型源代码
    ///
    /// 本接口（CreateGencode）用于生成设备物模型源代码
    @inlinable
    public func createGencode(_ input: CreateGencodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGencodeResponse> {
        self.client.execute(action: "CreateGencode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成设备物模型源代码
    ///
    /// 本接口（CreateGencode）用于生成设备物模型源代码
    @inlinable
    public func createGencode(_ input: CreateGencodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGencodeResponse {
        try await self.client.execute(action: "CreateGencode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成设备物模型源代码
    ///
    /// 本接口（CreateGencode）用于生成设备物模型源代码
    @inlinable
    public func createGencode(productId: String, revision: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGencodeResponse> {
        self.createGencode(.init(productId: productId, revision: revision), region: region, logger: logger, on: eventLoop)
    }

    /// 生成设备物模型源代码
    ///
    /// 本接口（CreateGencode）用于生成设备物模型源代码
    @inlinable
    public func createGencode(productId: String, revision: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGencodeResponse {
        try await self.createGencode(.init(productId: productId, revision: revision), region: region, logger: logger, on: eventLoop)
    }
}
