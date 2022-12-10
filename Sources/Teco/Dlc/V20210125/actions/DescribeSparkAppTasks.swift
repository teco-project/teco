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

extension Dlc {
    /// 查询spark应用的运行任务实例列表
    @inlinable
    public func describeSparkAppTasks(_ input: DescribeSparkAppTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSparkAppTasksResponse > {
        self.client.execute(action: "DescribeSparkAppTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询spark应用的运行任务实例列表
    @inlinable
    public func describeSparkAppTasks(_ input: DescribeSparkAppTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppTasksResponse {
        try await self.client.execute(action: "DescribeSparkAppTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSparkAppTasks请求参数结构体
    public struct DescribeSparkAppTasksRequest: TCRequestModel {
        /// spark作业Id
        public let jobId: String
        
        /// 分页查询偏移量
        public let offset: Int64?
        
        /// 分页查询Limit
        public let limit: Int64?
        
        /// 执行实例id
        public let taskId: String?
        
        /// 更新时间起始点
        public let startTime: String?
        
        /// 更新时间截止点
        public let endTime: String?
        
        /// 按照该参数过滤,支持task-state
        public let filters: [Filter]?
        
        public init (jobId: String, offset: Int64?, limit: Int64?, taskId: String?, startTime: String?, endTime: String?, filters: [Filter]?) {
            self.jobId = jobId
            self.offset = offset
            self.limit = limit
            self.taskId = taskId
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case offset = "Offset"
            case limit = "Limit"
            case taskId = "TaskId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
        }
    }
    
    /// DescribeSparkAppTasks返回参数结构体
    public struct DescribeSparkAppTasksResponse: TCResponseModel {
        /// 任务结果（该字段已废弃）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasks: TaskResponseInfo
        
        /// 任务总数
        public let totalCount: Int64
        
        /// 任务结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sparkAppTasks: [TaskResponseInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case totalCount = "TotalCount"
            case sparkAppTasks = "SparkAppTasks"
            case requestId = "RequestId"
        }
    }
}
