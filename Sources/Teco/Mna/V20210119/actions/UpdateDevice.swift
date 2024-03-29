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

extension Mna {
    /// UpdateDevice请求参数结构体
    public struct UpdateDeviceRequest: TCRequest {
        /// 设备id
        public let deviceId: String

        /// 设备名称
        public let deviceName: String?

        /// 设备备注
        public let remark: String?

        /// 更新设备网络信息
        public let updateNetInfo: [UpdateNetInfo]?

        public init(deviceId: String, deviceName: String? = nil, remark: String? = nil, updateNetInfo: [UpdateNetInfo]? = nil) {
            self.deviceId = deviceId
            self.deviceName = deviceName
            self.remark = remark
            self.updateNetInfo = updateNetInfo
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case deviceName = "DeviceName"
            case remark = "Remark"
            case updateNetInfo = "UpdateNetInfo"
        }
    }

    /// UpdateDevice返回参数结构体
    public struct UpdateDeviceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新设备
    ///
    /// 更新设备信息
    @inlinable @discardableResult
    public func updateDevice(_ input: UpdateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        self.client.execute(action: "UpdateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新设备
    ///
    /// 更新设备信息
    @inlinable @discardableResult
    public func updateDevice(_ input: UpdateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceResponse {
        try await self.client.execute(action: "UpdateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新设备
    ///
    /// 更新设备信息
    @inlinable @discardableResult
    public func updateDevice(deviceId: String, deviceName: String? = nil, remark: String? = nil, updateNetInfo: [UpdateNetInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        self.updateDevice(.init(deviceId: deviceId, deviceName: deviceName, remark: remark, updateNetInfo: updateNetInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 更新设备
    ///
    /// 更新设备信息
    @inlinable @discardableResult
    public func updateDevice(deviceId: String, deviceName: String? = nil, remark: String? = nil, updateNetInfo: [UpdateNetInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceResponse {
        try await self.updateDevice(.init(deviceId: deviceId, deviceName: deviceName, remark: remark, updateNetInfo: updateNetInfo), region: region, logger: logger, on: eventLoop)
    }
}
