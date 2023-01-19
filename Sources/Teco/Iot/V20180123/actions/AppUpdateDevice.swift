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
    /// AppUpdateDevice请求参数结构体
    public struct AppUpdateDeviceRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 设备别名
        public let aliasName: String?

        public init(accessToken: String, productId: String, deviceName: String, aliasName: String? = nil) {
            self.accessToken = accessToken
            self.productId = productId
            self.deviceName = deviceName
            self.aliasName = aliasName
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case aliasName = "AliasName"
        }
    }

    /// AppUpdateDevice返回参数结构体
    public struct AppUpdateDeviceResponse: TCResponseModel {
        /// 设备信息
        public let appDevice: AppDevice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appDevice = "AppDevice"
            case requestId = "RequestId"
        }
    }

    /// 修改设备别名
    ///
    /// 修改设备别名，便于用户个性化定义设备的名称
    @inlinable
    public func appUpdateDevice(_ input: AppUpdateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppUpdateDeviceResponse> {
        self.client.execute(action: "AppUpdateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改设备别名
    ///
    /// 修改设备别名，便于用户个性化定义设备的名称
    @inlinable
    public func appUpdateDevice(_ input: AppUpdateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppUpdateDeviceResponse {
        try await self.client.execute(action: "AppUpdateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改设备别名
    ///
    /// 修改设备别名，便于用户个性化定义设备的名称
    @inlinable
    public func appUpdateDevice(accessToken: String, productId: String, deviceName: String, aliasName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppUpdateDeviceResponse> {
        self.appUpdateDevice(AppUpdateDeviceRequest(accessToken: accessToken, productId: productId, deviceName: deviceName, aliasName: aliasName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改设备别名
    ///
    /// 修改设备别名，便于用户个性化定义设备的名称
    @inlinable
    public func appUpdateDevice(accessToken: String, productId: String, deviceName: String, aliasName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppUpdateDeviceResponse {
        try await self.appUpdateDevice(AppUpdateDeviceRequest(accessToken: accessToken, productId: productId, deviceName: deviceName, aliasName: aliasName), region: region, logger: logger, on: eventLoop)
    }
}
