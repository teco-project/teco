//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ChangeMasterInstance请求参数结构体
    public struct ChangeMasterInstanceRequest: TCRequestModel {
        /// 复制组ID
        public let groupId: String

        /// 实例ID
        public let instanceId: String

        public init(groupId: String, instanceId: String) {
            self.groupId = groupId
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case instanceId = "InstanceId"
        }
    }

    /// ChangeMasterInstance返回参数结构体
    public struct ChangeMasterInstanceResponse: TCResponseModel {
        /// 异步流程ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 复制组实例切主
    @inlinable
    public func changeMasterInstance(_ input: ChangeMasterInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeMasterInstanceResponse> {
        self.client.execute(action: "ChangeMasterInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制组实例切主
    @inlinable
    public func changeMasterInstance(_ input: ChangeMasterInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeMasterInstanceResponse {
        try await self.client.execute(action: "ChangeMasterInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制组实例切主
    @inlinable
    public func changeMasterInstance(groupId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeMasterInstanceResponse> {
        self.changeMasterInstance(ChangeMasterInstanceRequest(groupId: groupId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 复制组实例切主
    @inlinable
    public func changeMasterInstance(groupId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeMasterInstanceResponse {
        try await self.changeMasterInstance(ChangeMasterInstanceRequest(groupId: groupId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
