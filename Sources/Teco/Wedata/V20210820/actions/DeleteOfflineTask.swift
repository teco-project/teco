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
    /// DeleteOfflineTask请求参数结构体
    public struct DeleteOfflineTaskRequest: TCRequestModel {
        /// 操作者name
        public let operatorName: String

        /// 项目/工作空间id
        public let projectId: String

        /// 任务id
        public let taskId: String

        /// 虚拟任务标记(跟之前调度接口保持一致默认false)
        public let virtualFlag: Bool

        public init(operatorName: String, projectId: String, taskId: String, virtualFlag: Bool) {
            self.operatorName = operatorName
            self.projectId = projectId
            self.taskId = taskId
            self.virtualFlag = virtualFlag
        }

        enum CodingKeys: String, CodingKey {
            case operatorName = "OperatorName"
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case virtualFlag = "VirtualFlag"
        }
    }

    /// DeleteOfflineTask返回参数结构体
    public struct DeleteOfflineTaskResponse: TCResponseModel {
        /// 结果
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除任务
    @inlinable
    public func deleteOfflineTask(_ input: DeleteOfflineTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteOfflineTaskResponse > {
        self.client.execute(action: "DeleteOfflineTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable
    public func deleteOfflineTask(_ input: DeleteOfflineTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOfflineTaskResponse {
        try await self.client.execute(action: "DeleteOfflineTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务
    @inlinable
    public func deleteOfflineTask(operatorName: String, projectId: String, taskId: String, virtualFlag: Bool, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteOfflineTaskResponse > {
        self.deleteOfflineTask(DeleteOfflineTaskRequest(operatorName: operatorName, projectId: projectId, taskId: taskId, virtualFlag: virtualFlag), logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable
    public func deleteOfflineTask(operatorName: String, projectId: String, taskId: String, virtualFlag: Bool, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOfflineTaskResponse {
        try await self.deleteOfflineTask(DeleteOfflineTaskRequest(operatorName: operatorName, projectId: projectId, taskId: taskId, virtualFlag: virtualFlag), logger: logger, on: eventLoop)
    }
}
