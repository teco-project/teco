//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// UpdateDevicesEnableState请求参数结构体
    public struct UpdateDevicesEnableStateRequest: TCRequestModel {
        /// 设备所属产品id
        public let productId: String

        /// 设备名称集合
        public let deviceNames: [String]

        /// 要设置的设备状态，1为启用，0为禁用
        public let status: UInt64

        public init(productId: String, deviceNames: [String], status: UInt64) {
            self.productId = productId
            self.deviceNames = deviceNames
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
            case status = "Status"
        }
    }

    /// UpdateDevicesEnableState返回参数结构体
    public struct UpdateDevicesEnableStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量切换设备可用状态
    ///
    /// 批量启用或者禁用设备
    @inlinable @discardableResult
    public func updateDevicesEnableState(_ input: UpdateDevicesEnableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicesEnableStateResponse> {
        self.client.execute(action: "UpdateDevicesEnableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量切换设备可用状态
    ///
    /// 批量启用或者禁用设备
    @inlinable @discardableResult
    public func updateDevicesEnableState(_ input: UpdateDevicesEnableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicesEnableStateResponse {
        try await self.client.execute(action: "UpdateDevicesEnableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量切换设备可用状态
    ///
    /// 批量启用或者禁用设备
    @inlinable @discardableResult
    public func updateDevicesEnableState(productId: String, deviceNames: [String], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicesEnableStateResponse> {
        self.updateDevicesEnableState(UpdateDevicesEnableStateRequest(productId: productId, deviceNames: deviceNames, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 批量切换设备可用状态
    ///
    /// 批量启用或者禁用设备
    @inlinable @discardableResult
    public func updateDevicesEnableState(productId: String, deviceNames: [String], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicesEnableStateResponse {
        try await self.updateDevicesEnableState(UpdateDevicesEnableStateRequest(productId: productId, deviceNames: deviceNames, status: status), region: region, logger: logger, on: eventLoop)
    }
}
