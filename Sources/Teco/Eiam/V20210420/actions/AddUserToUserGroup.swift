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

extension Eiam {
    /// AddUserToUserGroup请求参数结构体
    public struct AddUserToUserGroupRequest: TCRequest {
        /// 加入用户组的用户ID列表。
        public let userIds: [String]

        /// 用户组ID，是用户组的全局唯一标识。
        public let userGroupId: String

        public init(userIds: [String], userGroupId: String) {
            self.userIds = userIds
            self.userGroupId = userGroupId
        }

        enum CodingKeys: String, CodingKey {
            case userIds = "UserIds"
            case userGroupId = "UserGroupId"
        }
    }

    /// AddUserToUserGroup返回参数结构体
    public struct AddUserToUserGroupResponse: TCResponse {
        /// 未成功加入用户组的用户ID列表信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedItems: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedItems = "FailedItems"
            case requestId = "RequestId"
        }
    }

    /// 加入用户到用户组
    @inlinable
    public func addUserToUserGroup(_ input: AddUserToUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserToUserGroupResponse> {
        self.client.execute(action: "AddUserToUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 加入用户到用户组
    @inlinable
    public func addUserToUserGroup(_ input: AddUserToUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserToUserGroupResponse {
        try await self.client.execute(action: "AddUserToUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 加入用户到用户组
    @inlinable
    public func addUserToUserGroup(userIds: [String], userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserToUserGroupResponse> {
        self.addUserToUserGroup(.init(userIds: userIds, userGroupId: userGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 加入用户到用户组
    @inlinable
    public func addUserToUserGroup(userIds: [String], userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserToUserGroupResponse {
        try await self.addUserToUserGroup(.init(userIds: userIds, userGroupId: userGroupId), region: region, logger: logger, on: eventLoop)
    }
}
