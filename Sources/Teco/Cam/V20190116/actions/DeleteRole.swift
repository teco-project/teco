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

extension Cam {
    /// DeleteRole请求参数结构体
    public struct DeleteRoleRequest: TCRequestModel {
        /// 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        public let roleId: String?

        /// 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        public let roleName: String?

        public init(roleId: String? = nil, roleName: String? = nil) {
            self.roleId = roleId
            self.roleName = roleName
        }

        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case roleName = "RoleName"
        }
    }

    /// DeleteRole返回参数结构体
    public struct DeleteRoleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除角色
    ///
    /// 本接口（DeleteRole）用于删除指定角色。
    @inlinable @discardableResult
    public func deleteRole(_ input: DeleteRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoleResponse> {
        self.client.execute(action: "DeleteRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除角色
    ///
    /// 本接口（DeleteRole）用于删除指定角色。
    @inlinable @discardableResult
    public func deleteRole(_ input: DeleteRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoleResponse {
        try await self.client.execute(action: "DeleteRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除角色
    ///
    /// 本接口（DeleteRole）用于删除指定角色。
    @inlinable @discardableResult
    public func deleteRole(roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoleResponse> {
        self.deleteRole(DeleteRoleRequest(roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除角色
    ///
    /// 本接口（DeleteRole）用于删除指定角色。
    @inlinable @discardableResult
    public func deleteRole(roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoleResponse {
        try await self.deleteRole(DeleteRoleRequest(roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }
}
