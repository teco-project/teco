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
    /// 提交数据导出任务
    @inlinable
    public func commitExportTask(_ input: CommitExportTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CommitExportTaskResponse > {
        self.client.execute(action: "CommitExportTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 提交数据导出任务
    @inlinable
    public func commitExportTask(_ input: CommitExportTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitExportTaskResponse {
        try await self.client.execute(action: "CommitExportTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CommitExportTask请求参数结构体
    public struct CommitExportTaskRequest: TCRequestModel {
        /// 项目id
        public let projectId: String?
        
        /// 规则执行Id
        public let ruleExecId: UInt64?
        
        /// 导出类型(1.全部,2.触发行,3.通过行)
        public let exportType: UInt64?
        
        /// 执行资源组id
        public let executorGroupId: String?
        
        /// 计算资源队列
        public let queueName: String?
        
        public init (projectId: String?, ruleExecId: UInt64?, exportType: UInt64?, executorGroupId: String?, queueName: String?) {
            self.projectId = projectId
            self.ruleExecId = ruleExecId
            self.exportType = exportType
            self.executorGroupId = executorGroupId
            self.queueName = queueName
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleExecId = "RuleExecId"
            case exportType = "ExportType"
            case executorGroupId = "ExecutorGroupId"
            case queueName = "QueueName"
        }
    }
    
    /// CommitExportTask返回参数结构体
    public struct CommitExportTaskResponse: TCResponseModel {
        /// 提交结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
