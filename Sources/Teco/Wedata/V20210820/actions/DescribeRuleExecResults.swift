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
    /// DescribeRuleExecResults请求参数结构体
    public struct DescribeRuleExecResultsRequest: TCRequest {
        /// 规则组执行Id
        public let ruleGroupExecId: UInt64?

        /// 项目Id
        public let projectId: String?

        public init(ruleGroupExecId: UInt64? = nil, projectId: String? = nil) {
            self.ruleGroupExecId = ruleGroupExecId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case ruleGroupExecId = "RuleGroupExecId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRuleExecResults返回参数结构体
    public struct DescribeRuleExecResultsResponse: TCResponse {
        /// 规则执行结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleExecResultPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 规则执行结果列表查询
    @inlinable
    public func describeRuleExecResults(_ input: DescribeRuleExecResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecResultsResponse> {
        self.client.execute(action: "DescribeRuleExecResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则执行结果列表查询
    @inlinable
    public func describeRuleExecResults(_ input: DescribeRuleExecResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecResultsResponse {
        try await self.client.execute(action: "DescribeRuleExecResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则执行结果列表查询
    @inlinable
    public func describeRuleExecResults(ruleGroupExecId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecResultsResponse> {
        self.describeRuleExecResults(.init(ruleGroupExecId: ruleGroupExecId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 规则执行结果列表查询
    @inlinable
    public func describeRuleExecResults(ruleGroupExecId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecResultsResponse {
        try await self.describeRuleExecResults(.init(ruleGroupExecId: ruleGroupExecId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
