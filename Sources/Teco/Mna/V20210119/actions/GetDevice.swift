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

extension Mna {
    /// GetDevice请求参数结构体
    public struct GetDeviceRequest: TCRequestModel {
        /// 搜索指定设备的id
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// GetDevice返回参数结构体
    public struct GetDeviceResponse: TCResponseModel {
        /// 设备详细信息
        public let deviceDetails: DeviceDetails

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceDetails = "DeviceDetails"
            case requestId = "RequestId"
        }
    }

    /// 获取设备详细信息
    ///
    /// 通过指定设备的ID查找设备详细信息
    @inlinable
    public func getDevice(_ input: GetDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeviceResponse > {
        self.client.execute(action: "GetDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备详细信息
    ///
    /// 通过指定设备的ID查找设备详细信息
    @inlinable
    public func getDevice(_ input: GetDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceResponse {
        try await self.client.execute(action: "GetDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备详细信息
    ///
    /// 通过指定设备的ID查找设备详细信息
    @inlinable
    public func getDevice(deviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeviceResponse > {
        self.getDevice(GetDeviceRequest(deviceId: deviceId), logger: logger, on: eventLoop)
    }

    /// 获取设备详细信息
    ///
    /// 通过指定设备的ID查找设备详细信息
    @inlinable
    public func getDevice(deviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceResponse {
        try await self.getDevice(GetDeviceRequest(deviceId: deviceId), logger: logger, on: eventLoop)
    }
}
