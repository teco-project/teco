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
    /// UnbindDeadLetter请求参数结构体
    public struct UnbindDeadLetterRequest: TCRequest {
        /// 死信策略源队列名称，调用本接口会清空该队列的死信队列策略。
        public let queueName: String

        public init(queueName: String) {
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
        }
    }

    /// UnbindDeadLetter返回参数结构体
    public struct UnbindDeadLetterResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑死信队列
    @inlinable @discardableResult
    public func unbindDeadLetter(_ input: UnbindDeadLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindDeadLetterResponse> {
        self.client.execute(action: "UnbindDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑死信队列
    @inlinable @discardableResult
    public func unbindDeadLetter(_ input: UnbindDeadLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDeadLetterResponse {
        try await self.client.execute(action: "UnbindDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑死信队列
    @inlinable @discardableResult
    public func unbindDeadLetter(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindDeadLetterResponse> {
        self.unbindDeadLetter(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑死信队列
    @inlinable @discardableResult
    public func unbindDeadLetter(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDeadLetterResponse {
        try await self.unbindDeadLetter(.init(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
