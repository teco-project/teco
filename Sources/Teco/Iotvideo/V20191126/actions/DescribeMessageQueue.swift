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
    /// DescribeMessageQueue请求参数结构体
    public struct DescribeMessageQueueRequest: TCRequest {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeMessageQueue返回参数结构体
    public struct DescribeMessageQueueResponse: TCResponse {
        /// 消息队列配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: MsgQueueData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取产品转发消息配置
    ///
    /// 本接口（DescribeMessageQueue）用于查询物联网智能视频产品转发消息配置。
    @inlinable
    public func describeMessageQueue(_ input: DescribeMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageQueueResponse> {
        self.client.execute(action: "DescribeMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品转发消息配置
    ///
    /// 本接口（DescribeMessageQueue）用于查询物联网智能视频产品转发消息配置。
    @inlinable
    public func describeMessageQueue(_ input: DescribeMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageQueueResponse {
        try await self.client.execute(action: "DescribeMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品转发消息配置
    ///
    /// 本接口（DescribeMessageQueue）用于查询物联网智能视频产品转发消息配置。
    @inlinable
    public func describeMessageQueue(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageQueueResponse> {
        self.describeMessageQueue(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品转发消息配置
    ///
    /// 本接口（DescribeMessageQueue）用于查询物联网智能视频产品转发消息配置。
    @inlinable
    public func describeMessageQueue(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageQueueResponse {
        try await self.describeMessageQueue(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
