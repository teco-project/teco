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

extension Cme {
    /// AddTeamMember请求参数结构体
    public struct AddTeamMemberRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队 ID。
        public let teamId: String

        /// 要添加的成员列表，一次最多添加30个成员。
        public let teamMembers: [AddMemberInfo]

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以向任意团队中添加成员。如果指定操作者，则操作者必须为管理员或者团队所有者。
        public let `operator`: String?

        public init(platform: String, teamId: String, teamMembers: [AddMemberInfo], operator: String? = nil) {
            self.platform = platform
            self.teamId = teamId
            self.teamMembers = teamMembers
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case teamMembers = "TeamMembers"
            case `operator` = "Operator"
        }
    }

    /// AddTeamMember返回参数结构体
    public struct AddTeamMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加团队成员
    ///
    /// 向一个团队中添加团队成员，并且指定成员的角色。
    @inlinable @discardableResult
    public func addTeamMember(_ input: AddTeamMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTeamMemberResponse> {
        self.client.execute(action: "AddTeamMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加团队成员
    ///
    /// 向一个团队中添加团队成员，并且指定成员的角色。
    @inlinable @discardableResult
    public func addTeamMember(_ input: AddTeamMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTeamMemberResponse {
        try await self.client.execute(action: "AddTeamMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加团队成员
    ///
    /// 向一个团队中添加团队成员，并且指定成员的角色。
    @inlinable @discardableResult
    public func addTeamMember(platform: String, teamId: String, teamMembers: [AddMemberInfo], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTeamMemberResponse> {
        self.addTeamMember(.init(platform: platform, teamId: teamId, teamMembers: teamMembers, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 添加团队成员
    ///
    /// 向一个团队中添加团队成员，并且指定成员的角色。
    @inlinable @discardableResult
    public func addTeamMember(platform: String, teamId: String, teamMembers: [AddMemberInfo], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTeamMemberResponse {
        try await self.addTeamMember(.init(platform: platform, teamId: teamId, teamMembers: teamMembers, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
