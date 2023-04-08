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

extension Tag {
    /// DeleteResourceTag请求参数结构体
    public struct DeleteResourceTagRequest: TCRequestModel {
        /// 标签键
        public let tagKey: String

        /// [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        public let resource: String

        public init(tagKey: String, resource: String) {
            self.tagKey = tagKey
            self.resource = resource
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case resource = "Resource"
        }
    }

    /// DeleteResourceTag返回参数结构体
    public struct DeleteResourceTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 标签解绑资源
    ///
    /// 本接口用于解除标签和资源的关联关系
    @inlinable @discardableResult
    public func deleteResourceTag(_ input: DeleteResourceTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceTagResponse> {
        self.client.execute(action: "DeleteResourceTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 标签解绑资源
    ///
    /// 本接口用于解除标签和资源的关联关系
    @inlinable @discardableResult
    public func deleteResourceTag(_ input: DeleteResourceTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceTagResponse {
        try await self.client.execute(action: "DeleteResourceTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 标签解绑资源
    ///
    /// 本接口用于解除标签和资源的关联关系
    @inlinable @discardableResult
    public func deleteResourceTag(tagKey: String, resource: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceTagResponse> {
        self.deleteResourceTag(.init(tagKey: tagKey, resource: resource), region: region, logger: logger, on: eventLoop)
    }

    /// 标签解绑资源
    ///
    /// 本接口用于解除标签和资源的关联关系
    @inlinable @discardableResult
    public func deleteResourceTag(tagKey: String, resource: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceTagResponse {
        try await self.deleteResourceTag(.init(tagKey: tagKey, resource: resource), region: region, logger: logger, on: eventLoop)
    }
}
