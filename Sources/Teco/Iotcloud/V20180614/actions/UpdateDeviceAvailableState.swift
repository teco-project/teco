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

extension Iotcloud {
    /// UpdateDeviceAvailableState请求参数结构体
    public struct UpdateDeviceAvailableStateRequest: TCRequestModel {
        /// 设备所属产品id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 要设置的设备状态，1为启用，0为禁用
        public let enableState: UInt64

        public init(productId: String, deviceName: String, enableState: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.enableState = enableState
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case enableState = "EnableState"
        }
    }

    /// UpdateDeviceAvailableState返回参数结构体
    public struct UpdateDeviceAvailableStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换设备可用状态
    ///
    /// 启用或者禁用设备
    @inlinable @discardableResult
    public func updateDeviceAvailableState(_ input: UpdateDeviceAvailableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceAvailableStateResponse> {
        self.client.execute(action: "UpdateDeviceAvailableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换设备可用状态
    ///
    /// 启用或者禁用设备
    @inlinable @discardableResult
    public func updateDeviceAvailableState(_ input: UpdateDeviceAvailableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceAvailableStateResponse {
        try await self.client.execute(action: "UpdateDeviceAvailableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换设备可用状态
    ///
    /// 启用或者禁用设备
    @inlinable @discardableResult
    public func updateDeviceAvailableState(productId: String, deviceName: String, enableState: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceAvailableStateResponse> {
        self.updateDeviceAvailableState(UpdateDeviceAvailableStateRequest(productId: productId, deviceName: deviceName, enableState: enableState), region: region, logger: logger, on: eventLoop)
    }

    /// 切换设备可用状态
    ///
    /// 启用或者禁用设备
    @inlinable @discardableResult
    public func updateDeviceAvailableState(productId: String, deviceName: String, enableState: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceAvailableStateResponse {
        try await self.updateDeviceAvailableState(UpdateDeviceAvailableStateRequest(productId: productId, deviceName: deviceName, enableState: enableState), region: region, logger: logger, on: eventLoop)
    }
}
