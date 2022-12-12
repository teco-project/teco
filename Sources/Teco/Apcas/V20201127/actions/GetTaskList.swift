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

extension Apcas {
    /// GetTaskList请求参数结构体
    public struct GetTaskListRequest: TCRequestModel {
        /// 查询分页页码
        public let pageNumber: UInt64
        
        /// 查询分页大小
        public let pageSize: UInt64
        
        /// 查询起始时间（13位数字的UNIX时间戳，单位毫秒 ）
        public let startTime: UInt64?
        
        /// 查询结束时间（13位数字的UNIX时间戳，单位毫秒 ）
        public let endTime: UInt64?
        
        /// 任务名称
        public let taskName: String?
        
        /// 查询任务状态 0:默认状态 1:任务正在运行 2:任务运行成功 3:任务运行失败
        public let taskStatus: UInt64?
        
        public init (pageNumber: UInt64, pageSize: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, taskName: String? = nil, taskStatus: UInt64? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.startTime = startTime
            self.endTime = endTime
            self.taskName = taskName
            self.taskStatus = taskStatus
        }
        
        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case taskName = "TaskName"
            case taskStatus = "TaskStatus"
        }
    }
    
    /// GetTaskList返回参数结构体
    public struct GetTaskListResponse: TCResponseModel {
        /// 任务列表对象
        public let taskListData: TaskListData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskListData = "TaskListData"
            case requestId = "RequestId"
        }
    }
    
    /// 查询画像洞察任务列表
    ///
    /// 查询当前账号AppID下的画像洞察任务列表
    @inlinable
    public func getTaskList(_ input: GetTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTaskListResponse > {
        self.client.execute(action: "GetTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询画像洞察任务列表
    ///
    /// 查询当前账号AppID下的画像洞察任务列表
    @inlinable
    public func getTaskList(_ input: GetTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTaskListResponse {
        try await self.client.execute(action: "GetTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
