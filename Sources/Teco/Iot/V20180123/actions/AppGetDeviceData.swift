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

extension Iot {
    /// AppGetDeviceData请求参数结构体
    public struct AppGetDeviceDataRequest: TCRequestModel {
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

    /// AppGetDeviceData返回参数结构体
    public struct AppGetDeviceDataResponse: TCResponseModel {
        /// 设备数据。
        public let deviceData: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceData = "DeviceData"
            case requestId = "RequestId"
        }
    }

    /// 获取绑定设备数据
    ///
    /// 获取绑定设备数据，用于实时展示设备的最新数据
    @inlinable
    public func appGetDeviceData(_ input: AppGetDeviceDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppGetDeviceDataResponse > {
        self.client.execute(action: "AppGetDeviceData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取绑定设备数据
    ///
    /// 获取绑定设备数据，用于实时展示设备的最新数据
    @inlinable
    public func appGetDeviceData(_ input: AppGetDeviceDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDeviceDataResponse {
        try await self.client.execute(action: "AppGetDeviceData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取绑定设备数据
    ///
    /// 获取绑定设备数据，用于实时展示设备的最新数据
    @inlinable
    public func appGetDeviceData(accessToken: String, productId: String, deviceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppGetDeviceDataResponse > {
        self.appGetDeviceData(AppGetDeviceDataRequest(accessToken: accessToken, productId: productId, deviceName: deviceName), logger: logger, on: eventLoop)
    }

    /// 获取绑定设备数据
    ///
    /// 获取绑定设备数据，用于实时展示设备的最新数据
    @inlinable
    public func appGetDeviceData(accessToken: String, productId: String, deviceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDeviceDataResponse {
        try await self.appGetDeviceData(AppGetDeviceDataRequest(accessToken: accessToken, productId: productId, deviceName: deviceName), logger: logger, on: eventLoop)
    }
}
