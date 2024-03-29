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
    /// DescribeAlarmPolicies请求参数结构体
    public struct DescribeAlarmPoliciesRequest: TCPaginatedRequest {
        /// 固定值，为"monitor"
        public let module: String

        /// 页数，从 1 开始计数，默认 1
        public let pageNumber: Int64?

        /// 每页的数量，取值1~100，默认20
        public let pageSize: Int64?

        /// 按策略名称模糊搜索
        public let policyName: String?

        /// 根据监控类型过滤 不选默认查所有类型 "MT_QCE"=云产品监控
        public let monitorTypes: [String]?

        /// 根据命名空间过滤，不同策略类型的值详见
        /// [策略类型列表](https://cloud.tencent.com/document/product/248/50397)
        public let namespaces: [String]?

        /// 告警对象列表，JSON 字符串。外层数组，对应多个实例，内层为对象的维度。例如“云服务器-基础监控”可写为：
        /// `[ {"Dimensions": {"unInstanceId": "ins-qr8d555g"}}, {"Dimensions": {"unInstanceId": "ins-qr8d555h"}} ]`
        /// 具体也可以参考下方的示例 2。
        ///
        /// 不同云产品参数示例详见 [维度信息Dimensions列表](https://cloud.tencent.com/document/product/248/50397)
        ///
        /// 注意：如果NeedCorrespondence传入1，即需要返回策略与实例对应关系，请传入不多于20个告警对象维度，否则容易请求超时
        public let dimensions: String?

        /// 根据接收人搜索，可以使用“访问管理”的 [拉取子用户 ListUsers](https://cloud.tencent.com/document/product/598/34587) 接口获取用户列表 或 [查询子用户 GetUser](https://cloud.tencent.com/document/product/598/34590) 接口查询子用户详情，此处填入返回结果中的 `Uid` 字段
        public let receiverUids: [Int64]?

        /// 根据接收组搜索，可以使用“访问管理”的 [查询用户组列表 ListGroups](https://cloud.tencent.com/document/product/598/34589) 接口获取用户组列表 或 [列出用户关联的用户组 ListGroupsForUser](https://cloud.tencent.com/document/product/598/34588) 查询某个子用户所在的用户组列表 ，此处填入返回结果中的 `GroupId ` 字段
        public let receiverGroups: [Int64]?

        /// 根据默认策略筛选 不传展示全部策略 DEFAULT=展示默认策略 NOT_DEFAULT=展示非默认策略
        public let policyType: [String]?

        /// 排序字段，例如按照最后修改时间排序，Field: "UpdateTime"
        public let field: String?

        /// 排序顺序：升序：ASC  降序：DESC
        public let order: String?

        /// 策略所属项目的id数组，可在此页面查看
        /// [项目管理](https://console.cloud.tencent.com/project)
        public let projectIds: [Int64]?

        /// 通知模板的id列表，可查询通知模板列表获取。
        /// 可使用 [查询通知模板列表](https://cloud.tencent.com/document/product/248/51280) 接口查询。
        public let noticeIds: [String]?

        /// 根据触发条件筛选 不传展示全部策略 STATIC=展示静态阈值策略 DYNAMIC=展示动态阈值策略
        public let ruleTypes: [String]?

        /// 告警启停筛选，[1]：启用   [0]：停止，全部[0, 1]
        public let enable: [Int64]?

        /// 传 1 查询未配置通知规则的告警策略；不传或传其他数值，查询所有策略。
        public let notBindingNoticeRule: Int64?

        /// 实例分组id
        public let instanceGroupId: Int64?

        /// 是否需要策略与入参过滤维度参数的对应关系，1：是  0：否，默认为0
        public let needCorrespondence: Int64?

        /// 按照触发任务（例如弹性伸缩）过滤策略。最多10个
        public let triggerTasks: [AlarmPolicyTriggerTask]?

        /// 根据一键告警策略筛选 不传展示全部策略 ONECLICK=展示一键告警策略 NOT_ONECLICK=展示非一键告警策略
        public let oneClickPolicyType: [String]?

        /// 返回结果过滤掉绑定全部对象的策略，1代表需要过滤，0则无需过滤
        public let notBindAll: Int64?

        /// 返回结果过滤掉关联实例为实例分组的策略，1代表需要过滤，0则无需过滤
        public let notInstanceGroup: Int64?

        /// 策略根据标签过滤
        public let tags: [Tag]?

        /// prom实例id，自定义指标策略时会用到
        public let promInsId: String?

        /// 根据排班表搜索
        public let receiverOnCallFormIDs: [String]?

        public init(module: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, policyName: String? = nil, monitorTypes: [String]? = nil, namespaces: [String]? = nil, dimensions: String? = nil, receiverUids: [Int64]? = nil, receiverGroups: [Int64]? = nil, policyType: [String]? = nil, field: String? = nil, order: String? = nil, projectIds: [Int64]? = nil, noticeIds: [String]? = nil, ruleTypes: [String]? = nil, enable: [Int64]? = nil, notBindingNoticeRule: Int64? = nil, instanceGroupId: Int64? = nil, needCorrespondence: Int64? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, oneClickPolicyType: [String]? = nil, notBindAll: Int64? = nil, notInstanceGroup: Int64? = nil, tags: [Tag]? = nil, promInsId: String? = nil, receiverOnCallFormIDs: [String]? = nil) {
            self.module = module
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.policyName = policyName
            self.monitorTypes = monitorTypes
            self.namespaces = namespaces
            self.dimensions = dimensions
            self.receiverUids = receiverUids
            self.receiverGroups = receiverGroups
            self.policyType = policyType
            self.field = field
            self.order = order
            self.projectIds = projectIds
            self.noticeIds = noticeIds
            self.ruleTypes = ruleTypes
            self.enable = enable
            self.notBindingNoticeRule = notBindingNoticeRule
            self.instanceGroupId = instanceGroupId
            self.needCorrespondence = needCorrespondence
            self.triggerTasks = triggerTasks
            self.oneClickPolicyType = oneClickPolicyType
            self.notBindAll = notBindAll
            self.notInstanceGroup = notInstanceGroup
            self.tags = tags
            self.promInsId = promInsId
            self.receiverOnCallFormIDs = receiverOnCallFormIDs
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case policyName = "PolicyName"
            case monitorTypes = "MonitorTypes"
            case namespaces = "Namespaces"
            case dimensions = "Dimensions"
            case receiverUids = "ReceiverUids"
            case receiverGroups = "ReceiverGroups"
            case policyType = "PolicyType"
            case field = "Field"
            case order = "Order"
            case projectIds = "ProjectIds"
            case noticeIds = "NoticeIds"
            case ruleTypes = "RuleTypes"
            case enable = "Enable"
            case notBindingNoticeRule = "NotBindingNoticeRule"
            case instanceGroupId = "InstanceGroupId"
            case needCorrespondence = "NeedCorrespondence"
            case triggerTasks = "TriggerTasks"
            case oneClickPolicyType = "OneClickPolicyType"
            case notBindAll = "NotBindAll"
            case notInstanceGroup = "NotInstanceGroup"
            case tags = "Tags"
            case promInsId = "PromInsId"
            case receiverOnCallFormIDs = "ReceiverOnCallFormIDs"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlarmPoliciesResponse) -> DescribeAlarmPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(module: self.module, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, policyName: self.policyName, monitorTypes: self.monitorTypes, namespaces: self.namespaces, dimensions: self.dimensions, receiverUids: self.receiverUids, receiverGroups: self.receiverGroups, policyType: self.policyType, field: self.field, order: self.order, projectIds: self.projectIds, noticeIds: self.noticeIds, ruleTypes: self.ruleTypes, enable: self.enable, notBindingNoticeRule: self.notBindingNoticeRule, instanceGroupId: self.instanceGroupId, needCorrespondence: self.needCorrespondence, triggerTasks: self.triggerTasks, oneClickPolicyType: self.oneClickPolicyType, notBindAll: self.notBindAll, notInstanceGroup: self.notInstanceGroup, tags: self.tags, promInsId: self.promInsId, receiverOnCallFormIDs: self.receiverOnCallFormIDs)
        }
    }

    /// DescribeAlarmPolicies返回参数结构体
    public struct DescribeAlarmPoliciesResponse: TCPaginatedResponse {
        /// 策略总数
        public let totalCount: Int64

        /// 策略数组
        public let policies: [AlarmPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case policies = "Policies"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AlarmPolicy`` list from the paginated response.
        public func getItems() -> [AlarmPolicy] {
            self.policies
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable
    public func describeAlarmPolicies(_ input: DescribeAlarmPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmPoliciesResponse> {
        self.client.execute(action: "DescribeAlarmPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable
    public func describeAlarmPolicies(_ input: DescribeAlarmPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmPoliciesResponse {
        try await self.client.execute(action: "DescribeAlarmPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable
    public func describeAlarmPolicies(module: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, policyName: String? = nil, monitorTypes: [String]? = nil, namespaces: [String]? = nil, dimensions: String? = nil, receiverUids: [Int64]? = nil, receiverGroups: [Int64]? = nil, policyType: [String]? = nil, field: String? = nil, order: String? = nil, projectIds: [Int64]? = nil, noticeIds: [String]? = nil, ruleTypes: [String]? = nil, enable: [Int64]? = nil, notBindingNoticeRule: Int64? = nil, instanceGroupId: Int64? = nil, needCorrespondence: Int64? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, oneClickPolicyType: [String]? = nil, notBindAll: Int64? = nil, notInstanceGroup: Int64? = nil, tags: [Tag]? = nil, promInsId: String? = nil, receiverOnCallFormIDs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmPoliciesResponse> {
        self.describeAlarmPolicies(.init(module: module, pageNumber: pageNumber, pageSize: pageSize, policyName: policyName, monitorTypes: monitorTypes, namespaces: namespaces, dimensions: dimensions, receiverUids: receiverUids, receiverGroups: receiverGroups, policyType: policyType, field: field, order: order, projectIds: projectIds, noticeIds: noticeIds, ruleTypes: ruleTypes, enable: enable, notBindingNoticeRule: notBindingNoticeRule, instanceGroupId: instanceGroupId, needCorrespondence: needCorrespondence, triggerTasks: triggerTasks, oneClickPolicyType: oneClickPolicyType, notBindAll: notBindAll, notInstanceGroup: notInstanceGroup, tags: tags, promInsId: promInsId, receiverOnCallFormIDs: receiverOnCallFormIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable
    public func describeAlarmPolicies(module: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, policyName: String? = nil, monitorTypes: [String]? = nil, namespaces: [String]? = nil, dimensions: String? = nil, receiverUids: [Int64]? = nil, receiverGroups: [Int64]? = nil, policyType: [String]? = nil, field: String? = nil, order: String? = nil, projectIds: [Int64]? = nil, noticeIds: [String]? = nil, ruleTypes: [String]? = nil, enable: [Int64]? = nil, notBindingNoticeRule: Int64? = nil, instanceGroupId: Int64? = nil, needCorrespondence: Int64? = nil, triggerTasks: [AlarmPolicyTriggerTask]? = nil, oneClickPolicyType: [String]? = nil, notBindAll: Int64? = nil, notInstanceGroup: Int64? = nil, tags: [Tag]? = nil, promInsId: String? = nil, receiverOnCallFormIDs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmPoliciesResponse {
        try await self.describeAlarmPolicies(.init(module: module, pageNumber: pageNumber, pageSize: pageSize, policyName: policyName, monitorTypes: monitorTypes, namespaces: namespaces, dimensions: dimensions, receiverUids: receiverUids, receiverGroups: receiverGroups, policyType: policyType, field: field, order: order, projectIds: projectIds, noticeIds: noticeIds, ruleTypes: ruleTypes, enable: enable, notBindingNoticeRule: notBindingNoticeRule, instanceGroupId: instanceGroupId, needCorrespondence: needCorrespondence, triggerTasks: triggerTasks, oneClickPolicyType: oneClickPolicyType, notBindAll: notBindAll, notInstanceGroup: notInstanceGroup, tags: tags, promInsId: promInsId, receiverOnCallFormIDs: receiverOnCallFormIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable
    public func describeAlarmPoliciesPaginated(_ input: DescribeAlarmPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlarmPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmPolicies, logger: logger, on: eventLoop)
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    @inlinable @discardableResult
    public func describeAlarmPoliciesPaginated(_ input: DescribeAlarmPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlarmPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmPolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询告警策略列表（支持按实例等条件筛选）
    ///
    /// 查询告警策略列表
    ///
    /// - Returns: `AsyncSequence`s of ``AlarmPolicy`` and ``DescribeAlarmPoliciesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlarmPoliciesPaginator(_ input: DescribeAlarmPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlarmPoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlarmPolicies, logger: logger, on: eventLoop)
    }
}
