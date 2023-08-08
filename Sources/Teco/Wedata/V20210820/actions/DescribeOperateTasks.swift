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
    /// DescribeOperateTasks请求参数结构体
    public struct DescribeOperateTasksRequest: TCRequestModel {
        /// 项目id
        public let projectId: String

        /// 文件夹id，多个文件夹以逗号分隔
        public let folderIdList: String?

        /// 工作流id，多个工作流id之间以英文字符逗号分隔
        public let workFlowIdList: String?

        /// 工作流名称，多个工作流名称之间以英文字符逗号分隔
        public let workFlowNameList: String?

        /// 任务名称，多个任务名称之间以英文字符逗号分隔
        public let taskNameList: String?

        /// 任务id，多个任务id之间以英文字符逗号分隔
        public let taskIdList: String?

        /// 页号
        public let pageNumber: String?

        /// 分页大小
        public let pageSize: String?

        /// 排序字段，支持字段为FirstSubmitTime和FirstRunTime，标识最近提交和首次执行事件
        public let sortItem: String?

        /// 排序类型。两种取值 DESC、ASC
        public let sortType: String?

        /// 责任人，多个责任人之间以英文字符逗号分隔
        public let inChargeList: String?

        /// 任务类型Id字符串，多个任务类型id之间以英文字符逗号分隔
        public let taskTypeIdList: String?

        /// 任务状态字符串，多个任务状态之间以英文字符逗号分隔
        public let statusList: String?

        /// 任务周期类型字符串，多个任务周期之间以英文字符逗号分隔
        public let taskCycleUnitList: String?

        /// 任务所属产品类型
        public let productNameList: String?

        /// 数据源id或（仅针对离线同步任务）来源数据源id
        public let sourceServiceId: String?

        /// 数据源类型或（仅针对离线同步任务）来源数据源类型
        public let sourceServiceType: String?

        /// （仅针对离线同步任务）目标数据源id
        public let targetServiceId: String?

        /// （仅针对离线同步任务）目标数据源类型
        public let targetServiceType: String?

        /// 告警类型，多个类型以逗号分隔
        public let alarmType: String?

        public init(projectId: String, folderIdList: String? = nil, workFlowIdList: String? = nil, workFlowNameList: String? = nil, taskNameList: String? = nil, taskIdList: String? = nil, pageNumber: String? = nil, pageSize: String? = nil, sortItem: String? = nil, sortType: String? = nil, inChargeList: String? = nil, taskTypeIdList: String? = nil, statusList: String? = nil, taskCycleUnitList: String? = nil, productNameList: String? = nil, sourceServiceId: String? = nil, sourceServiceType: String? = nil, targetServiceId: String? = nil, targetServiceType: String? = nil, alarmType: String? = nil) {
            self.projectId = projectId
            self.folderIdList = folderIdList
            self.workFlowIdList = workFlowIdList
            self.workFlowNameList = workFlowNameList
            self.taskNameList = taskNameList
            self.taskIdList = taskIdList
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.sortItem = sortItem
            self.sortType = sortType
            self.inChargeList = inChargeList
            self.taskTypeIdList = taskTypeIdList
            self.statusList = statusList
            self.taskCycleUnitList = taskCycleUnitList
            self.productNameList = productNameList
            self.sourceServiceId = sourceServiceId
            self.sourceServiceType = sourceServiceType
            self.targetServiceId = targetServiceId
            self.targetServiceType = targetServiceType
            self.alarmType = alarmType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case folderIdList = "FolderIdList"
            case workFlowIdList = "WorkFlowIdList"
            case workFlowNameList = "WorkFlowNameList"
            case taskNameList = "TaskNameList"
            case taskIdList = "TaskIdList"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case sortItem = "SortItem"
            case sortType = "SortType"
            case inChargeList = "InChargeList"
            case taskTypeIdList = "TaskTypeIdList"
            case statusList = "StatusList"
            case taskCycleUnitList = "TaskCycleUnitList"
            case productNameList = "ProductNameList"
            case sourceServiceId = "SourceServiceId"
            case sourceServiceType = "SourceServiceType"
            case targetServiceId = "TargetServiceId"
            case targetServiceType = "TargetServiceType"
            case alarmType = "AlarmType"
        }
    }

    /// DescribeOperateTasks返回参数结构体
    public struct DescribeOperateTasksResponse: TCResponseModel {
        /// 任务列表信息
        public let data: TaskInfoPage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 任务运维列表组合条件查询
    @inlinable
    public func describeOperateTasks(_ input: DescribeOperateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOperateTasksResponse> {
        self.client.execute(action: "DescribeOperateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 任务运维列表组合条件查询
    @inlinable
    public func describeOperateTasks(_ input: DescribeOperateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOperateTasksResponse {
        try await self.client.execute(action: "DescribeOperateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 任务运维列表组合条件查询
    @inlinable
    public func describeOperateTasks(projectId: String, folderIdList: String? = nil, workFlowIdList: String? = nil, workFlowNameList: String? = nil, taskNameList: String? = nil, taskIdList: String? = nil, pageNumber: String? = nil, pageSize: String? = nil, sortItem: String? = nil, sortType: String? = nil, inChargeList: String? = nil, taskTypeIdList: String? = nil, statusList: String? = nil, taskCycleUnitList: String? = nil, productNameList: String? = nil, sourceServiceId: String? = nil, sourceServiceType: String? = nil, targetServiceId: String? = nil, targetServiceType: String? = nil, alarmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOperateTasksResponse> {
        self.describeOperateTasks(.init(projectId: projectId, folderIdList: folderIdList, workFlowIdList: workFlowIdList, workFlowNameList: workFlowNameList, taskNameList: taskNameList, taskIdList: taskIdList, pageNumber: pageNumber, pageSize: pageSize, sortItem: sortItem, sortType: sortType, inChargeList: inChargeList, taskTypeIdList: taskTypeIdList, statusList: statusList, taskCycleUnitList: taskCycleUnitList, productNameList: productNameList, sourceServiceId: sourceServiceId, sourceServiceType: sourceServiceType, targetServiceId: targetServiceId, targetServiceType: targetServiceType, alarmType: alarmType), region: region, logger: logger, on: eventLoop)
    }

    /// 任务运维列表组合条件查询
    @inlinable
    public func describeOperateTasks(projectId: String, folderIdList: String? = nil, workFlowIdList: String? = nil, workFlowNameList: String? = nil, taskNameList: String? = nil, taskIdList: String? = nil, pageNumber: String? = nil, pageSize: String? = nil, sortItem: String? = nil, sortType: String? = nil, inChargeList: String? = nil, taskTypeIdList: String? = nil, statusList: String? = nil, taskCycleUnitList: String? = nil, productNameList: String? = nil, sourceServiceId: String? = nil, sourceServiceType: String? = nil, targetServiceId: String? = nil, targetServiceType: String? = nil, alarmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOperateTasksResponse {
        try await self.describeOperateTasks(.init(projectId: projectId, folderIdList: folderIdList, workFlowIdList: workFlowIdList, workFlowNameList: workFlowNameList, taskNameList: taskNameList, taskIdList: taskIdList, pageNumber: pageNumber, pageSize: pageSize, sortItem: sortItem, sortType: sortType, inChargeList: inChargeList, taskTypeIdList: taskTypeIdList, statusList: statusList, taskCycleUnitList: taskCycleUnitList, productNameList: productNameList, sourceServiceId: sourceServiceId, sourceServiceType: sourceServiceType, targetServiceId: targetServiceId, targetServiceType: targetServiceType, alarmType: alarmType), region: region, logger: logger, on: eventLoop)
    }
}
