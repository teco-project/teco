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

extension Kms {
    /// BindCloudResource请求参数结构体
    public struct BindCloudResourceRequest: TCRequestModel {
        /// cmk的ID
        public let keyId: String

        /// 云产品的唯一性标识符
        public let productId: String

        /// 资源/实例ID，由调用方根据自己的云产品特征来定义，以字符串形式做存储。
        public let resourceId: String

        public init(keyId: String, productId: String, resourceId: String) {
            self.keyId = keyId
            self.productId = productId
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case productId = "ProductId"
            case resourceId = "ResourceId"
        }
    }

    /// BindCloudResource返回参数结构体
    public struct BindCloudResourceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定密钥和云产品资源的使用关系
    ///
    /// 记录当前key被哪个云产品的那个资源所使用。如果当前key设置了自动过期，则取消该设置，确保当前key不会自动失效。如果当前关联关系已经创建，也返回成功。
    @inlinable @discardableResult
    public func bindCloudResource(_ input: BindCloudResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindCloudResourceResponse> {
        self.client.execute(action: "BindCloudResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定密钥和云产品资源的使用关系
    ///
    /// 记录当前key被哪个云产品的那个资源所使用。如果当前key设置了自动过期，则取消该设置，确保当前key不会自动失效。如果当前关联关系已经创建，也返回成功。
    @inlinable @discardableResult
    public func bindCloudResource(_ input: BindCloudResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindCloudResourceResponse {
        try await self.client.execute(action: "BindCloudResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定密钥和云产品资源的使用关系
    ///
    /// 记录当前key被哪个云产品的那个资源所使用。如果当前key设置了自动过期，则取消该设置，确保当前key不会自动失效。如果当前关联关系已经创建，也返回成功。
    @inlinable @discardableResult
    public func bindCloudResource(keyId: String, productId: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindCloudResourceResponse> {
        self.bindCloudResource(.init(keyId: keyId, productId: productId, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定密钥和云产品资源的使用关系
    ///
    /// 记录当前key被哪个云产品的那个资源所使用。如果当前key设置了自动过期，则取消该设置，确保当前key不会自动失效。如果当前关联关系已经创建，也返回成功。
    @inlinable @discardableResult
    public func bindCloudResource(keyId: String, productId: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindCloudResourceResponse {
        try await self.bindCloudResource(.init(keyId: keyId, productId: productId, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
