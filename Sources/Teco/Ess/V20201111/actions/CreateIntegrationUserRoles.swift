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

extension Ess {
    /// CreateIntegrationUserRoles请求参数结构体
    public struct CreateIntegrationUserRolesRequest: TCRequest {
        /// 操作人信息，UserId必填
        public let `operator`: UserInfo

        /// 绑定角色的用户id列表
        public let userIds: [String]

        /// 绑定角色的角色id列表
        public let roleIds: [String]

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(operator: UserInfo, userIds: [String], roleIds: [String], agent: Agent? = nil) {
            self.operator = `operator`
            self.userIds = userIds
            self.roleIds = roleIds
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case userIds = "UserIds"
            case roleIds = "RoleIds"
            case agent = "Agent"
        }
    }

    /// CreateIntegrationUserRoles返回参数结构体
    public struct CreateIntegrationUserRolesResponse: TCResponse {
        /// 绑定角色失败列表信息
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
    /// 绑定员工与对应角色
    @inlinable
    public func createIntegrationUserRoles(_ input: CreateIntegrationUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationUserRolesResponse> {
        self.client.execute(action: "CreateIntegrationUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    ///
    /// 绑定员工与对应角色
    @inlinable
    public func createIntegrationUserRoles(_ input: CreateIntegrationUserRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationUserRolesResponse {
        try await self.client.execute(action: "CreateIntegrationUserRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定员工角色
    ///
    /// 绑定员工与对应角色
    @inlinable
    public func createIntegrationUserRoles(operator: UserInfo, userIds: [String], roleIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationUserRolesResponse> {
        self.createIntegrationUserRoles(.init(operator: `operator`, userIds: userIds, roleIds: roleIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定员工角色
    ///
    /// 绑定员工与对应角色
    @inlinable
    public func createIntegrationUserRoles(operator: UserInfo, userIds: [String], roleIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationUserRolesResponse {
        try await self.createIntegrationUserRoles(.init(operator: `operator`, userIds: userIds, roleIds: roleIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
