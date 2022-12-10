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

@_exported import struct Foundation.Date

extension Dbbrain {
    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(_ input: DescribeDBDiagReportTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBDiagReportTasksResponse > {
        self.client.execute(action: "DescribeDBDiagReportTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(_ input: DescribeDBDiagReportTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagReportTasksResponse {
        try await self.client.execute(action: "DescribeDBDiagReportTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBDiagReportTasks请求参数结构体
    public struct DescribeDBDiagReportTasksRequest: TCRequestModel {
        /// 第一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        public let startTime: Date?
        
        /// 最后一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        public let endTime: Date?
        
        /// 实例ID数组，用于筛选指定实例的任务列表。
        public let instanceIds: [String]?
        
        /// 任务的触发来源，支持的取值包括："DAILY_INSPECTION" - 实例巡检；"SCHEDULED" - 定时生成；"MANUAL" - 手动触发。
        public let sources: [String]?
        
        /// 报告的健康等级，支持的取值包括："HEALTH" - 健康；"SUB_HEALTH" - 亚健康；"RISK" - 危险；"HIGH_RISK" - 高危。
        public let healthLevels: String?
        
        /// 任务的状态，支持的取值包括："created" - 新建；"chosen" - 待执行； "running" - 执行中；"failed" - 失败；"finished" - 已完成。
        public let taskStatuses: String?
        
        /// 偏移量，默认0。
        public let offset: Int64?
        
        /// 返回数量，默认20，最大值为100。
        public let limit: Int64?
        
        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (startTime: Date?, endTime: Date?, instanceIds: [String]?, sources: [String]?, healthLevels: String?, taskStatuses: String?, offset: Int64?, limit: Int64?, product: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.instanceIds = instanceIds
            self.sources = sources
            self.healthLevels = healthLevels
            self.taskStatuses = taskStatuses
            self.offset = offset
            self.limit = limit
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case instanceIds = "InstanceIds"
            case sources = "Sources"
            case healthLevels = "HealthLevels"
            case taskStatuses = "TaskStatuses"
            case offset = "Offset"
            case limit = "Limit"
            case product = "Product"
        }
    }
    
    /// DescribeDBDiagReportTasks返回参数结构体
    public struct DescribeDBDiagReportTasksResponse: TCResponseModel {
        /// 任务总数目。
        public let totalCount: Int64
        
        /// 任务列表。
        public let tasks: [HealthReportTask]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }
}