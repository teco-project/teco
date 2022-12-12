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

extension Wedata {
    /// CommitIntegrationTask请求参数结构体
    public struct CommitIntegrationTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String
        
        /// 项目id
        public let projectId: String
        
        /// 0.仅提交，1.立即启动，2.停止线上作业，丢弃作业状态数据，重新启动运行，3.暂停线上作业，保留作业状态数据，继续运行，4.保留作业状态数据，继续运行
        public let commitType: Int64?
        
        /// 实时任务 201   离线任务 202  默认实时任务
        public let taskType: UInt64?
        
        public init (taskId: String, projectId: String, commitType: Int64? = nil, taskType: UInt64? = nil) {
            self.taskId = taskId
            self.projectId = projectId
            self.commitType = commitType
            self.taskType = taskType
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case commitType = "CommitType"
            case taskType = "TaskType"
        }
    }
    
    /// CommitIntegrationTask返回参数结构体
    public struct CommitIntegrationTaskResponse: TCResponseModel {
        /// 操作成功与否标识
        public let data: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 提交集成任务
    @inlinable
    public func commitIntegrationTask(_ input: CommitIntegrationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CommitIntegrationTaskResponse > {
        self.client.execute(action: "CommitIntegrationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 提交集成任务
    @inlinable
    public func commitIntegrationTask(_ input: CommitIntegrationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitIntegrationTaskResponse {
        try await self.client.execute(action: "CommitIntegrationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
