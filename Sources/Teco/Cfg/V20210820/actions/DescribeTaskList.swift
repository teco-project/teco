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

extension Cfg {
    /// 查询任务列表
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskListResponse > {
        self.client.execute(action: "DescribeTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务列表
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.client.execute(action: "DescribeTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskList请求参数结构体
    public struct DescribeTaskListRequest: TCRequestModel {
        /// 分页Limit
        public let limit: Int64
        
        /// 分页Offset
        public let offset: Int64
        
        /// 演练名称
        public let taskTitle: String?
        
        /// 标签键
        public let taskTag: [String]?
        
        /// 状态
        public let taskStatus: Int64?
        
        /// 开始时间，固定格式%Y-%m-%d %H:%M:%S
        public let taskStartTime: String?
        
        /// 结束时间，固定格式%Y-%m-%d %H:%M:%S
        public let taskEndTime: String?
        
        /// 标签对
        public let tags: [TagWithDescribe]?
        
        public init (limit: Int64, offset: Int64, taskTitle: String?, taskTag: [String]?, taskStatus: Int64?, taskStartTime: String?, taskEndTime: String?, tags: [TagWithDescribe]?) {
            self.limit = limit
            self.offset = offset
            self.taskTitle = taskTitle
            self.taskTag = taskTag
            self.taskStatus = taskStatus
            self.taskStartTime = taskStartTime
            self.taskEndTime = taskEndTime
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case taskTitle = "TaskTitle"
            case taskTag = "TaskTag"
            case taskStatus = "TaskStatus"
            case taskStartTime = "TaskStartTime"
            case taskEndTime = "TaskEndTime"
            case tags = "Tags"
        }
    }
    
    /// DescribeTaskList返回参数结构体
    public struct DescribeTaskListResponse: TCResponseModel {
        /// 无
        public let taskList: [TaskListItem]
        
        /// 列表数量
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskList = "TaskList"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
