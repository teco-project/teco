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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dlc {
    /// UpdateRowFilter请求参数结构体
    public struct UpdateRowFilterRequest: TCRequestModel {
        /// 行过滤策略的id，此值可以通过DescribeUserInfo或者DescribeWorkGroupInfo接口获取
        public let policyId: Int64

        /// 新的过滤策略。
        public let policy: Policy

        public init(policyId: Int64, policy: Policy) {
            self.policyId = policyId
            self.policy = policy
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policy = "Policy"
        }
    }

    /// UpdateRowFilter返回参数结构体
    public struct UpdateRowFilterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新行过滤规则
    ///
    /// 此接口用于更新行过滤规则。注意只能更新过滤规则，不能更新规格对象catalog，database和table。
    @inlinable @discardableResult
    public func updateRowFilter(_ input: UpdateRowFilterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRowFilterResponse> {
        self.client.execute(action: "UpdateRowFilter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新行过滤规则
    ///
    /// 此接口用于更新行过滤规则。注意只能更新过滤规则，不能更新规格对象catalog，database和table。
    @inlinable @discardableResult
    public func updateRowFilter(_ input: UpdateRowFilterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRowFilterResponse {
        try await self.client.execute(action: "UpdateRowFilter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新行过滤规则
    ///
    /// 此接口用于更新行过滤规则。注意只能更新过滤规则，不能更新规格对象catalog，database和table。
    @inlinable @discardableResult
    public func updateRowFilter(policyId: Int64, policy: Policy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRowFilterResponse> {
        self.updateRowFilter(.init(policyId: policyId, policy: policy), region: region, logger: logger, on: eventLoop)
    }

    /// 更新行过滤规则
    ///
    /// 此接口用于更新行过滤规则。注意只能更新过滤规则，不能更新规格对象catalog，database和table。
    @inlinable @discardableResult
    public func updateRowFilter(policyId: Int64, policy: Policy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRowFilterResponse {
        try await self.updateRowFilter(.init(policyId: policyId, policy: policy), region: region, logger: logger, on: eventLoop)
    }
}
