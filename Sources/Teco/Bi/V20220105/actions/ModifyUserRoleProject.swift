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

extension Bi {
    /// ModifyUserRoleProject请求参数结构体
    public struct ModifyUserRoleProjectRequest: TCRequest {
        /// 项目ID
        public let projectId: Int64?

        /// 用户ID
        public let userId: String?

        /// 角色ID 列表
        public let roleIdList: [Int64]?

        /// 邮箱
        public let email: String?

        /// 用户名
        public let userName: String?

        public init(projectId: Int64? = nil, userId: String? = nil, roleIdList: [Int64]? = nil, email: String? = nil, userName: String? = nil) {
            self.projectId = projectId
            self.userId = userId
            self.roleIdList = roleIdList
            self.email = email
            self.userName = userName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case userId = "UserId"
            case roleIdList = "RoleIdList"
            case email = "Email"
            case userName = "UserName"
        }
    }

    /// ModifyUserRoleProject返回参数结构体
    public struct ModifyUserRoleProjectResponse: TCResponse {
        /// 扩展
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case msg = "Msg"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 项目-修改用户角色信息
    @inlinable
    public func modifyUserRoleProject(_ input: ModifyUserRoleProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserRoleProjectResponse> {
        self.client.execute(action: "ModifyUserRoleProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 项目-修改用户角色信息
    @inlinable
    public func modifyUserRoleProject(_ input: ModifyUserRoleProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserRoleProjectResponse {
        try await self.client.execute(action: "ModifyUserRoleProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 项目-修改用户角色信息
    @inlinable
    public func modifyUserRoleProject(projectId: Int64? = nil, userId: String? = nil, roleIdList: [Int64]? = nil, email: String? = nil, userName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserRoleProjectResponse> {
        self.modifyUserRoleProject(.init(projectId: projectId, userId: userId, roleIdList: roleIdList, email: email, userName: userName), region: region, logger: logger, on: eventLoop)
    }

    /// 项目-修改用户角色信息
    @inlinable
    public func modifyUserRoleProject(projectId: Int64? = nil, userId: String? = nil, roleIdList: [Int64]? = nil, email: String? = nil, userName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserRoleProjectResponse {
        try await self.modifyUserRoleProject(.init(projectId: projectId, userId: userId, roleIdList: roleIdList, email: email, userName: userName), region: region, logger: logger, on: eventLoop)
    }
}