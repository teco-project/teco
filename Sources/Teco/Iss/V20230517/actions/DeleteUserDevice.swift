//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DeleteUserDevice请求参数结构体
    public struct DeleteUserDeviceRequest: TCRequestModel {
        /// 设备ID（从获取设备列表ListDevices接口中获取）
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// DeleteUserDevice返回参数结构体
    public struct DeleteUserDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备
    ///
    /// 用于删除已添加的设备。
    @inlinable @discardableResult
    public func deleteUserDevice(_ input: DeleteUserDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserDeviceResponse> {
        self.client.execute(action: "DeleteUserDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 用于删除已添加的设备。
    @inlinable @discardableResult
    public func deleteUserDevice(_ input: DeleteUserDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserDeviceResponse {
        try await self.client.execute(action: "DeleteUserDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备
    ///
    /// 用于删除已添加的设备。
    @inlinable @discardableResult
    public func deleteUserDevice(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserDeviceResponse> {
        self.deleteUserDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 用于删除已添加的设备。
    @inlinable @discardableResult
    public func deleteUserDevice(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserDeviceResponse {
        try await self.deleteUserDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
