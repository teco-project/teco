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

extension Dlc {
    /// DetachWorkGroupPolicy请求参数结构体
    public struct DetachWorkGroupPolicyRequest: TCRequest {
        /// 工作组Id
        public let workGroupId: Int64

        /// 解绑的权限集合
        public let policySet: [Policy]?

        public init(workGroupId: Int64, policySet: [Policy]? = nil) {
            self.workGroupId = workGroupId
            self.policySet = policySet
        }

        enum CodingKeys: String, CodingKey {
            case workGroupId = "WorkGroupId"
            case policySet = "PolicySet"
        }
    }

    /// DetachWorkGroupPolicy返回参数结构体
    public struct DetachWorkGroupPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑工作组鉴权策略
    @inlinable @discardableResult
    public func detachWorkGroupPolicy(_ input: DetachWorkGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachWorkGroupPolicyResponse> {
        self.client.execute(action: "DetachWorkGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑工作组鉴权策略
    @inlinable @discardableResult
    public func detachWorkGroupPolicy(_ input: DetachWorkGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachWorkGroupPolicyResponse {
        try await self.client.execute(action: "DetachWorkGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑工作组鉴权策略
    @inlinable @discardableResult
    public func detachWorkGroupPolicy(workGroupId: Int64, policySet: [Policy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachWorkGroupPolicyResponse> {
        self.detachWorkGroupPolicy(.init(workGroupId: workGroupId, policySet: policySet), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑工作组鉴权策略
    @inlinable @discardableResult
    public func detachWorkGroupPolicy(workGroupId: Int64, policySet: [Policy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachWorkGroupPolicyResponse {
        try await self.detachWorkGroupPolicy(.init(workGroupId: workGroupId, policySet: policySet), region: region, logger: logger, on: eventLoop)
    }
}
