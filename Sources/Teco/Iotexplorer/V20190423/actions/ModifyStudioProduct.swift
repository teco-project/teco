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

extension Iotexplorer {
    /// ModifyStudioProduct请求参数结构体
    public struct ModifyStudioProductRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 产品名称
        public let productName: String

        /// 产品描述
        public let productDesc: String

        /// 模型ID
        public let moduleId: Int64

        /// 是否打开二进制转Json功能, 取值为字符串 true/false
        public let enableProductScript: String?

        public init(productId: String, productName: String, productDesc: String, moduleId: Int64, enableProductScript: String? = nil) {
            self.productId = productId
            self.productName = productName
            self.productDesc = productDesc
            self.moduleId = moduleId
            self.enableProductScript = enableProductScript
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case productDesc = "ProductDesc"
            case moduleId = "ModuleId"
            case enableProductScript = "EnableProductScript"
        }
    }

    /// ModifyStudioProduct返回参数结构体
    public struct ModifyStudioProductResponse: TCResponseModel {
        /// 产品描述
        public let product: ProductEntry

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case requestId = "RequestId"
        }
    }

    /// 修改产品
    ///
    /// 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。
    @inlinable
    public func modifyStudioProduct(_ input: ModifyStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStudioProductResponse> {
        self.client.execute(action: "ModifyStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改产品
    ///
    /// 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。
    @inlinable
    public func modifyStudioProduct(_ input: ModifyStudioProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStudioProductResponse {
        try await self.client.execute(action: "ModifyStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改产品
    ///
    /// 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。
    @inlinable
    public func modifyStudioProduct(productId: String, productName: String, productDesc: String, moduleId: Int64, enableProductScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStudioProductResponse> {
        let input = ModifyStudioProductRequest(productId: productId, productName: productName, productDesc: productDesc, moduleId: moduleId, enableProductScript: enableProductScript)
        return self.client.execute(action: "ModifyStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改产品
    ///
    /// 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。
    @inlinable
    public func modifyStudioProduct(productId: String, productName: String, productDesc: String, moduleId: Int64, enableProductScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStudioProductResponse {
        let input = ModifyStudioProductRequest(productId: productId, productName: productName, productDesc: productDesc, moduleId: moduleId, enableProductScript: enableProductScript)
        return try await self.client.execute(action: "ModifyStudioProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
