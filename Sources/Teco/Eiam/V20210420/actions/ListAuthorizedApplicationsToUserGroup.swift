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

extension Eiam {
    /// ListAuthorizedApplicationsToUserGroup请求参数结构体
    public struct ListAuthorizedApplicationsToUserGroupRequest: TCRequestModel {
        /// 用户组 Id 。
        public let userGroupId: String

        public init(userGroupId: String) {
            self.userGroupId = userGroupId
        }

        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
        }
    }

    /// ListAuthorizedApplicationsToUserGroup返回参数结构体
    public struct ListAuthorizedApplicationsToUserGroupResponse: TCResponseModel {
        /// 用户组拥有访问权限的应用 id 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationIds = "ApplicationIds"
            case requestId = "RequestId"
        }
    }

    /// 获取用户组被授权访问的应用列表
    ///
    /// 通过用户组ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToUserGroup(_ input: ListAuthorizedApplicationsToUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuthorizedApplicationsToUserGroupResponse> {
        self.client.execute(action: "ListAuthorizedApplicationsToUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户组被授权访问的应用列表
    ///
    /// 通过用户组ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToUserGroup(_ input: ListAuthorizedApplicationsToUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuthorizedApplicationsToUserGroupResponse {
        try await self.client.execute(action: "ListAuthorizedApplicationsToUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户组被授权访问的应用列表
    ///
    /// 通过用户组ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToUserGroup(userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuthorizedApplicationsToUserGroupResponse> {
        self.listAuthorizedApplicationsToUserGroup(ListAuthorizedApplicationsToUserGroupRequest(userGroupId: userGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户组被授权访问的应用列表
    ///
    /// 通过用户组ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToUserGroup(userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuthorizedApplicationsToUserGroupResponse {
        try await self.listAuthorizedApplicationsToUserGroup(ListAuthorizedApplicationsToUserGroupRequest(userGroupId: userGroupId), region: region, logger: logger, on: eventLoop)
    }
}
