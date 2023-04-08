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
    /// DeleteDevice请求参数结构体
    public struct DeleteDeviceRequest: TCRequestModel {
        /// 删除设备的唯一ID
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// DeleteDevice返回参数结构体
    public struct DeleteDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备
    ///
    /// 删除设备信息
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 删除设备信息
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备
    ///
    /// 删除设备信息
    @inlinable @discardableResult
    public func deleteDevice(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.deleteDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 删除设备信息
    @inlinable @discardableResult
    public func deleteDevice(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.deleteDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
