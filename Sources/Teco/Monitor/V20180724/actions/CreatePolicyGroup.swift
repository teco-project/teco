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

extension Monitor {
    /// CreatePolicyGroup请求参数结构体
    public struct CreatePolicyGroupRequest: TCRequestModel {
        /// 组策略名称
        public let groupName: String

        /// 固定值，为"monitor"
        public let module: String

        /// 策略组所属视图的名称，若通过模版创建，可不传入
        public let viewName: String?

        /// 策略组所属项目Id，会进行鉴权操作
        public let projectId: Int64?

        /// 模版策略组Id, 通过模版创建时才需要传
        public let conditionTempGroupId: Int64?

        /// 是否屏蔽策略组，0表示不屏蔽，1表示屏蔽。不填默认为0
        public let isShielded: Int64?

        /// 策略组的备注信息
        public let remark: String?

        /// 插入时间，戳格式为Unix时间戳，不填则按后台处理时间填充
        public let insertTime: Int64?

        /// 策略组中的阈值告警规则
        public let conditions: [CreatePolicyGroupCondition]?

        /// 策略组中的事件告警规则
        public let eventConditions: [CreatePolicyGroupEventCondition]?

        /// 是否为后端调用。当且仅当值为1时，后台拉取策略模版中的规则填充入Conditions以及EventConditions字段
        public let backEndCall: Int64?

        /// 指标告警规则的且或关系，0表示或规则(满足任意规则就告警)，1表示且规则(满足所有规则才告警)
        public let isUnionRule: Int64?

        public init(groupName: String, module: String, viewName: String? = nil, projectId: Int64? = nil, conditionTempGroupId: Int64? = nil, isShielded: Int64? = nil, remark: String? = nil, insertTime: Int64? = nil, conditions: [CreatePolicyGroupCondition]? = nil, eventConditions: [CreatePolicyGroupEventCondition]? = nil, backEndCall: Int64? = nil, isUnionRule: Int64? = nil) {
            self.groupName = groupName
            self.module = module
            self.viewName = viewName
            self.projectId = projectId
            self.conditionTempGroupId = conditionTempGroupId
            self.isShielded = isShielded
            self.remark = remark
            self.insertTime = insertTime
            self.conditions = conditions
            self.eventConditions = eventConditions
            self.backEndCall = backEndCall
            self.isUnionRule = isUnionRule
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case module = "Module"
            case viewName = "ViewName"
            case projectId = "ProjectId"
            case conditionTempGroupId = "ConditionTempGroupId"
            case isShielded = "IsShielded"
            case remark = "Remark"
            case insertTime = "InsertTime"
            case conditions = "Conditions"
            case eventConditions = "EventConditions"
            case backEndCall = "BackEndCall"
            case isUnionRule = "IsUnionRule"
        }
    }

    /// CreatePolicyGroup返回参数结构体
    public struct CreatePolicyGroupResponse: TCResponseModel {
        /// 创建成功的策略组Id
        public let groupId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 增加策略组
    @inlinable
    public func createPolicyGroup(_ input: CreatePolicyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePolicyGroupResponse> {
        self.client.execute(action: "CreatePolicyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加策略组
    @inlinable
    public func createPolicyGroup(_ input: CreatePolicyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePolicyGroupResponse {
        try await self.client.execute(action: "CreatePolicyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加策略组
    @inlinable
    public func createPolicyGroup(groupName: String, module: String, viewName: String? = nil, projectId: Int64? = nil, conditionTempGroupId: Int64? = nil, isShielded: Int64? = nil, remark: String? = nil, insertTime: Int64? = nil, conditions: [CreatePolicyGroupCondition]? = nil, eventConditions: [CreatePolicyGroupEventCondition]? = nil, backEndCall: Int64? = nil, isUnionRule: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePolicyGroupResponse> {
        self.createPolicyGroup(CreatePolicyGroupRequest(groupName: groupName, module: module, viewName: viewName, projectId: projectId, conditionTempGroupId: conditionTempGroupId, isShielded: isShielded, remark: remark, insertTime: insertTime, conditions: conditions, eventConditions: eventConditions, backEndCall: backEndCall, isUnionRule: isUnionRule), region: region, logger: logger, on: eventLoop)
    }

    /// 增加策略组
    @inlinable
    public func createPolicyGroup(groupName: String, module: String, viewName: String? = nil, projectId: Int64? = nil, conditionTempGroupId: Int64? = nil, isShielded: Int64? = nil, remark: String? = nil, insertTime: Int64? = nil, conditions: [CreatePolicyGroupCondition]? = nil, eventConditions: [CreatePolicyGroupEventCondition]? = nil, backEndCall: Int64? = nil, isUnionRule: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePolicyGroupResponse {
        try await self.createPolicyGroup(CreatePolicyGroupRequest(groupName: groupName, module: module, viewName: viewName, projectId: projectId, conditionTempGroupId: conditionTempGroupId, isShielded: isShielded, remark: remark, insertTime: insertTime, conditions: conditions, eventConditions: eventConditions, backEndCall: backEndCall, isUnionRule: isUnionRule), region: region, logger: logger, on: eventLoop)
    }
}
