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

extension Cam {
    /// AttachGroupPolicy请求参数结构体
    public struct AttachGroupPolicyRequest: TCRequestModel {
        /// 策略 id
        public let policyId: UInt64

        /// 用户组 id
        public let attachGroupId: UInt64

        public init(policyId: UInt64, attachGroupId: UInt64) {
            self.policyId = policyId
            self.attachGroupId = attachGroupId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case attachGroupId = "AttachGroupId"
        }
    }

    /// AttachGroupPolicy返回参数结构体
    public struct AttachGroupPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定策略到用户组
    ///
    /// 本接口（AttachGroupPolicy）可用于绑定策略到用户组。
    @inlinable @discardableResult
    public func attachGroupPolicy(_ input: AttachGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachGroupPolicyResponse> {
        self.client.execute(action: "AttachGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定策略到用户组
    ///
    /// 本接口（AttachGroupPolicy）可用于绑定策略到用户组。
    @inlinable @discardableResult
    public func attachGroupPolicy(_ input: AttachGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachGroupPolicyResponse {
        try await self.client.execute(action: "AttachGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定策略到用户组
    ///
    /// 本接口（AttachGroupPolicy）可用于绑定策略到用户组。
    @inlinable @discardableResult
    public func attachGroupPolicy(policyId: UInt64, attachGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachGroupPolicyResponse> {
        self.attachGroupPolicy(.init(policyId: policyId, attachGroupId: attachGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定策略到用户组
    ///
    /// 本接口（AttachGroupPolicy）可用于绑定策略到用户组。
    @inlinable @discardableResult
    public func attachGroupPolicy(policyId: UInt64, attachGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachGroupPolicyResponse {
        try await self.attachGroupPolicy(.init(policyId: policyId, attachGroupId: attachGroupId), region: region, logger: logger, on: eventLoop)
    }
}
