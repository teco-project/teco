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
    /// DeleteEdgeUnitDevices请求参数结构体
    public struct DeleteEdgeUnitDevicesRequest: TCRequestModel {
        public let edgeUnitId: Int64

        public let devices: [DeleteEdgeUnitDevicesDevice]

        public init(edgeUnitId: Int64, devices: [DeleteEdgeUnitDevicesDevice]) {
            self.edgeUnitId = edgeUnitId
            self.devices = devices
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case devices = "Devices"
        }
    }

    /// DeleteEdgeUnitDevices返回参数结构体
    public struct DeleteEdgeUnitDevicesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量解绑单元设备
    @inlinable @discardableResult
    public func deleteEdgeUnitDevices(_ input: DeleteEdgeUnitDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitDevicesResponse> {
        self.client.execute(action: "DeleteEdgeUnitDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量解绑单元设备
    @inlinable @discardableResult
    public func deleteEdgeUnitDevices(_ input: DeleteEdgeUnitDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitDevicesResponse {
        try await self.client.execute(action: "DeleteEdgeUnitDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量解绑单元设备
    @inlinable @discardableResult
    public func deleteEdgeUnitDevices(edgeUnitId: Int64, devices: [DeleteEdgeUnitDevicesDevice], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitDevicesResponse> {
        self.deleteEdgeUnitDevices(.init(edgeUnitId: edgeUnitId, devices: devices), region: region, logger: logger, on: eventLoop)
    }

    /// 批量解绑单元设备
    @inlinable @discardableResult
    public func deleteEdgeUnitDevices(edgeUnitId: Int64, devices: [DeleteEdgeUnitDevicesDevice], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitDevicesResponse {
        try await self.deleteEdgeUnitDevices(.init(edgeUnitId: edgeUnitId, devices: devices), region: region, logger: logger, on: eventLoop)
    }
}
