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

extension Iotexplorer {
    /// UpdateDevicesEnableState请求参数结构体
    public struct UpdateDevicesEnableStateRequest: TCRequest {
        /// 多个设备标识
        public let devicesItems: [DevicesItem]

        /// 1：启用；0：禁用
        public let status: Int64

        public init(devicesItems: [DevicesItem], status: Int64) {
            self.devicesItems = devicesItems
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case devicesItems = "DevicesItems"
            case status = "Status"
        }
    }

    /// UpdateDevicesEnableState返回参数结构体
    public struct UpdateDevicesEnableStateResponse: TCResponse {
        /// 删除的结果代码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultCode: String?

        /// 删除的结果信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case resultMessage = "ResultMessage"
            case requestId = "RequestId"
        }
    }

    /// 批量禁用启用设备
    @inlinable
    public func updateDevicesEnableState(_ input: UpdateDevicesEnableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicesEnableStateResponse> {
        self.client.execute(action: "UpdateDevicesEnableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量禁用启用设备
    @inlinable
    public func updateDevicesEnableState(_ input: UpdateDevicesEnableStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicesEnableStateResponse {
        try await self.client.execute(action: "UpdateDevicesEnableState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量禁用启用设备
    @inlinable
    public func updateDevicesEnableState(devicesItems: [DevicesItem], status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicesEnableStateResponse> {
        self.updateDevicesEnableState(.init(devicesItems: devicesItems, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 批量禁用启用设备
    @inlinable
    public func updateDevicesEnableState(devicesItems: [DevicesItem], status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicesEnableStateResponse {
        try await self.updateDevicesEnableState(.init(devicesItems: devicesItems, status: status), region: region, logger: logger, on: eventLoop)
    }
}
