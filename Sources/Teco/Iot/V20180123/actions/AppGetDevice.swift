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
    /// AppGetDevice请求参数结构体
    public struct AppGetDeviceRequest: TCRequestModel {
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

    /// AppGetDevice返回参数结构体
    public struct AppGetDeviceResponse: TCResponseModel {
        /// 绑定设备详情
        public let appDevice: AppDeviceDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appDevice = "AppDevice"
            case requestId = "RequestId"
        }
    }

    /// 获取绑定设备信息
    ///
    /// 获取绑定设备的基本信息与数据模板定义
    @inlinable
    public func appGetDevice(_ input: AppGetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetDeviceResponse> {
        self.client.execute(action: "AppGetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取绑定设备信息
    ///
    /// 获取绑定设备的基本信息与数据模板定义
    @inlinable
    public func appGetDevice(_ input: AppGetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDeviceResponse {
        try await self.client.execute(action: "AppGetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取绑定设备信息
    ///
    /// 获取绑定设备的基本信息与数据模板定义
    @inlinable
    public func appGetDevice(accessToken: String, productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetDeviceResponse> {
        self.appGetDevice(.init(accessToken: accessToken, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取绑定设备信息
    ///
    /// 获取绑定设备的基本信息与数据模板定义
    @inlinable
    public func appGetDevice(accessToken: String, productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDeviceResponse {
        try await self.appGetDevice(.init(accessToken: accessToken, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
