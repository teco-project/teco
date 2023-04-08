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
    /// BatchDeleteTasksNew请求参数结构体
    public struct BatchDeleteTasksNewRequest: TCRequestModel {
        /// 批量删除的任务TaskId
        public let taskIdList: [String]

        /// true : 删除后下游任务可正常运行
        /// false：删除后下游任务不可运行
        public let deleteMode: Bool

        /// true：通知下游任务责任人
        /// false:  不通知下游任务责任人
        public let enableNotify: Bool

        /// 项目Id
        public let projectId: String

        public init(taskIdList: [String], deleteMode: Bool, enableNotify: Bool, projectId: String) {
            self.taskIdList = taskIdList
            self.deleteMode = deleteMode
            self.enableNotify = enableNotify
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIdList = "TaskIdList"
            case deleteMode = "DeleteMode"
            case enableNotify = "EnableNotify"
            case projectId = "ProjectId"
        }
    }

    /// BatchDeleteTasksNew返回参数结构体
    public struct BatchDeleteTasksNewResponse: TCResponseModel {
        /// 返回批量操作成功个数、失败个数、操作总数
        public let data: BatchOperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 批量删除任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量删除任务，仅对任务状态为”已停止“有效；
    @inlinable
    public func batchDeleteTasksNew(_ input: BatchDeleteTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteTasksNewResponse> {
        self.client.execute(action: "BatchDeleteTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量删除任务，仅对任务状态为”已停止“有效；
    @inlinable
    public func batchDeleteTasksNew(_ input: BatchDeleteTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteTasksNewResponse {
        try await self.client.execute(action: "BatchDeleteTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量删除任务，仅对任务状态为”已停止“有效；
    @inlinable
    public func batchDeleteTasksNew(taskIdList: [String], deleteMode: Bool, enableNotify: Bool, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteTasksNewResponse> {
        self.batchDeleteTasksNew(.init(taskIdList: taskIdList, deleteMode: deleteMode, enableNotify: enableNotify, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量删除任务，仅对任务状态为”已停止“有效；
    @inlinable
    public func batchDeleteTasksNew(taskIdList: [String], deleteMode: Bool, enableNotify: Bool, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteTasksNewResponse {
        try await self.batchDeleteTasksNew(.init(taskIdList: taskIdList, deleteMode: deleteMode, enableNotify: enableNotify, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
