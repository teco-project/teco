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
    /// GetDeviceData请求参数结构体
    public struct GetDeviceDataRequest: TCRequest {
        /// 产品Id
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

    /// GetDeviceData返回参数结构体
    public struct GetDeviceDataResponse: TCResponse {
        /// 设备数据
        public let deviceData: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceData = "DeviceData"
            case requestId = "RequestId"
        }
    }

    /// 获取设备数据
    ///
    /// 获取某个设备当前上报到云端的数据，该接口适用于使用数据模板协议的产品。
    @inlinable
    public func getDeviceData(_ input: GetDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceDataResponse> {
        self.client.execute(action: "GetDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备数据
    ///
    /// 获取某个设备当前上报到云端的数据，该接口适用于使用数据模板协议的产品。
    @inlinable
    public func getDeviceData(_ input: GetDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceDataResponse {
        try await self.client.execute(action: "GetDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备数据
    ///
    /// 获取某个设备当前上报到云端的数据，该接口适用于使用数据模板协议的产品。
    @inlinable
    public func getDeviceData(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceDataResponse> {
        self.getDeviceData(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备数据
    ///
    /// 获取某个设备当前上报到云端的数据，该接口适用于使用数据模板协议的产品。
    @inlinable
    public func getDeviceData(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceDataResponse {
        try await self.getDeviceData(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
