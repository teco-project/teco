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
    /// SendMessages请求参数结构体
    public struct SendMessagesRequest: TCRequestModel {
        /// 消息要发送的topic的名字, 这里尽量需要使用topic的全路径，即：tenant/namespace/topic。如果不指定，默认使用的是：public/default
        public let topic: String

        /// 要发送的消息的内容
        public let payload: String

        /// Token 是用来做鉴权使用的，可以不填，系统会自动获取
        public let stringToken: String?

        /// 设置 producer 的名字，要求全局唯一。该参数建议用户无需手动配置，此时系统会随机生成，如果手动设置有可能会造成创建 Producer 失败进而导致消息发送失败。
        /// 该参数主要用于某些特定场景下，只允许特定的 Producer 生产消息时设置，用户的大部分场景使用不到该特性。
        public let producerName: String?

        /// 设置消息发送的超时时间，默认为30s
        public let sendTimeout: Int64?

        /// 内存中缓存的最大的生产消息的数量，默认为1000条
        public let maxPendingMessages: Int64?

        public init(topic: String, payload: String, stringToken: String? = nil, producerName: String? = nil, sendTimeout: Int64? = nil, maxPendingMessages: Int64? = nil) {
            self.topic = topic
            self.payload = payload
            self.stringToken = stringToken
            self.producerName = producerName
            self.sendTimeout = sendTimeout
            self.maxPendingMessages = maxPendingMessages
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case payload = "Payload"
            case stringToken = "StringToken"
            case producerName = "ProducerName"
            case sendTimeout = "SendTimeout"
            case maxPendingMessages = "MaxPendingMessages"
        }
    }

    /// SendMessages返回参数结构体
    public struct SendMessagesResponse: TCResponseModel {
        /// 消息的messageID, 是全局唯一的，用来标识消息的元数据信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let messageId: String?

        /// 返回的错误消息，如果返回为 “”，说明没有错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }

    /// 发送单条消息
    @inlinable
    public func sendMessages(_ input: SendMessagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMessagesResponse> {
        self.client.execute(action: "SendMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送单条消息
    @inlinable
    public func sendMessages(_ input: SendMessagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMessagesResponse {
        try await self.client.execute(action: "SendMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送单条消息
    @inlinable
    public func sendMessages(topic: String, payload: String, stringToken: String? = nil, producerName: String? = nil, sendTimeout: Int64? = nil, maxPendingMessages: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMessagesResponse> {
        self.sendMessages(.init(topic: topic, payload: payload, stringToken: stringToken, producerName: producerName, sendTimeout: sendTimeout, maxPendingMessages: maxPendingMessages), region: region, logger: logger, on: eventLoop)
    }

    /// 发送单条消息
    @inlinable
    public func sendMessages(topic: String, payload: String, stringToken: String? = nil, producerName: String? = nil, sendTimeout: Int64? = nil, maxPendingMessages: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMessagesResponse {
        try await self.sendMessages(.init(topic: topic, payload: payload, stringToken: stringToken, producerName: producerName, sendTimeout: sendTimeout, maxPendingMessages: maxPendingMessages), region: region, logger: logger, on: eventLoop)
    }
}
