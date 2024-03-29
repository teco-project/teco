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
    /// CreateRole请求参数结构体
    public struct CreateRoleRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 角色名称
        public let role: String

        /// 备注
        public let remark: String

        /// 是否开启生产权限
        public let permWrite: Bool

        /// 是否开启消费权限
        public let permRead: Bool

        public init(instanceId: String, role: String, remark: String, permWrite: Bool, permRead: Bool) {
            self.instanceId = instanceId
            self.role = role
            self.remark = remark
            self.permWrite = permWrite
            self.permRead = permRead
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case role = "Role"
            case remark = "Remark"
            case permWrite = "PermWrite"
            case permRead = "PermRead"
        }
    }

    /// CreateRole返回参数结构体
    public struct CreateRoleResponse: TCResponse {
        /// 角色名
        public let role: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case role = "Role"
            case requestId = "RequestId"
        }
    }

    /// 添加角色
    @inlinable
    public func createRole(_ input: CreateRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoleResponse> {
        self.client.execute(action: "CreateRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加角色
    @inlinable
    public func createRole(_ input: CreateRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoleResponse {
        try await self.client.execute(action: "CreateRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加角色
    @inlinable
    public func createRole(instanceId: String, role: String, remark: String, permWrite: Bool, permRead: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoleResponse> {
        self.createRole(.init(instanceId: instanceId, role: role, remark: remark, permWrite: permWrite, permRead: permRead), region: region, logger: logger, on: eventLoop)
    }

    /// 添加角色
    @inlinable
    public func createRole(instanceId: String, role: String, remark: String, permWrite: Bool, permRead: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoleResponse {
        try await self.createRole(.init(instanceId: instanceId, role: role, remark: remark, permWrite: permWrite, permRead: permRead), region: region, logger: logger, on: eventLoop)
    }
}
