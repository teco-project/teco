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
    /// AttachUserPolicy请求参数结构体
    public struct AttachUserPolicyRequest: TCRequestModel {
        /// 策略 id
        public let policyId: UInt64

        /// 子账号 uin
        public let attachUin: UInt64

        public init(policyId: UInt64, attachUin: UInt64) {
            self.policyId = policyId
            self.attachUin = attachUin
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case attachUin = "AttachUin"
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

    /// 绑定策略到用户
    ///
    /// 本接口（AttachUserPolicy）可用于绑定到用户的策略。
    @inlinable @discardableResult
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachUserPolicyResponse> {
        self.client.execute(action: "AttachUserPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定策略到用户
    ///
    /// 本接口（AttachUserPolicy）可用于绑定到用户的策略。
    @inlinable @discardableResult
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachUserPolicyResponse {
        try await self.client.execute(action: "AttachUserPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定策略到用户
    ///
    /// 本接口（AttachUserPolicy）可用于绑定到用户的策略。
    @inlinable @discardableResult
    public func attachUserPolicy(policyId: UInt64, attachUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachUserPolicyResponse> {
        self.attachUserPolicy(.init(policyId: policyId, attachUin: attachUin), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定策略到用户
    ///
    /// 本接口（AttachUserPolicy）可用于绑定到用户的策略。
    @inlinable @discardableResult
    public func attachUserPolicy(policyId: UInt64, attachUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachUserPolicyResponse {
        try await self.attachUserPolicy(.init(policyId: policyId, attachUin: attachUin), region: region, logger: logger, on: eventLoop)
    }
}
