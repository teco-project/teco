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

extension Iotvideo {
    /// ImportModelDefinition请求参数结构体
    public struct ImportModelDefinitionRequest: TCRequestModel {
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

    /// ImportModelDefinition返回参数结构体
    public struct ImportModelDefinitionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导入其它产品的数据模板
    ///
    /// 导入其它产品的数据模板，覆盖现有数据模板的物模型和产品分类信息
    @inlinable @discardableResult
    public func importModelDefinition(_ input: ImportModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportModelDefinitionResponse> {
        self.client.execute(action: "ImportModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入其它产品的数据模板
    ///
    /// 导入其它产品的数据模板，覆盖现有数据模板的物模型和产品分类信息
    @inlinable @discardableResult
    public func importModelDefinition(_ input: ImportModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportModelDefinitionResponse {
        try await self.client.execute(action: "ImportModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入其它产品的数据模板
    ///
    /// 导入其它产品的数据模板，覆盖现有数据模板的物模型和产品分类信息
    @inlinable @discardableResult
    public func importModelDefinition(productId: String, modelSchema: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportModelDefinitionResponse> {
        self.importModelDefinition(.init(productId: productId, modelSchema: modelSchema), region: region, logger: logger, on: eventLoop)
    }

    /// 导入其它产品的数据模板
    ///
    /// 导入其它产品的数据模板，覆盖现有数据模板的物模型和产品分类信息
    @inlinable @discardableResult
    public func importModelDefinition(productId: String, modelSchema: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportModelDefinitionResponse {
        try await self.importModelDefinition(.init(productId: productId, modelSchema: modelSchema), region: region, logger: logger, on: eventLoop)
    }
}
