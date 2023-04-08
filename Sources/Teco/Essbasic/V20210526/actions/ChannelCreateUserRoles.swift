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

extension Essbasic {
    /// ChannelCreateUserRoles请求参数结构体
    public struct ChannelCreateUserRolesRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 必填。
        public let agent: Agent

        /// 绑定角色的员工id列表
        public let userIds: [String]

        /// 绑定角色的角色id列表
        public let roleIds: [String]

        /// 操作者信息
        public let `operator`: UserInfo

        public init(agent: Agent, userIds: [String], roleIds: [String], operator: UserInfo) {
            self.agent = agent
            self.userIds = userIds
            self.roleIds = roleIds
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case userIds = "UserIds"
            case roleIds = "RoleIds"
            case `operator` = "Operator"
        }
    }

    /// ChannelCreateUserRoles返回参数结构体
    public struct ChannelCreateUserRolesResponse: TCResponseModel {
        /// 绑定失败的用户角色列表
        public let failedCreateRoleData: [FailedCreateRoleData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedCreateRoleData = "FailedCreateRoleData"
            case requestId = "RequestId"
        }
    }

    /// 绑定员工角色
    @inlinable
    public func channelCreateUserRoles(_ input: ChannelCreateUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserRolesResponse> {
        self.client.execute(action: "ChannelCreateUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    @inlinable
    public func channelCreateUserRoles(_ input: ChannelCreateUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserRolesResponse {
        try await self.client.execute(action: "ChannelCreateUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定员工角色
    @inlinable
    public func channelCreateUserRoles(agent: Agent, userIds: [String], roleIds: [String], operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserRolesResponse> {
        self.channelCreateUserRoles(.init(agent: agent, userIds: userIds, roleIds: roleIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    @inlinable
    public func channelCreateUserRoles(agent: Agent, userIds: [String], roleIds: [String], operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserRolesResponse {
        try await self.channelCreateUserRoles(.init(agent: agent, userIds: userIds, roleIds: roleIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
