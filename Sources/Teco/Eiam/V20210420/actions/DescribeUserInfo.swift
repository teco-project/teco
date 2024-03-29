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
    /// DescribeUserInfo请求参数结构体
    public struct DescribeUserInfoRequest: TCRequest {
        /// 用户名，长度限制：64个字符。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        public let userName: String?

        /// 用户 id，长度限制：64个字符。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        public let userId: String?

        public init(userName: String? = nil, userId: String? = nil) {
            self.userName = userName
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case userId = "UserId"
        }
    }

    /// DescribeUserInfo返回参数结构体
    public struct DescribeUserInfoResponse: TCResponse {
        /// 用户名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 昵称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 用户备注。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 用户所属用户组 id 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupIds: [String]?

        /// 用户 id，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 用户邮箱。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let email: String?

        /// 用户手机号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?

        /// 用户所属的主组织机构唯一ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 数据来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSource: String?

        /// 用户过期时间，遵循 ISO 8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expirationTime: String?

        /// 用户激活时间，遵循 ISO 8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activationTime: String?

        /// 当前用户的密码是否需要重置，该字段为false表示不需要重置密码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pwdNeedReset: Bool?

        /// 用户所属的次要组织机构ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secondaryOrgNodeIdList: [String]?

        /// 是否管理员标志，0为否、1为是。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminFlag: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case status = "Status"
            case displayName = "DisplayName"
            case description = "Description"
            case userGroupIds = "UserGroupIds"
            case userId = "UserId"
            case email = "Email"
            case phone = "Phone"
            case orgNodeId = "OrgNodeId"
            case dataSource = "DataSource"
            case expirationTime = "ExpirationTime"
            case activationTime = "ActivationTime"
            case pwdNeedReset = "PwdNeedReset"
            case secondaryOrgNodeIdList = "SecondaryOrgNodeIdList"
            case adminFlag = "AdminFlag"
            case requestId = "RequestId"
        }
    }

    /// 获取用户信息
    ///
    /// 通过用户名或用户 id 搜索用户
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    ///
    /// 通过用户名或用户 id 搜索用户
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户信息
    ///
    /// 通过用户名或用户 id 搜索用户
    @inlinable
    public func describeUserInfo(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.describeUserInfo(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    ///
    /// 通过用户名或用户 id 搜索用户
    @inlinable
    public func describeUserInfo(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.describeUserInfo(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
