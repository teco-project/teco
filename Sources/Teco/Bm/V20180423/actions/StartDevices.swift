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

extension Bm {
    /// StartDevices请求参数结构体
    public struct StartDevicesRequest: TCRequest {
        /// 需要开机的设备ID列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// StartDevices返回参数结构体
    public struct StartDevicesResponse: TCResponse {
        /// 异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 开启服务器
    @inlinable
    public func startDevices(_ input: StartDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDevicesResponse> {
        self.client.execute(action: "StartDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启服务器
    @inlinable
    public func startDevices(_ input: StartDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDevicesResponse {
        try await self.client.execute(action: "StartDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启服务器
    @inlinable
    public func startDevices(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDevicesResponse> {
        self.startDevices(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 开启服务器
    @inlinable
    public func startDevices(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDevicesResponse {
        try await self.startDevices(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
