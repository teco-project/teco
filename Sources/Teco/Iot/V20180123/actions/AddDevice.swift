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
    /// AddDevice请求参数结构体
    public struct AddDeviceRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        /// 设备名称，唯一标识某产品下的一个设备
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

    /// AddDevice返回参数结构体
    public struct AddDeviceResponse: TCResponseModel {
        /// 设备信息
        public let device: Device

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case device = "Device"
            case requestId = "RequestId"
        }
    }

    /// 新增设备
    ///
    /// 提供在指定的产品Id下创建一个设备的能力，生成设备名称与设备秘钥。
    @inlinable
    public func addDevice(_ input: AddDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDeviceResponse> {
        self.client.execute(action: "AddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增设备
    ///
    /// 提供在指定的产品Id下创建一个设备的能力，生成设备名称与设备秘钥。
    @inlinable
    public func addDevice(_ input: AddDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDeviceResponse {
        try await self.client.execute(action: "AddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增设备
    ///
    /// 提供在指定的产品Id下创建一个设备的能力，生成设备名称与设备秘钥。
    @inlinable
    public func addDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDeviceResponse> {
        let input = AddDeviceRequest(productId: productId, deviceName: deviceName)
        return self.client.execute(action: "AddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增设备
    ///
    /// 提供在指定的产品Id下创建一个设备的能力，生成设备名称与设备秘钥。
    @inlinable
    public func addDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDeviceResponse {
        let input = AddDeviceRequest(productId: productId, deviceName: deviceName)
        return try await self.client.execute(action: "AddDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
