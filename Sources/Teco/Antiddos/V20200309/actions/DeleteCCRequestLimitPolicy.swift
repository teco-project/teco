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

extension Antiddos {
    /// DeleteCCRequestLimitPolicy请求参数结构体
    public struct DeleteCCRequestLimitPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 策略Id
        public let policyId: String

        public init(instanceId: String, policyId: String) {
            self.instanceId = instanceId
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case policyId = "PolicyId"
        }
    }

    /// DeleteCCRequestLimitPolicy返回参数结构体
    public struct DeleteCCRequestLimitPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除CC频率限制策略
    @inlinable @discardableResult
    public func deleteCCRequestLimitPolicy(_ input: DeleteCCRequestLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCRequestLimitPolicyResponse> {
        self.client.execute(action: "DeleteCCRequestLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CC频率限制策略
    @inlinable @discardableResult
    public func deleteCCRequestLimitPolicy(_ input: DeleteCCRequestLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCRequestLimitPolicyResponse {
        try await self.client.execute(action: "DeleteCCRequestLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CC频率限制策略
    @inlinable @discardableResult
    public func deleteCCRequestLimitPolicy(instanceId: String, policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCRequestLimitPolicyResponse> {
        self.deleteCCRequestLimitPolicy(.init(instanceId: instanceId, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CC频率限制策略
    @inlinable @discardableResult
    public func deleteCCRequestLimitPolicy(instanceId: String, policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCRequestLimitPolicyResponse {
        try await self.deleteCCRequestLimitPolicy(.init(instanceId: instanceId, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
