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

extension Tdmq {
    /// UnbindCmqDeadLetter请求参数结构体
    public struct UnbindCmqDeadLetterRequest: TCRequestModel {
        /// 死信策略源队列名称，调用本接口会清空该队列的死信队列策略。
        public let sourceQueueName: String

        public init(sourceQueueName: String) {
            self.sourceQueueName = sourceQueueName
        }

        enum CodingKeys: String, CodingKey {
            case sourceQueueName = "SourceQueueName"
        }
    }

    /// UnbindCmqDeadLetter返回参数结构体
    public struct UnbindCmqDeadLetterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑cmq死信队列
    @inlinable @discardableResult
    public func unbindCmqDeadLetter(_ input: UnbindCmqDeadLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindCmqDeadLetterResponse> {
        self.client.execute(action: "UnbindCmqDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑cmq死信队列
    @inlinable @discardableResult
    public func unbindCmqDeadLetter(_ input: UnbindCmqDeadLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindCmqDeadLetterResponse {
        try await self.client.execute(action: "UnbindCmqDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑cmq死信队列
    @inlinable @discardableResult
    public func unbindCmqDeadLetter(sourceQueueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindCmqDeadLetterResponse> {
        let input = UnbindCmqDeadLetterRequest(sourceQueueName: sourceQueueName)
        return self.client.execute(action: "UnbindCmqDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑cmq死信队列
    @inlinable @discardableResult
    public func unbindCmqDeadLetter(sourceQueueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindCmqDeadLetterResponse {
        let input = UnbindCmqDeadLetterRequest(sourceQueueName: sourceQueueName)
        return try await self.client.execute(action: "UnbindCmqDeadLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
