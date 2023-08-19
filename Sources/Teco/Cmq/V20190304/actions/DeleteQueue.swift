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

extension Cmq {
    /// DeleteQueue请求参数结构体
    public struct DeleteQueueRequest: TCRequest {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String

        public init(queueName: String) {
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
        }
    }

    /// DeleteQueue返回参数结构体
    public struct DeleteQueueResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除队列
    ///
    /// DeleteQueue
    @inlinable @discardableResult
    public func deleteQueue(_ input: DeleteQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteQueueResponse> {
        self.client.execute(action: "DeleteQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除队列
    ///
    /// DeleteQueue
    @inlinable @discardableResult
    public func deleteQueue(_ input: DeleteQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteQueueResponse {
        try await self.client.execute(action: "DeleteQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除队列
    ///
    /// DeleteQueue
    @inlinable @discardableResult
    public func deleteQueue(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteQueueResponse> {
        self.deleteQueue(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除队列
    ///
    /// DeleteQueue
    @inlinable @discardableResult
    public func deleteQueue(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteQueueResponse {
        try await self.deleteQueue(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
