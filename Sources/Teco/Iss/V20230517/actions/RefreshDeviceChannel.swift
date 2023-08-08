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
    /// RefreshDeviceChannel请求参数结构体
    public struct RefreshDeviceChannelRequest: TCRequestModel {
        /// 设备 ID（从获取设备列表ListDevices接口中获取）
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// RefreshDeviceChannel返回参数结构体
    public struct RefreshDeviceChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 刷新设备通道
    ///
    /// 用于刷新国标设备的通道（接口调用后，触发向设备请求通道列表，新增的通道入库，设备上已删除的通道需自行删除、后台不自动删除）。
    @inlinable @discardableResult
    public func refreshDeviceChannel(_ input: RefreshDeviceChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshDeviceChannelResponse> {
        self.client.execute(action: "RefreshDeviceChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新设备通道
    ///
    /// 用于刷新国标设备的通道（接口调用后，触发向设备请求通道列表，新增的通道入库，设备上已删除的通道需自行删除、后台不自动删除）。
    @inlinable @discardableResult
    public func refreshDeviceChannel(_ input: RefreshDeviceChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshDeviceChannelResponse {
        try await self.client.execute(action: "RefreshDeviceChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新设备通道
    ///
    /// 用于刷新国标设备的通道（接口调用后，触发向设备请求通道列表，新增的通道入库，设备上已删除的通道需自行删除、后台不自动删除）。
    @inlinable @discardableResult
    public func refreshDeviceChannel(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshDeviceChannelResponse> {
        self.refreshDeviceChannel(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新设备通道
    ///
    /// 用于刷新国标设备的通道（接口调用后，触发向设备请求通道列表，新增的通道入库，设备上已删除的通道需自行删除、后台不自动删除）。
    @inlinable @discardableResult
    public func refreshDeviceChannel(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshDeviceChannelResponse {
        try await self.refreshDeviceChannel(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}