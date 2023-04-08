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

import TecoCore

extension Gaap {
    /// DeleteSecurityPolicy请求参数结构体
    public struct DeleteSecurityPolicyRequest: TCRequestModel {
        /// 策略ID
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// DeleteSecurityPolicy返回参数结构体
    public struct DeleteSecurityPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全策略
    @inlinable @discardableResult
    public func deleteSecurityPolicy(_ input: DeleteSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityPolicyResponse> {
        self.client.execute(action: "DeleteSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全策略
    @inlinable @discardableResult
    public func deleteSecurityPolicy(_ input: DeleteSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityPolicyResponse {
        try await self.client.execute(action: "DeleteSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全策略
    @inlinable @discardableResult
    public func deleteSecurityPolicy(policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityPolicyResponse> {
        self.deleteSecurityPolicy(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全策略
    @inlinable @discardableResult
    public func deleteSecurityPolicy(policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityPolicyResponse {
        try await self.deleteSecurityPolicy(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
