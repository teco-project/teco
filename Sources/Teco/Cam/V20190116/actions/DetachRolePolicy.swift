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

extension Cam {
    /// DetachRolePolicy请求参数结构体
    public struct DetachRolePolicyRequest: TCRequestModel {
        /// 策略ID，入参PolicyId与PolicyName二选一
        public let policyId: UInt64?

        /// 角色ID，用于指定角色，入参 DetachRoleId 与 DetachRoleName 二选一
        public let detachRoleId: String?

        /// 角色名称，用于指定角色，入参 DetachRoleId 与 DetachRoleName 二选一
        public let detachRoleName: String?

        /// 策略名，入参PolicyId与PolicyName二选一
        public let policyName: String?

        public init(policyId: UInt64? = nil, detachRoleId: String? = nil, detachRoleName: String? = nil, policyName: String? = nil) {
            self.policyId = policyId
            self.detachRoleId = detachRoleId
            self.detachRoleName = detachRoleName
            self.policyName = policyName
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case detachRoleId = "DetachRoleId"
            case detachRoleName = "DetachRoleName"
            case policyName = "PolicyName"
        }
    }

    /// DetachRolePolicy返回参数结构体
    public struct DetachRolePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑角色的策略
    ///
    /// 本接口（DetachRolePolicy）用于解除绑定角色的策略。
    @inlinable
    public func detachRolePolicy(_ input: DetachRolePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachRolePolicyResponse> {
        self.client.execute(action: "DetachRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑角色的策略
    ///
    /// 本接口（DetachRolePolicy）用于解除绑定角色的策略。
    @inlinable
    public func detachRolePolicy(_ input: DetachRolePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachRolePolicyResponse {
        try await self.client.execute(action: "DetachRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑角色的策略
    ///
    /// 本接口（DetachRolePolicy）用于解除绑定角色的策略。
    @inlinable
    public func detachRolePolicy(policyId: UInt64? = nil, detachRoleId: String? = nil, detachRoleName: String? = nil, policyName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachRolePolicyResponse> {
        self.detachRolePolicy(DetachRolePolicyRequest(policyId: policyId, detachRoleId: detachRoleId, detachRoleName: detachRoleName, policyName: policyName), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑角色的策略
    ///
    /// 本接口（DetachRolePolicy）用于解除绑定角色的策略。
    @inlinable
    public func detachRolePolicy(policyId: UInt64? = nil, detachRoleId: String? = nil, detachRoleName: String? = nil, policyName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachRolePolicyResponse {
        try await self.detachRolePolicy(DetachRolePolicyRequest(policyId: policyId, detachRoleId: detachRoleId, detachRoleName: detachRoleName, policyName: policyName), region: region, logger: logger, on: eventLoop)
    }
}
