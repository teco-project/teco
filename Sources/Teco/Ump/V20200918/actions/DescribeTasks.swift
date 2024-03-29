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

extension Ump {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 任务类型:
        /// 1: 底图拉取
        public let taskType: Int64

        public init(groupCode: String, mallId: UInt64, taskType: Int64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case taskType = "TaskType"
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCResponse {
        /// 任务列表
        public let tasks: [Task]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }

    /// 查询任务列表
    ///
    /// 查询集团广场对应的任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询集团广场对应的任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    ///
    /// 查询集团广场对应的任务列表
    @inlinable
    public func describeTasks(groupCode: String, mallId: UInt64, taskType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(.init(groupCode: groupCode, mallId: mallId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 查询集团广场对应的任务列表
    @inlinable
    public func describeTasks(groupCode: String, mallId: UInt64, taskType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(.init(groupCode: groupCode, mallId: mallId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
