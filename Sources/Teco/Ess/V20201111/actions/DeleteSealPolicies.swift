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

extension Ess {
    /// DeleteSealPolicies请求参数结构体
    public struct DeleteSealPoliciesRequest: TCRequestModel {
        /// 操作撤销的用户信息
        public let `operator`: UserInfo

        /// 印章授权编码数组。这个参数跟下面的SealId其中一个必填，另外一个可选填
        public let policyIds: [String]?

        /// 应用相关
        public let agent: Agent?

        /// 印章ID。这个参数跟上面的PolicyIds其中一个必填，另外一个可选填
        public let sealId: String?

        /// 待授权的员工ID
        public let userIds: [String]?

        public init(operator: UserInfo, policyIds: [String]? = nil, agent: Agent? = nil, sealId: String? = nil, userIds: [String]? = nil) {
            self.operator = `operator`
            self.policyIds = policyIds
            self.agent = agent
            self.sealId = sealId
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case policyIds = "PolicyIds"
            case agent = "Agent"
            case sealId = "SealId"
            case userIds = "UserIds"
        }
    }

    /// DeleteSealPolicies返回参数结构体
    public struct DeleteSealPoliciesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销员工的印章权限
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(_ input: DeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealPoliciesResponse> {
        self.client.execute(action: "DeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销员工的印章权限
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(_ input: DeleteSealPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealPoliciesResponse {
        try await self.client.execute(action: "DeleteSealPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销员工的印章权限
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(operator: UserInfo, policyIds: [String]? = nil, agent: Agent? = nil, sealId: String? = nil, userIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealPoliciesResponse> {
        self.deleteSealPolicies(.init(operator: `operator`, policyIds: policyIds, agent: agent, sealId: sealId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销员工的印章权限
    ///
    /// 撤销员工持有的印章权限
    @inlinable @discardableResult
    public func deleteSealPolicies(operator: UserInfo, policyIds: [String]? = nil, agent: Agent? = nil, sealId: String? = nil, userIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealPoliciesResponse {
        try await self.deleteSealPolicies(.init(operator: `operator`, policyIds: policyIds, agent: agent, sealId: sealId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }
}
