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

extension Ciam {
    /// UpdateUserGroup请求参数结构体
    public struct UpdateUserGroupRequest: TCRequest {
        /// 用户组ID
        public let userGroupId: String

        /// 用户组名称
        public let displayName: String

        /// 用户目录ID
        public let userStoreId: String

        /// 用户组描述
        public let description: String?

        public init(userGroupId: String, displayName: String, userStoreId: String, description: String? = nil) {
            self.userGroupId = userGroupId
            self.displayName = displayName
            self.userStoreId = userStoreId
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
            case displayName = "DisplayName"
            case userStoreId = "UserStoreId"
            case description = "Description"
        }
    }

    /// UpdateUserGroup返回参数结构体
    public struct UpdateUserGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新用户组
    @inlinable @discardableResult
    public func updateUserGroup(_ input: UpdateUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserGroupResponse> {
        self.client.execute(action: "UpdateUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新用户组
    @inlinable @discardableResult
    public func updateUserGroup(_ input: UpdateUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserGroupResponse {
        try await self.client.execute(action: "UpdateUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新用户组
    @inlinable @discardableResult
    public func updateUserGroup(userGroupId: String, displayName: String, userStoreId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserGroupResponse> {
        self.updateUserGroup(.init(userGroupId: userGroupId, displayName: displayName, userStoreId: userStoreId, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新用户组
    @inlinable @discardableResult
    public func updateUserGroup(userGroupId: String, displayName: String, userStoreId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserGroupResponse {
        try await self.updateUserGroup(.init(userGroupId: userGroupId, displayName: displayName, userStoreId: userStoreId, description: description), region: region, logger: logger, on: eventLoop)
    }
}
