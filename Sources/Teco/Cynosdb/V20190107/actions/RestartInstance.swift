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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cynosdb {
    /// RestartInstance请求参数结构体
    public struct RestartInstanceRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// RestartInstance返回参数结构体
    public struct RestartInstanceResponse: TCResponseModel {
        /// 异步任务id
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 重启实例
    @inlinable
    public func restartInstance(_ input: RestartInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartInstanceResponse> {
        self.client.execute(action: "RestartInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启实例
    @inlinable
    public func restartInstance(_ input: RestartInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartInstanceResponse {
        try await self.client.execute(action: "RestartInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启实例
    @inlinable
    public func restartInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartInstanceResponse> {
        self.restartInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 重启实例
    @inlinable
    public func restartInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartInstanceResponse {
        try await self.restartInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
