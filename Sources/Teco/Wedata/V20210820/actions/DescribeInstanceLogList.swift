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
    /// DescribeInstanceLogList请求参数结构体
    public struct DescribeInstanceLogListRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 数据时间
        public let curRunDate: String

        public init(taskId: String, curRunDate: String) {
            self.taskId = taskId
            self.curRunDate = curRunDate
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
        }
    }

    /// DescribeInstanceLogList返回参数结构体
    public struct DescribeInstanceLogListResponse: TCResponseModel {
        /// 日志列表
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取离线任务实例运行日志列表
    ///
    /// 离线任务实例运行日志列表
    @inlinable
    public func describeInstanceLogList(_ input: DescribeInstanceLogListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceLogListResponse > {
        self.client.execute(action: "DescribeInstanceLogList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取离线任务实例运行日志列表
    ///
    /// 离线任务实例运行日志列表
    @inlinable
    public func describeInstanceLogList(_ input: DescribeInstanceLogListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogListResponse {
        try await self.client.execute(action: "DescribeInstanceLogList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取离线任务实例运行日志列表
    ///
    /// 离线任务实例运行日志列表
    @inlinable
    public func describeInstanceLogList(taskId: String, curRunDate: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceLogListResponse > {
        self.describeInstanceLogList(DescribeInstanceLogListRequest(taskId: taskId, curRunDate: curRunDate), logger: logger, on: eventLoop)
    }

    /// 获取离线任务实例运行日志列表
    ///
    /// 离线任务实例运行日志列表
    @inlinable
    public func describeInstanceLogList(taskId: String, curRunDate: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogListResponse {
        try await self.describeInstanceLogList(DescribeInstanceLogListRequest(taskId: taskId, curRunDate: curRunDate), logger: logger, on: eventLoop)
    }
}
