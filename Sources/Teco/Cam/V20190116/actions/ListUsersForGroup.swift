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

extension Cam {
    /// ListUsersForGroup请求参数结构体
    public struct ListUsersForGroupRequest: TCRequestModel {
        /// 用户组 ID。
        public let groupId: UInt64

        /// 页码。默认为1。
        public let page: UInt64?

        /// 每页数量。默认为20。
        public let rp: UInt64?

        public init(groupId: UInt64, page: UInt64? = nil, rp: UInt64? = nil) {
            self.groupId = groupId
            self.page = page
            self.rp = rp
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case page = "Page"
            case rp = "Rp"
        }
    }

    /// ListUsersForGroup返回参数结构体
    public struct ListUsersForGroupResponse: TCResponseModel {
        /// 用户组关联的用户总数。
        public let totalNum: UInt64

        /// 子用户信息。
        public let userInfo: [GroupMemberInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case userInfo = "UserInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询用户组关联的用户列表
    @inlinable
    public func listUsersForGroup(_ input: ListUsersForGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersForGroupResponse> {
        self.client.execute(action: "ListUsersForGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户组关联的用户列表
    @inlinable
    public func listUsersForGroup(_ input: ListUsersForGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersForGroupResponse {
        try await self.client.execute(action: "ListUsersForGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户组关联的用户列表
    @inlinable
    public func listUsersForGroup(groupId: UInt64, page: UInt64? = nil, rp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersForGroupResponse> {
        self.listUsersForGroup(.init(groupId: groupId, page: page, rp: rp), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户组关联的用户列表
    @inlinable
    public func listUsersForGroup(groupId: UInt64, page: UInt64? = nil, rp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersForGroupResponse {
        try await self.listUsersForGroup(.init(groupId: groupId, page: page, rp: rp), region: region, logger: logger, on: eventLoop)
    }
}
