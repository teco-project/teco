//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iot {
    /// PublishMsg请求参数结构体
    public struct PublishMsgRequest: TCRequestModel {
        /// Topic
        public let topic: String

        /// 消息内容
        public let message: String

        /// Qos(目前QoS支持0与1)
        public let qos: Int64?

        public init(topic: String, message: String, qos: Int64? = nil) {
            self.topic = topic
            self.message = message
            self.qos = qos
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case message = "Message"
            case qos = "Qos"
        }
    }

    /// PublishMsg返回参数结构体
    public struct PublishMsgResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 向Topic发布消息
    ///
    /// 提供向指定的Topic发布消息的能力，常用于向设备下发控制指令。该接口只适用于产品版本为“基础版”类型的产品，使用高级版的产品需使用“下发设备控制指令”接口
    @inlinable @discardableResult
    public func publishMsg(_ input: PublishMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMsgResponse> {
        self.client.execute(action: "PublishMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 向Topic发布消息
    ///
    /// 提供向指定的Topic发布消息的能力，常用于向设备下发控制指令。该接口只适用于产品版本为“基础版”类型的产品，使用高级版的产品需使用“下发设备控制指令”接口
    @inlinable @discardableResult
    public func publishMsg(_ input: PublishMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMsgResponse {
        try await self.client.execute(action: "PublishMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 向Topic发布消息
    ///
    /// 提供向指定的Topic发布消息的能力，常用于向设备下发控制指令。该接口只适用于产品版本为“基础版”类型的产品，使用高级版的产品需使用“下发设备控制指令”接口
    @inlinable @discardableResult
    public func publishMsg(topic: String, message: String, qos: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMsgResponse> {
        self.publishMsg(PublishMsgRequest(topic: topic, message: message, qos: qos), region: region, logger: logger, on: eventLoop)
    }

    /// 向Topic发布消息
    ///
    /// 提供向指定的Topic发布消息的能力，常用于向设备下发控制指令。该接口只适用于产品版本为“基础版”类型的产品，使用高级版的产品需使用“下发设备控制指令”接口
    @inlinable @discardableResult
    public func publishMsg(topic: String, message: String, qos: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMsgResponse {
        try await self.publishMsg(PublishMsgRequest(topic: topic, message: message, qos: qos), region: region, logger: logger, on: eventLoop)
    }
}
