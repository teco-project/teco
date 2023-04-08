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

import TecoCore

extension Iot {
    /// ResetDevice请求参数结构体
    public struct ResetDeviceRequest: TCRequestModel {
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

    /// ResetDevice返回参数结构体
    public struct ResetDeviceResponse: TCResponseModel {
        /// 设备信息
        public let device: Device

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case device = "Device"
            case requestId = "RequestId"
        }
    }

    /// 重置设备
    ///
    /// 重置设备操作，将会为设备生成新的证书及清空最新数据，需谨慎操作。
    @inlinable
    public func resetDevice(_ input: ResetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceResponse> {
        self.client.execute(action: "ResetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置设备
    ///
    /// 重置设备操作，将会为设备生成新的证书及清空最新数据，需谨慎操作。
    @inlinable
    public func resetDevice(_ input: ResetDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceResponse {
        try await self.client.execute(action: "ResetDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置设备
    ///
    /// 重置设备操作，将会为设备生成新的证书及清空最新数据，需谨慎操作。
    @inlinable
    public func resetDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceResponse> {
        self.resetDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 重置设备
    ///
    /// 重置设备操作，将会为设备生成新的证书及清空最新数据，需谨慎操作。
    @inlinable
    public func resetDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceResponse {
        try await self.resetDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
