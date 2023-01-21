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

extension Cdb {
    /// DeleteAuditPolicy请求参数结构体
    public struct DeleteAuditPolicyRequest: TCRequestModel {
        /// 审计策略 ID。
        public let policyId: String

        /// 实例 ID。
        public let instanceId: String?

        public init(policyId: String, instanceId: String? = nil) {
            self.policyId = policyId
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case instanceId = "InstanceId"
        }
    }

    /// DeleteAuditPolicy返回参数结构体
    public struct DeleteAuditPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除审计策略
    ///
    /// 本接口(DeleteAuditPolicy)用于删除用户的审计策略。
    @inlinable @discardableResult
    public func deleteAuditPolicy(_ input: DeleteAuditPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditPolicyResponse> {
        self.client.execute(action: "DeleteAuditPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计策略
    ///
    /// 本接口(DeleteAuditPolicy)用于删除用户的审计策略。
    @inlinable @discardableResult
    public func deleteAuditPolicy(_ input: DeleteAuditPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditPolicyResponse {
        try await self.client.execute(action: "DeleteAuditPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计策略
    ///
    /// 本接口(DeleteAuditPolicy)用于删除用户的审计策略。
    @inlinable @discardableResult
    public func deleteAuditPolicy(policyId: String, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditPolicyResponse> {
        self.deleteAuditPolicy(DeleteAuditPolicyRequest(policyId: policyId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除审计策略
    ///
    /// 本接口(DeleteAuditPolicy)用于删除用户的审计策略。
    @inlinable @discardableResult
    public func deleteAuditPolicy(policyId: String, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditPolicyResponse {
        try await self.deleteAuditPolicy(DeleteAuditPolicyRequest(policyId: policyId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
