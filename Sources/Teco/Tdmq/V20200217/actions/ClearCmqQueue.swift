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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tdmq {
    /// ClearCmqQueue请求参数结构体
    public struct ClearCmqQueueRequest: TCRequestModel {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String

        public init(queueName: String) {
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
        }
    }

    /// ClearCmqQueue返回参数结构体
    public struct ClearCmqQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清空cmq消息队列中的消息
    @inlinable @discardableResult
    public func clearCmqQueue(_ input: ClearCmqQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearCmqQueueResponse> {
        self.client.execute(action: "ClearCmqQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清空cmq消息队列中的消息
    @inlinable @discardableResult
    public func clearCmqQueue(_ input: ClearCmqQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearCmqQueueResponse {
        try await self.client.execute(action: "ClearCmqQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清空cmq消息队列中的消息
    @inlinable @discardableResult
    public func clearCmqQueue(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearCmqQueueResponse> {
        self.clearCmqQueue(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 清空cmq消息队列中的消息
    @inlinable @discardableResult
    public func clearCmqQueue(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearCmqQueueResponse {
        try await self.clearCmqQueue(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
