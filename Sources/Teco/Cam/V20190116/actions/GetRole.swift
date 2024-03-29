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

extension Cam {
    /// GetRole请求参数结构体
    public struct GetRoleRequest: TCRequest {
        /// 角色 ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        public let roleId: String?

        /// 角色名，用于指定角色，入参 RoleId 与 RoleName 二选一
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

    /// GetRole返回参数结构体
    public struct GetRoleResponse: TCResponse {
        /// 角色详情
        public let roleInfo: RoleInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleInfo = "RoleInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取角色详情
    ///
    /// 本接口（GetRole）用于获取指定角色的详细信息。
    @inlinable
    public func getRole(_ input: GetRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoleResponse> {
        self.client.execute(action: "GetRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取角色详情
    ///
    /// 本接口（GetRole）用于获取指定角色的详细信息。
    @inlinable
    public func getRole(_ input: GetRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoleResponse {
        try await self.client.execute(action: "GetRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取角色详情
    ///
    /// 本接口（GetRole）用于获取指定角色的详细信息。
    @inlinable
    public func getRole(roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoleResponse> {
        self.getRole(.init(roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取角色详情
    ///
    /// 本接口（GetRole）用于获取指定角色的详细信息。
    @inlinable
    public func getRole(roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoleResponse {
        try await self.getRole(.init(roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }
}
