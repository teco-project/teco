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

extension Wedata {
    /// CommitRuleGroupTask请求参数结构体
    public struct CommitRuleGroupTaskRequest: TCRequestModel {
        /// 规则组ID
        public let ruleGroupId: UInt64?

        /// 触发类型 1.手动触发 2.调度事中触发 3.周期调度触发
        public let triggerType: UInt64?

        /// 规则配置列表
        public let execRuleConfig: [RuleConfig]?

        /// 执行配置
        public let execConfig: RuleExecConfig?

        /// 项目ID
        public let projectId: String?

        public init(ruleGroupId: UInt64? = nil, triggerType: UInt64? = nil, execRuleConfig: [RuleConfig]? = nil, execConfig: RuleExecConfig? = nil, projectId: String? = nil) {
            self.ruleGroupId = ruleGroupId
            self.triggerType = triggerType
            self.execRuleConfig = execRuleConfig
            self.execConfig = execConfig
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case ruleGroupId = "RuleGroupId"
            case triggerType = "TriggerType"
            case execRuleConfig = "ExecRuleConfig"
            case execConfig = "ExecConfig"
            case projectId = "ProjectId"
        }
    }

    /// CommitRuleGroupTask返回参数结构体
    public struct CommitRuleGroupTaskResponse: TCResponseModel {
        /// 规则组执行id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupExecResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 提交规则组运行任务接口
    @inlinable
    public func commitRuleGroupTask(_ input: CommitRuleGroupTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitRuleGroupTaskResponse> {
        self.client.execute(action: "CommitRuleGroupTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交规则组运行任务接口
    @inlinable
    public func commitRuleGroupTask(_ input: CommitRuleGroupTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitRuleGroupTaskResponse {
        try await self.client.execute(action: "CommitRuleGroupTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交规则组运行任务接口
    @inlinable
    public func commitRuleGroupTask(ruleGroupId: UInt64? = nil, triggerType: UInt64? = nil, execRuleConfig: [RuleConfig]? = nil, execConfig: RuleExecConfig? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitRuleGroupTaskResponse> {
        let input = CommitRuleGroupTaskRequest(ruleGroupId: ruleGroupId, triggerType: triggerType, execRuleConfig: execRuleConfig, execConfig: execConfig, projectId: projectId)
        return self.client.execute(action: "CommitRuleGroupTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交规则组运行任务接口
    @inlinable
    public func commitRuleGroupTask(ruleGroupId: UInt64? = nil, triggerType: UInt64? = nil, execRuleConfig: [RuleConfig]? = nil, execConfig: RuleExecConfig? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitRuleGroupTaskResponse {
        let input = CommitRuleGroupTaskRequest(ruleGroupId: ruleGroupId, triggerType: triggerType, execRuleConfig: execRuleConfig, execConfig: execConfig, projectId: projectId)
        return try await self.client.execute(action: "CommitRuleGroupTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
