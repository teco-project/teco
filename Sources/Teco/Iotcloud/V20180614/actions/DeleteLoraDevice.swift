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
    /// DeleteLoraDevice请求参数结构体
    public struct DeleteLoraDeviceRequest: TCRequest {
        /// 设备所属产品ID
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

    /// DeleteLoraDevice返回参数结构体
    public struct DeleteLoraDeviceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除lora设备
    ///
    /// 删除lora类型的设备
    @inlinable @discardableResult
    public func deleteLoraDevice(_ input: DeleteLoraDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoraDeviceResponse> {
        self.client.execute(action: "DeleteLoraDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除lora设备
    ///
    /// 删除lora类型的设备
    @inlinable @discardableResult
    public func deleteLoraDevice(_ input: DeleteLoraDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoraDeviceResponse {
        try await self.client.execute(action: "DeleteLoraDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除lora设备
    ///
    /// 删除lora类型的设备
    @inlinable @discardableResult
    public func deleteLoraDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoraDeviceResponse> {
        self.deleteLoraDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除lora设备
    ///
    /// 删除lora类型的设备
    @inlinable @discardableResult
    public func deleteLoraDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoraDeviceResponse {
        try await self.deleteLoraDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
