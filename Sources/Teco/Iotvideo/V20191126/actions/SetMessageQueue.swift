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

extension Iotvideo {
    /// SetMessageQueue请求参数结构体
    public struct SetMessageQueueRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 消息队列类型 1-CMQ; 2-Ckafka
        public let msgQueueType: UInt64

        /// 消息类型,整型值（0-31）之间以“,”分隔
        /// 0.设备在线状态变更
        /// 1.常亮属性(ProConst)变更
        /// 2.可写属性(ProWritable)变更
        /// 3.只读属性(ProReadonly)变更
        /// 4.设备控制(Action)
        /// 5.设备事件(Event)
        /// 6.系统事件(System)
        public let msgType: String

        /// 消息队列主题，不超过32字符
        public let topic: String

        /// kafka消息队列的实例名，不超过64字符
        public let instance: String

        /// 消息地域，不超过32字符
        public let msgRegion: String

        public init(productId: String, msgQueueType: UInt64, msgType: String, topic: String, instance: String, msgRegion: String) {
            self.productId = productId
            self.msgQueueType = msgQueueType
            self.msgType = msgType
            self.topic = topic
            self.instance = instance
            self.msgRegion = msgRegion
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case msgQueueType = "MsgQueueType"
            case msgType = "MsgType"
            case topic = "Topic"
            case instance = "Instance"
            case msgRegion = "MsgRegion"
        }
    }

    /// SetMessageQueue返回参数结构体
    public struct SetMessageQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置产品转发消息队列
    ///
    /// 本接口（SetMessageQueue）用于配置物联网智能视频产品的转发消息队列。
    @inlinable @discardableResult
    public func setMessageQueue(_ input: SetMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetMessageQueueResponse> {
        self.client.execute(action: "SetMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置产品转发消息队列
    ///
    /// 本接口（SetMessageQueue）用于配置物联网智能视频产品的转发消息队列。
    @inlinable @discardableResult
    public func setMessageQueue(_ input: SetMessageQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetMessageQueueResponse {
        try await self.client.execute(action: "SetMessageQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置产品转发消息队列
    ///
    /// 本接口（SetMessageQueue）用于配置物联网智能视频产品的转发消息队列。
    @inlinable @discardableResult
    public func setMessageQueue(productId: String, msgQueueType: UInt64, msgType: String, topic: String, instance: String, msgRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetMessageQueueResponse> {
        self.setMessageQueue(.init(productId: productId, msgQueueType: msgQueueType, msgType: msgType, topic: topic, instance: instance, msgRegion: msgRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 配置产品转发消息队列
    ///
    /// 本接口（SetMessageQueue）用于配置物联网智能视频产品的转发消息队列。
    @inlinable @discardableResult
    public func setMessageQueue(productId: String, msgQueueType: UInt64, msgType: String, topic: String, instance: String, msgRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetMessageQueueResponse {
        try await self.setMessageQueue(.init(productId: productId, msgQueueType: msgQueueType, msgType: msgType, topic: topic, instance: instance, msgRegion: msgRegion), region: region, logger: logger, on: eventLoop)
    }
}
