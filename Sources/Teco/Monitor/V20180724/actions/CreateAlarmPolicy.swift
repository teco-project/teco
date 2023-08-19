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
    /// CreateAlarmPolicy请求参数结构体
    public struct CreateAlarmPolicyRequest: TCRequest {
        /// 固定值，为"monitor"
        public let module: String

        /// 策略名称，不超过20字符
        public let policyName: String

        /// 监控类型 MT_QCE=云产品监控
        public let monitorType: String

        /// 告警策略类型，由 [DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 获得。对于云产品监控，取接口出参的 QceNamespacesNew.N.Id，例如 cvm_device
        public let namespace: String

        /// 备注，不超过100字符，仅支持中英文、数字、下划线、-
        public let remark: String?

        /// 是否启用 0=停用 1=启用，可不传 默认为1
        public let enable: Int64?

        /// 项目 Id，对于区分项目的产品必须传入非 -1 的值。 -1=无项目 0=默认项目，如不传 默认为 -1。支持的项目 Id 可以在控制台 [账号中心-项目管理](https://console.cloud.tencent.com/project) 中查看。
        public let projectId: Int64?

        /// 触发条件模板 Id，该参数与 Condition 参数二选一。如果策略绑定触发条件模板，则传该参数；否则不传该参数，而是传 Condition 参数。触发条件模板 Id 可以从 [DescribeConditionsTemplateList](https://cloud.tencent.com/document/api/248/70250) 接口获取。
        public let conditionTemplateId: Int64?

        /// 指标触发条件，支持的指标可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        public let condition: AlarmPolicyCondition?

        /// 事件触发条件，支持的事件可以从 [DescribeAlarmEvents](https://cloud.tencent.com/document/product/248/51284) 查询。
        public let eventCondition: AlarmPolicyEventCondition?

        /// 通知规则 Id 列表，由 [DescribeAlarmNotices](https://cloud.tencent.com/document/product/248/51280) 获得
        public let noticeIds: [String]?

        /// 触发任务列表
        public let triggerTasks: [AlarmPolicyTriggerTask]?

        /// 全局过滤条件
        public let filter: AlarmPolicyFilter?

        /// 聚合维度列表，指定按哪些维度 key 来做 group by
        public let groupBy: [String]?

        /// 模板绑定的标签
        public let tags: [Tag]?

        /// 日志告警信息
        public let logAlarmReqInfo: LogAlarmReq?

        /// 告警分级通知规则配置
        public let hierarchicalNotices: [AlarmHierarchicalNotice]?

        /// 迁移策略专用字段，0-走鉴权逻辑，1-跳过鉴权逻辑
        public let migrateFlag: Int64?

        /// 事件配置的告警
        public let ebSubject: String?

        public init(module: String, policyName: String, monitorType: String, namespace: String, remark: String? = nil, enable: Int64? = nil, projectId: Int64? = nil, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, noticeIds: [String]? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, tags: [Tag]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, hierarchicalNotices: [AlarmHierarchicalNotice]? = nil, migrateFlag: Int64? = nil, ebSubject: String? = nil) {
            self.module = module
            self.policyName = policyName
            self.monitorType = monitorType
            self.namespace = namespace
            self.remark = remark
            self.enable = enable
            self.projectId = projectId
            self.conditionTemplateId = conditionTemplateId
            self.condition = condition
            self.eventCondition = eventCondition
            self.noticeIds = noticeIds
            self.triggerTasks = triggerTasks
            self.filter = filter
            self.groupBy = groupBy
            self.tags = tags
            self.logAlarmReqInfo = logAlarmReqInfo
            self.hierarchicalNotices = hierarchicalNotices
            self.migrateFlag = migrateFlag
            self.ebSubject = ebSubject
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyName = "PolicyName"
            case monitorType = "MonitorType"
            case namespace = "Namespace"
            case remark = "Remark"
            case enable = "Enable"
            case projectId = "ProjectId"
            case conditionTemplateId = "ConditionTemplateId"
            case condition = "Condition"
            case eventCondition = "EventCondition"
            case noticeIds = "NoticeIds"
            case triggerTasks = "TriggerTasks"
            case filter = "Filter"
            case groupBy = "GroupBy"
            case tags = "Tags"
            case logAlarmReqInfo = "LogAlarmReqInfo"
            case hierarchicalNotices = "HierarchicalNotices"
            case migrateFlag = "MigrateFlag"
            case ebSubject = "EbSubject"
        }
    }

    /// CreateAlarmPolicy返回参数结构体
    public struct CreateAlarmPolicyResponse: TCResponse {
        /// 告警策略 ID
        public let policyId: String

        /// 可用于实例、实例组的绑定和解绑接口（[BindingPolicyObject](https://cloud.tencent.com/document/product/248/40421)、[UnBindingAllPolicyObject](https://cloud.tencent.com/document/product/248/40568)、[UnBindingPolicyObject](https://cloud.tencent.com/document/product/248/40567)）的策略 ID
        public let originId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case originId = "OriginId"
            case requestId = "RequestId"
        }
    }

    /// 创建告警策略
    @inlinable
    public func createAlarmPolicy(_ input: CreateAlarmPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmPolicyResponse> {
        self.client.execute(action: "CreateAlarmPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警策略
    @inlinable
    public func createAlarmPolicy(_ input: CreateAlarmPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmPolicyResponse {
        try await self.client.execute(action: "CreateAlarmPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警策略
    @inlinable
    public func createAlarmPolicy(module: String, policyName: String, monitorType: String, namespace: String, remark: String? = nil, enable: Int64? = nil, projectId: Int64? = nil, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, noticeIds: [String]? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, tags: [Tag]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, hierarchicalNotices: [AlarmHierarchicalNotice]? = nil, migrateFlag: Int64? = nil, ebSubject: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmPolicyResponse> {
        self.createAlarmPolicy(.init(module: module, policyName: policyName, monitorType: monitorType, namespace: namespace, remark: remark, enable: enable, projectId: projectId, conditionTemplateId: conditionTemplateId, condition: condition, eventCondition: eventCondition, noticeIds: noticeIds, triggerTasks: triggerTasks, filter: filter, groupBy: groupBy, tags: tags, logAlarmReqInfo: logAlarmReqInfo, hierarchicalNotices: hierarchicalNotices, migrateFlag: migrateFlag, ebSubject: ebSubject), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警策略
    @inlinable
    public func createAlarmPolicy(module: String, policyName: String, monitorType: String, namespace: String, remark: String? = nil, enable: Int64? = nil, projectId: Int64? = nil, conditionTemplateId: Int64? = nil, condition: AlarmPolicyCondition? = nil, eventCondition: AlarmPolicyEventCondition? = nil, noticeIds: [String]? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, filter: AlarmPolicyFilter? = nil, groupBy: [String]? = nil, tags: [Tag]? = nil, logAlarmReqInfo: LogAlarmReq? = nil, hierarchicalNotices: [AlarmHierarchicalNotice]? = nil, migrateFlag: Int64? = nil, ebSubject: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmPolicyResponse {
        try await self.createAlarmPolicy(.init(module: module, policyName: policyName, monitorType: monitorType, namespace: namespace, remark: remark, enable: enable, projectId: projectId, conditionTemplateId: conditionTemplateId, condition: condition, eventCondition: eventCondition, noticeIds: noticeIds, triggerTasks: triggerTasks, filter: filter, groupBy: groupBy, tags: tags, logAlarmReqInfo: logAlarmReqInfo, hierarchicalNotices: hierarchicalNotices, migrateFlag: migrateFlag, ebSubject: ebSubject), region: region, logger: logger, on: eventLoop)
    }
}
