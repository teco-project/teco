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
    /// 查询告警历史
    ///
    /// 查询告警历史
    /// 请注意，**如果使用子用户进行告警历史的查询，只能查询到被授权项目下的告警历史**，或不区分项目的产品的告警历史。如何对子账户授予项目的权限，请参考 [访问管理-项目与标签](https://cloud.tencent.com/document/product/598/32738)。
    @inlinable
    public func describeAlarmHistories(_ input: DescribeAlarmHistoriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlarmHistoriesResponse > {
        self.client.execute(action: "DescribeAlarmHistories", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询告警历史
    ///
    /// 查询告警历史
    /// 请注意，**如果使用子用户进行告警历史的查询，只能查询到被授权项目下的告警历史**，或不区分项目的产品的告警历史。如何对子账户授予项目的权限，请参考 [访问管理-项目与标签](https://cloud.tencent.com/document/product/598/32738)。
    @inlinable
    public func describeAlarmHistories(_ input: DescribeAlarmHistoriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmHistoriesResponse {
        try await self.client.execute(action: "DescribeAlarmHistories", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAlarmHistories请求参数结构体
    public struct DescribeAlarmHistoriesRequest: TCRequestModel {
        /// 固定值，为"monitor"
        public let module: String
        
        /// 页数，从 1 开始计数，默认 1
        public let pageNumber: Int64?
        
        /// 每页的数量，取值1~100，默认20
        public let pageSize: Int64?
        
        /// 默认按首次出现时间倒序排列 "ASC"=正序 "DESC"=逆序
        public let order: String?
        
        /// 起始时间，默认一天前的时间戳。对应 `FirstOccurTime` 告警首次出现时间，告警历史的 `FirstOccurTime` 晚于 `StartTime` 才可能被搜索到。
        public let startTime: Int64?
        
        /// 结束时间，默认当前时间戳。对应 `FirstOccurTime` 告警首次出现时间，告警历史的 `FirstOccurTime` 早于 `EndTime` 才可能被搜索到。
        public let endTime: Int64?
        
        /// 根据监控类型过滤，不选默认查所有类型。"MT_QCE"=云产品监控，支持的枚举值有："MT_QCE"=云产品监控；"MT_TAW"=应用性能观测；"MT_RUM"=前端性能监控；"MT_PROBE"=云拨测
        public let monitorTypes: [String]?
        
        /// 根据告警对象过滤 字符串模糊搜索
        public let alarmObject: String?
        
        /// 根据告警状态过滤 ALARM=未恢复 OK=已恢复 NO_CONF=已失效 NO_DATA=数据不足，不选默认查所有
        public let alarmStatus: [String]?
        
        /// 根据项目ID过滤，-1=无项目 0=默认项目
        /// 可在此页面查询 [项目管理](https://console.cloud.tencent.com/project)
        public let projectIds: [Int64]?
        
        /// 根据实例组ID过滤
        public let instanceGroupIds: [Int64]?
        
        /// 根据策略类型过滤，策略类型是监控类型之下的概念，在这里两者都需要传入，例如 `[{"MonitorType": "MT_QCE", "Namespace": "cvm_device"}]`
        /// 可使用 [查询所有名字空间 DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 接口查询
        public let namespaces: [MonitorTypeNamespace]?
        
        /// 根据指标名过滤
        public let metricNames: [String]?
        
        /// 根据策略名称模糊搜索
        public let policyName: String?
        
        /// 根据告警内容模糊搜索
        public let content: String?
        
        /// 根据接收人搜索，可以使用“访问管理”的 [拉取子用户 ListUsers](https://cloud.tencent.com/document/product/598/34587) 接口获取用户列表 或 [查询子用户 GetUser](https://cloud.tencent.com/document/product/598/34590) 接口查询子用户详情，此处填入返回结果中的 `Uid` 字段
        public let receiverUids: [Int64]?
        
        /// 根据接收组搜索，可以使用“访问管理”的 [查询用户组列表 ListGroups](https://cloud.tencent.com/document/product/598/34589) 接口获取用户组列表 或 [列出用户关联的用户组 ListGroupsForUser](https://cloud.tencent.com/document/product/598/34588) 查询某个子用户所在的用户组列表 ，此处填入返回结果中的 `GroupId ` 字段
        public let receiverGroups: [Int64]?
        
        /// 根据告警策略 Id 列表搜索
        public let policyIds: [String]?
        
        public init (module: String, pageNumber: Int64?, pageSize: Int64?, order: String?, startTime: Int64?, endTime: Int64?, monitorTypes: [String]?, alarmObject: String?, alarmStatus: [String]?, projectIds: [Int64]?, instanceGroupIds: [Int64]?, namespaces: [MonitorTypeNamespace]?, metricNames: [String]?, policyName: String?, content: String?, receiverUids: [Int64]?, receiverGroups: [Int64]?, policyIds: [String]?) {
            self.module = module
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.order = order
            self.startTime = startTime
            self.endTime = endTime
            self.monitorTypes = monitorTypes
            self.alarmObject = alarmObject
            self.alarmStatus = alarmStatus
            self.projectIds = projectIds
            self.instanceGroupIds = instanceGroupIds
            self.namespaces = namespaces
            self.metricNames = metricNames
            self.policyName = policyName
            self.content = content
            self.receiverUids = receiverUids
            self.receiverGroups = receiverGroups
            self.policyIds = policyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case order = "Order"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case monitorTypes = "MonitorTypes"
            case alarmObject = "AlarmObject"
            case alarmStatus = "AlarmStatus"
            case projectIds = "ProjectIds"
            case instanceGroupIds = "InstanceGroupIds"
            case namespaces = "Namespaces"
            case metricNames = "MetricNames"
            case policyName = "PolicyName"
            case content = "Content"
            case receiverUids = "ReceiverUids"
            case receiverGroups = "ReceiverGroups"
            case policyIds = "PolicyIds"
        }
    }
    
    /// DescribeAlarmHistories返回参数结构体
    public struct DescribeAlarmHistoriesResponse: TCResponseModel {
        /// 总数
        public let totalCount: Int64
        
        /// 告警历史列表
        public let histories: [AlarmHistory]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case histories = "Histories"
            case requestId = "RequestId"
        }
    }
}
