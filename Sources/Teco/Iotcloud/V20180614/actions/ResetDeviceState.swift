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
    /// ResetDeviceState请求参数结构体
    public struct ResetDeviceStateRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceNames: [String]

        public init(productId: String, deviceNames: [String]) {
            self.productId = productId
            self.deviceNames = deviceNames
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
        }
    }

    /// ResetDeviceState返回参数结构体
    public struct ResetDeviceStateResponse: TCResponse {
        /// 批量重置设备成功数
        public let successCount: UInt64

        /// 批量重置设备结果
        public let resetDeviceResults: [ResetDeviceResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCount = "SuccessCount"
            case resetDeviceResults = "ResetDeviceResults"
            case requestId = "RequestId"
        }
    }

    /// 重置设备状态
    ///
    /// 重置设备的连接状态
    @inlinable
    public func resetDeviceState(_ input: ResetDeviceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceStateResponse> {
        self.client.execute(action: "ResetDeviceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置设备状态
    ///
    /// 重置设备的连接状态
    @inlinable
    public func resetDeviceState(_ input: ResetDeviceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceStateResponse {
        try await self.client.execute(action: "ResetDeviceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置设备状态
    ///
    /// 重置设备的连接状态
    @inlinable
    public func resetDeviceState(productId: String, deviceNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceStateResponse> {
        self.resetDeviceState(.init(productId: productId, deviceNames: deviceNames), region: region, logger: logger, on: eventLoop)
    }

    /// 重置设备状态
    ///
    /// 重置设备的连接状态
    @inlinable
    public func resetDeviceState(productId: String, deviceNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceStateResponse {
        try await self.resetDeviceState(.init(productId: productId, deviceNames: deviceNames), region: region, logger: logger, on: eventLoop)
    }
}
