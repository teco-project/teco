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
    /// DeleteMessageQueue请求参数结构体
    public struct DeleteMessageQueueRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DeleteMessageQueue返回参数结构体
    public struct DeleteMessageQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除产品转发消息配置
    ///
    /// 本接口（DeleteMessageQueue）用于删除物联网智能视频产品的转发消息配置信息。
    @inlinable @discardableResult
    public func deleteMessageQueue(_ input: DeleteMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMessageQueueResponse> {
        self.client.execute(action: "DeleteMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除产品转发消息配置
    ///
    /// 本接口（DeleteMessageQueue）用于删除物联网智能视频产品的转发消息配置信息。
    @inlinable @discardableResult
    public func deleteMessageQueue(_ input: DeleteMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageQueueResponse {
        try await self.client.execute(action: "DeleteMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除产品转发消息配置
    ///
    /// 本接口（DeleteMessageQueue）用于删除物联网智能视频产品的转发消息配置信息。
    @inlinable @discardableResult
    public func deleteMessageQueue(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMessageQueueResponse> {
        self.deleteMessageQueue(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除产品转发消息配置
    ///
    /// 本接口（DeleteMessageQueue）用于删除物联网智能视频产品的转发消息配置信息。
    @inlinable @discardableResult
    public func deleteMessageQueue(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageQueueResponse {
        try await self.deleteMessageQueue(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
