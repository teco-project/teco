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
    /// AppGetDevices请求参数结构体
    public struct AppGetDevicesRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        public init(accessToken: String) {
            self.accessToken = accessToken
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
        }
    }

    /// AppGetDevices返回参数结构体
    public struct AppGetDevicesResponse: TCResponseModel {
        /// 绑定设备列表
        public let devices: [AppDevice]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devices = "Devices"
            case requestId = "RequestId"
        }
    }

    /// 获取绑定设备列表
    ///
    /// 获取用户的绑定设备列表
    @inlinable
    public func appGetDevices(_ input: AppGetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetDevicesResponse> {
        self.client.execute(action: "AppGetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取绑定设备列表
    ///
    /// 获取用户的绑定设备列表
    @inlinable
    public func appGetDevices(_ input: AppGetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDevicesResponse {
        try await self.client.execute(action: "AppGetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取绑定设备列表
    ///
    /// 获取用户的绑定设备列表
    @inlinable
    public func appGetDevices(accessToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetDevicesResponse> {
        self.appGetDevices(AppGetDevicesRequest(accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取绑定设备列表
    ///
    /// 获取用户的绑定设备列表
    @inlinable
    public func appGetDevices(accessToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDevicesResponse {
        try await self.appGetDevices(AppGetDevicesRequest(accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }
}
