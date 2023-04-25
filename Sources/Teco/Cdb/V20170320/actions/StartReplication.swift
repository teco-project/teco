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

extension Cdb {
    /// StartReplication请求参数结构体
    public struct StartReplicationRequest: TCRequestModel {
        /// 实例 ID。仅支持只读实例。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// StartReplication返回参数结构体
    public struct StartReplicationResponse: TCResponseModel {
        /// 异步任务 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRequestId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 开启复制
    ///
    /// 开启 RO 复制，从主实例同步数据。
    @inlinable
    public func startReplication(_ input: StartReplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationResponse> {
        self.client.execute(action: "StartReplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启复制
    ///
    /// 开启 RO 复制，从主实例同步数据。
    @inlinable
    public func startReplication(_ input: StartReplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartReplicationResponse {
        try await self.client.execute(action: "StartReplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启复制
    ///
    /// 开启 RO 复制，从主实例同步数据。
    @inlinable
    public func startReplication(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationResponse> {
        self.startReplication(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启复制
    ///
    /// 开启 RO 复制，从主实例同步数据。
    @inlinable
    public func startReplication(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartReplicationResponse {
        try await self.startReplication(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
