//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Wedata {
    /// 查询任务实例列表
    ///
    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(_ input: DescribeTaskInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskInstancesResponse > {
        self.client.execute(action: "DescribeTaskInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务实例列表
    ///
    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(_ input: DescribeTaskInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInstancesResponse {
        try await self.client.execute(action: "DescribeTaskInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskInstances请求参数结构体
    public struct DescribeTaskInstancesRequest: TCRequestModel {
        /// 项目id
        public let projectId: String
        
        /// 页号，默认为1
        public let pageNumber: Int64?
        
        /// 页大小，默认为10，最大不超过200
        public let pageSize: Int64?
        
        /// 工作流id列表
        public let workflowIdList: [String]?
        
        /// 工作流名称列表，支持模糊搜索
        public let workflowNameList: [String]?
        
        /// 起始数据时间，格式yyyy-MM-dd HH:mm:ss
        public let dateFrom: String?
        
        /// 结束数据时间，格式yyyy-MM-dd HH:mm:ss
        public let dateTo: String?
        
        /// 任务id列表
        public let taskIdList: [String]?
        
        /// 任务名称列表，支持模糊搜索
        public let taskNameList: [String]?
        
        /// 责任人名称列表
        public let inChargeList: [String]?
        
        /// 任务类型码列表，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        public let taskTypeIdList: [Int64]?
        
        /// 实例状态列表，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        public let stateList: [String]?
        
        /// 周期类型列表，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        public let taskCycleUnitList: [String]?
        
        /// 实例类型，0补录实例，1周期实例，2非周期实例
        public let instanceType: Int64?
        
        /// 排序字段信息列表，ScheduleDateTime / CostTime / StartTime / EndTime
        public let orderFields: [OrderField]?
        
        public init (projectId: String, pageNumber: Int64?, pageSize: Int64?, workflowIdList: [String]?, workflowNameList: [String]?, dateFrom: String?, dateTo: String?, taskIdList: [String]?, taskNameList: [String]?, inChargeList: [String]?, taskTypeIdList: [Int64]?, stateList: [String]?, taskCycleUnitList: [String]?, instanceType: Int64?, orderFields: [OrderField]?) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.workflowIdList = workflowIdList
            self.workflowNameList = workflowNameList
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.taskIdList = taskIdList
            self.taskNameList = taskNameList
            self.inChargeList = inChargeList
            self.taskTypeIdList = taskTypeIdList
            self.stateList = stateList
            self.taskCycleUnitList = taskCycleUnitList
            self.instanceType = instanceType
            self.orderFields = orderFields
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case workflowIdList = "WorkflowIdList"
            case workflowNameList = "WorkflowNameList"
            case dateFrom = "DateFrom"
            case dateTo = "DateTo"
            case taskIdList = "TaskIdList"
            case taskNameList = "TaskNameList"
            case inChargeList = "InChargeList"
            case taskTypeIdList = "TaskTypeIdList"
            case stateList = "StateList"
            case taskCycleUnitList = "TaskCycleUnitList"
            case instanceType = "InstanceType"
            case orderFields = "OrderFields"
        }
    }
    
    /// DescribeTaskInstances返回参数结构体
    public struct DescribeTaskInstancesResponse: TCResponseModel {
        /// 无
        public let data: DescribeTaskInstancesData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}