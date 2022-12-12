//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// CreateRecordingRule请求参数结构体
    public struct CreateRecordingRuleRequest: TCRequestModel {
        /// 聚合规则名称
        public let name: String
        
        /// 聚合规则组内容，格式为 yaml
        public let group: String
        
        /// Prometheus 实例 ID
        public let instanceId: String
        
        /// 规则状态码，取值如下：
        /// <li>1=RuleDeleted</li>
        /// <li>2=RuleEnabled</li>
        /// <li>3=RuleDisabled</li>
        /// 默认状态码为 2 启用。
        public let ruleState: Int64?
        
        public init (name: String, group: String, instanceId: String, ruleState: Int64? = nil) {
            self.name = name
            self.group = group
            self.instanceId = instanceId
            self.ruleState = ruleState
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case group = "Group"
            case instanceId = "InstanceId"
            case ruleState = "RuleState"
        }
    }
    
    /// CreateRecordingRule返回参数结构体
    public struct CreateRecordingRuleResponse: TCResponseModel {
        /// 规则 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建预聚合规则
    ///
    /// 创建 Prometheus 的预聚合规则
    @inlinable
    public func createRecordingRule(_ input: CreateRecordingRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRecordingRuleResponse > {
        self.client.execute(action: "CreateRecordingRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建预聚合规则
    ///
    /// 创建 Prometheus 的预聚合规则
    @inlinable
    public func createRecordingRule(_ input: CreateRecordingRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordingRuleResponse {
        try await self.client.execute(action: "CreateRecordingRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
