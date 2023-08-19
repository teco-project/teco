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

extension Ess {
    /// DeleteSealPolicies请求参数结构体
    public struct DeleteSealPoliciesRequest: TCRequest {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 印章授权编码数组。这个参数跟下面的SealId其中一个必填，另外一个可选填
        public let policyIds: [String]?

        /// 印章ID。这个参数跟上面的PolicyIds其中一个必填，另外一个可选填
        public let sealId: String?

        /// 待授权的员工ID
        public let userIds: [String]?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(operator: UserInfo, policyIds: [String]? = nil, sealId: String? = nil, userIds: [String]? = nil, agent: Agent? = nil) {
            self.operator = `operator`
            self.policyIds = policyIds
            self.sealId = sealId
            self.userIds = userIds
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case policyIds = "PolicyIds"
            case sealId = "SealId"
            case userIds = "UserIds"
            case agent = "Agent"
        }
    }

    /// DeleteSealPolicies返回参数结构体
    public struct DeleteSealPoliciesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销印章授权
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(_ input: DeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealPoliciesResponse> {
        self.client.execute(action: "DeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销印章授权
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(_ input: DeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealPoliciesResponse {
        try await self.client.execute(action: "DeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销印章授权
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(operator: UserInfo, policyIds: [String]? = nil, sealId: String? = nil, userIds: [String]? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealPoliciesResponse> {
        self.deleteSealPolicies(.init(operator: `operator`, policyIds: policyIds, sealId: sealId, userIds: userIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销印章授权
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(operator: UserInfo, policyIds: [String]? = nil, sealId: String? = nil, userIds: [String]? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealPoliciesResponse {
        try await self.deleteSealPolicies(.init(operator: `operator`, policyIds: policyIds, sealId: sealId, userIds: userIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
