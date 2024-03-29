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
    /// DescribeRuleExecHistory请求参数结构体
    public struct DescribeRuleExecHistoryRequest: TCRequest {
        /// 规则Id
        public let ruleId: UInt64?

        /// 项目Id
        public let projectId: String?

        public init(ruleId: UInt64? = nil, projectId: String? = nil) {
            self.ruleId = ruleId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRuleExecHistory返回参数结构体
    public struct DescribeRuleExecHistoryResponse: TCResponse {
        /// 规则执行结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [RuleExecResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询规则执行历史， 最近30条
    @inlinable
    public func describeRuleExecHistory(_ input: DescribeRuleExecHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecHistoryResponse> {
        self.client.execute(action: "DescribeRuleExecHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则执行历史， 最近30条
    @inlinable
    public func describeRuleExecHistory(_ input: DescribeRuleExecHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecHistoryResponse {
        try await self.client.execute(action: "DescribeRuleExecHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则执行历史， 最近30条
    @inlinable
    public func describeRuleExecHistory(ruleId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecHistoryResponse> {
        self.describeRuleExecHistory(.init(ruleId: ruleId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则执行历史， 最近30条
    @inlinable
    public func describeRuleExecHistory(ruleId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecHistoryResponse {
        try await self.describeRuleExecHistory(.init(ruleId: ruleId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
