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

extension Redis {
    /// StartupInstance请求参数结构体
    public struct StartupInstanceRequest: TCRequest {
        /// 实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// StartupInstance返回参数结构体
    public struct StartupInstanceResponse: TCResponse {
        /// 任务id
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 实例解隔离
    @inlinable
    public func startupInstance(_ input: StartupInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartupInstanceResponse> {
        self.client.execute(action: "StartupInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例解隔离
    @inlinable
    public func startupInstance(_ input: StartupInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartupInstanceResponse {
        try await self.client.execute(action: "StartupInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例解隔离
    @inlinable
    public func startupInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartupInstanceResponse> {
        self.startupInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 实例解隔离
    @inlinable
    public func startupInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartupInstanceResponse {
        try await self.startupInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
