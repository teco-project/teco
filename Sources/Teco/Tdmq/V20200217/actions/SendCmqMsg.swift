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

extension Tdmq {
    /// SendCmqMsg请求参数结构体
    public struct SendCmqMsgRequest: TCRequestModel {
        /// 队列名
        public let queueName: String

        /// 消息内容
        public let msgContent: String

        /// 延迟时间
        public let delaySeconds: Int64

        public init(queueName: String, msgContent: String, delaySeconds: Int64) {
            self.queueName = queueName
            self.msgContent = msgContent
            self.delaySeconds = delaySeconds
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case msgContent = "MsgContent"
            case delaySeconds = "DelaySeconds"
        }
    }

    /// SendCmqMsg返回参数结构体
    public struct SendCmqMsgResponse: TCResponseModel {
        /// true表示发送成功
        public let result: Bool

        /// 消息id
        public let msgId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case msgId = "MsgId"
            case requestId = "RequestId"
        }
    }

    /// 发送cmq消息
    @inlinable
    public func sendCmqMsg(_ input: SendCmqMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCmqMsgResponse> {
        self.client.execute(action: "SendCmqMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送cmq消息
    @inlinable
    public func sendCmqMsg(_ input: SendCmqMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCmqMsgResponse {
        try await self.client.execute(action: "SendCmqMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送cmq消息
    @inlinable
    public func sendCmqMsg(queueName: String, msgContent: String, delaySeconds: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCmqMsgResponse> {
        self.sendCmqMsg(.init(queueName: queueName, msgContent: msgContent, delaySeconds: delaySeconds), region: region, logger: logger, on: eventLoop)
    }

    /// 发送cmq消息
    @inlinable
    public func sendCmqMsg(queueName: String, msgContent: String, delaySeconds: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCmqMsgResponse {
        try await self.sendCmqMsg(.init(queueName: queueName, msgContent: msgContent, delaySeconds: delaySeconds), region: region, logger: logger, on: eventLoop)
    }
}
