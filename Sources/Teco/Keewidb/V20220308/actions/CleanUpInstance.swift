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

extension Keewidb {
    /// CleanUpInstance请求参数结构体
    public struct CleanUpInstanceRequest: TCRequest {
        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// CleanUpInstance返回参数结构体
    public struct CleanUpInstanceResponse: TCResponse {
        /// 任务 ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 回收站实例立即下线
    ///
    /// 本接口（CleanUpInstance）用于立即下线回收站已隔离的实例。
    @inlinable
    public func cleanUpInstance(_ input: CleanUpInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CleanUpInstanceResponse> {
        self.client.execute(action: "CleanUpInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回收站实例立即下线
    ///
    /// 本接口（CleanUpInstance）用于立即下线回收站已隔离的实例。
    @inlinable
    public func cleanUpInstance(_ input: CleanUpInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CleanUpInstanceResponse {
        try await self.client.execute(action: "CleanUpInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回收站实例立即下线
    ///
    /// 本接口（CleanUpInstance）用于立即下线回收站已隔离的实例。
    @inlinable
    public func cleanUpInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CleanUpInstanceResponse> {
        self.cleanUpInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 回收站实例立即下线
    ///
    /// 本接口（CleanUpInstance）用于立即下线回收站已隔离的实例。
    @inlinable
    public func cleanUpInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CleanUpInstanceResponse {
        try await self.cleanUpInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
