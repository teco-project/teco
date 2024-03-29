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

extension Monitor {
    /// ModifyAlarmPolicyCondition请求参数结构体
    public struct ModifyAlarmPolicyConditionRequest: TCRequest {
        /// 模块名，固定值 monitor
        public let module: String

        /// 告警策略 ID
        public let policyId: String

        /// 触发条件模板 Id，可不传
        public let conditionTemplateId: Int64?

        /// 指标触发条件
        public let condition: AlarmPolicyCondition?

        /// 事件触发条件
        public let eventCondition: AlarmPolicyEventCondition?

        /// 全局过滤条件
        public let filter: AlarmPolicyFilter?

        /// 聚合维度列表，指定按哪些维度 key 来做 group by
        public let groupBy: [String]?

        /// 日志告警创建请求参数信息
        public let logAlarmReqInfo: LogAlarmReq?

        /// 模板id，专供prom使用
        public let noticeIds: [String]?

        /// 启停状态，0=停用，1=启用
        public let enable: Int64?

        /// 专供prom策略名称
        public let policyName: String?

        /// 事件配置的告警
        public let ebSubject: String?

        public init(module: String, policyId: String, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, noticeIds: [String]? = nil, enable: Int64? = nil, policyName: String? = nil, ebSubject: String? = nil) {
            self.module = module
            self.policyId = policyId
            self.conditionTemplateId = conditionTemplateId
            self.condition = condition
            self.eventCondition = eventCondition
            self.filter = filter
            self.groupBy = groupBy
            self.logAlarmReqInfo = logAlarmReqInfo
            self.noticeIds = noticeIds
            self.enable = enable
            self.policyName = policyName
            self.ebSubject = ebSubject
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case conditionTemplateId = "ConditionTemplateId"
            case condition = "Condition"
            case eventCondition = "EventCondition"
            case filter = "Filter"
            case groupBy = "GroupBy"
            case logAlarmReqInfo = "LogAlarmReqInfo"
            case noticeIds = "NoticeIds"
            case enable = "Enable"
            case policyName = "PolicyName"
            case ebSubject = "EbSubject"
        }
    }

    /// ModifyAlarmPolicyCondition返回参数结构体
    public struct ModifyAlarmPolicyConditionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改告警策略触发条件
    @inlinable @discardableResult
    public func modifyAlarmPolicyCondition(_ input: ModifyAlarmPolicyConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyConditionResponse> {
        self.client.execute(action: "ModifyAlarmPolicyCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改告警策略触发条件
    @inlinable @discardableResult
    public func modifyAlarmPolicyCondition(_ input: ModifyAlarmPolicyConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyConditionResponse {
        try await self.client.execute(action: "ModifyAlarmPolicyCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改告警策略触发条件
    @inlinable @discardableResult
    public func modifyAlarmPolicyCondition(module: String, policyId: String, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, noticeIds: [String]? = nil, enable: Int64? = nil, policyName: String? = nil, ebSubject: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyConditionResponse> {
        self.modifyAlarmPolicyCondition(.init(module: module, policyId: policyId, conditionTemplateId: conditionTemplateId, condition: condition, eventCondition: eventCondition, filter: filter, groupBy: groupBy, logAlarmReqInfo: logAlarmReqInfo, noticeIds: noticeIds, enable: enable, policyName: policyName, ebSubject: ebSubject), region: region, logger: logger, on: eventLoop)
    }

    /// 修改告警策略触发条件
    @inlinable @discardableResult
    public func modifyAlarmPolicyCondition(module: String, policyId: String, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, noticeIds: [String]? = nil, enable: Int64? = nil, policyName: String? = nil, ebSubject: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyConditionResponse {
        try await self.modifyAlarmPolicyCondition(.init(module: module, policyId: policyId, conditionTemplateId: conditionTemplateId, condition: condition, eventCondition: eventCondition, filter: filter, groupBy: groupBy, logAlarmReqInfo: logAlarmReqInfo, noticeIds: noticeIds, enable: enable, policyName: policyName, ebSubject: ebSubject), region: region, logger: logger, on: eventLoop)
    }
}
