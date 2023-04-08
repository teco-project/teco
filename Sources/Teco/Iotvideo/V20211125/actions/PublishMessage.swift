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

extension Iotvideo {
    /// PublishMessage请求参数结构体
    public struct PublishMessageRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 消息发往的主题
        public let topic: String

        /// 云端下发到设备的控制报文
        public let payload: String

        /// 消息服务质量等级，取值为0或1
        public let qos: UInt64?

        /// Payload的内容编码格式，取值为base64或空。base64表示云端将接收到的base64编码后的报文再转换成二进制报文下发至设备，为空表示不作转换，透传下发至设备
        public let payloadEncoding: String?

        public init(productId: String, deviceName: String, topic: String, payload: String, qos: UInt64? = nil, payloadEncoding: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.topic = topic
            self.payload = payload
            self.qos = qos
            self.payloadEncoding = payloadEncoding
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case topic = "Topic"
            case payload = "Payload"
            case qos = "Qos"
            case payloadEncoding = "PayloadEncoding"
        }
    }

    /// PublishMessage返回参数结构体
    public struct PublishMessageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设备透传指令控制
    ///
    /// 本接口（PublishMessage）用于使用自定义透传协议进行设备远控
    @inlinable @discardableResult
    public func publishMessage(_ input: PublishMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMessageResponse> {
        self.client.execute(action: "PublishMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备透传指令控制
    ///
    /// 本接口（PublishMessage）用于使用自定义透传协议进行设备远控
    @inlinable @discardableResult
    public func publishMessage(_ input: PublishMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMessageResponse {
        try await self.client.execute(action: "PublishMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备透传指令控制
    ///
    /// 本接口（PublishMessage）用于使用自定义透传协议进行设备远控
    @inlinable @discardableResult
    public func publishMessage(productId: String, deviceName: String, topic: String, payload: String, qos: UInt64? = nil, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMessageResponse> {
        self.publishMessage(.init(productId: productId, deviceName: deviceName, topic: topic, payload: payload, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }

    /// 设备透传指令控制
    ///
    /// 本接口（PublishMessage）用于使用自定义透传协议进行设备远控
    @inlinable @discardableResult
    public func publishMessage(productId: String, deviceName: String, topic: String, payload: String, qos: UInt64? = nil, payloadEncoding: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMessageResponse {
        try await self.publishMessage(.init(productId: productId, deviceName: deviceName, topic: topic, payload: payload, qos: qos, payloadEncoding: payloadEncoding), region: region, logger: logger, on: eventLoop)
    }
}
