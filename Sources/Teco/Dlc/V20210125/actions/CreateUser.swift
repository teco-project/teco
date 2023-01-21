//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dlc {
    /// CreateUser请求参数结构体
    public struct CreateUserRequest: TCRequestModel {
        /// 需要授权的子用户uin，可以通过腾讯云控制台右上角 → “账号信息” → “账号ID进行查看”。
        public let userId: String

        /// 用户描述信息，方便区分不同用户
        public let userDescription: String?

        /// 绑定到用户的权限集合
        public let policySet: [Policy]?

        /// 用户类型。ADMIN：管理员 COMMON：一般用户。当用户类型为管理员的时候，不能设置权限集合和绑定的工作组集合，管理员默认拥有所有权限。该参数不填默认为COMMON
        public let userType: String?

        /// 绑定到用户的工作组ID集合。
        public let workGroupIds: [Int64]?

        /// 用户别名，字符长度小50
        public let userAlias: String?

        public init(userId: String, userDescription: String? = nil, policySet: [Policy]? = nil, userType: String? = nil, workGroupIds: [Int64]? = nil, userAlias: String? = nil) {
            self.userId = userId
            self.userDescription = userDescription
            self.policySet = policySet
            self.userType = userType
            self.workGroupIds = workGroupIds
            self.userAlias = userAlias
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userDescription = "UserDescription"
            case policySet = "PolicySet"
            case userType = "UserType"
            case workGroupIds = "WorkGroupIds"
            case userAlias = "UserAlias"
        }
    }

    /// CreateUser返回参数结构体
    public struct CreateUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建用户
    @inlinable @discardableResult
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户
    @inlinable @discardableResult
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建用户
    @inlinable @discardableResult
    public func createUser(userId: String, userDescription: String? = nil, policySet: [Policy]? = nil, userType: String? = nil, workGroupIds: [Int64]? = nil, userAlias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.createUser(CreateUserRequest(userId: userId, userDescription: userDescription, policySet: policySet, userType: userType, workGroupIds: workGroupIds, userAlias: userAlias), region: region, logger: logger, on: eventLoop)
    }

    /// 创建用户
    @inlinable @discardableResult
    public func createUser(userId: String, userDescription: String? = nil, policySet: [Policy]? = nil, userType: String? = nil, workGroupIds: [Int64]? = nil, userAlias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.createUser(CreateUserRequest(userId: userId, userDescription: userDescription, policySet: policySet, userType: userType, workGroupIds: workGroupIds, userAlias: userAlias), region: region, logger: logger, on: eventLoop)
    }
}
