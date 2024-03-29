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
    /// UpdateRoleConsoleLogin请求参数结构体
    public struct UpdateRoleConsoleLoginRequest: TCRequest {
        /// 是否可登录，可登录：1，不可登录：0
        public let consoleLogin: Int64

        /// 角色ID，入参 RoleId 与 RoleName 二选一
        public let roleId: Int64?

        /// 角色名，入参 RoleId 与 RoleName 二选一
        public let roleName: String?

        public init(consoleLogin: Int64, roleId: Int64? = nil, roleName: String? = nil) {
            self.consoleLogin = consoleLogin
            self.roleId = roleId
            self.roleName = roleName
        }

        enum CodingKeys: String, CodingKey {
            case consoleLogin = "ConsoleLogin"
            case roleId = "RoleId"
            case roleName = "RoleName"
        }
    }

    /// UpdateRoleConsoleLogin返回参数结构体
    public struct UpdateRoleConsoleLoginResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改角色是否可登录
    ///
    /// 本接口（UpdateRoleConsoleLogin）用于修改角色是否可登录。
    @inlinable @discardableResult
    public func updateRoleConsoleLogin(_ input: UpdateRoleConsoleLoginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRoleConsoleLoginResponse> {
        self.client.execute(action: "UpdateRoleConsoleLogin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改角色是否可登录
    ///
    /// 本接口（UpdateRoleConsoleLogin）用于修改角色是否可登录。
    @inlinable @discardableResult
    public func updateRoleConsoleLogin(_ input: UpdateRoleConsoleLoginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoleConsoleLoginResponse {
        try await self.client.execute(action: "UpdateRoleConsoleLogin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改角色是否可登录
    ///
    /// 本接口（UpdateRoleConsoleLogin）用于修改角色是否可登录。
    @inlinable @discardableResult
    public func updateRoleConsoleLogin(consoleLogin: Int64, roleId: Int64? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRoleConsoleLoginResponse> {
        self.updateRoleConsoleLogin(.init(consoleLogin: consoleLogin, roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改角色是否可登录
    ///
    /// 本接口（UpdateRoleConsoleLogin）用于修改角色是否可登录。
    @inlinable @discardableResult
    public func updateRoleConsoleLogin(consoleLogin: Int64, roleId: Int64? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoleConsoleLoginResponse {
        try await self.updateRoleConsoleLogin(.init(consoleLogin: consoleLogin, roleId: roleId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }
}
