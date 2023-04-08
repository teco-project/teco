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
    /// GetDevice请求参数结构体
    public struct GetDeviceRequest: TCRequestModel {
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

    /// GetDevice返回参数结构体
    public struct GetDeviceResponse: TCResponseModel {
        /// 设备信息
        public let device: Device

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case device = "Device"
            case requestId = "RequestId"
        }
    }

    /// 获取设备信息
    ///
    /// 提供查询某个设备详细信息的能力。
    @inlinable
    public func getDevice(_ input: GetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceResponse> {
        self.client.execute(action: "GetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备信息
    ///
    /// 提供查询某个设备详细信息的能力。
    @inlinable
    public func getDevice(_ input: GetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceResponse {
        try await self.client.execute(action: "GetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备信息
    ///
    /// 提供查询某个设备详细信息的能力。
    @inlinable
    public func getDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceResponse> {
        self.getDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备信息
    ///
    /// 提供查询某个设备详细信息的能力。
    @inlinable
    public func getDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceResponse {
        try await self.getDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
