//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Trocket {
    /// DeleteRole请求参数结构体
    public struct DeleteRoleRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 角色名称
        public let role: String

        public init(instanceId: String, role: String) {
            self.instanceId = instanceId
            self.role = role
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case role = "Role"
        }
    }

    /// DeleteRole返回参数结构体
    public struct DeleteRoleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除角色
    @inlinable @discardableResult
    public func deleteRole(_ input: DeleteRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoleResponse> {
        self.client.execute(action: "DeleteRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除角色
    @inlinable @discardableResult
    public func deleteRole(_ input: DeleteRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoleResponse {
        try await self.client.execute(action: "DeleteRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除角色
    @inlinable @discardableResult
    public func deleteRole(instanceId: String, role: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoleResponse> {
        self.deleteRole(.init(instanceId: instanceId, role: role), region: region, logger: logger, on: eventLoop)
    }

    /// 删除角色
    @inlinable @discardableResult
    public func deleteRole(instanceId: String, role: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoleResponse {
        try await self.deleteRole(.init(instanceId: instanceId, role: role), region: region, logger: logger, on: eventLoop)
    }
}