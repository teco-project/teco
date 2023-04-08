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
    /// ModifyModelDefinition请求参数结构体
    public struct ModifyModelDefinitionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 数据模板定义
        public let modelSchema: String

        public init(productId: String, modelSchema: String) {
            self.productId = productId
            self.modelSchema = modelSchema
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case modelSchema = "ModelSchema"
        }
    }

    /// ModifyModelDefinition返回参数结构体
    public struct ModifyModelDefinitionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改产品数据模板
    ///
    /// 提供修改产品的数据模板的能力
    @inlinable @discardableResult
    public func modifyModelDefinition(_ input: ModifyModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModelDefinitionResponse> {
        self.client.execute(action: "ModifyModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改产品数据模板
    ///
    /// 提供修改产品的数据模板的能力
    @inlinable @discardableResult
    public func modifyModelDefinition(_ input: ModifyModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModelDefinitionResponse {
        try await self.client.execute(action: "ModifyModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改产品数据模板
    ///
    /// 提供修改产品的数据模板的能力
    @inlinable @discardableResult
    public func modifyModelDefinition(productId: String, modelSchema: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModelDefinitionResponse> {
        self.modifyModelDefinition(.init(productId: productId, modelSchema: modelSchema), region: region, logger: logger, on: eventLoop)
    }

    /// 修改产品数据模板
    ///
    /// 提供修改产品的数据模板的能力
    @inlinable @discardableResult
    public func modifyModelDefinition(productId: String, modelSchema: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModelDefinitionResponse {
        try await self.modifyModelDefinition(.init(productId: productId, modelSchema: modelSchema), region: region, logger: logger, on: eventLoop)
    }
}
