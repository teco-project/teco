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
    /// BatchStopTasksNew请求参数结构体
    public struct BatchStopTasksNewRequest: TCRequestModel {
        /// 批量停止任务的TaskId
        public let taskIdList: [String]

        /// 项目Id
        public let projectId: String

        public init(taskIdList: [String], projectId: String) {
            self.taskIdList = taskIdList
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIdList = "TaskIdList"
            case projectId = "ProjectId"
        }
    }

    /// BatchStopTasksNew返回参数结构体
    public struct BatchStopTasksNewResponse: TCResponseModel {
        /// 返回批量操作成功个数、失败个数、操作总数
        public let data: BatchOperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 批量停止任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度
    @inlinable
    public func batchStopTasksNew(_ input: BatchStopTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStopTasksNewResponse> {
        self.client.execute(action: "BatchStopTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量停止任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度
    @inlinable
    public func batchStopTasksNew(_ input: BatchStopTasksNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStopTasksNewResponse {
        try await self.client.execute(action: "BatchStopTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量停止任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度
    @inlinable
    public func batchStopTasksNew(taskIdList: [String], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStopTasksNewResponse> {
        let input = BatchStopTasksNewRequest(taskIdList: taskIdList, projectId: projectId)
        return self.client.execute(action: "BatchStopTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量停止任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度
    @inlinable
    public func batchStopTasksNew(taskIdList: [String], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStopTasksNewResponse {
        let input = BatchStopTasksNewRequest(taskIdList: taskIdList, projectId: projectId)
        return try await self.client.execute(action: "BatchStopTasksNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
