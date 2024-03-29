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

extension Antiddos {
    /// ModifyCCReqLimitPolicy请求参数结构体
    public struct ModifyCCReqLimitPolicyRequest: TCRequest {
        /// 实例Id
        public let instanceId: String

        /// 策略Id
        public let policyId: String

        /// 策略项
        public let policy: CCReqLimitPolicyRecord

        public init(instanceId: String, policyId: String, policy: CCReqLimitPolicyRecord) {
            self.instanceId = instanceId
            self.policyId = policyId
            self.policy = policy
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case policyId = "PolicyId"
            case policy = "Policy"
        }
    }

    /// ModifyCCReqLimitPolicy返回参数结构体
    public struct ModifyCCReqLimitPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CC频率限制策略
    @inlinable @discardableResult
    public func modifyCCReqLimitPolicy(_ input: ModifyCCReqLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCReqLimitPolicyResponse> {
        self.client.execute(action: "ModifyCCReqLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC频率限制策略
    @inlinable @discardableResult
    public func modifyCCReqLimitPolicy(_ input: ModifyCCReqLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCReqLimitPolicyResponse {
        try await self.client.execute(action: "ModifyCCReqLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC频率限制策略
    @inlinable @discardableResult
    public func modifyCCReqLimitPolicy(instanceId: String, policyId: String, policy: CCReqLimitPolicyRecord, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCReqLimitPolicyResponse> {
        self.modifyCCReqLimitPolicy(.init(instanceId: instanceId, policyId: policyId, policy: policy), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC频率限制策略
    @inlinable @discardableResult
    public func modifyCCReqLimitPolicy(instanceId: String, policyId: String, policy: CCReqLimitPolicyRecord, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCReqLimitPolicyResponse {
        try await self.modifyCCReqLimitPolicy(.init(instanceId: instanceId, policyId: policyId, policy: policy), region: region, logger: logger, on: eventLoop)
    }
}
