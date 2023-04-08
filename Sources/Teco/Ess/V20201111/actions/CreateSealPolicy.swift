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

extension Ess {
    /// CreateSealPolicy请求参数结构体
    public struct CreateSealPolicyRequest: TCRequestModel {
        /// 授权发起人在平台信息，具体参考UserInfo结构体
        public let `operator`: UserInfo

        /// 用户在电子文件签署平台标识信息，具体参考UserInfo结构体。可跟下面的UserIds可叠加起作用
        public let users: [UserInfo]

        /// 印章ID
        public let sealId: String

        /// 授权有效期。时间戳秒级
        public let expired: Int64

        /// 印章授权内容
        public let policy: String?

        /// 应用相关
        public let agent: Agent?

        /// 需要授权的用户UserId集合。跟上面的SealId参数配合使用。选填，跟上面的Users同时起作用
        public let userIds: [String]?

        public init(operator: UserInfo, users: [UserInfo], sealId: String, expired: Int64, policy: String? = nil, agent: Agent? = nil, userIds: [String]? = nil) {
            self.operator = `operator`
            self.users = users
            self.sealId = sealId
            self.expired = expired
            self.policy = policy
            self.agent = agent
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case users = "Users"
            case sealId = "SealId"
            case expired = "Expired"
            case policy = "Policy"
            case agent = "Agent"
            case userIds = "UserIds"
        }
    }

    /// CreateSealPolicy返回参数结构体
    public struct CreateSealPolicyResponse: TCResponseModel {
        /// 最终授权成功的。其他的跳过的是已经授权了的
        public let userIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userIds = "UserIds"
            case requestId = "RequestId"
        }
    }

    /// 印章授权
    ///
    /// 对企业员工进行印章授权
    @inlinable
    public func createSealPolicy(_ input: CreateSealPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealPolicyResponse> {
        self.client.execute(action: "CreateSealPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 印章授权
    ///
    /// 对企业员工进行印章授权
    @inlinable
    public func createSealPolicy(_ input: CreateSealPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealPolicyResponse {
        try await self.client.execute(action: "CreateSealPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 印章授权
    ///
    /// 对企业员工进行印章授权
    @inlinable
    public func createSealPolicy(operator: UserInfo, users: [UserInfo], sealId: String, expired: Int64, policy: String? = nil, agent: Agent? = nil, userIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealPolicyResponse> {
        self.createSealPolicy(.init(operator: `operator`, users: users, sealId: sealId, expired: expired, policy: policy, agent: agent, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 印章授权
    ///
    /// 对企业员工进行印章授权
    @inlinable
    public func createSealPolicy(operator: UserInfo, users: [UserInfo], sealId: String, expired: Int64, policy: String? = nil, agent: Agent? = nil, userIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealPolicyResponse {
        try await self.createSealPolicy(.init(operator: `operator`, users: users, sealId: sealId, expired: expired, policy: policy, agent: agent, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }
}
