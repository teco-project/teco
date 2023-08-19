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

extension Iotexplorer {
    /// PublishBroadcastMessage请求参数结构体
    public struct PublishBroadcastMessageRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 消息内容
        public let payload: String

        /// 消息质量等级
        public let qos: Int64

        /// ayload内容的编码格式，取值为base64或空。base64表示云端将收到的请求数据进行base64解码后下发到设备，空则直接将原始内容下发到设备
        public let payloadEncoding: String?

        public init(productId: String, payload: String, qos: Int64, payloadEncoding: String? = nil) {
            self.productId = productId
            self.payload = payload
            self.qos = qos
            self.payloadEncoding = payloadEncoding
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case payload = "Payload"
            case qos = "Qos"
            case payloadEncoding = "PayloadEncoding"
        }
    }

    /// PublishBroadcastMessage返回参数结构体
    public struct PublishBroadcastMessageResponse: TCResponse {
        /// 广播消息任务Id
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 发布广播消息
    @inlinable
    public func publishBroadcastMessage(_ input: PublishBroadcastMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishBroadcastMessageResponse> {
        self.client.execute(action: "PublishBroadcastMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布广播消息
    @inlinable
    public func publishBroadcastMessage(_ input: PublishBroadcastMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishBroadcastMessageResponse {
        try await self.client.execute(action: "PublishBroadcastMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布广播消息
    @inlinable
    public func publishBroadcastMessage(productId: String, payload: String, qos: Int64, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishBroadcastMessageResponse> {
        self.publishBroadcastMessage(.init(productId: productId, payload: payload, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }

    /// 发布广播消息
    @inlinable
    public func publishBroadcastMessage(productId: String, payload: String, qos: Int64, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishBroadcastMessageResponse {
        try await self.publishBroadcastMessage(.init(productId: productId, payload: payload, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }
}
