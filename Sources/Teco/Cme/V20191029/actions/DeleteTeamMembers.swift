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

extension Cme {
    /// DeleteTeamMembers请求参数结构体
    public struct DeleteTeamMembersRequest: TCRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队 ID。
        public let teamId: String

        /// 要删除的成员列表。
        public let memberIds: [String]

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以删除所有团队的成员。如果指定操作者，则操作者必须为团队管理员或者所有者。
        public let `operator`: String?

        public init(platform: String, teamId: String, memberIds: [String], operator: String? = nil) {
            self.platform = platform
            self.teamId = teamId
            self.memberIds = memberIds
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case memberIds = "MemberIds"
            case `operator` = "Operator"
        }
    }

    /// DeleteTeamMembers返回参数结构体
    public struct DeleteTeamMembersResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除团队成员
    ///
    /// 将团队成员从团队中删除。
    @inlinable @discardableResult
    public func deleteTeamMembers(_ input: DeleteTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTeamMembersResponse> {
        self.client.execute(action: "DeleteTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除团队成员
    ///
    /// 将团队成员从团队中删除。
    @inlinable @discardableResult
    public func deleteTeamMembers(_ input: DeleteTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTeamMembersResponse {
        try await self.client.execute(action: "DeleteTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除团队成员
    ///
    /// 将团队成员从团队中删除。
    @inlinable @discardableResult
    public func deleteTeamMembers(platform: String, teamId: String, memberIds: [String], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTeamMembersResponse> {
        self.deleteTeamMembers(.init(platform: platform, teamId: teamId, memberIds: memberIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除团队成员
    ///
    /// 将团队成员从团队中删除。
    @inlinable @discardableResult
    public func deleteTeamMembers(platform: String, teamId: String, memberIds: [String], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTeamMembersResponse {
        try await self.deleteTeamMembers(.init(platform: platform, teamId: teamId, memberIds: memberIds, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
