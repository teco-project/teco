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
    /// CommitRuleGroupExecResult请求参数结构体
    public struct CommitRuleGroupExecResultRequest: TCRequest {
        /// preject id
        public let projectId: String

        /// rule group exec id
        public let ruleGroupExecId: UInt64

        /// group exec state
        public let ruleGroupState: String

        /// runner rule exec result list
        public let ruleExecResults: [RunnerRuleExecResult]

        public init(projectId: String, ruleGroupExecId: UInt64, ruleGroupState: String, ruleExecResults: [RunnerRuleExecResult]) {
            self.projectId = projectId
            self.ruleGroupExecId = ruleGroupExecId
            self.ruleGroupState = ruleGroupState
            self.ruleExecResults = ruleExecResults
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleGroupExecId = "RuleGroupExecId"
            case ruleGroupState = "RuleGroupState"
            case ruleExecResults = "RuleExecResults"
        }
    }

    /// CommitRuleGroupExecResult返回参数结构体
    public struct CommitRuleGroupExecResultResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 规则检测结果上报
    ///
    /// Runner 规则检测结果上报
    @inlinable
    public func commitRuleGroupExecResult(_ input: CommitRuleGroupExecResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitRuleGroupExecResultResponse> {
        self.client.execute(action: "CommitRuleGroupExecResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则检测结果上报
    ///
    /// Runner 规则检测结果上报
    @inlinable
    public func commitRuleGroupExecResult(_ input: CommitRuleGroupExecResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitRuleGroupExecResultResponse {
        try await self.client.execute(action: "CommitRuleGroupExecResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则检测结果上报
    ///
    /// Runner 规则检测结果上报
    @inlinable
    public func commitRuleGroupExecResult(projectId: String, ruleGroupExecId: UInt64, ruleGroupState: String, ruleExecResults: [RunnerRuleExecResult], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitRuleGroupExecResultResponse> {
        self.commitRuleGroupExecResult(.init(projectId: projectId, ruleGroupExecId: ruleGroupExecId, ruleGroupState: ruleGroupState, ruleExecResults: ruleExecResults), region: region, logger: logger, on: eventLoop)
    }

    /// 规则检测结果上报
    ///
    /// Runner 规则检测结果上报
    @inlinable
    public func commitRuleGroupExecResult(projectId: String, ruleGroupExecId: UInt64, ruleGroupState: String, ruleExecResults: [RunnerRuleExecResult], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitRuleGroupExecResultResponse {
        try await self.commitRuleGroupExecResult(.init(projectId: projectId, ruleGroupExecId: ruleGroupExecId, ruleGroupState: ruleGroupState, ruleExecResults: ruleExecResults), region: region, logger: logger, on: eventLoop)
    }
}
