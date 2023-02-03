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

extension Iot {
    /// AppSecureAddDevice请求参数结构体
    public struct AppSecureAddDeviceRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        /// 设备签名
        public let deviceSignature: String

        public init(accessToken: String, deviceSignature: String) {
            self.accessToken = accessToken
            self.deviceSignature = deviceSignature
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case deviceSignature = "DeviceSignature"
        }
    }

    /// AppSecureAddDevice返回参数结构体
    public struct AppSecureAddDeviceResponse: TCResponseModel {
        /// 绑定设备信息
        public let appDevice: AppDevice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appDevice = "AppDevice"
            case requestId = "RequestId"
        }
    }

    /// 用户绑定设备
    ///
    /// 用户绑定设备，绑定后可以在APP端进行控制。绑定设备前需调用“获取设备绑定签名”接口
    @inlinable
    public func appSecureAddDevice(_ input: AppSecureAddDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppSecureAddDeviceResponse> {
        self.client.execute(action: "AppSecureAddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户绑定设备
    ///
    /// 用户绑定设备，绑定后可以在APP端进行控制。绑定设备前需调用“获取设备绑定签名”接口
    @inlinable
    public func appSecureAddDevice(_ input: AppSecureAddDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppSecureAddDeviceResponse {
        try await self.client.execute(action: "AppSecureAddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户绑定设备
    ///
    /// 用户绑定设备，绑定后可以在APP端进行控制。绑定设备前需调用“获取设备绑定签名”接口
    @inlinable
    public func appSecureAddDevice(accessToken: String, deviceSignature: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppSecureAddDeviceResponse> {
        let input = AppSecureAddDeviceRequest(accessToken: accessToken, deviceSignature: deviceSignature)
        return self.client.execute(action: "AppSecureAddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户绑定设备
    ///
    /// 用户绑定设备，绑定后可以在APP端进行控制。绑定设备前需调用“获取设备绑定签名”接口
    @inlinable
    public func appSecureAddDevice(accessToken: String, deviceSignature: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppSecureAddDeviceResponse {
        let input = AppSecureAddDeviceRequest(accessToken: accessToken, deviceSignature: deviceSignature)
        return try await self.client.execute(action: "AppSecureAddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
