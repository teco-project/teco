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

extension Redis {
    /// DisableReplicaReadonly请求参数结构体
    public struct DisableReplicaReadonlyRequest: TCRequestModel {
        /// 实例序号ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DisableReplicaReadonly返回参数结构体
    public struct DisableReplicaReadonlyResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 禁用读写分离
    @inlinable
    public func disableReplicaReadonly(_ input: DisableReplicaReadonlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableReplicaReadonlyResponse> {
        self.client.execute(action: "DisableReplicaReadonly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用读写分离
    @inlinable
    public func disableReplicaReadonly(_ input: DisableReplicaReadonlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableReplicaReadonlyResponse {
        try await self.client.execute(action: "DisableReplicaReadonly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用读写分离
    @inlinable
    public func disableReplicaReadonly(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableReplicaReadonlyResponse> {
        self.disableReplicaReadonly(DisableReplicaReadonlyRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用读写分离
    @inlinable
    public func disableReplicaReadonly(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableReplicaReadonlyResponse {
        try await self.disableReplicaReadonly(DisableReplicaReadonlyRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
