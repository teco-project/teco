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

import TecoCore

extension Redis {
    /// EnableReplicaReadonly请求参数结构体
    public struct EnableReplicaReadonlyRequest: TCRequestModel {
        /// 实例序号ID
        public let instanceId: String

        /// 账号路由策略：填写master或者replication，表示路由主节点，从节点；不填路由策略默认为写主节点，读从节点
        public let readonlyPolicy: [String]?

        public init(instanceId: String, readonlyPolicy: [String]? = nil) {
            self.instanceId = instanceId
            self.readonlyPolicy = readonlyPolicy
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case readonlyPolicy = "ReadonlyPolicy"
        }
    }

    /// EnableReplicaReadonly返回参数结构体
    public struct EnableReplicaReadonlyResponse: TCResponseModel {
        /// 错误：ERROR，正确OK（已废弃）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 启用读写分离
    @inlinable
    public func enableReplicaReadonly(_ input: EnableReplicaReadonlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableReplicaReadonlyResponse> {
        self.client.execute(action: "EnableReplicaReadonly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用读写分离
    @inlinable
    public func enableReplicaReadonly(_ input: EnableReplicaReadonlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableReplicaReadonlyResponse {
        try await self.client.execute(action: "EnableReplicaReadonly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用读写分离
    @inlinable
    public func enableReplicaReadonly(instanceId: String, readonlyPolicy: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableReplicaReadonlyResponse> {
        self.enableReplicaReadonly(.init(instanceId: instanceId, readonlyPolicy: readonlyPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 启用读写分离
    @inlinable
    public func enableReplicaReadonly(instanceId: String, readonlyPolicy: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableReplicaReadonlyResponse {
        try await self.enableReplicaReadonly(.init(instanceId: instanceId, readonlyPolicy: readonlyPolicy), region: region, logger: logger, on: eventLoop)
    }
}
