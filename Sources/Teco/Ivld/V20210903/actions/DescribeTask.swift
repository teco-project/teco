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

extension Ivld {
    /// DescribeTask请求参数结构体
    public struct DescribeTaskRequest: TCRequestModel {
        /// CreateTask返回的任务ID，最长32B
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTask返回参数结构体
    public struct DescribeTaskResponse: TCResponseModel {
        /// 任务信息，详情参见TaskInfo的定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfo: TaskInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfo = "TaskInfo"
            case requestId = "RequestId"
        }
    }

    /// 描述任务
    ///
    /// 描述智能标签任务进度。
    ///
    /// 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述任务
    ///
    /// 描述智能标签任务进度。
    ///
    /// 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述任务
    ///
    /// 描述智能标签任务进度。
    ///
    /// 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**
    @inlinable
    public func describeTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        let input = DescribeTaskRequest(taskId: taskId)
        return self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述任务
    ///
    /// 描述智能标签任务进度。
    ///
    /// 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**
    @inlinable
    public func describeTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        let input = DescribeTaskRequest(taskId: taskId)
        return try await self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
