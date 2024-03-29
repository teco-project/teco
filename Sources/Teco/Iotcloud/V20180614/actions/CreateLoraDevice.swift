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
    /// CreateLoraDevice请求参数结构体
    public struct CreateLoraDeviceRequest: TCRequest {
        /// 产品Id ，创建产品时腾讯云为用户分配全局唯一的Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 设备类型 ，目前支持A、B、C三种
        public let deviceType: String

        /// LoRa应用UUID
        public let appEui: String?

        /// LoRa设备UUID
        public let deviceEui: String?

        /// LoRa应用密钥
        public let appKey: String?

        /// LoRa设备验证密钥
        public let authKey: String?

        /// 设备备注
        public let memo: String?

        public init(productId: String, deviceName: String, deviceType: String, appEui: String? = nil, deviceEui: String? = nil, appKey: String? = nil, authKey: String? = nil, memo: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.deviceType = deviceType
            self.appEui = appEui
            self.deviceEui = deviceEui
            self.appKey = appKey
            self.authKey = authKey
            self.memo = memo
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case deviceType = "DeviceType"
            case appEui = "AppEui"
            case deviceEui = "DeviceEui"
            case appKey = "AppKey"
            case authKey = "AuthKey"
            case memo = "Memo"
        }
    }

    /// CreateLoraDevice返回参数结构体
    public struct CreateLoraDeviceResponse: TCResponse {
        /// LoRa应用UUID
        public let appEui: String

        /// LoRa设备UUID
        public let deviceEui: String

        /// 设备类型,目前支持A、B、C三种
        public let classType: String

        /// 设备名称
        public let deviceName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appEui = "AppEui"
            case deviceEui = "DeviceEui"
            case classType = "ClassType"
            case deviceName = "DeviceName"
            case requestId = "RequestId"
        }
    }

    /// 创建lora设备
    ///
    /// 创建lora类型的设备
    @inlinable
    public func createLoraDevice(_ input: CreateLoraDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoraDeviceResponse> {
        self.client.execute(action: "CreateLoraDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建lora设备
    ///
    /// 创建lora类型的设备
    @inlinable
    public func createLoraDevice(_ input: CreateLoraDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoraDeviceResponse {
        try await self.client.execute(action: "CreateLoraDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建lora设备
    ///
    /// 创建lora类型的设备
    @inlinable
    public func createLoraDevice(productId: String, deviceName: String, deviceType: String, appEui: String? = nil, deviceEui: String? = nil, appKey: String? = nil, authKey: String? = nil, memo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoraDeviceResponse> {
        self.createLoraDevice(.init(productId: productId, deviceName: deviceName, deviceType: deviceType, appEui: appEui, deviceEui: deviceEui, appKey: appKey, authKey: authKey, memo: memo), region: region, logger: logger, on: eventLoop)
    }

    /// 创建lora设备
    ///
    /// 创建lora类型的设备
    @inlinable
    public func createLoraDevice(productId: String, deviceName: String, deviceType: String, appEui: String? = nil, deviceEui: String? = nil, appKey: String? = nil, authKey: String? = nil, memo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoraDeviceResponse {
        try await self.createLoraDevice(.init(productId: productId, deviceName: deviceName, deviceType: deviceType, appEui: appEui, deviceEui: deviceEui, appKey: appKey, authKey: authKey, memo: memo), region: region, logger: logger, on: eventLoop)
    }
}
