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

extension Batch {
    /// TerminateTaskInstance请求参数结构体
    public struct TerminateTaskInstanceRequest: TCRequestModel {
        /// 作业ID
        public let jobId: String

        /// 任务名称
        public let taskName: String

        /// 任务实例索引
        public let taskInstanceIndex: Int64

        public init(jobId: String, taskName: String, taskInstanceIndex: Int64) {
            self.jobId = jobId
            self.taskName = taskName
            self.taskInstanceIndex = taskInstanceIndex
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case taskName = "TaskName"
            case taskInstanceIndex = "TaskInstanceIndex"
        }
    }

    /// TerminateTaskInstance返回参数结构体
    public struct TerminateTaskInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止任务实例
    ///
    /// 用于终止任务实例。
    /// 对于状态已经为“SUCCEED”和“FAILED”的任务实例，不做处理。
    /// 对于状态为“SUBMITTED”、“PENDING”、“RUNNABLE”的任务实例，状态将置为“FAILED”状态。
    /// 对于状态为“STARTING”、“RUNNING”、“FAILED_INTERRUPTED”的任务实例，分区两种情况：如果未显示指定计算环境，会先销毁CVM服务器，然后将状态置为“FAILED”，具有一定耗时；如果指定了计算环境EnvId，任务实例状态置为“FAILED”，并重启执行该任务的CVM服务器，具有一定的耗时。
    /// 对于状态为“FAILED_INTERRUPTED”的任务实例，终止操作实际成功之后，相关资源和配额才会释放。
    @inlinable @discardableResult
    public func terminateTaskInstance(_ input: TerminateTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTaskInstanceResponse> {
        self.client.execute(action: "TerminateTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止任务实例
    ///
    /// 用于终止任务实例。
    /// 对于状态已经为“SUCCEED”和“FAILED”的任务实例，不做处理。
    /// 对于状态为“SUBMITTED”、“PENDING”、“RUNNABLE”的任务实例，状态将置为“FAILED”状态。
    /// 对于状态为“STARTING”、“RUNNING”、“FAILED_INTERRUPTED”的任务实例，分区两种情况：如果未显示指定计算环境，会先销毁CVM服务器，然后将状态置为“FAILED”，具有一定耗时；如果指定了计算环境EnvId，任务实例状态置为“FAILED”，并重启执行该任务的CVM服务器，具有一定的耗时。
    /// 对于状态为“FAILED_INTERRUPTED”的任务实例，终止操作实际成功之后，相关资源和配额才会释放。
    @inlinable @discardableResult
    public func terminateTaskInstance(_ input: TerminateTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTaskInstanceResponse {
        try await self.client.execute(action: "TerminateTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止任务实例
    ///
    /// 用于终止任务实例。
    /// 对于状态已经为“SUCCEED”和“FAILED”的任务实例，不做处理。
    /// 对于状态为“SUBMITTED”、“PENDING”、“RUNNABLE”的任务实例，状态将置为“FAILED”状态。
    /// 对于状态为“STARTING”、“RUNNING”、“FAILED_INTERRUPTED”的任务实例，分区两种情况：如果未显示指定计算环境，会先销毁CVM服务器，然后将状态置为“FAILED”，具有一定耗时；如果指定了计算环境EnvId，任务实例状态置为“FAILED”，并重启执行该任务的CVM服务器，具有一定的耗时。
    /// 对于状态为“FAILED_INTERRUPTED”的任务实例，终止操作实际成功之后，相关资源和配额才会释放。
    @inlinable @discardableResult
    public func terminateTaskInstance(jobId: String, taskName: String, taskInstanceIndex: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTaskInstanceResponse> {
        self.terminateTaskInstance(.init(jobId: jobId, taskName: taskName, taskInstanceIndex: taskInstanceIndex), region: region, logger: logger, on: eventLoop)
    }

    /// 终止任务实例
    ///
    /// 用于终止任务实例。
    /// 对于状态已经为“SUCCEED”和“FAILED”的任务实例，不做处理。
    /// 对于状态为“SUBMITTED”、“PENDING”、“RUNNABLE”的任务实例，状态将置为“FAILED”状态。
    /// 对于状态为“STARTING”、“RUNNING”、“FAILED_INTERRUPTED”的任务实例，分区两种情况：如果未显示指定计算环境，会先销毁CVM服务器，然后将状态置为“FAILED”，具有一定耗时；如果指定了计算环境EnvId，任务实例状态置为“FAILED”，并重启执行该任务的CVM服务器，具有一定的耗时。
    /// 对于状态为“FAILED_INTERRUPTED”的任务实例，终止操作实际成功之后，相关资源和配额才会释放。
    @inlinable @discardableResult
    public func terminateTaskInstance(jobId: String, taskName: String, taskInstanceIndex: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTaskInstanceResponse {
        try await self.terminateTaskInstance(.init(jobId: jobId, taskName: taskName, taskInstanceIndex: taskInstanceIndex), region: region, logger: logger, on: eventLoop)
    }
}
