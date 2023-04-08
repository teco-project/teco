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

extension Ess {
    /// DeleteIntegrationRoleUsers请求参数结构体
    public struct DeleteIntegrationRoleUsersRequest: TCRequestModel {
        /// 操作人
        public let `operator`: UserInfo

        /// 角色id
        public let roleId: String

        /// 用户信息
        public let users: [UserInfo]

        /// 代理信息
        public let agent: Agent?

        public init(operator: UserInfo, roleId: String, users: [UserInfo], agent: Agent? = nil) {
            self.operator = `operator`
            self.roleId = roleId
            self.users = users
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case roleId = "RoleId"
            case users = "Users"
            case agent = "Agent"
        }
    }

    /// DeleteIntegrationRoleUsers返回参数结构体
    public struct DeleteIntegrationRoleUsersResponse: TCResponseModel {
        /// 角色id
        public let roleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case requestId = "RequestId"
        }
    }

    /// 集成版解绑用户角色
    ///
    /// 解绑用户角色绑定关系
    @inlinable
    public func deleteIntegrationRoleUsers(_ input: DeleteIntegrationRoleUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIntegrationRoleUsersResponse> {
        self.client.execute(action: "DeleteIntegrationRoleUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集成版解绑用户角色
    ///
    /// 解绑用户角色绑定关系
    @inlinable
    public func deleteIntegrationRoleUsers(_ input: DeleteIntegrationRoleUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIntegrationRoleUsersResponse {
        try await self.client.execute(action: "DeleteIntegrationRoleUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集成版解绑用户角色
    ///
    /// 解绑用户角色绑定关系
    @inlinable
    public func deleteIntegrationRoleUsers(operator: UserInfo, roleId: String, users: [UserInfo], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIntegrationRoleUsersResponse> {
        self.deleteIntegrationRoleUsers(.init(operator: `operator`, roleId: roleId, users: users, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 集成版解绑用户角色
    ///
    /// 解绑用户角色绑定关系
    @inlinable
    public func deleteIntegrationRoleUsers(operator: UserInfo, roleId: String, users: [UserInfo], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIntegrationRoleUsersResponse {
        try await self.deleteIntegrationRoleUsers(.init(operator: `operator`, roleId: roleId, users: users, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
