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

extension Iotcloud {
    /// PublishMessage请求参数结构体
    public struct PublishMessageRequest: TCRequest {
        /// 消息发往的主题。命名规则：${ProductId}/${DeviceName}/[a-zA-Z0-9:_-]{1,128}
        public let topic: String

        /// 消息内容
        public let payload: String

        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 服务质量等级，取值为0或1
        public let qos: UInt64?

        /// Payload内容的编码格式，取值为base64或空。base64表示云端将收到的请求数据进行base64解码后下发到设备，空则直接将原始内容下发到设备
        public let payloadEncoding: String?

        public init(topic: String, payload: String, productId: String, deviceName: String, qos: UInt64? = nil, payloadEncoding: String? = nil) {
            self.topic = topic
            self.payload = payload
            self.productId = productId
            self.deviceName = deviceName
            self.qos = qos
            self.payloadEncoding = payloadEncoding
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case payload = "Payload"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case qos = "Qos"
            case payloadEncoding = "PayloadEncoding"
        }
    }

    /// PublishMessage返回参数结构体
    public struct PublishMessageResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发布消息
    ///
    /// 本接口（PublishMessage）用于向某个主题发消息。
    @inlinable @discardableResult
    public func publishMessage(_ input: PublishMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMessageResponse> {
        self.client.execute(action: "PublishMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布消息
    ///
    /// 本接口（PublishMessage）用于向某个主题发消息。
    @inlinable @discardableResult
    public func publishMessage(_ input: PublishMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMessageResponse {
        try await self.client.execute(action: "PublishMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布消息
    ///
    /// 本接口（PublishMessage）用于向某个主题发消息。
    @inlinable @discardableResult
    public func publishMessage(topic: String, payload: String, productId: String, deviceName: String, qos: UInt64? = nil, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMessageResponse> {
        self.publishMessage(.init(topic: topic, payload: payload, productId: productId, deviceName: deviceName, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }

    /// 发布消息
    ///
    /// 本接口（PublishMessage）用于向某个主题发消息。
    @inlinable @discardableResult
    public func publishMessage(topic: String, payload: String, productId: String, deviceName: String, qos: UInt64? = nil, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMessageResponse {
        try await self.publishMessage(.init(topic: topic, payload: payload, productId: productId, deviceName: deviceName, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }
}
