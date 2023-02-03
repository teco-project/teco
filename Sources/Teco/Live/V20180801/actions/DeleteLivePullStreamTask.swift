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

extension Live {
    /// DeleteLivePullStreamTask请求参数结构体
    public struct DeleteLivePullStreamTaskRequest: TCRequestModel {
        /// 任务 Id。
        public let taskId: String

        /// 操作人姓名。
        public let `operator`: String

        public init(taskId: String, operator: String) {
            self.taskId = taskId
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case `operator` = "Operator"
        }
    }

    /// DeleteLivePullStreamTask返回参数结构体
    public struct DeleteLivePullStreamTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除直播拉流任务
    ///
    /// 删除接口 CreateLivePullStreamTask 创建的拉流任务。
    /// 注意：
    /// 1. 入参中的 TaskId 为 CreateLivePullStreamTask 接口创建时返回的TaskId。
    /// 2. 也可通过 DescribeLivePullStreamTasks 进行查询创建的任务。
    @inlinable @discardableResult
    public func deleteLivePullStreamTask(_ input: DeleteLivePullStreamTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLivePullStreamTaskResponse> {
        self.client.execute(action: "DeleteLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除直播拉流任务
    ///
    /// 删除接口 CreateLivePullStreamTask 创建的拉流任务。
    /// 注意：
    /// 1. 入参中的 TaskId 为 CreateLivePullStreamTask 接口创建时返回的TaskId。
    /// 2. 也可通过 DescribeLivePullStreamTasks 进行查询创建的任务。
    @inlinable @discardableResult
    public func deleteLivePullStreamTask(_ input: DeleteLivePullStreamTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLivePullStreamTaskResponse {
        try await self.client.execute(action: "DeleteLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除直播拉流任务
    ///
    /// 删除接口 CreateLivePullStreamTask 创建的拉流任务。
    /// 注意：
    /// 1. 入参中的 TaskId 为 CreateLivePullStreamTask 接口创建时返回的TaskId。
    /// 2. 也可通过 DescribeLivePullStreamTasks 进行查询创建的任务。
    @inlinable @discardableResult
    public func deleteLivePullStreamTask(taskId: String, operator: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLivePullStreamTaskResponse> {
        let input = DeleteLivePullStreamTaskRequest(taskId: taskId, operator: `operator`)
        return self.client.execute(action: "DeleteLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除直播拉流任务
    ///
    /// 删除接口 CreateLivePullStreamTask 创建的拉流任务。
    /// 注意：
    /// 1. 入参中的 TaskId 为 CreateLivePullStreamTask 接口创建时返回的TaskId。
    /// 2. 也可通过 DescribeLivePullStreamTasks 进行查询创建的任务。
    @inlinable @discardableResult
    public func deleteLivePullStreamTask(taskId: String, operator: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLivePullStreamTaskResponse {
        let input = DeleteLivePullStreamTaskRequest(taskId: taskId, operator: `operator`)
        return try await self.client.execute(action: "DeleteLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
