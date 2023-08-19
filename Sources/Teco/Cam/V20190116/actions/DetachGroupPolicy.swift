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

extension Cam {
    /// DetachGroupPolicy请求参数结构体
    public struct DetachGroupPolicyRequest: TCRequest {
        /// 策略 id
        public let policyId: UInt64

        /// 用户组 id
        public let detachGroupId: UInt64

        public init(policyId: UInt64, detachGroupId: UInt64) {
            self.policyId = policyId
            self.detachGroupId = detachGroupId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case detachGroupId = "DetachGroupId"
        }
    }

    /// DetachGroupPolicy返回参数结构体
    public struct DetachGroupPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解除绑定到用户组的策略
    ///
    /// 本接口（DetachGroupPolicy）可用于解除绑定到用户组的策略。
    @inlinable @discardableResult
    public func detachGroupPolicy(_ input: DetachGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachGroupPolicyResponse> {
        self.client.execute(action: "DetachGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解除绑定到用户组的策略
    ///
    /// 本接口（DetachGroupPolicy）可用于解除绑定到用户组的策略。
    @inlinable @discardableResult
    public func detachGroupPolicy(_ input: DetachGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachGroupPolicyResponse {
        try await self.client.execute(action: "DetachGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解除绑定到用户组的策略
    ///
    /// 本接口（DetachGroupPolicy）可用于解除绑定到用户组的策略。
    @inlinable @discardableResult
    public func detachGroupPolicy(policyId: UInt64, detachGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachGroupPolicyResponse> {
        self.detachGroupPolicy(.init(policyId: policyId, detachGroupId: detachGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 解除绑定到用户组的策略
    ///
    /// 本接口（DetachGroupPolicy）可用于解除绑定到用户组的策略。
    @inlinable @discardableResult
    public func detachGroupPolicy(policyId: UInt64, detachGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachGroupPolicyResponse {
        try await self.detachGroupPolicy(.init(policyId: policyId, detachGroupId: detachGroupId), region: region, logger: logger, on: eventLoop)
    }
}
