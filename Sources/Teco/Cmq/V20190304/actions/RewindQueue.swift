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
    /// RewindQueue请求参数结构体
    public struct RewindQueueRequest: TCRequestModel {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String

        /// 设定该时间，则（Batch）receiveMessage接口，会按照生产消息的先后顺序消费该时间戳以后的消息。
        public let startConsumeTime: UInt64

        public init(queueName: String, startConsumeTime: UInt64) {
            self.queueName = queueName
            self.startConsumeTime = startConsumeTime
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case startConsumeTime = "StartConsumeTime"
        }
    }

    /// RewindQueue返回参数结构体
    public struct RewindQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 回溯队列
    @inlinable @discardableResult
    public func rewindQueue(_ input: RewindQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RewindQueueResponse> {
        self.client.execute(action: "RewindQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回溯队列
    @inlinable @discardableResult
    public func rewindQueue(_ input: RewindQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RewindQueueResponse {
        try await self.client.execute(action: "RewindQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回溯队列
    @inlinable @discardableResult
    public func rewindQueue(queueName: String, startConsumeTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RewindQueueResponse> {
        self.rewindQueue(.init(queueName: queueName, startConsumeTime: startConsumeTime), region: region, logger: logger, on: eventLoop)
    }

    /// 回溯队列
    @inlinable @discardableResult
    public func rewindQueue(queueName: String, startConsumeTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RewindQueueResponse {
        try await self.rewindQueue(.init(queueName: queueName, startConsumeTime: startConsumeTime), region: region, logger: logger, on: eventLoop)
    }
}
