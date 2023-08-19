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

extension Wedata {
    /// DescribeExecStrategy请求参数结构体
    public struct DescribeExecStrategyRequest: TCRequest {
        /// 规则组Id
        public let ruleGroupId: UInt64?

        /// 项目Id
        public let projectId: String?

        public init(ruleGroupId: UInt64? = nil, projectId: String? = nil) {
            self.ruleGroupId = ruleGroupId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case ruleGroupId = "RuleGroupId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeExecStrategy返回参数结构体
    public struct DescribeExecStrategyResponse: TCResponse {
        /// 规则组执行策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupExecStrategy?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询规则组执行策略
    @inlinable
    public func describeExecStrategy(_ input: DescribeExecStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExecStrategyResponse> {
        self.client.execute(action: "DescribeExecStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则组执行策略
    @inlinable
    public func describeExecStrategy(_ input: DescribeExecStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecStrategyResponse {
        try await self.client.execute(action: "DescribeExecStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则组执行策略
    @inlinable
    public func describeExecStrategy(ruleGroupId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExecStrategyResponse> {
        self.describeExecStrategy(.init(ruleGroupId: ruleGroupId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则组执行策略
    @inlinable
    public func describeExecStrategy(ruleGroupId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecStrategyResponse {
        try await self.describeExecStrategy(.init(ruleGroupId: ruleGroupId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
