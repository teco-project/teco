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

extension Redis {
    /// DescribeTaskInfo请求参数结构体
    public struct DescribeTaskInfoRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTaskInfo返回参数结构体
    public struct DescribeTaskInfoResponse: TCResponseModel {
        /// 任务状态preparing:待执行，running：执行中，succeed：成功，failed：失败，error 执行出错
        public let status: String

        /// 任务开始时间
        public let startTime: String

        /// 任务类型
        public let taskType: String

        /// 实例的ID
        public let instanceId: String

        /// 任务信息，错误时显示错误信息。执行中与成功则为空
        public let taskMessage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case startTime = "StartTime"
            case taskType = "TaskType"
            case instanceId = "InstanceId"
            case taskMessage = "TaskMessage"
            case requestId = "RequestId"
        }
    }

    /// Redis查询任务结果
    ///
    /// 用于查询任务结果
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskInfoResponse > {
        self.client.execute(action: "DescribeTaskInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Redis查询任务结果
    ///
    /// 用于查询任务结果
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.client.execute(action: "DescribeTaskInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Redis查询任务结果
    ///
    /// 用于查询任务结果
    @inlinable
    public func describeTaskInfo(taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskInfoResponse > {
        self.describeTaskInfo(DescribeTaskInfoRequest(taskId: taskId), logger: logger, on: eventLoop)
    }

    /// Redis查询任务结果
    ///
    /// 用于查询任务结果
    @inlinable
    public func describeTaskInfo(taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.describeTaskInfo(DescribeTaskInfoRequest(taskId: taskId), logger: logger, on: eventLoop)
    }
}
