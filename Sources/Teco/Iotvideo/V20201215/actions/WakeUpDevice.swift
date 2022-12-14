//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// WakeUpDevice请求参数结构体
    public struct WakeUpDeviceRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        public init(productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// WakeUpDevice返回参数结构体
    public struct WakeUpDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设备唤醒
    @inlinable
    public func wakeUpDevice(_ input: WakeUpDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < WakeUpDeviceResponse > {
        self.client.execute(action: "WakeUpDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备唤醒
    @inlinable
    public func wakeUpDevice(_ input: WakeUpDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WakeUpDeviceResponse {
        try await self.client.execute(action: "WakeUpDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备唤醒
    @inlinable
    public func wakeUpDevice(productId: String, deviceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < WakeUpDeviceResponse > {
        self.wakeUpDevice(WakeUpDeviceRequest(productId: productId, deviceName: deviceName), logger: logger, on: eventLoop)
    }

    /// 设备唤醒
    @inlinable
    public func wakeUpDevice(productId: String, deviceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WakeUpDeviceResponse {
        try await self.wakeUpDevice(WakeUpDeviceRequest(productId: productId, deviceName: deviceName), logger: logger, on: eventLoop)
    }
}
