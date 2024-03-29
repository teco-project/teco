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

extension Kms {
    /// UnbindCloudResource请求参数结构体
    public struct UnbindCloudResourceRequest: TCRequest {
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

    /// UnbindCloudResource返回参数结构体
    public struct UnbindCloudResourceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑CMK和云资源的关联关系
    ///
    /// 删除指定（key, 资源，云产品）的记录，以表明：指定的云产品的资源已不再使用当前的key。
    @inlinable @discardableResult
    public func unbindCloudResource(_ input: UnbindCloudResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindCloudResourceResponse> {
        self.client.execute(action: "UnbindCloudResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑CMK和云资源的关联关系
    ///
    /// 删除指定（key, 资源，云产品）的记录，以表明：指定的云产品的资源已不再使用当前的key。
    @inlinable @discardableResult
    public func unbindCloudResource(_ input: UnbindCloudResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindCloudResourceResponse {
        try await self.client.execute(action: "UnbindCloudResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑CMK和云资源的关联关系
    ///
    /// 删除指定（key, 资源，云产品）的记录，以表明：指定的云产品的资源已不再使用当前的key。
    @inlinable @discardableResult
    public func unbindCloudResource(keyId: String, productId: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindCloudResourceResponse> {
        self.unbindCloudResource(.init(keyId: keyId, productId: productId, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑CMK和云资源的关联关系
    ///
    /// 删除指定（key, 资源，云产品）的记录，以表明：指定的云产品的资源已不再使用当前的key。
    @inlinable @discardableResult
    public func unbindCloudResource(keyId: String, productId: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindCloudResourceResponse {
        try await self.unbindCloudResource(.init(keyId: keyId, productId: productId, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
