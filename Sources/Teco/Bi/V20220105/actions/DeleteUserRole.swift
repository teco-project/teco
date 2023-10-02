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
    /// DeleteUserRole请求参数结构体
    public struct DeleteUserRoleRequest: TCRequest {
        /// 用户ID
        public let userId: String

        public init(userId: String) {
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
        }
    }

    /// DeleteUserRole返回参数结构体
    public struct DeleteUserRoleResponse: TCResponse {
        /// 扩展
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case data = "Data"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 删除用户角色
    ///
    /// 删除用户角色，会删除用户
    @inlinable
    public func deleteUserRole(_ input: DeleteUserRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserRoleResponse> {
        self.client.execute(action: "DeleteUserRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户角色
    ///
    /// 删除用户角色，会删除用户
    @inlinable
    public func deleteUserRole(_ input: DeleteUserRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserRoleResponse {
        try await self.client.execute(action: "DeleteUserRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户角色
    ///
    /// 删除用户角色，会删除用户
    @inlinable
    public func deleteUserRole(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserRoleResponse> {
        self.deleteUserRole(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户角色
    ///
    /// 删除用户角色，会删除用户
    @inlinable
    public func deleteUserRole(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserRoleResponse {
        try await self.deleteUserRole(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
