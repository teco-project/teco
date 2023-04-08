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

extension Cme {
    /// ModifyTeamMember请求参数结构体
    public struct ModifyTeamMemberRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队 ID。
        public let teamId: String

        /// 团队成员 ID。
        public let memberId: String

        /// 成员备注，长度不能超过15个字符。
        public let remark: String?

        /// 成员角色，可取值有：
        /// <li>Admin：团队管理员；</li>
        /// <li>Member：普通成员。</li>
        public let role: String?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以个改任意团队成员的信息。如果指定操作者，则操作者必须为团队的管理员或者所有者。
        public let `operator`: String?

        public init(platform: String, teamId: String, memberId: String, remark: String? = nil, role: String? = nil, operator: String? = nil) {
            self.platform = platform
            self.teamId = teamId
            self.memberId = memberId
            self.remark = remark
            self.role = role
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case memberId = "MemberId"
            case remark = "Remark"
            case role = "Role"
            case `operator` = "Operator"
        }
    }

    /// ModifyTeamMember返回参数结构体
    public struct ModifyTeamMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改团队成员
    ///
    /// 修改团队成员信息，包括成员备注、角色等。
    @inlinable @discardableResult
    public func modifyTeamMember(_ input: ModifyTeamMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTeamMemberResponse> {
        self.client.execute(action: "ModifyTeamMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改团队成员
    ///
    /// 修改团队成员信息，包括成员备注、角色等。
    @inlinable @discardableResult
    public func modifyTeamMember(_ input: ModifyTeamMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTeamMemberResponse {
        try await self.client.execute(action: "ModifyTeamMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改团队成员
    ///
    /// 修改团队成员信息，包括成员备注、角色等。
    @inlinable @discardableResult
    public func modifyTeamMember(platform: String, teamId: String, memberId: String, remark: String? = nil, role: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTeamMemberResponse> {
        self.modifyTeamMember(.init(platform: platform, teamId: teamId, memberId: memberId, remark: remark, role: role, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 修改团队成员
    ///
    /// 修改团队成员信息，包括成员备注、角色等。
    @inlinable @discardableResult
    public func modifyTeamMember(platform: String, teamId: String, memberId: String, remark: String? = nil, role: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTeamMemberResponse {
        try await self.modifyTeamMember(.init(platform: platform, teamId: teamId, memberId: memberId, remark: remark, role: role, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
