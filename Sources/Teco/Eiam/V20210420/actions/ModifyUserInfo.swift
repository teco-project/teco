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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Eiam {
    /// ModifyUserInfo请求参数结构体
    public struct ModifyUserInfoRequest: TCRequestModel {
        /// 用户名，长度限制：32个字符。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        public let userName: String?

        /// 昵称，长度限制：64个字符。 默认与用户名相同。
        public let displayName: String?

        /// 用户备注，长度限制：512个字符。
        public let description: String?

        /// 用户所属用户组ID列表。
        public let userGroupIds: [String]?

        /// 用户 id。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        public let userId: String?

        /// 用户手机号。
        public let phone: String?

        /// 用户过期时间，遵循 ISO 8601 标准。
        public let expirationTime: String?

        /// 用户密码， 需要符合密码策略的配置。
        public let password: String?

        /// 用户邮箱。
        public let email: String?

        /// 密码是否需要重置，为空默认为false不需要重置密码。
        public let pwdNeedReset: Bool?

        /// 用户所属的主组织机构唯一ID。如果为空，默认为在根节点下创建用户。
        public let orgNodeId: String?

        /// 用户所属的次要组织机构ID列表。
        public let secondaryOrgNodeIdList: [String]?

        public init(userName: String? = nil, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, userId: String? = nil, phone: String? = nil, expirationTime: String? = nil, password: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, orgNodeId: String? = nil, secondaryOrgNodeIdList: [String]? = nil) {
            self.userName = userName
            self.displayName = displayName
            self.description = description
            self.userGroupIds = userGroupIds
            self.userId = userId
            self.phone = phone
            self.expirationTime = expirationTime
            self.password = password
            self.email = email
            self.pwdNeedReset = pwdNeedReset
            self.orgNodeId = orgNodeId
            self.secondaryOrgNodeIdList = secondaryOrgNodeIdList
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case displayName = "DisplayName"
            case description = "Description"
            case userGroupIds = "UserGroupIds"
            case userId = "UserId"
            case phone = "Phone"
            case expirationTime = "ExpirationTime"
            case password = "Password"
            case email = "Email"
            case pwdNeedReset = "PwdNeedReset"
            case orgNodeId = "OrgNodeId"
            case secondaryOrgNodeIdList = "SecondaryOrgNodeIdList"
        }
    }

    /// ModifyUserInfo返回参数结构体
    public struct ModifyUserInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改用户
    ///
    /// 通过用户名或用户 id 冻结用户
    @inlinable @discardableResult
    public func modifyUserInfo(_ input: ModifyUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserInfoResponse> {
        self.client.execute(action: "ModifyUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改用户
    ///
    /// 通过用户名或用户 id 冻结用户
    @inlinable @discardableResult
    public func modifyUserInfo(_ input: ModifyUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserInfoResponse {
        try await self.client.execute(action: "ModifyUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改用户
    ///
    /// 通过用户名或用户 id 冻结用户
    @inlinable @discardableResult
    public func modifyUserInfo(userName: String? = nil, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, userId: String? = nil, phone: String? = nil, expirationTime: String? = nil, password: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, orgNodeId: String? = nil, secondaryOrgNodeIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserInfoResponse> {
        self.modifyUserInfo(.init(userName: userName, displayName: displayName, description: description, userGroupIds: userGroupIds, userId: userId, phone: phone, expirationTime: expirationTime, password: password, email: email, pwdNeedReset: pwdNeedReset, orgNodeId: orgNodeId, secondaryOrgNodeIdList: secondaryOrgNodeIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改用户
    ///
    /// 通过用户名或用户 id 冻结用户
    @inlinable @discardableResult
    public func modifyUserInfo(userName: String? = nil, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, userId: String? = nil, phone: String? = nil, expirationTime: String? = nil, password: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, orgNodeId: String? = nil, secondaryOrgNodeIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserInfoResponse {
        try await self.modifyUserInfo(.init(userName: userName, displayName: displayName, description: description, userGroupIds: userGroupIds, userId: userId, phone: phone, expirationTime: expirationTime, password: password, email: email, pwdNeedReset: pwdNeedReset, orgNodeId: orgNodeId, secondaryOrgNodeIdList: secondaryOrgNodeIdList), region: region, logger: logger, on: eventLoop)
    }
}
