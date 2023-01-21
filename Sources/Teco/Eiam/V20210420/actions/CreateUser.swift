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
    /// CreateUser请求参数结构体
    public struct CreateUserRequest: TCRequestModel {
        /// 用户名，长度限制：64个字符。
        public let userName: String

        /// 用户密码， 需要符合密码策略的配置。
        public let password: String

        /// 昵称，长度限制：64个字符。 默认与用户名相同。
        public let displayName: String?

        /// 用户备注，长度限制：512个字符。
        public let description: String?

        /// 用户所属用户组ID列表。
        public let userGroupIds: [String]?

        /// 用户手机号。例如：+86-1xxxxxxxxxx。
        public let phone: String?

        /// 用户所属的主组织机构唯一ID。如果为空，默认为在根节点下创建用户。
        public let orgNodeId: String?

        /// 用户过期时间，遵循 ISO 8601 标准。
        public let expirationTime: String?

        /// 用户邮箱。
        public let email: String?

        /// 密码是否需要重置，为空默认为false不需要重置密码。
        public let pwdNeedReset: Bool?

        /// 用户所属的次要组织机构ID列表。
        public let secondaryOrgNodeIdList: [String]?

        public init(userName: String, password: String, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, phone: String? = nil, orgNodeId: String? = nil, expirationTime: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, secondaryOrgNodeIdList: [String]? = nil) {
            self.userName = userName
            self.password = password
            self.displayName = displayName
            self.description = description
            self.userGroupIds = userGroupIds
            self.phone = phone
            self.orgNodeId = orgNodeId
            self.expirationTime = expirationTime
            self.email = email
            self.pwdNeedReset = pwdNeedReset
            self.secondaryOrgNodeIdList = secondaryOrgNodeIdList
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case password = "Password"
            case displayName = "DisplayName"
            case description = "Description"
            case userGroupIds = "UserGroupIds"
            case phone = "Phone"
            case orgNodeId = "OrgNodeId"
            case expirationTime = "ExpirationTime"
            case email = "Email"
            case pwdNeedReset = "PwdNeedReset"
            case secondaryOrgNodeIdList = "SecondaryOrgNodeIdList"
        }
    }

    /// CreateUser返回参数结构体
    public struct CreateUserResponse: TCResponseModel {
        /// 返回的新创建的用户ID，是该用户的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }

    /// 新建用户
    ///
    /// 新建一个用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建用户
    ///
    /// 新建一个用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建用户
    ///
    /// 新建一个用户
    @inlinable
    public func createUser(userName: String, password: String, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, phone: String? = nil, orgNodeId: String? = nil, expirationTime: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, secondaryOrgNodeIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.createUser(CreateUserRequest(userName: userName, password: password, displayName: displayName, description: description, userGroupIds: userGroupIds, phone: phone, orgNodeId: orgNodeId, expirationTime: expirationTime, email: email, pwdNeedReset: pwdNeedReset, secondaryOrgNodeIdList: secondaryOrgNodeIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 新建用户
    ///
    /// 新建一个用户
    @inlinable
    public func createUser(userName: String, password: String, displayName: String? = nil, description: String? = nil, userGroupIds: [String]? = nil, phone: String? = nil, orgNodeId: String? = nil, expirationTime: String? = nil, email: String? = nil, pwdNeedReset: Bool? = nil, secondaryOrgNodeIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.createUser(CreateUserRequest(userName: userName, password: password, displayName: displayName, description: description, userGroupIds: userGroupIds, phone: phone, orgNodeId: orgNodeId, expirationTime: expirationTime, email: email, pwdNeedReset: pwdNeedReset, secondaryOrgNodeIdList: secondaryOrgNodeIdList), region: region, logger: logger, on: eventLoop)
    }
}
