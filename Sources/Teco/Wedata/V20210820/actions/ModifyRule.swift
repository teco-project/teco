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

import TecoCore

extension Wedata {
    /// ModifyRule请求参数结构体
    public struct ModifyRuleRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String?

        /// 规则ID
        public let ruleId: UInt64?

        /// 规则组ID
        public let ruleGroupId: UInt64?

        /// 规则名称
        public let name: String?

        /// 数据表ID
        public let tableId: String?

        /// 规则模板ID
        public let ruleTemplateId: UInt64?

        /// 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        public let type: UInt64?

        /// 规则所属质量维度（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        public let qualityDim: UInt64?

        /// 源字段详细类型，int、string
        public let sourceObjectDataTypeName: String?

        /// 源字段名称
        public let sourceObjectValue: String?

        /// 检测范围 1.全表   2.条件扫描
        public let conditionType: UInt64?

        /// 条件扫描WHERE条件表达式
        public let conditionExpression: String?

        /// 自定义SQL
        public let customSql: String?

        /// 报警触发条件
        public let compareRule: CompareRule?

        /// 报警触发级别 1.低, 2.中, 3.高
        public let alarmLevel: UInt64?

        /// 规则描述
        public let description: String?

        /// 目标库Id
        public let targetDatabaseId: String?

        /// 目标表Id
        public let targetTableId: String?

        /// 目标过滤条件表达式
        public let targetConditionExpr: String?

        /// 源字段与目标字段关联条件on表达式
        public let relConditionExpr: String?

        /// 自定义模版sql表达式字段替换参数
        public let fieldConfig: RuleFieldConfig?

        /// 目标字段名称  CITY
        public let targetObjectValue: String?

        public init(projectId: String? = nil, ruleId: UInt64? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, tableId: String? = nil, ruleTemplateId: UInt64? = nil, type: UInt64? = nil, qualityDim: UInt64? = nil, sourceObjectDataTypeName: String? = nil, sourceObjectValue: String? = nil, conditionType: UInt64? = nil, conditionExpression: String? = nil, customSql: String? = nil, compareRule: CompareRule? = nil, alarmLevel: UInt64? = nil, description: String? = nil, targetDatabaseId: String? = nil, targetTableId: String? = nil, targetConditionExpr: String? = nil, relConditionExpr: String? = nil, fieldConfig: RuleFieldConfig? = nil, targetObjectValue: String? = nil) {
            self.projectId = projectId
            self.ruleId = ruleId
            self.ruleGroupId = ruleGroupId
            self.name = name
            self.tableId = tableId
            self.ruleTemplateId = ruleTemplateId
            self.type = type
            self.qualityDim = qualityDim
            self.sourceObjectDataTypeName = sourceObjectDataTypeName
            self.sourceObjectValue = sourceObjectValue
            self.conditionType = conditionType
            self.conditionExpression = conditionExpression
            self.customSql = customSql
            self.compareRule = compareRule
            self.alarmLevel = alarmLevel
            self.description = description
            self.targetDatabaseId = targetDatabaseId
            self.targetTableId = targetTableId
            self.targetConditionExpr = targetConditionExpr
            self.relConditionExpr = relConditionExpr
            self.fieldConfig = fieldConfig
            self.targetObjectValue = targetObjectValue
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleId = "RuleId"
            case ruleGroupId = "RuleGroupId"
            case name = "Name"
            case tableId = "TableId"
            case ruleTemplateId = "RuleTemplateId"
            case type = "Type"
            case qualityDim = "QualityDim"
            case sourceObjectDataTypeName = "SourceObjectDataTypeName"
            case sourceObjectValue = "SourceObjectValue"
            case conditionType = "ConditionType"
            case conditionExpression = "ConditionExpression"
            case customSql = "CustomSql"
            case compareRule = "CompareRule"
            case alarmLevel = "AlarmLevel"
            case description = "Description"
            case targetDatabaseId = "TargetDatabaseId"
            case targetTableId = "TargetTableId"
            case targetConditionExpr = "TargetConditionExpr"
            case relConditionExpr = "RelConditionExpr"
            case fieldConfig = "FieldConfig"
            case targetObjectValue = "TargetObjectValue"
        }
    }

    /// ModifyRule返回参数结构体
    public struct ModifyRuleResponse: TCResponseModel {
        /// 是否更新成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 更新质量规则接口
    @inlinable
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新质量规则接口
    @inlinable
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新质量规则接口
    @inlinable
    public func modifyRule(projectId: String? = nil, ruleId: UInt64? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, tableId: String? = nil, ruleTemplateId: UInt64? = nil, type: UInt64? = nil, qualityDim: UInt64? = nil, sourceObjectDataTypeName: String? = nil, sourceObjectValue: String? = nil, conditionType: UInt64? = nil, conditionExpression: String? = nil, customSql: String? = nil, compareRule: CompareRule? = nil, alarmLevel: UInt64? = nil, description: String? = nil, targetDatabaseId: String? = nil, targetTableId: String? = nil, targetConditionExpr: String? = nil, relConditionExpr: String? = nil, fieldConfig: RuleFieldConfig? = nil, targetObjectValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.modifyRule(.init(projectId: projectId, ruleId: ruleId, ruleGroupId: ruleGroupId, name: name, tableId: tableId, ruleTemplateId: ruleTemplateId, type: type, qualityDim: qualityDim, sourceObjectDataTypeName: sourceObjectDataTypeName, sourceObjectValue: sourceObjectValue, conditionType: conditionType, conditionExpression: conditionExpression, customSql: customSql, compareRule: compareRule, alarmLevel: alarmLevel, description: description, targetDatabaseId: targetDatabaseId, targetTableId: targetTableId, targetConditionExpr: targetConditionExpr, relConditionExpr: relConditionExpr, fieldConfig: fieldConfig, targetObjectValue: targetObjectValue), region: region, logger: logger, on: eventLoop)
    }

    /// 更新质量规则接口
    @inlinable
    public func modifyRule(projectId: String? = nil, ruleId: UInt64? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, tableId: String? = nil, ruleTemplateId: UInt64? = nil, type: UInt64? = nil, qualityDim: UInt64? = nil, sourceObjectDataTypeName: String? = nil, sourceObjectValue: String? = nil, conditionType: UInt64? = nil, conditionExpression: String? = nil, customSql: String? = nil, compareRule: CompareRule? = nil, alarmLevel: UInt64? = nil, description: String? = nil, targetDatabaseId: String? = nil, targetTableId: String? = nil, targetConditionExpr: String? = nil, relConditionExpr: String? = nil, fieldConfig: RuleFieldConfig? = nil, targetObjectValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.modifyRule(.init(projectId: projectId, ruleId: ruleId, ruleGroupId: ruleGroupId, name: name, tableId: tableId, ruleTemplateId: ruleTemplateId, type: type, qualityDim: qualityDim, sourceObjectDataTypeName: sourceObjectDataTypeName, sourceObjectValue: sourceObjectValue, conditionType: conditionType, conditionExpression: conditionExpression, customSql: customSql, compareRule: compareRule, alarmLevel: alarmLevel, description: description, targetDatabaseId: targetDatabaseId, targetTableId: targetTableId, targetConditionExpr: targetConditionExpr, relConditionExpr: relConditionExpr, fieldConfig: fieldConfig, targetObjectValue: targetObjectValue), region: region, logger: logger, on: eventLoop)
    }
}
