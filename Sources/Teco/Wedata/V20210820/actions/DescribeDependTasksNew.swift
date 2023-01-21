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

extension Wedata {
    /// DescribeDependTasksNew请求参数结构体
    public struct DescribeDependTasksNewRequest: TCRequestModel {
        /// 任务Id
        public let taskId: String

        /// 上游/下游层级1-6级
        public let deep: UInt64

        /// 1: 表示查询上游节点；0:表示查询下游节点；2：表示查询上游和下游节点
        public let up: UInt64

        /// 项目id
        public let projectId: String

        /// 任务工作流id
        public let workflowId: String

        public init(taskId: String, deep: UInt64, up: UInt64, projectId: String, workflowId: String) {
            self.taskId = taskId
            self.deep = deep
            self.up = up
            self.projectId = projectId
            self.workflowId = workflowId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case deep = "Deep"
            case up = "Up"
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
        }
    }

    /// DescribeDependTasksNew返回参数结构体
    public struct DescribeDependTasksNewResponse: TCResponseModel {
        /// 画布任务和链接信息
        public let data: CanvasInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 任务运维-根据层级查找上-下游任务节点【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 根据层级查找上/下游任务节点
    @inlinable
    public func describeDependTasksNew(_ input: DescribeDependTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDependTasksNewResponse> {
        self.client.execute(action: "DescribeDependTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 任务运维-根据层级查找上-下游任务节点【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 根据层级查找上/下游任务节点
    @inlinable
    public func describeDependTasksNew(_ input: DescribeDependTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDependTasksNewResponse {
        try await self.client.execute(action: "DescribeDependTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 任务运维-根据层级查找上-下游任务节点【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 根据层级查找上/下游任务节点
    @inlinable
    public func describeDependTasksNew(taskId: String, deep: UInt64, up: UInt64, projectId: String, workflowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDependTasksNewResponse> {
        self.describeDependTasksNew(DescribeDependTasksNewRequest(taskId: taskId, deep: deep, up: up, projectId: projectId, workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }

    /// 任务运维-根据层级查找上-下游任务节点【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 根据层级查找上/下游任务节点
    @inlinable
    public func describeDependTasksNew(taskId: String, deep: UInt64, up: UInt64, projectId: String, workflowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDependTasksNewResponse {
        try await self.describeDependTasksNew(DescribeDependTasksNewRequest(taskId: taskId, deep: deep, up: up, projectId: projectId, workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }
}
