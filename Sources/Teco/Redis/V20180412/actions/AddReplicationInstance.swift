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
    /// AddReplicationInstance请求参数结构体
    public struct AddReplicationInstanceRequest: TCRequest {
        /// 复制组ID。
        public let groupId: String

        /// 实例ID。
        public let instanceId: String

        /// 给复制组添加的实例分配角色。
        /// - rw：可读写。
        /// - r：只读。
        public let instanceRole: String

        public init(groupId: String, instanceId: String, instanceRole: String) {
            self.groupId = groupId
            self.instanceId = instanceId
            self.instanceRole = instanceRole
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case instanceId = "InstanceId"
            case instanceRole = "InstanceRole"
        }
    }

    /// AddReplicationInstance返回参数结构体
    public struct AddReplicationInstanceResponse: TCResponse {
        /// 异步流程ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 添加复制组成员
    @inlinable
    public func addReplicationInstance(_ input: AddReplicationInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddReplicationInstanceResponse> {
        self.client.execute(action: "AddReplicationInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加复制组成员
    @inlinable
    public func addReplicationInstance(_ input: AddReplicationInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddReplicationInstanceResponse {
        try await self.client.execute(action: "AddReplicationInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加复制组成员
    @inlinable
    public func addReplicationInstance(groupId: String, instanceId: String, instanceRole: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddReplicationInstanceResponse> {
        self.addReplicationInstance(.init(groupId: groupId, instanceId: instanceId, instanceRole: instanceRole), region: region, logger: logger, on: eventLoop)
    }

    /// 添加复制组成员
    @inlinable
    public func addReplicationInstance(groupId: String, instanceId: String, instanceRole: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddReplicationInstanceResponse {
        try await self.addReplicationInstance(.init(groupId: groupId, instanceId: instanceId, instanceRole: instanceRole), region: region, logger: logger, on: eventLoop)
    }
}
