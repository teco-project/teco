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

extension Iecp {
    /// DeleteIotDevice请求参数结构体
    public struct DeleteIotDeviceRequest: TCRequest {
        /// 设备id
        public let deviceId: Int64

        public init(deviceId: Int64) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// DeleteIotDevice返回参数结构体
    public struct DeleteIotDeviceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备
    @inlinable @discardableResult
    public func deleteIotDevice(_ input: DeleteIotDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIotDeviceResponse> {
        self.client.execute(action: "DeleteIotDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备
    @inlinable @discardableResult
    public func deleteIotDevice(_ input: DeleteIotDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIotDeviceResponse {
        try await self.client.execute(action: "DeleteIotDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备
    @inlinable @discardableResult
    public func deleteIotDevice(deviceId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIotDeviceResponse> {
        self.deleteIotDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备
    @inlinable @discardableResult
    public func deleteIotDevice(deviceId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIotDeviceResponse {
        try await self.deleteIotDevice(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
