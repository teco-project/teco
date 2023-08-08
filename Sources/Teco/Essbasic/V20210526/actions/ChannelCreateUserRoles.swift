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

extension Essbasic {
    /// ChannelCreateUserRoles请求参数结构体
    public struct ChannelCreateUserRolesRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 绑定角色的角色id列表
        public let roleIds: [String]

        /// 电子签用户ID列表，与OpenIds参数二选一,优先UserIds参数
        public let userIds: [String]?

        /// 客户系统用户ID列表，与UserIds参数二选一,优先UserIds参数
        public let openIds: [String]?

        /// 操作者信息
        public let `operator`: UserInfo?

        public init(agent: Agent, roleIds: [String], userIds: [String]? = nil, openIds: [String]? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.roleIds = roleIds
            self.userIds = userIds
            self.openIds = openIds
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case roleIds = "RoleIds"
            case userIds = "UserIds"
            case openIds = "OpenIds"
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
    ///
    /// 通过此接口，绑定员工角色，支持以电子签userId、客户系统userId两种方式调用。
    @inlinable
    public func channelCreateUserRoles(_ input: ChannelCreateUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserRolesResponse> {
        self.client.execute(action: "ChannelCreateUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    ///
    /// 通过此接口，绑定员工角色，支持以电子签userId、客户系统userId两种方式调用。
    @inlinable
    public func channelCreateUserRoles(_ input: ChannelCreateUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserRolesResponse {
        try await self.client.execute(action: "ChannelCreateUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定员工角色
    ///
    /// 通过此接口，绑定员工角色，支持以电子签userId、客户系统userId两种方式调用。
    @inlinable
    public func channelCreateUserRoles(agent: Agent, roleIds: [String], userIds: [String]? = nil, openIds: [String]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserRolesResponse> {
        self.channelCreateUserRoles(.init(agent: agent, roleIds: roleIds, userIds: userIds, openIds: openIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    ///
    /// 通过此接口，绑定员工角色，支持以电子签userId、客户系统userId两种方式调用。
    @inlinable
    public func channelCreateUserRoles(agent: Agent, roleIds: [String], userIds: [String]? = nil, openIds: [String]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserRolesResponse {
        try await self.channelCreateUserRoles(.init(agent: agent, roleIds: roleIds, userIds: userIds, openIds: openIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
