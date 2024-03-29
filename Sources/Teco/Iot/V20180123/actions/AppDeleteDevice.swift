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

extension Iot {
    /// AppDeleteDevice请求参数结构体
    public struct AppDeleteDeviceRequest: TCRequest {
        /// 访问Token
        public let accessToken: String

        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        public init(accessToken: String, productId: String, deviceName: String) {
            self.accessToken = accessToken
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// AppDeleteDevice返回参数结构体
    public struct AppDeleteDeviceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 用户解绑设备
    ///
    /// 用户解除与设备的关联关系，解除后APP用户无法控制设备，获取设备数据
    @inlinable @discardableResult
    public func appDeleteDevice(_ input: AppDeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppDeleteDeviceResponse> {
        self.client.execute(action: "AppDeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户解绑设备
    ///
    /// 用户解除与设备的关联关系，解除后APP用户无法控制设备，获取设备数据
    @inlinable @discardableResult
    public func appDeleteDevice(_ input: AppDeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppDeleteDeviceResponse {
        try await self.client.execute(action: "AppDeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户解绑设备
    ///
    /// 用户解除与设备的关联关系，解除后APP用户无法控制设备，获取设备数据
    @inlinable @discardableResult
    public func appDeleteDevice(accessToken: String, productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppDeleteDeviceResponse> {
        self.appDeleteDevice(.init(accessToken: accessToken, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 用户解绑设备
    ///
    /// 用户解除与设备的关联关系，解除后APP用户无法控制设备，获取设备数据
    @inlinable @discardableResult
    public func appDeleteDevice(accessToken: String, productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppDeleteDeviceResponse {
        try await self.appDeleteDevice(.init(accessToken: accessToken, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
