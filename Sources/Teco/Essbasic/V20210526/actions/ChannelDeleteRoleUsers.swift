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

extension Essbasic {
    /// ChannelDeleteRoleUsers请求参数结构体
    public struct ChannelDeleteRoleUsersRequest: TCRequestModel {
        /// 代理信息
        public let agent: Agent

        /// 角色Id
        public let roleId: String

        /// 用户列表
        public let userIds: [String]

        /// 操作人信息
        public let `operator`: UserInfo

        public init(agent: Agent, roleId: String, userIds: [String], operator: UserInfo) {
            self.agent = agent
            self.roleId = roleId
            self.userIds = userIds
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case roleId = "RoleId"
            case userIds = "UserIds"
            case `operator` = "Operator"
        }
    }

    /// ChannelDeleteRoleUsers返回参数结构体
    public struct ChannelDeleteRoleUsersResponse: TCResponseModel {
        /// 角色id
        public let roleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case requestId = "RequestId"
        }
    }

    /// 删除员工绑定角色
    @inlinable
    public func channelDeleteRoleUsers(_ input: ChannelDeleteRoleUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDeleteRoleUsersResponse> {
        self.client.execute(action: "ChannelDeleteRoleUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除员工绑定角色
    @inlinable
    public func channelDeleteRoleUsers(_ input: ChannelDeleteRoleUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDeleteRoleUsersResponse {
        try await self.client.execute(action: "ChannelDeleteRoleUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除员工绑定角色
    @inlinable
    public func channelDeleteRoleUsers(agent: Agent, roleId: String, userIds: [String], operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDeleteRoleUsersResponse> {
        self.channelDeleteRoleUsers(.init(agent: agent, roleId: roleId, userIds: userIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除员工绑定角色
    @inlinable
    public func channelDeleteRoleUsers(agent: Agent, roleId: String, userIds: [String], operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDeleteRoleUsersResponse {
        try await self.channelDeleteRoleUsers(.init(agent: agent, roleId: roleId, userIds: userIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
