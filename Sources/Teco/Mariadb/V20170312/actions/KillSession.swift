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

extension Mariadb {
    /// KillSession请求参数结构体
    public struct KillSessionRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 会话ID列表
        public let sessionId: [Int64]

        public init(instanceId: String, sessionId: [Int64]) {
            self.instanceId = instanceId
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sessionId = "SessionId"
        }
    }

    /// KillSession返回参数结构体
    public struct KillSessionResponse: TCResponse {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 杀死指定会话
    ///
    /// 本接口（KillSession）用于杀死指定会话。
    @inlinable
    public func killSession(_ input: KillSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillSessionResponse> {
        self.client.execute(action: "KillSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 杀死指定会话
    ///
    /// 本接口（KillSession）用于杀死指定会话。
    @inlinable
    public func killSession(_ input: KillSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillSessionResponse {
        try await self.client.execute(action: "KillSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 杀死指定会话
    ///
    /// 本接口（KillSession）用于杀死指定会话。
    @inlinable
    public func killSession(instanceId: String, sessionId: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillSessionResponse> {
        self.killSession(.init(instanceId: instanceId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 杀死指定会话
    ///
    /// 本接口（KillSession）用于杀死指定会话。
    @inlinable
    public func killSession(instanceId: String, sessionId: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillSessionResponse {
        try await self.killSession(.init(instanceId: instanceId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}
