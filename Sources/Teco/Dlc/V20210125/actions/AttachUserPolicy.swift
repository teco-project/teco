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

extension Dlc {
    /// AttachUserPolicy请求参数结构体
    public struct AttachUserPolicyRequest: TCRequestModel {
        /// 用户Id，和子用户uin相同，需要先使用CreateUser接口创建用户。可以使用DescribeUsers接口查看。
        public let userId: String

        /// 鉴权策略集合
        public let policySet: [Policy]?

        public init(userId: String, policySet: [Policy]? = nil) {
            self.userId = userId
            self.policySet = policySet
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case policySet = "PolicySet"
        }
    }

    /// AttachUserPolicy返回参数结构体
    public struct AttachUserPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定鉴权策略到用户
    @inlinable @discardableResult
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachUserPolicyResponse> {
        self.client.execute(action: "AttachUserPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定鉴权策略到用户
    @inlinable @discardableResult
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachUserPolicyResponse {
        try await self.client.execute(action: "AttachUserPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定鉴权策略到用户
    @inlinable @discardableResult
    public func attachUserPolicy(userId: String, policySet: [Policy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachUserPolicyResponse> {
        self.attachUserPolicy(.init(userId: userId, policySet: policySet), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定鉴权策略到用户
    @inlinable @discardableResult
    public func attachUserPolicy(userId: String, policySet: [Policy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachUserPolicyResponse {
        try await self.attachUserPolicy(.init(userId: userId, policySet: policySet), region: region, logger: logger, on: eventLoop)
    }
}
